package com.ironsource;

import android.app.Activity;
import com.ironsource.mediationsdk.logger.IronLog;
import java.util.HashMap;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.c0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3524c0 implements InterfaceC3506b0 {
    private final Gc a;

    public C3524c0(Gc networkShowApi) {
        Intrinsics.checkNotNullParameter(networkShowApi, "networkShowApi");
        this.a = networkShowApi;
    }

    @Override // com.ironsource.InterfaceC3506b0
    public void a(Activity activity, R9 adInstance) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(adInstance, "adInstance");
        IronLog.ADAPTER_API.verbose("Show: networkInstanceId=" + adInstance.g() + " adInstanceId=" + adInstance.e());
        this.a.a(activity, adInstance, new HashMap());
    }

    @Override // com.ironsource.InterfaceC3506b0
    public boolean a(R9 adInstance) {
        Intrinsics.checkNotNullParameter(adInstance, "adInstance");
        return this.a.a(adInstance);
    }
}
