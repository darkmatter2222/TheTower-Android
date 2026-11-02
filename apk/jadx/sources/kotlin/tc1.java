package kotlin;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.VersionInfo;
import com.google.android.gms.ads.mediation.Adapter;
import com.google.android.gms.ads.mediation.MediationConfiguration;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlinx.coroutines.CancellableContinuationImpl;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.DebugProbesKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class tc1 {
    public final Adapter a;

    public tc1(Adapter adapter) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        this.a = adapter;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:35:0x008b  */
    public static final ArrayList a(tc1 tc1Var, be beVar) {
        AdFormat adFormat;
        tc1Var.getClass();
        List<ee> listW = beVar.w();
        Intrinsics.checkNotNullExpressionValue(listW, "getInitializationDataList(...)");
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(listW, 10));
        for (ee eeVar : listW) {
            String strW = eeVar.w();
            Intrinsics.checkNotNullExpressionValue(strW, "getFormat(...)");
            switch (strW) {
                case "banner":
                    adFormat = AdFormat.BANNER;
                    break;
                case "native":
                    adFormat = AdFormat.NATIVE;
                    break;
                case "rewarded":
                    adFormat = AdFormat.REWARDED;
                    break;
                case "interstitial":
                    adFormat = AdFormat.INTERSTITIAL;
                    break;
                case "app_open":
                    adFormat = AdFormat.APP_OPEN_AD;
                    break;
                case "app_open_ad":
                    adFormat = AdFormat.APP_OPEN_AD;
                    break;
                case "rewarded_interstitial":
                    adFormat = AdFormat.REWARDED_INTERSTITIAL;
                    break;
                default:
                    adFormat = AdFormat.UNKNOWN;
                    break;
            }
            Bundle bundle = new Bundle();
            Map mapV = eeVar.v();
            Intrinsics.checkNotNullExpressionValue(mapV, "getExtrasMap(...)");
            for (Map.Entry entry : mapV.entrySet()) {
                bundle.putString((String) entry.getKey(), (String) entry.getValue());
            }
            arrayList.add(new MediationConfiguration(adFormat, bundle));
        }
        return arrayList;
    }

    public final VersionInfo a() {
        return this.a.getSDKVersionInfo();
    }

    public Object a(Context context, be beVar, Continuation continuation) {
        return b(context, beVar, continuation);
    }

    public final VersionInfo b() {
        return this.a.getVersionInfo();
    }

    public final Object b(Context context, be beVar, Continuation continuation) {
        if (!Intrinsics.areEqual(Looper.getMainLooper(), Looper.myLooper())) {
            throw new IllegalStateException("Check failed.".toString());
        }
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        try {
            this.a.initialize(context, new sc1(atomicBoolean, cancellableContinuationImpl), a(this, beVar));
        } catch (Throwable th) {
            if (!atomicBoolean.getAndSet(true)) {
                p005kotlin.Result.Companion companion = p005kotlin.Result.INSTANCE;
                cancellableContinuationImpl.resumeWith(p005kotlin.Result.m3022constructorimpl(new j01(th, kk1.ADAPTER_INITIALIZATION_ERROR, "Exception caught initializing adapter: " + th.getClass().getName())));
            }
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }
}
