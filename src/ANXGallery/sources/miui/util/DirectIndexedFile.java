package miui.util;

import java.io.BufferedOutputStream;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class DirectIndexedFile {
    private static final boolean DEBUG = false;
    private static final String LOG_TAG = "DensityIndexFile: ";

    public static class Builder {
        private FileHeader Hs;
        private ArrayList<IndexData> Ht;
        private IndexData Hu;
        private int Hv;

        private class DataItemHolder {
            private HashMap<Object, Integer> Hw;
            private ArrayList<Object> Hx;

            private DataItemHolder() {
                this.Hw = new HashMap();
                this.Hx = new ArrayList();
            }

            private Integer e(Object obj) {
                Integer num = (Integer) this.Hw.get(obj);
                if (num != null) {
                    return num;
                }
                num = Integer.valueOf(this.Hx.size());
                this.Hw.put(obj, num);
                this.Hx.add(obj);
                return num;
            }

            private int size() {
                return this.Hx.size();
            }

            private ArrayList<Object> dm() {
                return this.Hx;
            }
        }

        private static class IndexData {
            private HashMap<Integer, Item> HA;
            private ArrayList<ArrayList<Item>> HB;
            private ArrayList<DataItemHolder> HC;
            private DataItemDescriptor[] HD;
            private IndexGroupDescriptor[] HE;
            private Item Hz;

            private IndexData(int i) {
                this.HA = new HashMap();
                this.HC = new ArrayList();
                this.HB = new ArrayList();
                this.HD = new DataItemDescriptor[i];
            }
        }

        private class Item implements Comparable<Item> {
            private Object[] HF;
            private int mIndex;

            private Item(int i, Object[] objArr) {
                this.mIndex = i;
                this.HF = objArr;
            }

            public int hashCode() {
                return this.mIndex;
            }

            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if ((obj instanceof Item) && this.mIndex == ((Item) obj).mIndex) {
                    return true;
                }
                return false;
            }

            /* renamed from: a */
            public int compareTo(Item item) {
                return this.mIndex - item.mIndex;
            }
        }

        private Builder(int i) {
            this.Ht = new ArrayList();
            this.Hv = i;
        }

        public void addKind(Object... objArr) {
            this.Hu = new IndexData(objArr.length);
            this.Ht.add(this.Hu);
            for (int i = 0; i < objArr.length; i++) {
                Type type;
                this.Hu.HC.add(new DataItemHolder());
                byte b = (byte) 1;
                if (objArr[i] instanceof Byte) {
                    type = Type.BYTE;
                    ((DataItemHolder) this.Hu.HC.get(i)).e(objArr[i]);
                } else if (objArr[i] instanceof Short) {
                    type = Type.SHORT;
                    b = (byte) 2;
                    ((DataItemHolder) this.Hu.HC.get(i)).e(objArr[i]);
                } else if (objArr[i] instanceof Integer) {
                    type = Type.INTEGER;
                    b = (byte) 4;
                    ((DataItemHolder) this.Hu.HC.get(i)).e(objArr[i]);
                } else if (objArr[i] instanceof Long) {
                    type = Type.LONG;
                    b = (byte) 8;
                    ((DataItemHolder) this.Hu.HC.get(i)).e(objArr[i]);
                } else if (objArr[i] instanceof String) {
                    type = Type.STRING;
                    objArr[i] = ((DataItemHolder) this.Hu.HC.get(i)).e(objArr[i]);
                } else if (objArr[i] instanceof byte[]) {
                    type = Type.BYTE_ARRAY;
                    objArr[i] = ((DataItemHolder) this.Hu.HC.get(i)).e(objArr[i]);
                } else if (objArr[i] instanceof short[]) {
                    type = Type.SHORT_ARRAY;
                    objArr[i] = ((DataItemHolder) this.Hu.HC.get(i)).e(objArr[i]);
                } else if (objArr[i] instanceof int[]) {
                    type = Type.INTEGER_ARRAY;
                    objArr[i] = ((DataItemHolder) this.Hu.HC.get(i)).e(objArr[i]);
                } else if (objArr[i] instanceof long[]) {
                    type = Type.LONG_ARRAY;
                    objArr[i] = ((DataItemHolder) this.Hu.HC.get(i)).e(objArr[i]);
                } else {
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append("Unsupported type of the [");
                    stringBuilder.append(i);
                    stringBuilder.append("] argument");
                    throw new IllegalArgumentException(stringBuilder.toString());
                }
                this.Hu.HD[i] = new DataItemDescriptor(type, b, (byte) 0, (byte) 0, 0);
            }
            this.Hu.Hz = new Item(-1, objArr);
        }

        public void newGroup() {
            if (this.Hu.HB.size() == 0 || ((ArrayList) this.Hu.HB.get(this.Hu.HB.size() - 1)).size() != 0) {
                this.Hu.HB.add(new ArrayList());
            }
        }

        public void addGroup(int[] iArr, Object[][] objArr) {
            dk();
            if (iArr.length == objArr.length) {
                newGroup();
                for (int i = 0; i < iArr.length; i++) {
                    add(iArr[i], objArr[i]);
                }
                return;
            }
            throw new IllegalArgumentException("Different number between indexes and objects");
        }

        public void add(int i, Object... objArr) {
            dl();
            StringBuilder stringBuilder;
            if (this.Hu.HD.length == objArr.length) {
                for (int i2 = 0; i2 < objArr.length; i2++) {
                    switch (this.Hu.HD[i2].HL) {
                        case STRING:
                            if (objArr[i2] instanceof String) {
                                objArr[i2] = ((DataItemHolder) this.Hu.HC.get(i2)).e(objArr[i2]);
                                this.Hu.HD[i2].HM = DataItemDescriptor.X(((DataItemHolder) this.Hu.HC.get(i2)).size());
                                break;
                            }
                            stringBuilder = new StringBuilder();
                            stringBuilder.append("Object[");
                            stringBuilder.append(i2);
                            stringBuilder.append("] should be String");
                            throw new IllegalArgumentException(stringBuilder.toString());
                        case BYTE_ARRAY:
                            if (objArr[i2] instanceof byte[]) {
                                objArr[i2] = ((DataItemHolder) this.Hu.HC.get(i2)).e(objArr[i2]);
                                this.Hu.HD[i2].HM = DataItemDescriptor.X(((DataItemHolder) this.Hu.HC.get(i2)).size());
                                break;
                            }
                            stringBuilder = new StringBuilder();
                            stringBuilder.append("Object[");
                            stringBuilder.append(i2);
                            stringBuilder.append("] should be byte[]");
                            throw new IllegalArgumentException(stringBuilder.toString());
                        case SHORT_ARRAY:
                            if (objArr[i2] instanceof short[]) {
                                objArr[i2] = ((DataItemHolder) this.Hu.HC.get(i2)).e(objArr[i2]);
                                this.Hu.HD[i2].HM = DataItemDescriptor.X(((DataItemHolder) this.Hu.HC.get(i2)).size());
                                break;
                            }
                            stringBuilder = new StringBuilder();
                            stringBuilder.append("Object[");
                            stringBuilder.append(i2);
                            stringBuilder.append("] should be short[]");
                            throw new IllegalArgumentException(stringBuilder.toString());
                        case INTEGER_ARRAY:
                            if (objArr[i2] instanceof int[]) {
                                objArr[i2] = ((DataItemHolder) this.Hu.HC.get(i2)).e(objArr[i2]);
                                this.Hu.HD[i2].HM = DataItemDescriptor.X(((DataItemHolder) this.Hu.HC.get(i2)).size());
                                break;
                            }
                            stringBuilder = new StringBuilder();
                            stringBuilder.append("Object[");
                            stringBuilder.append(i2);
                            stringBuilder.append("] should be int[]");
                            throw new IllegalArgumentException(stringBuilder.toString());
                        case LONG_ARRAY:
                            if (objArr[i2] instanceof long[]) {
                                objArr[i2] = ((DataItemHolder) this.Hu.HC.get(i2)).e(objArr[i2]);
                                this.Hu.HD[i2].HM = DataItemDescriptor.X(((DataItemHolder) this.Hu.HC.get(i2)).size());
                                break;
                            }
                            stringBuilder = new StringBuilder();
                            stringBuilder.append("Object[");
                            stringBuilder.append(i2);
                            stringBuilder.append("] should be long[]");
                            throw new IllegalArgumentException(stringBuilder.toString());
                        case BYTE:
                            if (objArr[i2] instanceof Byte) {
                                break;
                            }
                            stringBuilder = new StringBuilder();
                            stringBuilder.append("Object[");
                            stringBuilder.append(i2);
                            stringBuilder.append("] should be byte");
                            throw new IllegalArgumentException(stringBuilder.toString());
                        case SHORT:
                            if (objArr[i2] instanceof Short) {
                                break;
                            }
                            stringBuilder = new StringBuilder();
                            stringBuilder.append("Object[");
                            stringBuilder.append(i2);
                            stringBuilder.append("] should be short");
                            throw new IllegalArgumentException(stringBuilder.toString());
                        case INTEGER:
                            if (objArr[i2] instanceof Integer) {
                                break;
                            }
                            stringBuilder = new StringBuilder();
                            stringBuilder.append("Object[");
                            stringBuilder.append(i2);
                            stringBuilder.append("] should be int");
                            throw new IllegalArgumentException(stringBuilder.toString());
                        case LONG:
                            if (objArr[i2] instanceof Long) {
                                break;
                            }
                            stringBuilder = new StringBuilder();
                            stringBuilder.append("Object[");
                            stringBuilder.append(i2);
                            stringBuilder.append("] should be long");
                            throw new IllegalArgumentException(stringBuilder.toString());
                        default:
                            stringBuilder = new StringBuilder();
                            stringBuilder.append("Unsupported type of objects ");
                            stringBuilder.append(i2);
                            stringBuilder.append(", ");
                            stringBuilder.append(this.Hu.HD[i2].HL);
                            stringBuilder.append(" expected");
                            throw new IllegalArgumentException(stringBuilder.toString());
                    }
                }
                Item item = new Item(i, objArr);
                this.Hu.HA.put(Integer.valueOf(i), item);
                ((ArrayList) this.Hu.HB.get(this.Hu.HB.size() - 1)).add(item);
                return;
            }
            stringBuilder = new StringBuilder();
            stringBuilder.append("Different number of objects inputted, ");
            stringBuilder.append(this.Hu.HD.length);
            stringBuilder.append(" data expected");
            throw new IllegalArgumentException(stringBuilder.toString());
        }

        /* JADX WARNING: Removed duplicated region for block: B:11:0x0027  */
        /* JADX WARNING: Removed duplicated region for block: B:14:0x0036  */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void write(String str) throws IOException {
            Throwable th;
            build();
            DataOutputStream dataOutputStream = null;
            try {
                DataOutputStream dataOutputStream2 = new DataOutputStream(new BufferedOutputStream(new FileOutputStream(str)));
                try {
                    a(dataOutputStream2);
                    dataOutputStream2.close();
                } catch (Throwable th2) {
                    DataOutputStream dataOutputStream3 = dataOutputStream2;
                    th = th2;
                    dataOutputStream = dataOutputStream3;
                    if (dataOutputStream != null) {
                    }
                    if (new File(str).delete()) {
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                if (dataOutputStream != null) {
                    dataOutputStream.close();
                }
                if (new File(str).delete()) {
                    PrintStream printStream = System.err;
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append("Cannot delete file ");
                    stringBuilder.append(str);
                    printStream.println(stringBuilder.toString());
                }
                throw th;
            }
        }

        private void dk() {
            if (this.Hu == null) {
                throw new IllegalArgumentException("Please add a data kind before adding group");
            }
        }

        private void dl() {
            dk();
            if (this.Hu.HB.size() == 0) {
                throw new IllegalArgumentException("Please add a data group before adding data");
            }
        }

        private void build() {
            int size = this.Ht.size();
            this.Hs = new FileHeader(size, this.Hv);
            for (int i = 0; i < size; i++) {
                IndexData indexData = (IndexData) this.Ht.get(i);
                this.Hs.Ii[i] = new DescriptionPair(0, 0);
                int i2 = 0;
                while (i2 < indexData.HB.size() && ((ArrayList) indexData.HB.get(i2)).size() != 0) {
                    i2++;
                }
                indexData.HE = new IndexGroupDescriptor[i2];
                for (i2 = 0; i2 < indexData.HE.length; i2++) {
                    ArrayList arrayList = (ArrayList) indexData.HB.get(i2);
                    Collections.sort(arrayList);
                    indexData.HE[i2] = new IndexGroupDescriptor(((Item) arrayList.get(0)).mIndex, ((Item) arrayList.get(arrayList.size() - 1)).mIndex + 1, 0);
                }
            }
            try {
                a(null);
            } catch (IOException e) {
            }
        }

        private int a(DataOutput dataOutput) throws IOException {
            int i = 0;
            int i2 = i;
            while (i < this.Hs.Ii.length) {
                i2 += this.Hs.b(dataOutput);
                this.Hs.Ii[i].Ie = (long) i2;
                IndexData indexData = (IndexData) this.Ht.get(i);
                if (dataOutput != null) {
                    dataOutput.writeInt(indexData.HE.length);
                }
                int i3 = i2 + 4;
                for (IndexGroupDescriptor a : indexData.HE) {
                    i3 += a.b(dataOutput);
                }
                this.Hs.Ii[i].If = (long) i3;
                if (dataOutput != null) {
                    dataOutput.writeInt(indexData.HD.length);
                }
                i3 += 4;
                for (DataItemDescriptor a2 : indexData.HD) {
                    i3 += a2.b(dataOutput);
                }
                for (i2 = 0; i2 < indexData.HD.length; i2++) {
                    indexData.HD[i2].HQ = (long) i3;
                    i3 += indexData.HD[i2].b(dataOutput, ((DataItemHolder) indexData.HC.get(i2)).dm());
                }
                for (i2 = 0; i2 < indexData.HE.length; i2++) {
                    indexData.HE[i2].HQ = (long) i3;
                    int i4;
                    if (dataOutput == null) {
                        i4 = 0;
                        int i5 = i4;
                        while (i4 < indexData.HD.length) {
                            i5 += indexData.HD[i4].HM;
                            i4++;
                        }
                        i3 += (indexData.HE[i2].Il - indexData.HE[i2].Ik) * i5;
                    } else {
                        i4 = indexData.HE[i2].Ik;
                        while (i4 < indexData.HE[i2].Il) {
                            Item item = (Item) indexData.HA.get(Integer.valueOf(i4));
                            if (item == null) {
                                item = indexData.Hz;
                            }
                            int i6 = i3;
                            for (i3 = 0; i3 < indexData.HD.length; i3++) {
                                if (indexData.HD[i3].HM == (byte) 1) {
                                    dataOutput.writeByte(((Integer) item.HF[i3]).intValue());
                                } else if (indexData.HD[i3].HM == (byte) 2) {
                                    dataOutput.writeShort(((Integer) item.HF[i3]).intValue());
                                } else if (indexData.HD[i3].HM == (byte) 4) {
                                    dataOutput.writeInt(((Integer) item.HF[i3]).intValue());
                                } else if (indexData.HD[i3].HM == (byte) 8) {
                                    dataOutput.writeLong(((Long) item.HF[i3]).longValue());
                                }
                                i6 += indexData.HD[i3].HM;
                            }
                            i4++;
                            i3 = i6;
                        }
                    }
                }
                i++;
                i2 = i3;
            }
            return i2;
        }
    }

    private interface InputFile extends DataInput {
        void close() throws IOException;

        long getFilePointer() throws IOException;

        void seek(long j) throws IOException;
    }

    private static class DataInputRandom implements InputFile {
        private RandomAccessFile HG;

        DataInputRandom(RandomAccessFile randomAccessFile) {
            this.HG = randomAccessFile;
        }

        public boolean readBoolean() throws IOException {
            return this.HG.readBoolean();
        }

        public byte readByte() throws IOException {
            return this.HG.readByte();
        }

        public char readChar() throws IOException {
            return this.HG.readChar();
        }

        public double readDouble() throws IOException {
            return this.HG.readDouble();
        }

        public float readFloat() throws IOException {
            return this.HG.readFloat();
        }

        public void readFully(byte[] bArr) throws IOException {
            this.HG.readFully(bArr);
        }

        public void readFully(byte[] bArr, int i, int i2) throws IOException {
            this.HG.readFully(bArr, i, i2);
        }

        public int readInt() throws IOException {
            return this.HG.readInt();
        }

        public String readLine() throws IOException {
            return this.HG.readLine();
        }

        public long readLong() throws IOException {
            return this.HG.readLong();
        }

        public short readShort() throws IOException {
            return this.HG.readShort();
        }

        public int readUnsignedByte() throws IOException {
            return this.HG.readUnsignedByte();
        }

        public int readUnsignedShort() throws IOException {
            return this.HG.readUnsignedShort();
        }

        public String readUTF() throws IOException {
            return this.HG.readUTF();
        }

        public int skipBytes(int i) throws IOException {
            return this.HG.skipBytes(i);
        }

        public void seek(long j) throws IOException {
            this.HG.seek(j);
        }

        public void close() throws IOException {
            this.HG.close();
        }

        public long getFilePointer() throws IOException {
            return this.HG.getFilePointer();
        }
    }

    private static class DataInputStream implements InputFile {
        private InputStream HH;
        private long HI = 0;

        DataInputStream(InputStream inputStream) {
            this.HH = inputStream;
            this.HH.mark(0);
        }

        public boolean readBoolean() throws IOException {
            this.HI++;
            return this.HH.read() != 0;
        }

        public byte readByte() throws IOException {
            this.HI++;
            return (byte) this.HH.read();
        }

        public char readChar() throws IOException {
            byte[] bArr = new byte[2];
            this.HI += 2;
            if (this.HH.read(bArr) == 2) {
                return (char) (((char) (bArr[1] & 255)) | ((bArr[0] << 8) & 65280));
            }
            return 0;
        }

        public double readDouble() throws IOException {
            throw new IOException();
        }

        public float readFloat() throws IOException {
            throw new IOException();
        }

        public void readFully(byte[] bArr) throws IOException {
            this.HI += (long) this.HH.read(bArr);
        }

        public void readFully(byte[] bArr, int i, int i2) throws IOException {
            this.HI += (long) this.HH.read(bArr, i, i2);
        }

        public int readInt() throws IOException {
            byte[] bArr = new byte[4];
            this.HI += 4;
            if (this.HH.read(bArr) == 4) {
                return (((bArr[3] & 255) | ((bArr[2] << 8) & 65280)) | ((bArr[1] << 16) & 16711680)) | ((bArr[0] << 24) & -16777216);
            }
            return 0;
        }

        public String readLine() throws IOException {
            throw new IOException();
        }

        public long readLong() throws IOException {
            byte[] bArr = new byte[8];
            this.HI += 8;
            if (this.HH.read(bArr) != 8) {
                return 0;
            }
            return ((((long) bArr[0]) << 56) & -72057594037927936L) | ((((((((long) (bArr[7] & 255)) | (((long) (bArr[6] << 8)) & 65280)) | (((long) (bArr[5] << 16)) & 16711680)) | (((long) (bArr[4] << 24)) & 4278190080L)) | ((((long) bArr[3]) << 32) & 1095216660480L)) | ((((long) bArr[2]) << 40) & 280375465082880L)) | ((((long) bArr[1]) << 48) & 71776119061217280L));
        }

        public short readShort() throws IOException {
            byte[] bArr = new byte[2];
            this.HI += 2;
            if (this.HH.read(bArr) == 2) {
                return (short) (((short) (bArr[1] & 255)) | ((bArr[0] << 8) & 65280));
            }
            return (short) 0;
        }

        public int readUnsignedByte() throws IOException {
            this.HI++;
            return (byte) this.HH.read();
        }

        public int readUnsignedShort() throws IOException {
            byte[] bArr = new byte[2];
            this.HI += 2;
            if (this.HH.read(bArr) == 2) {
                return (short) (((short) (bArr[1] & 255)) | ((bArr[0] << 8) & 65280));
            }
            return 0;
        }

        public String readUTF() throws IOException {
            throw new IOException();
        }

        public int skipBytes(int i) throws IOException {
            i = (int) this.HH.skip((long) i);
            this.HI += (long) i;
            return i;
        }

        public void seek(long j) throws IOException {
            this.HH.reset();
            if (this.HH.skip(j) == j) {
                this.HI = j;
                return;
            }
            throw new IOException("Skip failed");
        }

        public void close() throws IOException {
            this.HH.close();
        }

        public long getFilePointer() throws IOException {
            return this.HI;
        }
    }

    private static class DataItemDescriptor {
        private static byte[] HJ = new byte[1024];
        private Type HL;
        private byte HM;
        private byte HO;
        private byte HP;
        private long HQ;

        private enum Type {
            BYTE,
            SHORT,
            INTEGER,
            LONG,
            STRING,
            BYTE_ARRAY,
            SHORT_ARRAY,
            INTEGER_ARRAY,
            LONG_ARRAY
        }

        private static byte[] W(int i) {
            byte[] bArr;
            synchronized (DataItemDescriptor.class) {
                if (HJ == null || HJ.length < i) {
                    HJ = new byte[i];
                }
                bArr = HJ;
                HJ = null;
            }
            return bArr;
        }

        private static void b(byte[] bArr) {
            synchronized (DataItemDescriptor.class) {
                if (bArr != null) {
                    if (HJ == null || HJ.length < bArr.length) {
                        HJ = bArr;
                    }
                }
            }
        }

        private DataItemDescriptor(Type type, byte b, byte b2, byte b3, long j) {
            this.HL = type;
            this.HM = b;
            this.HO = b2;
            this.HP = b3;
            this.HQ = j;
        }

        private static DataItemDescriptor a(DataInput dataInput) throws IOException {
            return new DataItemDescriptor(Type.values()[dataInput.readByte()], dataInput.readByte(), dataInput.readByte(), dataInput.readByte(), dataInput.readLong());
        }

        private int b(DataOutput dataOutput) throws IOException {
            if (dataOutput != null) {
                dataOutput.writeByte(this.HL.ordinal());
                dataOutput.writeByte(this.HM);
                dataOutput.writeByte(this.HO);
                dataOutput.writeByte(this.HP);
                dataOutput.writeLong(this.HQ);
            }
            return 12;
        }

        private int a(DataOutput dataOutput, List<Object> list) throws IOException {
            int size;
            if (dataOutput == null || this.HP == (byte) 0 || this.HO == (byte) 0) {
                size = list.size() * 4;
                int i = size;
                size = 0;
                for (Object next : list) {
                    int length;
                    switch (this.HL) {
                        case STRING:
                            length = ((String) next).getBytes().length;
                            i += length;
                            break;
                        case BYTE_ARRAY:
                            length = ((byte[]) next).length;
                            i += length;
                            break;
                        case SHORT_ARRAY:
                            length = ((short[]) next).length;
                            i += 2 * length;
                            break;
                        case INTEGER_ARRAY:
                            length = ((int[]) next).length;
                            i += 4 * length;
                            break;
                        case LONG_ARRAY:
                            length = ((long[]) next).length;
                            i += 8 * length;
                            break;
                        default:
                            length = 0;
                            break;
                    }
                    if (size < length) {
                        size = length;
                    }
                }
                this.HO = X(size);
                this.HP = X(i + (this.HO * list.size()));
            }
            size = this.HP * list.size();
            if (dataOutput != null) {
                int i2 = size;
                for (Object next2 : list) {
                    a(dataOutput, this.HP, (long) i2);
                    switch (this.HL) {
                        case STRING:
                            i2 += this.HO + ((String) next2).getBytes().length;
                            break;
                        case BYTE_ARRAY:
                            i2 += this.HO + ((byte[]) next2).length;
                            break;
                        case SHORT_ARRAY:
                            i2 += this.HO + (((short[]) next2).length * 2);
                            break;
                        case INTEGER_ARRAY:
                            i2 += this.HO + (((int[]) next2).length * 4);
                            break;
                        case LONG_ARRAY:
                            i2 += this.HO + (((long[]) next2).length * 8);
                            break;
                        default:
                            break;
                    }
                }
            }
            return size;
        }

        private int b(DataOutput dataOutput, List<Object> list) throws IOException {
            int i = 4;
            Iterator it;
            int i2;
            byte[] bytes;
            switch (this.HL) {
                case STRING:
                    if (dataOutput != null) {
                        dataOutput.writeInt(list.size());
                    }
                    i = 4 + a(dataOutput, (List) list);
                    it = list.iterator();
                    i2 = i;
                    while (it.hasNext()) {
                        bytes = ((String) it.next()).getBytes();
                        if (dataOutput != null) {
                            a(dataOutput, this.HO, (long) bytes.length);
                            for (byte writeByte : bytes) {
                                dataOutput.writeByte(writeByte);
                            }
                        }
                        i2 += this.HO + bytes.length;
                    }
                    return i2;
                case BYTE_ARRAY:
                    if (dataOutput != null) {
                        dataOutput.writeInt(list.size());
                    }
                    i = 4 + a(dataOutput, (List) list);
                    it = list.iterator();
                    i2 = i;
                    while (it.hasNext()) {
                        bytes = (byte[]) it.next();
                        if (dataOutput != null) {
                            a(dataOutput, this.HO, (long) bytes.length);
                            dataOutput.write(bytes);
                        }
                        i2 += this.HO + bytes.length;
                    }
                    return i2;
                case SHORT_ARRAY:
                    if (dataOutput != null) {
                        dataOutput.writeInt(list.size());
                    }
                    i = 4 + a(dataOutput, (List) list);
                    it = list.iterator();
                    while (it.hasNext()) {
                        short[] sArr = (short[]) it.next();
                        if (dataOutput != null) {
                            a(dataOutput, this.HO, (long) sArr.length);
                            for (short writeShort : sArr) {
                                dataOutput.writeShort(writeShort);
                            }
                        }
                        i += this.HO + (sArr.length * 2);
                    }
                    break;
                case INTEGER_ARRAY:
                    if (dataOutput != null) {
                        dataOutput.writeInt(list.size());
                    }
                    int a = a(dataOutput, (List) list) + 4;
                    it = list.iterator();
                    i2 = a;
                    while (it.hasNext()) {
                        int[] iArr = (int[]) it.next();
                        if (dataOutput != null) {
                            a(dataOutput, this.HO, (long) iArr.length);
                            for (int writeInt : iArr) {
                                dataOutput.writeInt(writeInt);
                            }
                        }
                        i2 += this.HO + (iArr.length * 4);
                    }
                    return i2;
                case LONG_ARRAY:
                    if (dataOutput != null) {
                        dataOutput.writeInt(list.size());
                    }
                    i = 4 + a(dataOutput, (List) list);
                    it = list.iterator();
                    i2 = i;
                    while (it.hasNext()) {
                        long[] jArr = (long[]) it.next();
                        if (dataOutput != null) {
                            a(dataOutput, this.HO, (long) jArr.length);
                            for (long writeLong : jArr) {
                                dataOutput.writeLong(writeLong);
                            }
                        }
                        i2 += this.HO + (jArr.length * 8);
                    }
                    return i2;
                case BYTE:
                    if (dataOutput != null) {
                        dataOutput.writeByte(((Byte) list.get(0)).byteValue());
                    }
                    return 1;
                case SHORT:
                    if (dataOutput == null) {
                        return 2;
                    }
                    dataOutput.writeShort(((Short) list.get(0)).shortValue());
                    return 2;
                case INTEGER:
                    if (dataOutput != null) {
                        dataOutput.writeInt(((Integer) list.get(0)).intValue());
                        break;
                    }
                    break;
                case LONG:
                    if (dataOutput != null) {
                        dataOutput.writeLong(((Long) list.get(0)).longValue());
                    }
                    return 8;
                default:
                    return 0;
            }
            return i;
        }

        private Object a(InputFile inputFile, int i) throws IOException {
            Object str;
            long filePointer = inputFile.getFilePointer();
            if (i != 0) {
                inputFile.seek(((long) (this.HP * i)) + filePointer);
            }
            inputFile.seek(filePointer + a((DataInput) inputFile, this.HP));
            byte[] bArr = null;
            int i2 = 0;
            switch (this.HL) {
                case STRING:
                    i = (int) a((DataInput) inputFile, this.HO);
                    bArr = W(i);
                    inputFile.readFully(bArr, 0, i);
                    str = new String(bArr, 0, i);
                    break;
                case BYTE_ARRAY:
                    str = new byte[((int) a((DataInput) inputFile, this.HO))];
                    inputFile.readFully(str);
                    break;
                case SHORT_ARRAY:
                    str = new short[((int) a((DataInput) inputFile, this.HO))];
                    while (i2 < str.length) {
                        str[i2] = inputFile.readShort();
                        i2++;
                    }
                    break;
                case INTEGER_ARRAY:
                    str = new int[((int) a((DataInput) inputFile, this.HO))];
                    while (i2 < str.length) {
                        str[i2] = inputFile.readInt();
                        i2++;
                    }
                    break;
                case LONG_ARRAY:
                    str = new long[((int) a((DataInput) inputFile, this.HO))];
                    while (i2 < str.length) {
                        str[i2] = inputFile.readLong();
                        i2++;
                    }
                    break;
                default:
                    str = null;
                    break;
            }
            b(bArr);
            return str;
        }

        private Object[] a(InputFile inputFile) throws IOException {
            switch (this.HL) {
                case STRING:
                case BYTE_ARRAY:
                case SHORT_ARRAY:
                case INTEGER_ARRAY:
                case LONG_ARRAY:
                    Object[] objArr = new Object[inputFile.readInt()];
                    objArr[0] = a(inputFile, 0);
                    return objArr;
                case BYTE:
                    return new Object[]{Byte.valueOf(inputFile.readByte())};
                case SHORT:
                    return new Object[]{Short.valueOf(inputFile.readShort())};
                case INTEGER:
                    return new Object[]{Integer.valueOf(inputFile.readInt())};
                case LONG:
                    return new Object[]{Long.valueOf(inputFile.readLong())};
                default:
                    return null;
            }
        }

        private static void a(DataOutput dataOutput, int i, long j) throws IOException {
            if (i == 4) {
                dataOutput.writeInt((int) j);
            } else if (i != 8) {
                switch (i) {
                    case 1:
                        dataOutput.writeByte((int) j);
                        return;
                    case 2:
                        dataOutput.writeShort((int) j);
                        return;
                    default:
                        StringBuilder stringBuilder = new StringBuilder();
                        stringBuilder.append("Unsuppoert size ");
                        stringBuilder.append(i);
                        throw new IllegalArgumentException(stringBuilder.toString());
                }
            } else {
                dataOutput.writeLong(j);
            }
        }

        private static long a(DataInput dataInput, int i) throws IOException {
            if (i == 4) {
                return (long) dataInput.readInt();
            }
            if (i == 8) {
                return dataInput.readLong();
            }
            switch (i) {
                case 1:
                    return (long) dataInput.readByte();
                case 2:
                    return (long) dataInput.readShort();
                default:
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append("Unsuppoert size ");
                    stringBuilder.append(i);
                    throw new IllegalArgumentException(stringBuilder.toString());
            }
        }

        private static byte X(int i) {
            byte b = (byte) 0;
            for (long j = (long) (2 * i); j > 0; j >>= 8) {
                b = (byte) (b + 1);
            }
            if (b == (byte) 3) {
                return (byte) 4;
            }
            return (b <= (byte) 4 || b >= (byte) 8) ? b : (byte) 8;
        }
    }

    private static class DescriptionPair {
        private long Ie;
        private long If;

        private DescriptionPair(long j, long j2) {
            this.Ie = j;
            this.If = j2;
        }

        private static DescriptionPair c(DataInput dataInput) throws IOException {
            return new DescriptionPair(dataInput.readLong(), dataInput.readLong());
        }

        private int b(DataOutput dataOutput) throws IOException {
            if (dataOutput != null) {
                dataOutput.writeLong(this.Ie);
                dataOutput.writeLong(this.If);
            }
            return 16;
        }
    }

    private static class FileHeader {
        private static final byte[] Ig = new byte[]{(byte) 73, (byte) 68, (byte) 70, (byte) 32};
        private static final int Ih = 2;
        private DescriptionPair[] Ii;
        private int Ij;

        private FileHeader(int i, int i2) {
            this.Ii = new DescriptionPair[i];
            this.Ij = i2;
        }

        private static FileHeader e(DataInput dataInput) throws IOException {
            int i = 0;
            byte[] bArr = new byte[Ig.length];
            for (int i2 = 0; i2 < bArr.length; i2++) {
                bArr[i2] = dataInput.readByte();
            }
            if (!Arrays.equals(bArr, Ig)) {
                throw new IOException("File tag unmatched, file may be corrupt");
            } else if (dataInput.readInt() == 2) {
                int readInt = dataInput.readInt();
                FileHeader fileHeader = new FileHeader(readInt, dataInput.readInt());
                while (i < readInt) {
                    fileHeader.Ii[i] = DescriptionPair.c(dataInput);
                    i++;
                }
                return fileHeader;
            } else {
                throw new IOException("File version unmatched, please upgrade your reader");
            }
        }

        private int b(DataOutput dataOutput) throws IOException {
            int length = ((Ig.length + 4) + 4) + 4;
            if (dataOutput != null) {
                dataOutput.write(Ig);
                dataOutput.writeInt(2);
                dataOutput.writeInt(this.Ii.length);
                dataOutput.writeInt(this.Ij);
            }
            for (DescriptionPair a : this.Ii) {
                length += a.b(dataOutput);
            }
            return length;
        }
    }

    private static class IndexGroupDescriptor {
        long HQ;
        int Ik;
        int Il;

        private IndexGroupDescriptor(int i, int i2, long j) {
            this.Ik = i;
            this.Il = i2;
            this.HQ = j;
        }

        private static IndexGroupDescriptor g(DataInput dataInput) throws IOException {
            return new IndexGroupDescriptor(dataInput.readInt(), dataInput.readInt(), dataInput.readLong());
        }

        private int b(DataOutput dataOutput) throws IOException {
            if (dataOutput != null) {
                dataOutput.writeInt(this.Ik);
                dataOutput.writeInt(this.Il);
                dataOutput.writeLong(this.HQ);
            }
            return 16;
        }
    }

    public static class Reader {
        private InputFile Im;
        private FileHeader In;
        private IndexData[] Io;

        private static class IndexData {
            private DataItemDescriptor[] HD;
            private IndexGroupDescriptor[] HE;
            private Object[][] Ip;
            private int Iq;

            private IndexData() {
            }

            static /* synthetic */ int b(IndexData indexData, int i) {
                int i2 = indexData.Iq + i;
                indexData.Iq = i2;
                return i2;
            }
        }

        private Reader(InputStream inputStream) throws IOException {
            this.Im = new DataInputStream(inputStream);
            L("assets");
        }

        private Reader(String str) throws IOException {
            this.Im = new DataInputRandom(new RandomAccessFile(str, "r"));
            L(str);
        }

        private void L(String str) throws IOException {
            System.currentTimeMillis();
            try {
                this.Im.seek(0);
                this.In = FileHeader.e(this.Im);
                this.Io = new IndexData[this.In.Ii.length];
                for (int i = 0; i < this.In.Ii.length; i++) {
                    int i2;
                    this.Io[i] = new IndexData();
                    this.Im.seek(this.In.Ii[i].Ie);
                    int readInt = this.Im.readInt();
                    this.Io[i].HE = new IndexGroupDescriptor[readInt];
                    for (i2 = 0; i2 < readInt; i2++) {
                        this.Io[i].HE[i2] = IndexGroupDescriptor.g(this.Im);
                    }
                    this.Im.seek(this.In.Ii[i].If);
                    readInt = this.Im.readInt();
                    this.Io[i].Iq = 0;
                    this.Io[i].HD = new DataItemDescriptor[readInt];
                    for (i2 = 0; i2 < readInt; i2++) {
                        this.Io[i].HD[i2] = DataItemDescriptor.a(this.Im);
                        IndexData.b(this.Io[i], this.Io[i].HD[i2].HM);
                    }
                    this.Io[i].Ip = new Object[readInt][];
                    for (i2 = 0; i2 < readInt; i2++) {
                        this.Im.seek(this.Io[i].HD[i2].HQ);
                        this.Io[i].Ip[i2] = this.Io[i].HD[i2].a(this.Im);
                    }
                }
            } catch (IOException e) {
                close();
                throw e;
            }
        }

        public int getDataVersion() {
            if (this.In == null) {
                return -1;
            }
            return this.In.Ij;
        }

        public synchronized Object get(int i, int i2, int i3) {
            Object obj;
            StringBuilder stringBuilder;
            if (this.Im == null) {
                throw new IllegalStateException("Get data from a corrupt file");
            } else if (i < 0 || i >= this.Io.length) {
                stringBuilder = new StringBuilder();
                stringBuilder.append("Kind ");
                stringBuilder.append(i);
                stringBuilder.append(" out of range[0, ");
                stringBuilder.append(this.Io.length);
                stringBuilder.append(")");
                throw new IllegalArgumentException(stringBuilder.toString());
            } else if (i3 < 0 || i3 >= this.Io[i].HD.length) {
                StringBuilder stringBuilder2 = new StringBuilder();
                stringBuilder2.append("DataIndex ");
                stringBuilder2.append(i3);
                stringBuilder2.append(" out of range[0, ");
                stringBuilder2.append(this.Io[i].HD.length);
                stringBuilder2.append(")");
                throw new IllegalArgumentException(stringBuilder2.toString());
            } else {
                System.currentTimeMillis();
                long l = l(i, i2);
                Long l2 = null;
                int i4 = 0;
                if (l < 0) {
                    obj = this.Io[i].Ip[i3][0];
                } else {
                    try {
                        this.Im.seek(l);
                        while (i4 <= i3) {
                            switch (this.Io[i].HD[i4].HL) {
                                case STRING:
                                case BYTE_ARRAY:
                                case SHORT_ARRAY:
                                case INTEGER_ARRAY:
                                case LONG_ARRAY:
                                    int b = (int) DataItemDescriptor.a(this.Im, this.Io[i].HD[i4].HM);
                                    if (i4 != i3) {
                                        break;
                                    }
                                    l2 = e(i, i3, b);
                                    break;
                                case BYTE:
                                    l2 = Byte.valueOf(this.Im.readByte());
                                    break;
                                case SHORT:
                                    l2 = Short.valueOf(this.Im.readShort());
                                    break;
                                case INTEGER:
                                    l2 = Integer.valueOf(this.Im.readInt());
                                    break;
                                case LONG:
                                    l2 = Long.valueOf(this.Im.readLong());
                                    break;
                                default:
                                    stringBuilder = new StringBuilder();
                                    stringBuilder.append("Unknown type ");
                                    stringBuilder.append(this.Io[i].HD[i4].HL);
                                    throw new IllegalStateException(stringBuilder.toString());
                            }
                            i4++;
                        }
                        obj = l2;
                    } catch (Throwable e) {
                        throw new IllegalStateException("File may be corrupt due to invalid data index size", e);
                    } catch (Throwable e2) {
                        throw new IllegalStateException("Seek data from a corrupt file", e2);
                    }
                }
            }
            return obj;
        }

        public synchronized Object[] get(int i, int i2) {
            StringBuilder stringBuilder;
            if (this.Im == null) {
                throw new IllegalStateException("Get data from a corrupt file");
            } else if (i < 0 || i >= this.Io.length) {
                stringBuilder = new StringBuilder();
                stringBuilder.append("Cannot get data kind ");
                stringBuilder.append(i);
                throw new IllegalArgumentException(stringBuilder.toString());
            } else {
                System.currentTimeMillis();
                long l = l(i, i2);
                Object[] objArr = new Object[this.Io[i].HD.length];
                int i3 = 0;
                int i4;
                if (l < 0) {
                    for (i4 = 0; i4 < objArr.length; i4++) {
                        objArr[i4] = this.Io[i].Ip[i4][0];
                    }
                    return objArr;
                }
                try {
                    this.Im.seek(l);
                    while (i3 < objArr.length) {
                        switch (this.Io[i].HD[i3].HL) {
                            case STRING:
                            case BYTE_ARRAY:
                            case SHORT_ARRAY:
                            case INTEGER_ARRAY:
                            case LONG_ARRAY:
                                i4 = (int) DataItemDescriptor.a(this.Im, this.Io[i].HD[i3].HM);
                                long filePointer = this.Im.getFilePointer();
                                objArr[i3] = e(i, i3, i4);
                                this.Im.seek(filePointer);
                                break;
                            case BYTE:
                                objArr[i3] = Byte.valueOf(this.Im.readByte());
                                break;
                            case SHORT:
                                objArr[i3] = Short.valueOf(this.Im.readShort());
                                break;
                            case INTEGER:
                                objArr[i3] = Integer.valueOf(this.Im.readInt());
                                break;
                            case LONG:
                                objArr[i3] = Long.valueOf(this.Im.readLong());
                                break;
                            default:
                                stringBuilder = new StringBuilder();
                                stringBuilder.append("Unknown type ");
                                stringBuilder.append(this.Io[i].HD[i3].HL);
                                throw new IllegalStateException(stringBuilder.toString());
                        }
                        i3++;
                    }
                    return objArr;
                } catch (Throwable e) {
                    throw new IllegalStateException("File may be corrupt due to invalid data index size", e);
                } catch (Throwable e2) {
                    throw new IllegalStateException("Seek data from a corrupt file", e2);
                }
            }
        }

        public synchronized void close() {
            if (this.Im != null) {
                try {
                    this.Im.close();
                } catch (IOException e) {
                }
            }
            this.Im = null;
            this.In = null;
            this.Io = null;
        }

        private Object e(int i, int i2, int i3) throws IOException {
            if (this.Io[i].Ip[i2][i3] == null) {
                this.Im.seek(this.Io[i].HD[i2].HQ + 4);
                this.Io[i].Ip[i2][i3] = this.Io[i].HD[i2].a(this.Im, i3);
            }
            return this.Io[i].Ip[i2][i3];
        }

        private long l(int i, int i2) {
            IndexGroupDescriptor indexGroupDescriptor;
            int i3 = 0;
            int length = this.Io[i].HE.length;
            while (i3 < length) {
                int i4 = (length + i3) / 2;
                if (this.Io[i].HE[i4].Ik <= i2) {
                    if (this.Io[i].HE[i4].Il > i2) {
                        indexGroupDescriptor = this.Io[i].HE[i4];
                        break;
                    }
                    i3 = i4 + 1;
                } else {
                    length = i4;
                }
            }
            indexGroupDescriptor = null;
            if (indexGroupDescriptor != null) {
                return indexGroupDescriptor.HQ + ((long) ((i2 - indexGroupDescriptor.Ik) * this.Io[i].Iq));
            }
            return -1;
        }
    }

    protected DirectIndexedFile() throws InstantiationException {
        throw new InstantiationException("Cannot instantiate utility class");
    }

    public static Builder build(int i) {
        return new Builder(i);
    }

    public static Reader open(String str) throws IOException {
        return new Reader(str, null);
    }

    public static Reader open(InputStream inputStream) throws IOException {
        return new Reader(inputStream, null);
    }
}
