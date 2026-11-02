package com.ironsource.sdk.controller;

import android.app.Activity;
import android.media.AudioManager;
import com.ironsource.C3801r4;
import com.ironsource.V7;
import com.ironsource.mediationsdk.logger.IronLog;
import com.unity3d.services.core.device.MimeTypes;

/* JADX INFO: loaded from: classes4.dex */
class t {

    class a implements Runnable {
        final /* synthetic */ AudioManager a;

        a(AudioManager audioManager) {
            this.a = audioManager;
        }

        @Override // java.lang.Runnable
        public void run() {
            t.a(this.a);
        }
    }

    class b implements Runnable {
        final /* synthetic */ AudioManager a;

        b(AudioManager audioManager) {
            this.a = audioManager;
        }

        @Override // java.lang.Runnable
        public void run() {
            t.b(this.a);
        }
    }

    t() {
    }

    public static void a(Activity activity) {
        V7.a.b(new a((AudioManager) activity.getSystemService(MimeTypes.BASE_TYPE_AUDIO)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void a(AudioManager audioManager) {
        try {
            audioManager.abandonAudioFocus(null);
        } catch (Throwable th) {
            C3801r4.d().a(th);
            IronLog.INTERNAL.error(th.toString());
        }
    }

    public static void b(Activity activity) {
        V7.a.b(new b((AudioManager) activity.getSystemService(MimeTypes.BASE_TYPE_AUDIO)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(AudioManager audioManager) {
        try {
            audioManager.requestAudioFocus(null, 3, 2);
        } catch (Throwable th) {
            C3801r4.d().a(th);
            IronLog.INTERNAL.error(th.toString());
        }
    }
}
