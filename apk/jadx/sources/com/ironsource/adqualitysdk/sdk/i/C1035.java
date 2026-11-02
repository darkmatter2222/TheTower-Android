package com.ironsource.adqualitysdk.sdk.i;

import android.os.Handler;
import android.os.Looper;
import com.ironsource.adqualitysdk.sdk.StringFog;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﻩ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C1035 {

    /* JADX INFO: renamed from: ﭖ, reason: contains not printable characters */
    public static final String f3652 = StringFog.decrypt("+iGpg+fNhXrfKrSS8NCJadgqsg==\n", "s0/A96Si6Ao=\n");

    /* JADX INFO: renamed from: ﭴ, reason: contains not printable characters */
    public boolean f3653;

    /* JADX INFO: renamed from: ﭸ, reason: contains not printable characters */
    public int f3654;

    /* JADX INFO: renamed from: ﮉ, reason: contains not printable characters */
    public boolean f3655;

    /* JADX INFO: renamed from: ﮌ, reason: contains not printable characters */
    public int f3656;

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    public long f3657;

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public volatile int f3658;

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public volatile long f3659;

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public boolean f3660;

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public boolean f3661;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public boolean f3662;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public Handler f3663 = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final C0317 f3664;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final C0322 f3665;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final C0323 f3666;

    public C1035(C0323 c0323, C0322 c0322, C0317 c0317) {
        this.f3666 = c0323;
        this.f3665 = c0322;
        this.f3664 = c0317;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m2423(boolean z) {
        boolean z2;
        if (this.f3661 || this.f3663 == null) {
            return;
        }
        C0272 c0272M2008 = C0272.m2008();
        synchronized (c0272M2008) {
            z2 = c0272M2008.f1363;
        }
        if (z2) {
            return;
        }
        this.f3661 = true;
        Handler handler = this.f3663;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        C0303 c0303 = this.f3666.f1573;
        c0303.getClass();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(StringFog.decrypt("H3Q5Ew==\n", "aQdXYEEig7E=\n"), c0303.m2039());
        } catch (Exception unused) {
        }
        AbstractC0340.m2057(new C0321(new RunnableC1044(this, jSONObject, z, this.f3657, this.f3656)));
    }
}
