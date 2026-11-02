package com.unity3d.ads.core.domain.billing;

import p005kotlin.Metadata;
import p005kotlin.Result;
import p005kotlin.ResultKt;

/* JADX INFO: compiled from: IsBillingClientAvailable.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\t\u0010\u0004\u001a\u00020\u0005H\u0086\u0002¨\u0006\u0006"}, d2 = {"Lcom/unity3d/ads/core/domain/billing/IsBillingClientAvailable;", "", "<init>", "()V", "invoke", "", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class IsBillingClientAvailable {
    public final boolean invoke() {
        Object objM3022constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            IsBillingClientAvailable isBillingClientAvailable = this;
            objM3022constructorimpl = Result.m3022constructorimpl(Class.forName("com.android.billingclient.api.BillingClient"));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM3022constructorimpl = Result.m3022constructorimpl(ResultKt.createFailure(th));
        }
        return Result.m3029isSuccessimpl(objM3022constructorimpl);
    }
}
