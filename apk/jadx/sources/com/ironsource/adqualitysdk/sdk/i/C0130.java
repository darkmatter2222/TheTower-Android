package com.ironsource.adqualitysdk.sdk.i;

import android.media.MediaPlayer;
import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ł, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0130 extends AbstractC0965 implements MediaPlayer.OnSeekCompleteListener {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static final String f815 = StringFog.decrypt("WCly/xTBSdF6N03/Bc9G12QzRPQU2E7bdChT+wXFeA==\n", "F0chmnGqCr4=\n");

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final InterfaceC0133 f816;

    public C0130(MediaPlayer.OnSeekCompleteListener onSeekCompleteListener, InterfaceC0133 interfaceC0133) {
        super(onSeekCompleteListener);
        this.f816 = interfaceC0133;
    }

    @Override // android.media.MediaPlayer.OnSeekCompleteListener
    public final void onSeekComplete(MediaPlayer mediaPlayer) {
        try {
            this.f816.mo1917(this, mediaPlayer);
        } catch (Throwable th) {
            AbstractC1071.m2435(f815, StringFog.decrypt("W9t3OXlDF+w+xFE0RwoN9nvHYCQrDBDRe8xuFWQODu573WA=\n", "HqkFVgtjfoI=\n"), th, false);
        }
        Object obj = this.f3455;
        if (obj != null) {
            ((MediaPlayer.OnSeekCompleteListener) obj).onSeekComplete(mediaPlayer);
        }
    }
}
