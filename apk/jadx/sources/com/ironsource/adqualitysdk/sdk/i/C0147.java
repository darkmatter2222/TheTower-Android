package com.ironsource.adqualitysdk.sdk.i;

import android.media.MediaPlayer;
import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Ɨ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0147 extends AbstractC0965 implements MediaPlayer.OnPreparedListener {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static final String f857 = StringFog.decrypt("kgGVMGnei+64C4krf9qP8rgdgSdvwZj9qQC3\n", "3W/FQgyu6pw=\n");

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final InterfaceC0148 f858;

    public C0147(MediaPlayer.OnPreparedListener onPreparedListener, InterfaceC0148 interfaceC0148) {
        super(onPreparedListener);
        this.f858 = interfaceC0148;
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public final void onPrepared(MediaPlayer mediaPlayer) {
        try {
            this.f858.mo1931(this, mediaPlayer);
        } catch (Throwable th) {
            AbstractC1071.m2435(f857, StringFog.decrypt("w3cIyT0eUjqmaC7EA1dIIONrH9RvUVUE9GAKxz1bXw==\n", "hgV6pk8+O1Q=\n"), th, false);
        }
        Object obj = this.f3455;
        if (obj != null) {
            ((MediaPlayer.OnPreparedListener) obj).onPrepared(mediaPlayer);
        }
    }
}
