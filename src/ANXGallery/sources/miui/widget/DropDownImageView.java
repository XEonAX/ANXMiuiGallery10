package miui.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.miui.internal.R;

public class DropDownImageView extends ImageView {
    private AnimatorSet QY;
    private AnimatorSet QZ;
    private Context mContext;

    public DropDownImageView(Context context) {
        this(context, null);
    }

    public DropDownImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DropDownImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, R.attr.dropdownImageViewStyle);
        this.QY = null;
        this.QZ = null;
        this.mContext = context;
        eA();
    }

    private void eA() {
        this.QZ = new AnimatorSet();
        this.QZ.setDuration(150);
        Animator ofFloat = ObjectAnimator.ofFloat(this, "rotationX", new float[]{0.0f, -90.0f});
        ofFloat.addListener(new AnimatorListenerAdapter() {
            public void onAnimationEnd(Animator animator) {
                ImageView imageView = (ImageView) ((ObjectAnimator) animator).getTarget();
                imageView.setRotationX(-90.0f);
                imageView.setImageLevel(0);
                imageView.setRotationX(90.0f);
            }
        });
        Animator ofFloat2 = ObjectAnimator.ofFloat(this, "rotationX", new float[]{90.0f, 0.0f});
        ofFloat2.addListener(new AnimatorListenerAdapter() {
            public void onAnimationEnd(Animator animator) {
                ((ImageView) ((ObjectAnimator) animator).getTarget()).setRotationX(0.0f);
            }
        });
        this.QZ.play(ofFloat).before(ofFloat2);
        this.QZ.setDuration(150);
        this.QY = new AnimatorSet();
        ofFloat = ObjectAnimator.ofFloat(this, "rotationX", new float[]{0.0f, 90.0f});
        ofFloat.addListener(new AnimatorListenerAdapter() {
            public void onAnimationEnd(Animator animator) {
                ImageView imageView = (ImageView) ((ObjectAnimator) animator).getTarget();
                imageView.setRotationX(90.0f);
                imageView.setImageLevel(1);
                imageView.setRotationX(-90.0f);
            }
        });
        Animator ofFloat3 = ObjectAnimator.ofFloat(this, "rotationX", new float[]{-90.0f, 0.0f});
        ofFloat3.addListener(new AnimatorListenerAdapter() {
            public void onAnimationEnd(Animator animator) {
                ((ImageView) ((ObjectAnimator) animator).getTarget()).setRotationX(0.0f);
            }
        });
        this.QY.play(ofFloat).before(ofFloat3);
    }

    public void collapse() {
        this.QY.cancel();
        this.QZ.start();
    }

    public void expand() {
        this.QZ.cancel();
        this.QY.start();
    }
}
