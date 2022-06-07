package ru.vtosters.lite.ui.fragments;

import static ru.vtosters.lite.utils.Globals.getContext;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.preference.Preference;

import com.vk.navigation.Navigator;
import com.vk.newsfeed.NewsfeedSettingsFragment;
import com.vtosters.lite.R;
import com.vtosters.lite.fragments.MaterialPreferenceToolbarFragment;

public class FeedFragment extends MaterialPreferenceToolbarFragment {
    @Override
    public void b(Bundle bundle) {
        super.b(bundle);
        a(R.xml.preferences_feed);
        prefs();
    }

    private void prefs() {
        a("officialnewssett").a(new FeedFragment.openofficialsett());
    }

    public class openofficialsett implements Preference.c {
        openofficialsett() {
        }

        @Override // android.support.v7.preference.Preference.c
        public boolean a(Preference preference) {
            Context context = getContext();
            Intent a2 = new Navigator(NewsfeedSettingsFragment.class).a(context);
            context.startActivity(a2);
            return true;
        }
    }
}
