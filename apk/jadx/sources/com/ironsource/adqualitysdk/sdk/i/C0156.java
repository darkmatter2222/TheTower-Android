package com.ironsource.adqualitysdk.sdk.i;

import android.media.MediaPlayer;
import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Ǐ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0156 extends AbstractC0965 implements MediaPlayer.OnInfoListener {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static final String f891 = StringFog.decrypt("Y4b6Q2GPF0JfnNZDYpIfTk+HwUxzjyk=\n", "LOizLQfgWys=\n");

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final InterfaceC0157 f892;

    public C0156(MediaPlayer.OnInfoListener onInfoListener, InterfaceC0157 interfaceC0157) {
        super(onInfoListener);
        this.f892 = interfaceC0157;
    }

    @Override // android.media.MediaPlayer.OnInfoListener
    public final boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
        try {
            this.f892.mo1932(this, mediaPlayer, i, i2);
        } catch (Throwable th) {
            AbstractC1071.m2435(f891, StringFog.decrypt("p+b2eDOO8ibC+dB1DcfoPIf64WVhwfUBjPLr\n", "4pSEF0Gum0g=\n"), th, false);
        }
        Object obj = this.f3455;
        if (obj != null) {
            return ((MediaPlayer.OnInfoListener) obj).onInfo(mediaPlayer, i, i2);
        }
        return false;
    }
}
