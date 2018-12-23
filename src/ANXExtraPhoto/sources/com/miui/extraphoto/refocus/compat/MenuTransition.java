package com.miui.extraphoto.refocus.compat;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.transition.Transition;
import android.transition.TransitionValues;
import android.view.View;
import android.view.ViewGroup;

public class MenuTransition extends Transition {
    private static final String TAG = "TRANSITION";
    private float mCurrentY;
    private boolean mEnter;
    private int mExitAlphaDuration;
    private int mExitTranslateDuration;
    private float mTranslate;

    public MenuTransition(float translate, boolean enter, int translateDuration, int alphaDuration, float currentY) {
        this.mTranslate = translate;
        this.mEnter = enter;
        this.mExitTranslateDuration = translateDuration;
        this.mExitAlphaDuration = alphaDuration;
        this.mCurrentY = currentY;
    }

    public boolean isTransitionRequired(TransitionValues startValues, TransitionValues endValues) {
        return true;
    }

    public void captureStartValues(TransitionValues transitionValues) {
    }

    public void captureEndValues(TransitionValues transitionValues) {
    }

    public Animator createAnimator(ViewGroup sceneRoot, TransitionValues startValues, TransitionValues endValues) {
        if (this.mEnter) {
            return createEnterAnimator(endValues);
        }
        return createExitAnimator(startValues);
    }

    private Animator createEnterAnimator(TransitionValues values) {
        ObjectAnimator animator = new ObjectAnimator();
        PropertyValuesHolder translate = PropertyValuesHolder.ofFloat(View.TRANSLATION_Y, new float[]{this.mTranslate, 0.0f});
        PropertyValuesHolder alpha = PropertyValuesHolder.ofFloat(View.ALPHA, new float[]{0.0f, 1.0f});
        animator.setValues(new PropertyValuesHolder[]{translate, alpha});
        animator.setTarget(values.view);
        return animator;
    }

    private Animator createExitAnimator(TransitionValues values) {
        ObjectAnimator translateAnim = new ObjectAnimator();
        float y = values.view.getY();
        PropertyValuesHolder[] propertyValuesHolderArr = new PropertyValuesHolder[1];
        propertyValuesHolderArr[0] = PropertyValuesHolder.ofFloat(View.Y, new float[]{this.mCurrentY, this.mTranslate + this.mCurrentY});
        translateAnim.setValues(propertyValuesHolderArr);
        translateAnim.setDuration((long) this.mExitTranslateDuration);
        translateAnim.setTarget(values.view);
        ObjectAnimator alphaAnim = new ObjectAnimator();
        alphaAnim.setValues(new PropertyValuesHolder[]{PropertyValuesHolder.ofFloat(View.ALPHA, new float[]{1.0f, 0.0f})});
        alphaAnim.setDuration((long) this.mExitAlphaDuration);
        alphaAnim.setTarget(values.view);
        AnimatorSet animSet = new AnimatorSet();
        animSet.playTogether(new Animator[]{translateAnim, alphaAnim});
        return animSet;
    }
}
