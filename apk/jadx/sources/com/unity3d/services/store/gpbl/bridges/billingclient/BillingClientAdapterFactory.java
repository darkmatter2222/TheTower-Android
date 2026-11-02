package com.unity3d.services.store.gpbl.bridges.billingclient;

import android.content.Context;
import com.unity3d.services.store.gpbl.bridges.billingclient.v6.BillingClientBridge;
import com.unity3d.services.store.gpbl.bridges.billingclient.v6.BillingClientBuilderBridge;
import com.unity3d.services.store.gpbl.bridges.billingclient.v8.QueryProductDetailsResultsBridge;
import p005kotlin.Metadata;
import p005kotlin.Result;
import p005kotlin.ResultKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BillingClientAdapterFactory.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u001d\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\t2\u0006\u0010\u0006\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u001c\u0010\f\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\r\u001a\u00020\u000eH\u0002¨\u0006\u000f"}, d2 = {"Lcom/unity3d/services/store/gpbl/bridges/billingclient/BillingClientAdapterFactory;", "", "<init>", "()V", "createBillingClientAdapter", "Lcom/unity3d/services/store/gpbl/bridges/billingclient/BillingClientAdapter;", "context", "Landroid/content/Context;", "createV8Adapter", "Lkotlin/Result;", "createV8Adapter-IoAF18A", "(Landroid/content/Context;)Ljava/lang/Object;", "createV6Adapter", "fallbackVersion", "", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class BillingClientAdapterFactory {
    private final BillingClientAdapter createV6Adapter(Context context, int fallbackVersion) {
        Object objM3022constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            BillingClientAdapterFactory billingClientAdapterFactory = this;
            BillingClientBuilderBridge billingClientBuilderBridgeNewBuilder = BillingClientBridge.newBuilder(context);
            Intrinsics.checkNotNull(billingClientBuilderBridgeNewBuilder);
            objM3022constructorimpl = Result.m3022constructorimpl(new com.unity3d.services.store.gpbl.bridges.billingclient.v6.BillingClientAdapter(billingClientBuilderBridgeNewBuilder, fallbackVersion));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM3022constructorimpl = Result.m3022constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m3028isFailureimpl(objM3022constructorimpl)) {
            objM3022constructorimpl = null;
        }
        return (BillingClientAdapter) objM3022constructorimpl;
    }

    static /* synthetic */ BillingClientAdapter createV6Adapter$default(BillingClientAdapterFactory billingClientAdapterFactory, Context context, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 6;
        }
        return billingClientAdapterFactory.createV6Adapter(context, i);
    }

    /* JADX INFO: renamed from: createV8Adapter-IoAF18A, reason: not valid java name */
    private final Object m2924createV8AdapterIoAF18A(Context context) {
        try {
            Result.Companion companion = Result.INSTANCE;
            BillingClientAdapterFactory billingClientAdapterFactory = this;
            com.unity3d.services.store.gpbl.bridges.billingclient.v8.BillingClientAdapter billingClientAdapter = new com.unity3d.services.store.gpbl.bridges.billingclient.v8.BillingClientAdapter(com.unity3d.services.store.gpbl.bridges.billingclient.v8.BillingClientBridge.INSTANCE.newBuilder(context));
            if (new QueryProductDetailsResultsBridge(new Object()).exists()) {
                return Result.m3022constructorimpl(billingClientAdapter);
            }
            throw new FallbackException(7);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            return Result.m3022constructorimpl(ResultKt.createFailure(th));
        }
    }

    public final BillingClientAdapter createBillingClientAdapter(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Object objM2924createV8AdapterIoAF18A = m2924createV8AdapterIoAF18A(context);
        Throwable thM3025exceptionOrNullimpl = Result.m3025exceptionOrNullimpl(objM2924createV8AdapterIoAF18A);
        if (thM3025exceptionOrNullimpl != null) {
            objM2924createV8AdapterIoAF18A = thM3025exceptionOrNullimpl instanceof FallbackException ? createV6Adapter(context, ((FallbackException) thM3025exceptionOrNullimpl).getDetectedVersion()) : createV6Adapter$default(this, context, 0, 2, null);
        }
        return (BillingClientAdapter) objM2924createV8AdapterIoAF18A;
    }
}
