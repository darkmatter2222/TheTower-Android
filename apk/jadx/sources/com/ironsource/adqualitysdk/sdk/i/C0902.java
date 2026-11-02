package com.ironsource.adqualitysdk.sdk.i;

import android.R;
import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.丿, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0902 implements z0 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0820 f3190;

    public C0902(C0820 c0820) {
        this.f3190 = c0820;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.z0
    /* JADX INFO: renamed from: ﾇ */
    public final void mo1815(View view) {
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.z0
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1818(View view) {
        boolean z;
        C0272 c0272M2008 = C0272.m2008();
        synchronized (c0272M2008) {
            z = c0272M2008.f1363;
        }
        if (z) {
            this.f3190.m2281();
            return;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (viewGroup.getContext() instanceof Activity) {
                ViewGroup viewGroup2 = (ViewGroup) ((Activity) viewGroup.getContext()).findViewById(R.id.content);
                this.f3190.getClass();
                if (viewGroup2 != null) {
                    ViewGroup viewGroup3 = viewGroup2;
                    while (viewGroup2 != null) {
                        ViewParent parent = viewGroup2.getParent();
                        if (parent != viewGroup) {
                            if (!(parent instanceof ViewGroup)) {
                                break;
                            }
                            viewGroup3 = viewGroup2;
                            viewGroup2 = (ViewGroup) parent;
                        } else if (viewGroup3 == viewGroup2) {
                            break;
                        } else {
                            viewGroup = viewGroup3;
                        }
                    }
                    viewGroup = viewGroup2;
                }
            }
            C0820 c0820 = this.f3190;
            c0820.getClass();
            C0820.m2280(c0820, viewGroup, new ViewOnLayoutChangeListenerC0876(c0820, viewGroup));
        }
    }
}
