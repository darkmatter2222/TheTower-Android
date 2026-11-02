package com.ironsource.adqualitysdk.sdk.i;

import android.view.View;
import android.view.ViewGroup;
import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.〱, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class ViewOnLayoutChangeListenerC0876 implements View.OnLayoutChangeListener {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0820 f3155;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ ViewGroup f3156;

    public ViewOnLayoutChangeListenerC0876(C0820 c0820, ViewGroup viewGroup) {
        this.f3155 = c0820;
        this.f3156 = viewGroup;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        boolean z;
        C0272 c0272M2008 = C0272.m2008();
        synchronized (c0272M2008) {
            z = c0272M2008.f1363;
        }
        if (z) {
            return;
        }
        try {
            C0820.m2280(this.f3155, this.f3156, this);
        } catch (Throwable th) {
            AbstractC1071.m2435(StringFog.decrypt("I/Md1E9vmt4R/Br6R3C61Ar6AOVLcbjYB/o=\n", "ZJ9yti4DzrE=\n"), StringFog.decrypt("XvR/cKIT57Y76WNTsUrhrW/FZX6+VOs=\n", "G4YNH9Azjtg=\n"), th, false);
        }
    }
}
