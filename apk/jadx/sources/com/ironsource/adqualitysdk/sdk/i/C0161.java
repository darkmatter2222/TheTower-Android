package com.ironsource.adqualitysdk.sdk.i;

import android.media.MediaPlayer;
import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Ȋ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0161 extends AbstractC0965 implements MediaPlayer.OnCompletionListener {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static final String f905 = StringFog.decrypt("5G2F9avjHS/faqn0ivoCPs5to+iC9hIl2WKy9bQ=\n", "qwPGmsaTcUo=\n");

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final InterfaceC0191 f906;

    public C0161(MediaPlayer.OnCompletionListener onCompletionListener, InterfaceC0191 interfaceC0191) {
        super(onCompletionListener);
        this.f906 = interfaceC0191;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public final void onCompletion(MediaPlayer mediaPlayer) {
        try {
            this.f906.mo1943(this, mediaPlayer);
        } catch (Throwable th) {
            AbstractC1071.m2435(f905, StringFog.decrypt("NUrAA8hPkUpQVeYO9gaLUBVW1x6aAJZnH1XCAN8bkUse\n", "cDiybLpv+CQ=\n"), th, false);
        }
        Object obj = this.f3455;
        if (obj != null) {
            ((MediaPlayer.OnCompletionListener) obj).onCompletion(mediaPlayer);
        }
    }
}
