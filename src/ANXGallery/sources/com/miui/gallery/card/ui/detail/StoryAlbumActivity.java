package com.miui.gallery.card.ui.detail;

import android.app.Fragment;
import android.os.Bundle;
import com.miui.gallery.R;
import com.miui.gallery.activity.BaseActivity;

public class StoryAlbumActivity extends BaseActivity {
    private StoryAlbumFragment mStoryAlbumFragment;

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        long cardId = getIntent().getLongExtra("card", 0);
        getWindow().setBackgroundDrawableResource(R.color.story_background_color);
        this.mStoryAlbumFragment = (StoryAlbumFragment) getFragmentManager().findFragmentByTag("StoryAlbumFragment");
        if (this.mStoryAlbumFragment == null) {
            this.mStoryAlbumFragment = new StoryAlbumFragment();
            Bundle args = new Bundle();
            args.putLong("card", cardId);
            this.mStoryAlbumFragment.setArguments(args);
            startFragment(this.mStoryAlbumFragment, "StoryAlbumFragment", false, true);
        }
    }

    protected int getFragmentContainerId() {
        return 16908290;
    }

    public void onAttachFragment(Fragment fragment) {
        super.onAttachFragment(fragment);
        if (this.mStoryAlbumFragment != null) {
            this.mStoryAlbumFragment.onAttachDialogFragment(fragment);
        }
    }
}
