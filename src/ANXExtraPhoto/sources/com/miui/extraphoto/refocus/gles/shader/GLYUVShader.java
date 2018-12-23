package com.miui.extraphoto.refocus.gles.shader;

import android.opengl.GLES20;
import com.miui.extraphoto.refocus.gles.OpenGlUtils;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;

public class GLYUVShader {
    protected static final String NO_FILTER_VERTEX_SHADER = "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}";
    protected static final String YUV_FRAGMENT_SHADER = "precision highp float;\nuniform sampler2D yTexture;\nuniform sampler2D uTexture;\nuniform sampler2D vTexture;\nvarying vec2 textureCoordinate;\n\nvoid main() {\n    int y = int(texture2D(yTexture, textureCoordinate).r*255.0);\n    int u = int(texture2D(uTexture, textureCoordinate).r*255.0)-128;\n    int v = int(texture2D(vTexture, textureCoordinate).r*255.0)-128;\n\n    int r = y + int(1.402*float(v));\n    int g = y - int(0.34413*float(u)) - int(0.71414*float(v));\n    int b = y + int(1.772*float(u));\n\n    vec3 rgb;\n    rgb.r = float(r) / 255.0;\n    rgb.g = float(g) / 255.0;\n    rgb.b = float(b) / 255.0;\n\n    gl_FragColor = vec4(rgb, 1.0);\n}";
    private int mGLAttribPosition;
    private int mGLAttribTextureCoordinate;
    private FloatBuffer mGLCubeBuffer;
    private int mGLProgId;
    private FloatBuffer mGLTextureBuffer;
    private int mGLUniformUTexture;
    private int mGLUniformVTexture;
    private int mGLUniformYTexture;
    private final int mHeight;
    private ByteBuffer mUBuffer;
    private int mUTexture;
    private ByteBuffer mVBuffer;
    private int mVTexture;
    private final int mWidth;
    private ByteBuffer mYBuffer;
    private int mYTexture;

    public GLYUVShader(int width, int height) {
        this.mWidth = width;
        this.mHeight = height;
        init();
        initYUVBuffer();
    }

    protected void init() {
        this.mGLProgId = OpenGlUtils.loadProgram(NO_FILTER_VERTEX_SHADER, YUV_FRAGMENT_SHADER);
        this.mGLAttribPosition = GLES20.glGetAttribLocation(this.mGLProgId, "position");
        this.mGLAttribTextureCoordinate = GLES20.glGetAttribLocation(this.mGLProgId, "inputTextureCoordinate");
        this.mGLUniformYTexture = GLES20.glGetUniformLocation(this.mGLProgId, "yTexture");
        this.mGLUniformUTexture = GLES20.glGetUniformLocation(this.mGLProgId, "uTexture");
        this.mGLUniformVTexture = GLES20.glGetUniformLocation(this.mGLProgId, "vTexture");
        this.mGLTextureBuffer = ByteBuffer.allocateDirect(GLTextureShader.TEXTURE_NO_ROTATION.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.mGLTextureBuffer.put(GLTextureShader.TEXTURE_NO_ROTATION).position(0);
        this.mGLCubeBuffer = ByteBuffer.allocateDirect(GLTextureShader.CUBE.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.mGLCubeBuffer.put(GLTextureShader.CUBE).position(0);
    }

    private void initYUVBuffer() {
        this.mYTexture = generateTexture();
        this.mUTexture = generateTexture();
        this.mVTexture = generateTexture();
        int ySize = this.mWidth * this.mHeight;
        int uvSize = ySize / 4;
        this.mYBuffer = ByteBuffer.allocate(ySize);
        this.mUBuffer = ByteBuffer.allocate(uvSize);
        this.mVBuffer = ByteBuffer.allocate(uvSize);
    }

    public void draw(float[] glPosition) {
        draw(glPosition, GLTextureShader.TEXTURE_NO_ROTATION);
    }

    public void draw(float[] glPosition, float[] textureCood) {
        GLES20.glUseProgram(this.mGLProgId);
        this.mGLCubeBuffer.put(glPosition);
        this.mGLCubeBuffer.position(0);
        GLES20.glEnableVertexAttribArray(this.mGLAttribPosition);
        GLES20.glVertexAttribPointer(this.mGLAttribPosition, 2, 5126, false, 0, this.mGLCubeBuffer);
        this.mGLTextureBuffer.put(textureCood);
        this.mGLTextureBuffer.position(0);
        GLES20.glEnableVertexAttribArray(this.mGLAttribTextureCoordinate);
        GLES20.glVertexAttribPointer(this.mGLAttribTextureCoordinate, 2, 5126, false, 0, this.mGLTextureBuffer);
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(3553, this.mYTexture);
        this.mYBuffer.position(0);
        GLES20.glTexImage2D(3553, 0, 6409, this.mWidth, this.mHeight, 0, 6409, 5121, this.mYBuffer);
        GLES20.glUniform1i(this.mGLUniformYTexture, 0);
        GLES20.glActiveTexture(33985);
        GLES20.glBindTexture(3553, this.mUTexture);
        this.mUBuffer.position(0);
        GLES20.glTexImage2D(3553, 0, 6409, this.mWidth / 2, this.mHeight / 2, 0, 6409, 5121, this.mUBuffer);
        GLES20.glUniform1i(this.mGLUniformUTexture, 1);
        GLES20.glActiveTexture(33986);
        GLES20.glBindTexture(3553, this.mVTexture);
        this.mVBuffer.position(0);
        GLES20.glTexImage2D(3553, 0, 6409, this.mWidth / 2, this.mHeight / 2, 0, 6409, 5121, this.mVBuffer);
        GLES20.glUniform1i(this.mGLUniformVTexture, 2);
        GLES20.glDrawArrays(5, 0, 4);
        GLES20.glDisableVertexAttribArray(this.mGLAttribPosition);
        GLES20.glDisableVertexAttribArray(this.mGLAttribTextureCoordinate);
        GLES20.glBindTexture(3553, 0);
    }

    public void configYUVData(byte[] y, byte[] u, byte[] v) {
        if (y != null && u != null && v != null) {
            this.mYBuffer.position(0);
            this.mUBuffer.position(0);
            this.mVBuffer.position(0);
            this.mYBuffer.put(y);
            this.mUBuffer.put(u);
            this.mVBuffer.put(v);
        }
    }

    public void destroy() {
        GLES20.glDeleteProgram(this.mGLProgId);
        GLES20.glDeleteTextures(3, new int[]{this.mYTexture, this.mUTexture, this.mVTexture}, 0);
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
