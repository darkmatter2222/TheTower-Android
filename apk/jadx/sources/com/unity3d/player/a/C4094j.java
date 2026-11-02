package com.unity3d.player.a;

import android.content.Context;
import android.media.AudioManager;
import com.unity3d.services.core.device.MimeTypes;

/* JADX INFO: renamed from: com.unity3d.player.a.j, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C4094j {
    public final Context a;
    public final AudioManager b;
    public C4092h c;

    public C4094j(Context context) {
        this.a = context;
        this.b = (AudioManager) context.getSystemService(MimeTypes.BASE_TYPE_AUDIO);
    }
}
