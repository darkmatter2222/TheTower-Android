package com.ironsource.adqualitysdk.sdk.i;

import android.view.View;
import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.v, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class ViewOnLayoutChangeListenerC3497v implements View.OnLayoutChangeListener {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ B f383;

    public ViewOnLayoutChangeListenerC3497v(B b) {
        this.f383 = b;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        try {
            this.f383.m1808(view);
        } catch (Throwable th) {
            AbstractC1071.m2435(StringFog.decrypt("ciInIymZA65FJSY4DY8=\n", "JEtCVGj9cOY=\n"), StringFog.decrypt("6gttlvFXYVuPFnG14g5nQNs6d5jtEG0=\n", "r3kf+YN3CDU=\n"), th, false);
        }
    }
}
