package com.unity3d.ads.core.domain;

import com.unity3d.ads.adplayer.AdPlayer;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.domain.adload.PreShowWebViewStrategy;
import com.unity3d.ads.core.log.Logger;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.SupervisorKt;
import p005kotlin.Metadata;
import p005kotlin.Unit;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CleanUpWhenOpportunityExpires.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B!\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u0011\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0086\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/unity3d/ads/core/domain/CleanUpWhenOpportunityExpires;", "", "defaultDispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "logger", "Lcom/unity3d/ads/core/log/Logger;", "preShowStrategy", "Lcom/unity3d/ads/core/domain/adload/PreShowWebViewStrategy;", "<init>", "(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/unity3d/ads/core/log/Logger;Lcom/unity3d/ads/core/domain/adload/PreShowWebViewStrategy;)V", "coroutineExceptionHandler", "Lkotlinx/coroutines/CoroutineExceptionHandler;", "coroutineScope", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "", "adObject", "Lcom/unity3d/ads/core/data/model/AdObject;", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CleanUpWhenOpportunityExpires {
    private final CoroutineExceptionHandler coroutineExceptionHandler;
    private final CoroutineScope coroutineScope;
    private final Logger logger;
    private final PreShowWebViewStrategy preShowStrategy;

    public CleanUpWhenOpportunityExpires(CoroutineDispatcher defaultDispatcher, Logger logger, PreShowWebViewStrategy preShowStrategy) {
        Intrinsics.checkNotNullParameter(defaultDispatcher, "defaultDispatcher");
        Intrinsics.checkNotNullParameter(logger, "logger");
        Intrinsics.checkNotNullParameter(preShowStrategy, "preShowStrategy");
        this.logger = logger;
        this.preShowStrategy = preShowStrategy;
        CleanUpWhenOpportunityExpires$special$$inlined$CoroutineExceptionHandler$1 cleanUpWhenOpportunityExpires$special$$inlined$CoroutineExceptionHandler$1 = new CleanUpWhenOpportunityExpires$special$$inlined$CoroutineExceptionHandler$1(CoroutineExceptionHandler.INSTANCE, this);
        this.coroutineExceptionHandler = cleanUpWhenOpportunityExpires$special$$inlined$CoroutineExceptionHandler$1;
        this.coroutineScope = CoroutineScopeKt.CoroutineScope(SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null).plus(defaultDispatcher).plus(cleanUpWhenOpportunityExpires$special$$inlined$CoroutineExceptionHandler$1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$2(Job job, Throwable th) {
        Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        return Unit.INSTANCE;
    }

    public final void invoke(AdObject adObject) {
        CoroutineScope adScope;
        Intrinsics.checkNotNullParameter(adObject, "adObject");
        if (adObject.getAdScope() == null) {
            throw new IllegalArgumentException("AdObject does not have an adScope.".toString());
        }
        final Job jobLaunch$default = BuildersKt__Builders_commonKt.launch$default(this.coroutineScope, null, null, new CleanUpWhenOpportunityExpires$invoke$job$1(adObject, this, null), 3, null);
        AdPlayer adPlayer = adObject.getAdPlayer();
        if (adPlayer == null || (adScope = adPlayer.getScope()) == null) {
            adScope = adObject.getAdScope();
        }
        JobKt.getJob(adScope.getCoroutineContext()).invokeOnCompletion(new Function1() { // from class: com.unity3d.ads.core.domain.CleanUpWhenOpportunityExpires$$ExternalSyntheticLambda0
            @Override // p005kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return CleanUpWhenOpportunityExpires.invoke$lambda$2(jobLaunch$default, (Throwable) obj);
            }
        });
    }
}
