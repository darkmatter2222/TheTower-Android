package com.unity3d.player;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.widget.EditText;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes5.dex */
public final class B extends AbstractC4146w {
    public boolean h;
    public Handler i;
    public RunnableC4152z j;

    public B(Context context, UnityPlayerForActivityOrService unityPlayerForActivityOrService) {
        super(context, unityPlayerForActivityOrService);
        this.h = false;
    }

    @Override // com.unity3d.player.a.r
    public final void a() {
        if (this.h) {
            return;
        }
        FrameLayout frameLayout = this.b.getFrameLayout();
        frameLayout.addView(this.c);
        frameLayout.bringChildToFront(this.c);
        this.c.setVisibility(0);
        this.c.requestFocus();
        this.j = new RunnableC4152z(this);
        Handler handler = new Handler(Looper.getMainLooper());
        this.i = handler;
        handler.postDelayed(this.j, 400L);
        this.h = true;
    }

    @Override // com.unity3d.player.AbstractC4146w
    public EditText createEditText(AbstractC4146w abstractC4146w) {
        return new A(this.a, abstractC4146w);
    }

    @Override // com.unity3d.player.a.r
    public final void hide() {
        RunnableC4152z runnableC4152z;
        Handler handler = this.i;
        if (handler != null && (runnableC4152z = this.j) != null) {
            handler.removeCallbacks(runnableC4152z);
        }
        this.b.getFrameLayout().removeView(this.c);
        this.h = false;
        invokeOnClose();
    }

    @Override // com.unity3d.player.AbstractC4146w, com.unity3d.player.a.r
    public final boolean isConsumeOutsideTouchesEnabled() {
        return false;
    }

    @Override // com.unity3d.player.AbstractC4146w, com.unity3d.player.a.r
    public final void setHideInputField(boolean z) {
        this.d = z;
        if (z) {
            this.c.setVisibility(4);
        } else {
            this.c.setVisibility(0);
        }
        this.c.invalidate();
        this.c.requestLayout();
    }
}
