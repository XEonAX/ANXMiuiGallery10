package com.miui.extraphoto.refocus.gles.shader;

import android.opengl.GLES20;
import com.miui.extraphoto.refocus.gles.OpenGlUtils;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.LinkedList;

public class GLRGBShader {
    public static final float[] CUBE = new float[]{-1.0f, -1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f};
    public static final float[] CUBE_REVERSE = new float[]{-1.0f, 1.0f, 1.0f, 1.0f, -1.0f, -1.0f, 1.0f, -1.0f};
    protected static final String NO_FILTER_FRAGMENT_SHADER = "varying highp vec2 textureCoordinate;\n \nuniform sampler2D inputImageTexture;\n \nvoid main()\n{\n     gl_FragColor = texture2D(inputImageTexture, textureCoordinate);\n}";
    protected static final String NO_FILTER_VERTEX_SHADER = "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}";
    public static final float[] TEXTURE_180_ROTATION = new float[]{1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.0f, 1.0f};
    public static final float[] TEXTURE_270_ROTATION = new float[]{0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.0f, 1.0f, 1.0f};
    public static final float[] TEXTURE_90_ROTATION = new float[]{1.0f, 1.0f, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f};
    public static final float[] TEXTURE_NO_ROTATION = new float[]{0.0f, 1.0f, 1.0f, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f};
    private int mGLAttribPosition;
    private int mGLAttribTextureCoordinate;
    private FloatBuffer mGLCubeBuffer;
    private int mGLProgId;
    private FloatBuffer mGLTextureBuffer;
    private int mGLUniformTexture;
    private int mHeight;
    private ByteBuffer mRGBBuffer;
    private int mRGBTexture;
    private final LinkedList<Runnable> mRunOnDraw;
    private int mWidth;

    public GLRGBShader(int width, int height) {
        this(NO_FILTER_VERTEX_SHADER, NO_FILTER_FRAGMENT_SHADER);
        this.mRGBBuffer = ByteBuffer.allocate((width * height) * 4);
        this.mRGBTexture = generateTexture();
        this.mWidth = width;
        this.mHeight = height;
    }

    private GLRGBShader(String vertexShader, String fragmentShader) {
        init(vertexShader, fragmentShader);
        this.mRunOnDraw = new LinkedList();
    }

    protected void init(String vertexShader, String fragmentShader) {
        this.mGLProgId = OpenGlUtils.loadProgram(vertexShader, fragmentShader);
        this.mGLAttribPosition = GLES20.glGetAttribLocation(this.mGLProgId, "position");
        this.mGLUniformTexture = GLES20.glGetUniformLocation(this.mGLProgId, "inputImageTexture");
        this.mGLAttribTextureCoordinate = GLES20.glGetAttribLocation(this.mGLProgId, "inputTextureCoordinate");
        this.mGLTextureBuffer = ByteBuffer.allocateDirect(TEXTURE_NO_ROTATION.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.mGLTextureBuffer.put(TEXTURE_NO_ROTATION).position(0);
        this.mGLCubeBuffer = ByteBuffer.allocateDirect(CUBE.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.mGLCubeBuffer.put(CUBE).position(0);
    }

    public void draw(float[] glPosition, float[] textureCood, byte[] rgb) {
        this.mRGBBuffer.clear();
        this.mRGBBuffer.position(0);
        this.mRGBBuffer.put(rgb);
        GLES20.glUseProgram(this.mGLProgId);
        onPreDraw();
        runPendingOnDrawTasks();
        this.mGLCubeBuffer.put(glPosition);
        this.mGLCubeBuffer.position(0);
        GLES20.glEnableVertexAttribArray(this.mGLAttribPosition);
        GLES20.glVertexAttribPointer(this.mGLAttribPosition, 2, 5126, false, 0, this.mGLCubeBuffer);
        this.mGLTextureBuffer.put(textureCood);
        this.mGLTextureBuffer.position(0);
        GLES20.glEnableVertexAttribArray(this.mGLAttribTextureCoordinate);
        GLES20.glVertexAttribPointer(this.mGLAttribTextureCoordinate, 2, 5126, false, 0, this.mGLTextureBuffer);
        if (this.mRGBTexture != -1) {
            GLES20.glActiveTexture(33984);
            GLES20.glBindTexture(3553, this.mRGBTexture);
            this.mRGBBuffer.position(0);
            GLES20.glTexImage2D(3553, 0, 6408, this.mWidth, this.mHeight, 0, 6408, 5121, this.mRGBBuffer);
            GLES20.glUniform1i(this.mGLUniformTexture, 0);
        }
        GLES20.glDrawArrays(5, 0, 4);
        GLES20.glDisableVertexAttribArray(this.mGLAttribPosition);
        GLES20.glDisableVertexAttribArray(this.mGLAttribTextureCoordinate);
        GLES20.glBindTexture(3553, 0);
    }

    protected void onPreDraw() {
    }

    protected void runPendingOnDrawTasks() {
        while (!this.mRunOnDraw.isEmpty()) {
            ((Runnable) this.mRunOnDraw.removeFirst()).run();
        }
    }

    protected void runOnDraw(Runnable runnable) {
        synchronized (this.mRunOnDraw) {
            this.mRunOnDraw.addLast(runnable);
        }
    }

    public void setFloat(final int location, final float floatValue) {
        runOnDraw(new Runnable() {
            public void run() {
                GLES20.glUniform1f(location, floatValue);
            }
        });
    }

    public int getProgram() {
        return this.mGLProgId;
    }

    public void destroy() {
        this.mRGBBuffer.clear();
        this.mRGBBuffer = null;
        GLES20.glDeleteProgram(this.mGLProgId);
        GLES20.glDeleteTextures(1, new int[]{this.mRGBTexture}, 0);
    }

    private static int generateTexture() {
        int[] textures = new int[1];
        GLES20.glGenTextures(1, textures, 0);
        GLES20.glBindTexture(3553, textures[0]);
        GLES20.glTexParameterf(3553, 10241, 9729.0f);
        GLES20.glTexParameterf(3553, 10240, 9729.0f);
        GLES20.glTexParameteri(3553, 10242, 33071);
        GLES20.glTexParameteri(3553, 10243, 33071);
        return textures[0];
    }
}
