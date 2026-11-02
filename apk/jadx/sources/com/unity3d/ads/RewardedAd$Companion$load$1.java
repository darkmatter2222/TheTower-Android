package com.unity3d.ads;

import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.data.model.LoadConfigurationInternal;
import com.unity3d.ads.core.domain.InternalLoadListener;
import com.unity3d.ads.core.domain.SafeCallbackInvoke;
import com.unity3d.services.ads.UnityAdsImplementation;
import com.unity3d.services.core.di.ServiceKey;
import com.unity3d.services.core.di.ServiceProvider;
import com.unity3d.services.core.misc.Utilities;
import gatewayprotocol.v1.ErrorOuterClass;
import java.util.UUID;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.Metadata;
import p005kotlin.Result;
import p005kotlin.ResultKt;
import p005kotlin.Unit;
import p005kotlin.collections.MapsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.DebugMetadata;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.Reflection;

/* JADX INFO: compiled from: RewardedAd.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.unity3d.ads.RewardedAd$Companion$load$1", f = "RewardedAd.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class RewardedAd$Companion$load$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ LoadConfiguration $configuration;
    final /* synthetic */ LoadListener<RewardedAd> $listener;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RewardedAd$Companion$load$1(LoadConfiguration loadConfiguration, LoadListener<RewardedAd> loadListener, Continuation<? super RewardedAd$Companion$load$1> continuation) {
        super(2, continuation);
        this.$configuration = loadConfiguration;
        this.$listener = loadListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokeSuspend$lambda$3$lambda$2(LoadListener loadListener, Throwable th) {
        loadListener.onAdLoaded(null, new UnityAdsError(ErrorOuterClass.PublicErrorCode.PUBLIC_ERROR_CODE_INIT_UNKNOWN.getNumber(), "Unity Ads SDK load failed due to unexpected error: " + th.getMessage()));
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        RewardedAd$Companion$load$1 rewardedAd$Companion$load$1 = new RewardedAd$Companion$load$1(this.$configuration, this.$listener, continuation);
        rewardedAd$Companion$load$1.L$0 = obj;
        return rewardedAd$Companion$load$1;
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((RewardedAd$Companion$load$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objM3022constructorimpl;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        LoadConfiguration loadConfiguration = this.$configuration;
        final LoadListener<RewardedAd> loadListener = this.$listener;
        try {
            Result.Companion companion = Result.INSTANCE;
            LoadConfigurationInternal loadConfigurationInternal = new LoadConfigurationInternal(loadConfiguration.getPlacementId(), loadConfiguration.getAdMarkup(), loadConfiguration.getMediationAdUnitId(), loadConfiguration.getMediationInfo(), MapsKt.toMap(loadConfiguration.getExtras()), null, 32, null);
            UUID uuidRandomUUID = UUID.randomUUID();
            UnityAdsLoadOptions unityAdsLoadOptions = new UnityAdsLoadOptions();
            unityAdsLoadOptions.setObjectId(uuidRandomUUID.toString());
            unityAdsLoadOptions.setAdMarkup(loadConfiguration.getAdMarkup());
            unityAdsLoadOptions.loadConfiguration = loadConfigurationInternal;
            UnityAdsImplementation.getInstance().load(loadConfiguration.getPlacementId(), unityAdsLoadOptions, new InternalLoadListener() { // from class: com.unity3d.ads.RewardedAd$Companion$load$1$1$1
                @Override // com.unity3d.ads.core.domain.InternalLoadListener
                public void onAdLoadFail(UnityAdsError error) {
                    Intrinsics.checkNotNullParameter(error, "error");
                    loadListener.onAdLoaded(null, error);
                }

                @Override // com.unity3d.ads.core.domain.InternalLoadListener
                public void onAdLoaded(AdObject adObject) {
                    Intrinsics.checkNotNullParameter(adObject, "adObject");
                    loadListener.onAdLoaded(new RewardedAd(adObject, (SafeCallbackInvoke) ServiceProvider.INSTANCE.getRegistry().resolveService(new ServiceKey(null, Reflection.getOrCreateKotlinClass(SafeCallbackInvoke.class), 1, null))), null);
                }
            });
            objM3022constructorimpl = Result.m3022constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM3022constructorimpl = Result.m3022constructorimpl(ResultKt.createFailure(th));
        }
        final LoadListener<RewardedAd> loadListener2 = this.$listener;
        final Throwable thM3025exceptionOrNullimpl = Result.m3025exceptionOrNullimpl(objM3022constructorimpl);
        if (thM3025exceptionOrNullimpl != null) {
            Utilities.wrapCustomerListener(new Runnable() { // from class: com.unity3d.ads.RewardedAd$Companion$load$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    RewardedAd$Companion$load$1.invokeSuspend$lambda$3$lambda$2(loadListener2, thM3025exceptionOrNullimpl);
                }
            });
        }
        return Unit.INSTANCE;
    }
}
