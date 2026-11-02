package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import android.view.MotionEvent;
import android.widget.RelativeLayout;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ℐ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0857 extends RelativeLayout {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0820 f3129;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ boolean f3130;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0857(C0820 c0820, Context context, boolean z) {
        super(context);
        this.f3129 = c0820;
        this.f3130 = z;
    }

    @Override // android.view.View
    public final int getVisibility() {
        if (this.f3130) {
            return 4;
        }
        return super.getVisibility();
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        C0820.m2279(this.f3129, motionEvent);
        return super.onInterceptTouchEvent(motionEvent);
    }
}
