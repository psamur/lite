package ru.vtosters.lite.ui.fragments;

import static android.widget.Toast.LENGTH_SHORT;
import static android.widget.Toast.makeText;
import static ru.vtosters.lite.utils.CacheUtils.deleteCache;
import static ru.vtosters.lite.utils.Globals.getUserToken;
import static ru.vtosters.lite.utils.Globals.restartApplication;
import static ru.vtosters.lite.utils.SettBackup.backupSettings;
import static ru.vtosters.lite.utils.SettBackup.deletePrefs;
import static ru.vtosters.lite.utils.SettBackup.restoreBackup;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;

import com.vk.audio.AudioMessageUtils;
import com.vk.auth.api.VKAccount;
import com.vk.core.preference.Preference;
import com.vk.core.util.AppContextHolder;
import com.vk.core.util.ToastUtils;
import com.vk.imageloader.VKImageLoader;
import com.vk.pushes.PushSubscriber;
import com.vtosters.lite.R;
import com.vtosters.lite.auth.VKAccountManager;
import com.vtosters.lite.fragments.MaterialPreferenceToolbarFragment;
import com.vtosters.lite.im.ImEngineProvider;

import b.h.g.m.FileUtils;
import ru.vtosters.lite.ui.fragments.OtherFragment.a;

public class OtherFragment extends MaterialPreferenceToolbarFragment {

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        addPreferencesFromResource(R.xml.preferences_other);
        prefs();
    }

    private void prefs() {
        a("firebasefix").a(new a());
        a("applicationstop").a(new b());
        a("tokencopy").a(new c());
        a("applicationrestart").a(new d());
        a("clearcache").a(new e());
        a("stickfix").a(new f());
        a("deleteprefs").a(new deleteprefs());

        // a("saveprefs").a((Preference.c) new saveprefs());
        // a("restoreprefs").a((Preference.c) new restoreprefs());
    }

    static class c implements Preference.c {
        c() {
        }

        public static void copy(Context context, String str) {
            ((ClipboardManager) context.getSystemService(Context.CLIPBOARD_SERVICE)).setPrimaryClip(ClipData.newPlainText("MBH-ST", str));
            makeText(context, getString("copybtn"), LENGTH_SHORT).show();
            ToastUtils.a(getString("tokenwarning"));
        }

        @Override // android.support.v7.preference.Preference.c
        public boolean a(Preference preference) {
            copy(getContext(), getUserToken());
            return true;
        }
    }

    public static class e implements Preference.c {
        e() {
        }

        @Override // android.support.v7.preference.Preference.c
        public boolean a(Preference preference) {
            SharedPreferences prefs = getContext().getSharedPreferences("stickers", Context.MODE_PRIVATE);
            SharedPreferences prefs2 = getContext().getSharedPreferences("stickers_storage", Context.MODE_PRIVATE);
            prefs.edit().clear().commit();
            prefs2.edit().clear().commit();
            VKImageLoader.b();
            ImEngineProvider.a().h();
            AudioMessageUtils.j();
            FileUtils.l();
            deleteCache();
            ToastUtils.a(getString("cachecleaned"));
            return true;
        }
    }

    public static class b implements Preference.c {
        b() {
        }

        @Override // android.support.v7.preference.Preference.c
        public boolean a(Preference preference) {
            System.exit(0);
            return true;
        }
    }

    public static class d implements Preference.c {
        d() {
        }

        @Override // android.support.v7.preference.Preference.c
        public boolean a(Preference preference) {
            restartApplication();
            return true;
        }
    }

    public class a implements Preference.c {
        a() {
        }

        @Override // android.support.v7.preference.Preference.c
        public boolean a(Preference preference) {
            VKAccount b = VKAccountManager.b();
            PushSubscriber.a.a(b.b(), b.c());
            ToastUtils.a(getString("fcmtokenrem"));
            AppContextHolder.a.getSharedPreferences("gcm", 0).edit().clear().apply();
            OtherFragment.this.aB().postDelayed(() -> {
                PushSubscriber.a.a(true);
                ToastUtils.a(getString("fcmtokenget"));
                ToastUtils.a(getString("fcmtokenfixed"));
            }, 1000);
            return true;
        }
    }

    public static class f implements Preference.c {
        f() {
        }

        @Override // android.support.v7.preference.Preference.c
        public boolean a(Preference preference) {
            SharedPreferences prefs = getContext().getSharedPreferences("stickers", Context.MODE_PRIVATE);
            SharedPreferences prefs2 = getContext().getSharedPreferences("stickers_storage", Context.MODE_PRIVATE);
            prefs.edit().clear().commit();
            prefs2.edit().clear().commit();
            deleteCache();
            ToastUtils.a(getString("cachecleaned"));
            return true;
        }
    }

    public static class deleteprefs implements Preference.c {
        deleteprefs() {
        }

        @Override // android.support.v7.preference.Preference.c
        public boolean a(Preference preference) {
            deletePrefs();
            restartApplication();
            return true;
        }
    }

    public static class saveprefs implements Preference.c {
        saveprefs() {
        }

        @Override // android.support.v7.preference.Preference.c
        public boolean a(Preference preference) {
            backupSettings();
            return true;
        }
    }

    public static class restoreprefs implements Preference.c {
        restoreprefs() {
        }

        @Override // android.support.v7.preference.Preference.c
        public boolean a(Preference preference) {
            restoreBackup();
            return true;
        }
    }
}
