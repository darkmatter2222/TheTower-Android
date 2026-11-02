package com.ironsource.adqualitysdk.sdk.i;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ἴ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0822 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ C0820 f3076;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ ViewOnLayoutChangeListenerC0876 f3077;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0823 f3078;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ ViewGroup f3079;

    public C0822(C0820 c0820, ViewGroup viewGroup, C0823 c0823, ViewOnLayoutChangeListenerC0876 viewOnLayoutChangeListenerC0876) {
        this.f3076 = c0820;
        this.f3079 = viewGroup;
        this.f3078 = c0823;
        this.f3077 = viewOnLayoutChangeListenerC0876;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        C0820 c0820 = this.f3076;
        ViewGroup viewGroup = this.f3079;
        C0823 c0823 = this.f3078;
        c0820.getClass();
        View.OnTouchListener onTouchListenerM2195 = AbstractC0665.m2195(viewGroup);
        if (!(onTouchListenerM2195 instanceof ViewOnTouchListenerC0124)) {
            viewGroup.setOnTouchListener(new ViewOnTouchListenerC0124(onTouchListenerM2195, c0823));
        }
        for (int i = 0; i < this.f3079.getChildCount(); i++) {
            View childAt = this.f3079.getChildAt(i);
            if (childAt instanceof ViewGroup) {
                C0820 c0821 = this.f3076;
                ViewOnLayoutChangeListenerC0876 viewOnLayoutChangeListenerC0876 = this.f3077;
                c0821.getClass();
                new Handler(Looper.getMainLooper()).post(new C0822(c0821, (ViewGroup) childAt, new C0823(c0821), viewOnLayoutChangeListenerC0876));
            } else {
                C0820 c0822 = this.f3076;
                C0823 c0824 = this.f3078;
                c0822.getClass();
                View.OnTouchListener onTouchListenerM2196 = AbstractC0665.m2195(childAt);
                if (!(onTouchListenerM2196 instanceof ViewOnTouchListenerC0124)) {
                    childAt.setOnTouchListener(new ViewOnTouchListenerC0124(onTouchListenerM2196, c0824));
                }
            }
        }
        this.f3079.removeOnLayoutChangeListener(this.f3077);
        this.f3079.addOnLayoutChangeListener(this.f3077);
    }
}
