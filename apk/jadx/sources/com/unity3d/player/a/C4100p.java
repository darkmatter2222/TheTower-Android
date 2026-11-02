package com.unity3d.player.a;

import android.content.Context;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import com.unity3d.player.U;
import com.unity3d.player.UnityPlayerForActivityOrService;

/* JADX INFO: renamed from: com.unity3d.player.a.p, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C4100p extends FrameLayout {
    public final UnityPlayerForActivityOrService a;
    public final U b;

    public C4100p(Context context, UnityPlayerForActivityOrService unityPlayerForActivityOrService) {
        super(context);
        this.a = unityPlayerForActivityOrService;
        U u = new U(unityPlayerForActivityOrService);
        this.b = u;
        addView(u);
    }

    @Override // android.view.View
    public final boolean onGenericMotionEvent(MotionEvent motionEvent) {
        C4091g c4091g = this.b.a;
        if (c4091g == null || c4091g.a <= 0.0f) {
            return this.a.injectEvent(motionEvent);
        }
        return false;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i, KeyEvent keyEvent) {
        return this.a.injectEvent(keyEvent);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyLongPress(int i, KeyEvent keyEvent) {
        return this.a.injectEvent(keyEvent);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyMultiple(int i, int i2, KeyEvent keyEvent) {
        return this.a.injectEvent(keyEvent);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i, KeyEvent keyEvent) {
        return this.a.injectEvent(keyEvent);
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        C4091g c4091g = this.b.a;
        if (c4091g == null || c4091g.a <= 0.0f) {
            return this.a.injectEvent(motionEvent);
        }
        return false;
    }
}
