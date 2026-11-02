package kotlin;

import com.google.android.libraries.ads.mobile.sdk.banner.AdView;
import com.google.android.libraries.ads.mobile.sdk.banner.BannerAd;
import com.google.android.libraries.ads.mobile.sdk.banner.a;
import com.google.android.libraries.ads.mobile.sdk.common.AdLoadCallback;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.CoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class ad extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ AdLoadCallback b;
    public final /* synthetic */ BannerAd c;
    public final /* synthetic */ AdView d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ad(AdLoadCallback adLoadCallback, BannerAd bannerAd, AdView adView, Continuation continuation) {
        super(2, continuation);
        this.b = adLoadCallback;
        this.c = bannerAd;
        this.d = adView;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ad(this.b, this.c, this.d, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ad) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            a01.a.getClass();
            CoroutineContext coroutineContext = (CoroutineContext) ((vf0) zz0.a()).w.get();
            a aVar = new a(this.d, this.c, null);
            this.a = 1;
            if (BuildersKt.withContext(coroutineContext, aVar, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        this.b.onAdLoaded(this.c);
        return p005kotlin.Unit.INSTANCE;
    }
}
