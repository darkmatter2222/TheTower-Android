package com.tapjoy.internal;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import com.unity3d.services.core.device.MimeTypes;

/* JADX INFO: loaded from: classes5.dex */
public final class cj extends ContentObserver {
    public final Context a;
    public float b;
    private final AudioManager c;
    private final cg d;
    private final ci e;

    public cj(Handler handler, Context context, cg cgVar, ci ciVar) {
        super(handler);
        this.a = context;
        this.c = (AudioManager) context.getSystemService(MimeTypes.BASE_TYPE_AUDIO);
        this.d = cgVar;
        this.e = ciVar;
    }

    public final float a() {
        return cg.a(this.c.getStreamVolume(3), this.c.getStreamMaxVolume(3));
    }

    public final void b() {
        this.e.a(this.b);
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        super.onChange(z);
        float fA = a();
        if (fA != this.b) {
            this.b = fA;
            b();
        }
    }
}
