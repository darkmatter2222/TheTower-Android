package kotlin;

import android.content.Context;
import android.os.Bundle;
import android.os.SystemClock;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.mediation.MediationConfiguration;
import com.google.android.gms.ads.mediation.rtb.RtbAdapter;
import com.google.android.gms.ads.mediation.rtb.RtbSignalData;
import com.google.android.libraries.ads.mobile.sdk.banner.AdSize;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.coroutines.jvm.internal.DebugProbesKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class z83 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ b93 b;
    public final /* synthetic */ String c;
    public final /* synthetic */ String d;
    public final /* synthetic */ Bundle e;
    public final /* synthetic */ Bundle f;
    public final /* synthetic */ AdSize g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z83(Bundle bundle, Bundle bundle2, AdSize adSize, b93 b93Var, String str, String str2, Continuation continuation) {
        super(2, continuation);
        this.b = b93Var;
        this.c = str;
        this.d = str2;
        this.e = bundle;
        this.f = bundle2;
        this.g = adSize;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new z83(this.e, this.f, this.g, this.b, this.c, this.d, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((z83) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:48:0x00fc  */
    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CancellableContinuationImpl cancellableContinuationImpl;
        AdFormat adFormat;
        com.google.android.gms.ads.AdSize adSize;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i != 0) {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(obj);
            return obj;
        }
        p005kotlin.ResultKt.throwOnFailure(obj);
        b93 b93Var = this.b;
        String str = this.c;
        String adType = this.d;
        Bundle requestExtras = this.e;
        Bundle serverExtras = this.f;
        AdSize adSize2 = this.g;
        this.a = 1;
        jf jfVarA = rv1.a(b93Var.e, str, true, false, null, 12);
        CancellableContinuationImpl cancellableContinuationImpl2 = new CancellableContinuationImpl(IntrinsicsKt.intercepted(this), 1);
        cancellableContinuationImpl2.initCancellability();
        Duration.Companion companion = Duration.INSTANCE;
        b93Var.b.getClass();
        long duration = DurationKt.toDuration(SystemClock.elapsedRealtime(), DurationUnit.MILLISECONDS);
        if (jfVarA == null || !(jfVarA instanceof u83)) {
            cancellableContinuationImpl = cancellableContinuationImpl2;
            p005kotlin.Result.Companion companion2 = p005kotlin.Result.INSTANCE;
            cancellableContinuationImpl.resumeWith(p005kotlin.Result.m3022constructorimpl(new m83(str, null, null, "Adapter failed to instantiate.", Boxing.boxInt(1), 78)));
        } else {
            u83 u83Var = (u83) jfVarA;
            hs3.a().a.c.e = u83Var.a.getVersionInfo().toString();
            g93 callback = new g93(str, u83Var, duration, b93Var.b, cancellableContinuationImpl2);
            cancellableContinuationImpl = cancellableContinuationImpl2;
            Context context = b93Var.d.g();
            if (context == null) {
                context = b93Var.a;
            }
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(adType, "adType");
            Intrinsics.checkNotNullParameter(requestExtras, "requestExtras");
            Intrinsics.checkNotNullParameter(serverExtras, "serverExtras");
            Intrinsics.checkNotNullParameter(callback, "callback");
            RtbAdapter rtbAdapter = u83Var.b;
            switch (adType) {
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
            MediationConfiguration mediationConfiguration = new MediationConfiguration(adFormat, serverExtras);
            if (adSize2 != null) {
                int width = adSize2.getWidth();
                int height = adSize2.getHeight();
                String formatString = adSize2.getFormatString();
                boolean isAnchoredAdaptiveBanner = adSize2.getIsAnchoredAdaptiveBanner();
                boolean isInlineAdaptiveBanner = adSize2.getIsInlineAdaptiveBanner();
                int height2 = adSize2.getHeight();
                Intrinsics.checkNotNullParameter(formatString, "formatString");
                adSize = new com.google.android.gms.ads.AdSize(width, height, formatString, isAnchoredAdaptiveBanner, isInlineAdaptiveBanner, height2);
            } else {
                adSize = null;
            }
            rtbAdapter.collectSignals(new RtbSignalData(context, CollectionsKt.listOf(mediationConfiguration), requestExtras, adSize), callback);
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(this);
        }
        return result == coroutine_suspended ? coroutine_suspended : result;
    }
}
