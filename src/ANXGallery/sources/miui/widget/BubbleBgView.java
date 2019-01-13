package miui.widget;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.View;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.miui.internal.util.DeviceHelper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Random;

public class BubbleBgView extends View {
    private static final int OP = 8;
    private static final int OQ = 0;
    private static final int OR = 1;
    private static final int OS = 2;
    private static final int OT = 3;
    private static final int OU = 4;
    private static final int OV = 5;
    private static final int OW = 6;
    private static final int OX = 7;
    private static final int[] OY;
    private static final int Pa = 1;
    private ArrayList<Bubble> OZ;
    private Handler mHandler;
    private Paint rb;

    private static class Bubble {
        private static final int DURATION = 3000;
        private static final int Pd = 2000;
        private static final Random Pk = new Random(System.currentTimeMillis());
        private final int Pe;
        private final int Pf;
        private final int Pg;
        private final int Ph;
        private final int Pi;
        private final int Pj;
        private final int color;
        private final int radius;
        private AnimatorSet ta;

        public Bubble(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            this.Pe = i;
            this.Pf = i2;
            this.radius = i3;
            this.Ph = i4 + i;
            this.Pg = i5 + i;
            this.Pj = i6 + i2;
            this.Pi = i7 + i2;
            this.color = i8;
            ej();
        }

        private void ej() {
            int nextInt = Pk.nextInt(1000) + 2000;
            this.ta = new AnimatorSet();
            long j = (long) nextInt;
            new ValueAnimator().setDuration(j);
            new ValueAnimator().setDuration(j);
            this.ta.playTogether(new Animator[]{r1, r0});
            this.ta.addListener(new AnimatorListener() {
                public void onAnimationStart(Animator animator) {
                }

                public void onAnimationEnd(Animator animator) {
                    Bubble.this.ej();
                }

                public void onAnimationCancel(Animator animator) {
                }

                public void onAnimationRepeat(Animator animator) {
                }
            });
            this.ta.cancel();
            nextInt = Pk.nextInt(this.Pg - this.Ph) + this.Ph;
            int nextInt2 = Pk.nextInt(this.Pi - this.Pj) + this.Pj;
            ((ValueAnimator) this.ta.getChildAnimations().get(0)).setFloatValues(new float[]{(float) this.Pe, (float) nextInt, (float) this.Pe});
            ((ValueAnimator) this.ta.getChildAnimations().get(1)).setFloatValues(new float[]{(float) this.Pf, (float) nextInt2, (float) this.Pf});
            this.ta.start();
        }

        private float ek() {
            if (this.ta == null) {
                return (float) this.Pe;
            }
            return ((Float) ((ValueAnimator) this.ta.getChildAnimations().get(0)).getAnimatedValue()).floatValue();
        }

        private float el() {
            if (this.ta == null) {
                return (float) this.Pf;
            }
            return ((Float) ((ValueAnimator) this.ta.getChildAnimations().get(1)).getAnimatedValue()).floatValue();
        }
    }

    static {
        if (DeviceHelper.IS_TABLET) {
            OY = new int[]{BaiduSceneResult.CASTLE, 197, 198, 0, 30, -80, 20, -9703, 160, -32, 230, 0, 30, 0, 100, 872358400, 591, 24, 367, 0, 30, -50, 50, -419432704, 805, 273, 173, -30, 10, -80, 20, 1929561904, 326, -68, 417, 0, 30, 0, 50, -637576704};
        } else {
            OY = new int[]{39, 161, BaiduSceneResult.MOUNTAINEERING, 0, 30, -80, 20, -9703, BaiduSceneResult.MOUNTAINEERING, 39, BaiduSceneResult.BRIDGE, 0, 30, 0, 100, 872358400, 302, 41, 211, 0, 30, -50, 50, -419432704, 411, 166, BaiduSceneResult.BICYCLE, -30, 10, -80, 20, 1929561904, 171, 226, 181, -15, 15, -20, 30, 1291385080, BaiduSceneResult.FILE_OTHER, 33, 195, 0, 30, 0, 50, -637576704};
        }
    }

    public BubbleBgView(Context context) {
        this(context, null);
    }

    public BubbleBgView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BubbleBgView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.OZ = new ArrayList();
        this.rb = new Paint(1);
        this.mHandler = new Handler() {
            private static final int Pb = 100;

            public void handleMessage(Message message) {
                if (message.what == 1) {
                    BubbleBgView.this.invalidate();
                    BubbleBgView.this.mHandler.sendEmptyMessageDelayed(1, 10);
                }
            }
        };
        ei();
        this.mHandler.sendEmptyMessage(1);
    }

    private void ei() {
        float f = getResources().getDisplayMetrics().density;
        for (int i = 0; i < OY.length; i += 8) {
            this.OZ.add(new Bubble((int) (((float) OY[i + 0]) * f), (int) (((float) OY[i + 1]) * f), (int) (((float) OY[i + 2]) * f), OY[i + 3], OY[i + 4], OY[i + 5], OY[i + 6], OY[i + 7]));
        }
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        Iterator it = this.OZ.iterator();
        while (it.hasNext()) {
            Bubble bubble = (Bubble) it.next();
            this.rb.setColor(bubble.color);
            canvas.drawCircle(bubble.ek(), bubble.el(), (float) bubble.radius, this.rb);
        }
    }
}
