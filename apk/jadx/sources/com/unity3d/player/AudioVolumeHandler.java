package com.unity3d.player;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import com.unity3d.player.a.C4092h;
import com.unity3d.player.a.C4094j;
import com.unity3d.player.a.InterfaceC4093i;

/* JADX INFO: loaded from: classes5.dex */
public class AudioVolumeHandler implements InterfaceC4093i {
    public C4094j a;

    public AudioVolumeHandler(Context context) {
        C4094j c4094j = new C4094j(context);
        this.a = c4094j;
        c4094j.c = new C4092h(new Handler(Looper.getMainLooper()), c4094j.b, this);
        context.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, c4094j.c);
    }

    @Override // com.unity3d.player.a.InterfaceC4093i
    public final native void onAudioVolumeChanged(int i);
}
