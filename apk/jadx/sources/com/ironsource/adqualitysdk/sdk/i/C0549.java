package com.ironsource.adqualitysdk.sdk.i;

import android.app.Activity;
import android.os.Bundle;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᒃ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0549 extends AbstractC0789 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0116 f2278;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ ArrayList f2279;

    public C0549(C0116 c0116, ArrayList arrayList) {
        this.f2278 = c0116;
        this.f2279 = arrayList;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0789, android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        if (C0116.m1901(this.f2278, activity, this.f2279)) {
            m2124(StringFog.decrypt("1xM7tbxTbNPMBDmkrVtu39w=\n", "uH161sg6Gro=\n"), Arrays.asList(activity, bundle));
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0789, android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        if (C0116.m1901(this.f2278, activity, this.f2279)) {
            m2124(StringFog.decrypt("Z+W2wJqIwGx88rPGnZXEanHukw==\n", "CIv3o+7htgU=\n"), Collections.singletonList(activity));
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0789, android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        if (C0116.m1901(this.f2278, activity, this.f2279)) {
            m2124(StringFog.decrypt("3QKVdHyxIbDGFYR2fasyvQ==\n", "smzUFwjYV9k=\n"), Collections.singletonList(activity));
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0789, android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        if (C0116.m1901(this.f2278, activity, this.f2279)) {
            m2124(StringFog.decrypt("9jAiD+I2mAvtJzEJ5SqDB/0=\n", "mV5jbJZf7mI=\n"), Collections.singletonList(activity));
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0789, android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        if (C0116.m1901(this.f2278, activity, this.f2279)) {
            m2124(StringFog.decrypt("IE/EW+DQLM47WNZZ4twTyTxV5Fb33AnTLlXg\n", "TyGFOJS5Wqc=\n"), Arrays.asList(activity, bundle));
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0789, android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        if (C0116.m1901(this.f2278, activity, this.f2279)) {
            m2124(StringFog.decrypt("aUK4XolZ8r9yVapJnELws2I=\n", "Biz5Pf0whNY=\n"), Collections.singletonList(activity));
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0789, android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        if (C0116.m1901(this.f2278, activity, this.f2279)) {
            m2124(StringFog.decrypt("+5sq2m87IUPgjDjNdCInT/A=\n", "lPVruRtSVyo=\n"), Collections.singletonList(activity));
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0789, com.ironsource.adqualitysdk.sdk.i.InterfaceC0511
    /* JADX INFO: renamed from: ﾇ */
    public final void mo2033(Activity activity) {
        m2124(StringFog.decrypt("p96F8F9+j9u9wqrlS3iF6afCoeddQ5/BrA==\n", "yLDEgC8s6q8=\n"), Collections.singletonList(activity));
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0789, com.ironsource.adqualitysdk.sdk.i.InterfaceC0511
    /* JADX INFO: renamed from: ﾒ */
    public final void mo2034(Activity activity) {
        m2124(StringFog.decrypt("MEI/1NKTyqMreBHmw6PEqi1DC8rG\n", "Xyx+pKLAr80=\n"), Collections.singletonList(activity));
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m2124(String str, List list) {
        C0116.m1900(this.f2278, AbstractC0270.m2002("/hwoV7yTfSzzFjpbqYNqOdpR\n", "v39cPsr6CVU=\n", new StringBuilder(), str), true, false, list);
        AbstractC0340.m2054(new C0590(this, str, list));
    }
}
