package com.miui.gallery3d.exif;

import android.support.v4.internal.view.SupportMenu;
import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.Locale;
import java.util.Map.Entry;
import java.util.TreeMap;

class ExifParser {
    protected static final short BIG_ENDIAN_TAG = (short) 19789;
    protected static final int DEFAULT_IFD0_OFFSET = 8;
    public static final int EVENT_COMPRESSED_IMAGE = 3;
    public static final int EVENT_END = 5;
    public static final int EVENT_NEW_TAG = 1;
    public static final int EVENT_START_OF_IFD = 0;
    public static final int EVENT_UNCOMPRESSED_STRIP = 4;
    public static final int EVENT_VALUE_OF_REGISTERED_TAG = 2;
    protected static final int EXIF_HEADER = 1165519206;
    protected static final short EXIF_HEADER_TAIL = (short) 0;
    protected static final short LITTLE_ENDIAN_TAG = (short) 18761;
    private static final boolean LOGV = false;
    protected static final int OFFSET_SIZE = 2;
    public static final int OPTION_IFD_0 = 1;
    public static final int OPTION_IFD_1 = 2;
    public static final int OPTION_IFD_EXIF = 4;
    public static final int OPTION_IFD_GPS = 8;
    public static final int OPTION_IFD_INTEROPERABILITY = 16;
    public static final int OPTION_THUMBNAIL = 32;
    private static final String TAG = "ExifParser";
    private static final short TAG_EXIF_IFD = ExifInterface.getTrueTagKey(ExifInterface.TAG_EXIF_IFD);
    private static final short TAG_GPS_IFD = ExifInterface.getTrueTagKey(ExifInterface.TAG_GPS_IFD);
    private static final short TAG_INTEROPERABILITY_IFD = ExifInterface.getTrueTagKey(ExifInterface.TAG_INTEROPERABILITY_IFD);
    private static final short TAG_JPEG_INTERCHANGE_FORMAT = ExifInterface.getTrueTagKey(ExifInterface.TAG_JPEG_INTERCHANGE_FORMAT);
    private static final short TAG_JPEG_INTERCHANGE_FORMAT_LENGTH = ExifInterface.getTrueTagKey(ExifInterface.TAG_JPEG_INTERCHANGE_FORMAT_LENGTH);
    protected static final int TAG_SIZE = 12;
    private static final short TAG_STRIP_BYTE_COUNTS = ExifInterface.getTrueTagKey(ExifInterface.TAG_STRIP_BYTE_COUNTS);
    private static final short TAG_STRIP_OFFSETS = ExifInterface.getTrueTagKey(ExifInterface.TAG_STRIP_OFFSETS);
    protected static final short TIFF_HEADER_TAIL = (short) 42;
    private static final Charset US_ASCII = Charset.forName("US-ASCII");
    private int mApp1End;
    private boolean mContainExifData = false;
    private final TreeMap<Integer, Object> mCorrespondingEvent = new TreeMap();
    private byte[] mDataAboveIfd0;
    private int mIfd0Position;
    private int mIfdStartOffset = 0;
    private int mIfdType;
    private ImageEvent mImageEvent;
    private final ExifInterface mInterface;
    private ExifTag mJpegSizeTag;
    private boolean mNeedToParseOffsetsInCurrentIfd;
    private int mNumOfTagInIfd = 0;
    private int mOffsetToApp1EndFromSOF = 0;
    private final int mOptions;
    private int mStripCount;
    private ExifTag mStripSizeTag;
    private ExifTag mTag;
    private int mTiffStartPosition;
    private final CountedDataInputStream mTiffStream;

    private static class ExifTagEvent {
        boolean isRequested;
        ExifTag tag;

        ExifTagEvent(ExifTag tag, boolean isRequireByUser) {
            this.tag = tag;
            this.isRequested = isRequireByUser;
        }
    }

    private static class IfdEvent {
        int ifd;
        boolean isRequested;

        IfdEvent(int ifd, boolean isInterestedIfd) {
            this.ifd = ifd;
            this.isRequested = isInterestedIfd;
        }
    }

    private static class ImageEvent {
        int stripIndex;
        int type;

        ImageEvent(int type) {
            this.stripIndex = 0;
            this.type = type;
        }

        ImageEvent(int type, int stripIndex) {
            this.type = type;
            this.stripIndex = stripIndex;
        }
    }

    private boolean isIfdRequested(int ifdType) {
        boolean z = true;
        switch (ifdType) {
            case 0:
                if ((this.mOptions & 1) == 0) {
                    z = false;
                }
                return z;
            case 1:
                if ((this.mOptions & 2) == 0) {
                    z = false;
                }
                return z;
            case 2:
                if ((this.mOptions & 4) == 0) {
                    z = false;
                }
                return z;
            case 3:
                if ((this.mOptions & 16) == 0) {
                    z = false;
                }
                return z;
            case 4:
                if ((this.mOptions & 8) == 0) {
                    z = false;
                }
                return z;
            default:
                return false;
        }
    }

    private boolean isThumbnailRequested() {
        return (this.mOptions & 32) != 0;
    }

    private ExifParser(InputStream inputStream, int options, ExifInterface iRef) throws IOException, ExifInvalidFormatException {
        if (inputStream != null) {
            this.mInterface = iRef;
            this.mContainExifData = seekTiffData(inputStream);
            this.mTiffStream = new CountedDataInputStream(inputStream);
            this.mOptions = options;
            if (this.mContainExifData) {
                parseTiffHeader();
                long offset = this.mTiffStream.readUnsignedInt();
                if (offset <= 2147483647L) {
                    this.mIfd0Position = (int) offset;
                    this.mIfdType = 0;
                    if (isIfdRequested(0) || needToParseOffsetsInCurrentIfd()) {
                        registerIfd(0, offset);
                        if (offset != 8) {
                            this.mDataAboveIfd0 = new byte[(((int) offset) - 8)];
                            read(this.mDataAboveIfd0);
                        }
                    }
                    return;
                }
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("Invalid offset ");
                stringBuilder.append(offset);
                throw new ExifInvalidFormatException(stringBuilder.toString());
            }
            return;
        }
        throw new IOException("Null argument inputStream to ExifParser");
    }

    protected static ExifParser parse(InputStream inputStream, int options, ExifInterface iRef) throws IOException, ExifInvalidFormatException {
        return new ExifParser(inputStream, options, iRef);
    }

    protected static ExifParser parse(InputStream inputStream, ExifInterface iRef) throws IOException, ExifInvalidFormatException {
        return new ExifParser(inputStream, 63, iRef);
    }

    protected int next() throws IOException, ExifInvalidFormatException {
        if (!this.mContainExifData) {
            return 5;
        }
        int offset = this.mTiffStream.getReadByteCount();
        int endOfTags = (this.mIfdStartOffset + 2) + (this.mNumOfTagInIfd * 12);
        if (offset < endOfTags) {
            this.mTag = readTag();
            if (this.mTag == null) {
                return next();
            }
            if (this.mNeedToParseOffsetsInCurrentIfd) {
                checkOffsetOrImageTag(this.mTag);
            }
            return 1;
        }
        if (offset == endOfTags) {
            long ifdOffset;
            if (this.mIfdType == 0) {
                ifdOffset = readUnsignedLong();
                if ((isIfdRequested(1) || isThumbnailRequested()) && ifdOffset != 0) {
                    registerIfd(1, ifdOffset);
                }
            } else {
                int offsetSize = 4;
                if (this.mCorrespondingEvent.size() > 0) {
                    offsetSize = ((Integer) this.mCorrespondingEvent.firstEntry().getKey()).intValue() - this.mTiffStream.getReadByteCount();
                }
                String str;
                StringBuilder stringBuilder;
                if (offsetSize < 4) {
                    str = TAG;
                    stringBuilder = new StringBuilder();
                    stringBuilder.append("Invalid size of link to next IFD: ");
                    stringBuilder.append(offsetSize);
                    Log.w(str, stringBuilder.toString());
                } else {
                    ifdOffset = readUnsignedLong();
                    if (ifdOffset != 0) {
                        str = TAG;
                        stringBuilder = new StringBuilder();
                        stringBuilder.append("Invalid link to next IFD: ");
                        stringBuilder.append(ifdOffset);
                        Log.w(str, stringBuilder.toString());
                    }
                }
            }
        }
        while (this.mCorrespondingEvent.size() != 0) {
            Entry<Integer, Object> entry = this.mCorrespondingEvent.pollFirstEntry();
            ExifTagEvent event = entry.getValue();
            try {
                skipTo(((Integer) entry.getKey()).intValue());
                if (event instanceof IfdEvent) {
                    this.mIfdType = ((IfdEvent) event).ifd;
                    this.mNumOfTagInIfd = this.mTiffStream.readUnsignedShort();
                    this.mIfdStartOffset = ((Integer) entry.getKey()).intValue();
                    if (((this.mNumOfTagInIfd * 12) + this.mIfdStartOffset) + 2 > this.mApp1End) {
                        String str2 = TAG;
                        StringBuilder stringBuilder2 = new StringBuilder();
                        stringBuilder2.append("Invalid size of IFD ");
                        stringBuilder2.append(this.mIfdType);
                        Log.w(str2, stringBuilder2.toString());
                        return 5;
                    }
                    this.mNeedToParseOffsetsInCurrentIfd = needToParseOffsetsInCurrentIfd();
                    if (((IfdEvent) event).isRequested) {
                        return 0;
                    }
                    skipRemainingTagsInCurrentIfd();
                } else if (event instanceof ImageEvent) {
                    this.mImageEvent = (ImageEvent) event;
                    return this.mImageEvent.type;
                } else {
                    ExifTagEvent tagEvent = event;
                    this.mTag = tagEvent.tag;
                    if (this.mTag.getDataType() != (short) 7) {
                        readFullTagValue(this.mTag);
                        checkOffsetOrImageTag(this.mTag);
                    }
                    if (tagEvent.isRequested) {
                        return 2;
                    }
                }
            } catch (IOException e) {
                String str3 = TAG;
                StringBuilder stringBuilder3 = new StringBuilder();
                stringBuilder3.append("Failed to skip to data at: ");
                stringBuilder3.append(entry.getKey());
                stringBuilder3.append(" for ");
                stringBuilder3.append(event.getClass().getName());
                stringBuilder3.append(", the file may be broken.");
                Log.w(str3, stringBuilder3.toString());
            }
        }
        return 5;
    }

    protected void skipRemainingTagsInCurrentIfd() throws IOException, ExifInvalidFormatException {
        int endOfTags = (this.mIfdStartOffset + 2) + (12 * this.mNumOfTagInIfd);
        int offset = this.mTiffStream.getReadByteCount();
        if (offset <= endOfTags) {
            if (this.mNeedToParseOffsetsInCurrentIfd) {
                while (offset < endOfTags) {
                    this.mTag = readTag();
                    offset += 12;
                    if (this.mTag != null) {
                        checkOffsetOrImageTag(this.mTag);
                    }
                }
            } else {
                skipTo(endOfTags);
            }
            long ifdOffset = readUnsignedLong();
            if (this.mIfdType == 0 && ((isIfdRequested(1) || isThumbnailRequested()) && ifdOffset > 0)) {
                registerIfd(1, ifdOffset);
            }
        }
    }

    private boolean needToParseOffsetsInCurrentIfd() {
        boolean z = false;
        switch (this.mIfdType) {
            case 0:
                if (isIfdRequested(2) || isIfdRequested(4) || isIfdRequested(3) || isIfdRequested(1)) {
                    z = true;
                }
                return z;
            case 1:
                return isThumbnailRequested();
            case 2:
                return isIfdRequested(3);
            default:
                return false;
        }
    }

    protected ExifTag getTag() {
        return this.mTag;
    }

    protected int getTagCountInCurrentIfd() {
        return this.mNumOfTagInIfd;
    }

    protected int getCurrentIfd() {
        return this.mIfdType;
    }

    protected int getStripIndex() {
        return this.mImageEvent.stripIndex;
    }

    protected int getStripCount() {
        return this.mStripCount;
    }

    protected int getStripSize() {
        if (this.mStripSizeTag == null) {
            return 0;
        }
        return (int) this.mStripSizeTag.getValueAt(0);
    }

    protected int getCompressedImageSize() {
        if (this.mJpegSizeTag == null) {
            return 0;
        }
        return (int) this.mJpegSizeTag.getValueAt(0);
    }

    private void skipTo(int offset) throws IOException {
        this.mTiffStream.skipTo((long) offset);
        while (!this.mCorrespondingEvent.isEmpty() && ((Integer) this.mCorrespondingEvent.firstKey()).intValue() < offset) {
            this.mCorrespondingEvent.pollFirstEntry();
        }
    }

    protected void registerForTagValue(ExifTag tag) {
        if (tag.getOffset() >= this.mTiffStream.getReadByteCount()) {
            this.mCorrespondingEvent.put(Integer.valueOf(tag.getOffset()), new ExifTagEvent(tag, true));
        }
    }

    private void registerIfd(int ifdType, long offset) {
        this.mCorrespondingEvent.put(Integer.valueOf((int) offset), new IfdEvent(ifdType, isIfdRequested(ifdType)));
    }

    private void registerCompressedImage(long offset) {
        this.mCorrespondingEvent.put(Integer.valueOf((int) offset), new ImageEvent(3));
    }

    private void registerUncompressedStrip(int stripIndex, long offset) {
        this.mCorrespondingEvent.put(Integer.valueOf((int) offset), new ImageEvent(4, stripIndex));
    }

    private ExifTag readTag() throws IOException, ExifInvalidFormatException {
        short tagId = this.mTiffStream.readShort();
        short dataFormat = this.mTiffStream.readShort();
        long numOfComp = this.mTiffStream.readUnsignedInt();
        if (numOfComp > 2147483647L) {
            throw new ExifInvalidFormatException("Number of component is larger then Integer.MAX_VALUE");
        } else if (ExifTag.isValidType(dataFormat)) {
            ExifTag tag = new ExifTag(tagId, dataFormat, (int) numOfComp, this.mIfdType, ((int) numOfComp) != 0);
            int dataSize = tag.getDataSize();
            if (dataSize > 4) {
                long offset = this.mTiffStream.readUnsignedInt();
                if (offset > 2147483647L) {
                    throw new ExifInvalidFormatException("offset is larger then Integer.MAX_VALUE");
                } else if (offset >= ((long) this.mIfd0Position) || dataFormat != (short) 7) {
                    tag.setOffset((int) offset);
                } else {
                    byte[] buf = new byte[((int) numOfComp)];
                    System.arraycopy(this.mDataAboveIfd0, ((int) offset) - 8, buf, 0, (int) numOfComp);
                    tag.setValue(buf);
                }
            } else {
                boolean defCount = tag.hasDefinedCount();
                tag.setHasDefinedCount(false);
                readFullTagValue(tag);
                tag.setHasDefinedCount(defCount);
                this.mTiffStream.skip((long) (4 - dataSize));
                tag.setOffset(this.mTiffStream.getReadByteCount() - 4);
            }
            return tag;
        } else {
            Log.w(TAG, String.format(Locale.ENGLISH, "Tag %04x: Invalid data type %d", new Object[]{Short.valueOf(tagId), Short.valueOf(dataFormat)}));
            this.mTiffStream.skip(4);
            return null;
        }
    }

    private void checkOffsetOrImageTag(ExifTag tag) {
        if (tag.getComponentCount() != 0) {
            short tid = tag.getTagId();
            int ifd = tag.getIfd();
            int i = 0;
            if (tid == TAG_EXIF_IFD && checkAllowed(ifd, ExifInterface.TAG_EXIF_IFD)) {
                if (isIfdRequested(2) || isIfdRequested(3)) {
                    registerIfd(2, tag.getValueAt(0));
                }
            } else if (tid == TAG_GPS_IFD && checkAllowed(ifd, ExifInterface.TAG_GPS_IFD)) {
                if (isIfdRequested(4)) {
                    registerIfd(4, tag.getValueAt(0));
                }
            } else if (tid == TAG_INTEROPERABILITY_IFD && checkAllowed(ifd, ExifInterface.TAG_INTEROPERABILITY_IFD)) {
                if (isIfdRequested(3)) {
                    registerIfd(3, tag.getValueAt(0));
                }
            } else if (tid == TAG_JPEG_INTERCHANGE_FORMAT && checkAllowed(ifd, ExifInterface.TAG_JPEG_INTERCHANGE_FORMAT)) {
                if (isThumbnailRequested()) {
                    registerCompressedImage(tag.getValueAt(0));
                }
            } else if (tid == TAG_JPEG_INTERCHANGE_FORMAT_LENGTH && checkAllowed(ifd, ExifInterface.TAG_JPEG_INTERCHANGE_FORMAT_LENGTH)) {
                if (isThumbnailRequested()) {
                    this.mJpegSizeTag = tag;
                }
            } else if (tid == TAG_STRIP_OFFSETS && checkAllowed(ifd, ExifInterface.TAG_STRIP_OFFSETS)) {
                if (isThumbnailRequested()) {
                    if (tag.hasValue()) {
                        while (true) {
                            int i2 = i;
                            if (i2 >= tag.getComponentCount()) {
                                break;
                            }
                            if (tag.getDataType() == (short) 3) {
                                registerUncompressedStrip(i2, tag.getValueAt(i2));
                            } else {
                                registerUncompressedStrip(i2, tag.getValueAt(i2));
                            }
                            i = i2 + 1;
                        }
                    } else {
                        this.mCorrespondingEvent.put(Integer.valueOf(tag.getOffset()), new ExifTagEvent(tag, false));
                    }
                }
            } else if (tid == TAG_STRIP_BYTE_COUNTS && checkAllowed(ifd, ExifInterface.TAG_STRIP_BYTE_COUNTS) && isThumbnailRequested() && tag.hasValue()) {
                this.mStripSizeTag = tag;
            }
        }
    }

    private boolean checkAllowed(int ifd, int tagId) {
        int info = this.mInterface.getTagInfo().get(tagId);
        if (info == 0) {
            return false;
        }
        return ExifInterface.isIfdAllowed(info, ifd);
    }

    protected void readFullTagValue(ExifTag tag) throws IOException {
        int size;
        short type = tag.getDataType();
        if (type == (short) 2 || type == (short) 7 || type == (short) 1) {
            int size2 = tag.getComponentCount();
            if (this.mCorrespondingEvent.size() > 0 && ((Integer) this.mCorrespondingEvent.firstEntry().getKey()).intValue() < this.mTiffStream.getReadByteCount() + size2) {
                Object event = this.mCorrespondingEvent.firstEntry().getValue();
                String str;
                StringBuilder stringBuilder;
                if (event instanceof ImageEvent) {
                    str = TAG;
                    stringBuilder = new StringBuilder();
                    stringBuilder.append("Thumbnail overlaps value for tag: \n");
                    stringBuilder.append(tag.toString());
                    Log.w(str, stringBuilder.toString());
                    Entry<Integer, Object> entry = this.mCorrespondingEvent.pollFirstEntry();
                    String str2 = TAG;
                    StringBuilder stringBuilder2 = new StringBuilder();
                    stringBuilder2.append("Invalid thumbnail offset: ");
                    stringBuilder2.append(entry.getKey());
                    Log.w(str2, stringBuilder2.toString());
                } else {
                    if (event instanceof IfdEvent) {
                        str = TAG;
                        stringBuilder = new StringBuilder();
                        stringBuilder.append("Ifd ");
                        stringBuilder.append(((IfdEvent) event).ifd);
                        stringBuilder.append(" overlaps value for tag: \n");
                        stringBuilder.append(tag.toString());
                        Log.w(str, stringBuilder.toString());
                    } else if (event instanceof ExifTagEvent) {
                        str = TAG;
                        stringBuilder = new StringBuilder();
                        stringBuilder.append("Tag value for tag: \n");
                        stringBuilder.append(((ExifTagEvent) event).tag.toString());
                        stringBuilder.append(" overlaps value for tag: \n");
                        stringBuilder.append(tag.toString());
                        Log.w(str, stringBuilder.toString());
                    }
                    size = ((Integer) this.mCorrespondingEvent.firstEntry().getKey()).intValue() - this.mTiffStream.getReadByteCount();
                    String str3 = TAG;
                    stringBuilder = new StringBuilder();
                    stringBuilder.append("Invalid size of tag: \n");
                    stringBuilder.append(tag.toString());
                    stringBuilder.append(" setting count to: ");
                    stringBuilder.append(size);
                    Log.w(str3, stringBuilder.toString());
                    tag.forceSetComponentCount(size);
                }
            }
        }
        int[] value;
        int i;
        Rational[] value2;
        switch (tag.getDataType()) {
            case (short) 1:
            case (short) 7:
                byte[] buf = new byte[tag.getComponentCount()];
                read(buf);
                tag.setValue(buf);
                return;
            case (short) 2:
                tag.setValue(readString(tag.getComponentCount()));
                return;
            case (short) 3:
                value = new int[tag.getComponentCount()];
                size = value.length;
                for (i = 0; i < size; i++) {
                    value[i] = readUnsignedShort();
                }
                tag.setValue(value);
                return;
            case (short) 4:
                long[] value3 = new long[tag.getComponentCount()];
                size = value3.length;
                for (i = 0; i < size; i++) {
                    value3[i] = readUnsignedLong();
                }
                tag.setValue(value3);
                return;
            case (short) 5:
                value2 = new Rational[tag.getComponentCount()];
                size = value2.length;
                for (i = 0; i < size; i++) {
                    value2[i] = readUnsignedRational();
                }
                tag.setValue(value2);
                return;
            case (short) 9:
                value = new int[tag.getComponentCount()];
                size = value.length;
                for (i = 0; i < size; i++) {
                    value[i] = readLong();
                }
                tag.setValue(value);
                return;
            case (short) 10:
                value2 = new Rational[tag.getComponentCount()];
                size = value2.length;
                for (i = 0; i < size; i++) {
                    value2[i] = readRational();
                }
                tag.setValue(value2);
                return;
            default:
                return;
        }
    }

    private void parseTiffHeader() throws IOException, ExifInvalidFormatException {
        short byteOrder = this.mTiffStream.readShort();
        if (LITTLE_ENDIAN_TAG == byteOrder) {
            this.mTiffStream.setByteOrder(ByteOrder.LITTLE_ENDIAN);
        } else if (BIG_ENDIAN_TAG == byteOrder) {
            this.mTiffStream.setByteOrder(ByteOrder.BIG_ENDIAN);
        } else {
            throw new ExifInvalidFormatException("Invalid TIFF header");
        }
        if (this.mTiffStream.readShort() != TIFF_HEADER_TAIL) {
            throw new ExifInvalidFormatException("Invalid TIFF header");
        }
    }

    private boolean seekTiffData(InputStream inputStream) throws IOException, ExifInvalidFormatException {
        CountedDataInputStream dataStream = new CountedDataInputStream(inputStream);
        if (dataStream.readShort() == (short) -40) {
            short marker = dataStream.readShort();
            while (marker != (short) -39 && !JpegHeader.isSofMarker(marker)) {
                int length = dataStream.readUnsignedShort();
                if (marker == (short) -31 && length >= 8) {
                    int header = dataStream.readInt();
                    short headerTail = dataStream.readShort();
                    length -= 6;
                    if (header == EXIF_HEADER && headerTail == (short) 0) {
                        this.mTiffStartPosition = dataStream.getReadByteCount();
                        this.mApp1End = length;
                        this.mOffsetToApp1EndFromSOF = this.mTiffStartPosition + this.mApp1End;
                        return true;
                    }
                }
                if (length < 2 || ((long) (length - 2)) != dataStream.skip((long) (length - 2))) {
                    Log.w(TAG, "Invalid JPEG format.");
                    return false;
                }
                marker = dataStream.readShort();
            }
            return false;
        }
        throw new ExifInvalidFormatException("Invalid JPEG format");
    }

    protected int getOffsetToExifEndFromSOF() {
        return this.mOffsetToApp1EndFromSOF;
    }

    protected int getTiffStartPosition() {
        return this.mTiffStartPosition;
    }

    protected int read(byte[] buffer, int offset, int length) throws IOException {
        return this.mTiffStream.read(buffer, offset, length);
    }

    protected int read(byte[] buffer) throws IOException {
        return this.mTiffStream.read(buffer);
    }

    protected String readString(int n) throws IOException {
        return readString(n, US_ASCII);
    }

    protected String readString(int n, Charset charset) throws IOException {
        if (n > 0) {
            return this.mTiffStream.readString(n, charset);
        }
        return "";
    }

    protected int readUnsignedShort() throws IOException {
        return this.mTiffStream.readShort() & SupportMenu.USER_MASK;
    }

    protected long readUnsignedLong() throws IOException {
        return ((long) readLong()) & 4294967295L;
    }

    protected Rational readUnsignedRational() throws IOException {
        return new Rational(readUnsignedLong(), readUnsignedLong());
    }

    protected int readLong() throws IOException {
        return this.mTiffStream.readInt();
    }

    protected Rational readRational() throws IOException {
        return new Rational((long) readLong(), (long) readLong());
    }

    protected ByteOrder getByteOrder() {
        return this.mTiffStream.getByteOrder();
    }
}
