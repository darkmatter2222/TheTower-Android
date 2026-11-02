package com.unity3d.ads;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.unity3d.ads.adplayer.AdPlayer;
import com.unity3d.ads.core.data.datasource.CurrentActivityDataSource;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.data.model.Listeners;
import com.unity3d.ads.core.data.model.ShowConfigurationInternal;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.domain.SafeCallbackInvoke;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import com.unity3d.ads.core.extensions.ProtobufExtensionsKt;
import com.unity3d.services.UnityAdsSDK;
import com.unity3d.services.core.di.IServiceProvider;
import com.unity3d.services.core.di.ServiceKey;
import com.unity3d.services.core.di.ServiceProvider;
import gatewayprotocol.v1.ErrorOuterClass;
import java.lang.ref.WeakReference;
import java.util.Map;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.Metadata;
import p005kotlin.NoWhenBranchMatchedException;
import p005kotlin.ResultKt;
import p005kotlin.Unit;
import p005kotlin.collections.MapsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.DebugMetadata;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.JvmStatic;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.Reflection;

/* JADX INFO: compiled from: RewardedOffersAd.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0019\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J(\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0015R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\"\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u0017"}, d2 = {"Lcom/unity3d/ads/RewardedOffersAd;", "", "adObject", "Lcom/unity3d/ads/core/data/model/AdObject;", "safeCallbackInvoke", "Lcom/unity3d/ads/core/domain/SafeCallbackInvoke;", "<init>", "(Lcom/unity3d/ads/core/data/model/AdObject;Lcom/unity3d/ads/core/domain/SafeCallbackInvoke;)V", "onAdExpired", "Lcom/unity3d/ads/AdExpiredListener;", "getOnAdExpired", "()Lcom/unity3d/ads/AdExpiredListener;", "setOnAdExpired", "(Lcom/unity3d/ads/AdExpiredListener;)V", "show", "", "context", "Landroid/content/Context;", "configuration", "Lcom/unity3d/ads/ShowConfiguration;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/unity3d/ads/RewardedOffersShowListener;", "Companion", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RewardedOffersAd {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final AdObject adObject;
    private AdExpiredListener<RewardedOffersAd> onAdExpired;
    private final SafeCallbackInvoke safeCallbackInvoke;

    /* JADX INFO: compiled from: RewardedOffersAd.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0007¨\u0006\u000b"}, d2 = {"Lcom/unity3d/ads/RewardedOffersAd$Companion;", "", "<init>", "()V", "load", "", "configuration", "Lcom/unity3d/ads/LoadConfiguration;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/unity3d/ads/LoadListener;", "Lcom/unity3d/ads/RewardedOffersAd;", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final void load(LoadConfiguration configuration, LoadListener<RewardedOffersAd> listener) {
            Intrinsics.checkNotNullParameter(configuration, "configuration");
            Intrinsics.checkNotNullParameter(listener, "listener");
            BuildersKt__Builders_commonKt.launch$default((CoroutineScope) ServiceProvider.INSTANCE.getRegistry().resolveService(new ServiceKey(ServiceProvider.NAMED_LOAD_SCOPE, Reflection.getOrCreateKotlinClass(CoroutineScope.class))), null, null, new RewardedOffersAd$Companion$load$1(configuration, listener, null), 3, null);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.RewardedOffersAd$show$1, reason: invalid class name */
    /* JADX INFO: compiled from: RewardedOffersAd.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.RewardedOffersAd$show$1", f = "RewardedOffersAd.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ ShowConfiguration $configuration;
        final /* synthetic */ Context $context;
        final /* synthetic */ RewardedOffersShowListener $listener;
        int label;
        final /* synthetic */ RewardedOffersAd this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(ShowConfiguration showConfiguration, RewardedOffersAd rewardedOffersAd, Context context, RewardedOffersShowListener rewardedOffersShowListener, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$configuration = showConfiguration;
            this.this$0 = rewardedOffersAd;
            this.$context = context;
            this.$listener = rewardedOffersShowListener;
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$configuration, this.this$0, this.$context, this.$listener, continuation);
        }

        @Override // p005kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Map<String, String> mapEmptyMap;
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            ShowConfiguration showConfiguration = this.$configuration;
            IServiceProvider iServiceProvider = null;
            Object[] objArr = 0;
            String customRewardString = showConfiguration != null ? showConfiguration.getCustomRewardString() : null;
            ShowConfiguration showConfiguration2 = this.$configuration;
            if (showConfiguration2 == null || (mapEmptyMap = showConfiguration2.getExtras()) == null) {
                mapEmptyMap = MapsKt.emptyMap();
            }
            ShowConfigurationInternal showConfigurationInternal = new ShowConfigurationInternal(customRewardString, mapEmptyMap);
            UnityAdsShowOptions unityAdsShowOptions = new UnityAdsShowOptions();
            unityAdsShowOptions.setObjectId(ProtobufExtensionsKt.toUUID(this.this$0.adObject.getOpportunityId()).toString());
            unityAdsShowOptions.showConfiguration = showConfigurationInternal;
            this.this$0.adObject.setShowConfiguration(this.$configuration);
            AdObject adObject = this.this$0.adObject;
            ShowConfiguration showConfiguration3 = this.$configuration;
            adObject.setPlayerServerId(showConfiguration3 != null ? showConfiguration3.getCustomRewardString() : null);
            int i = 1;
            CurrentActivityDataSource currentActivityDataSource = (CurrentActivityDataSource) ServiceProvider.INSTANCE.getRegistry().resolveService(new ServiceKey(null, Reflection.getOrCreateKotlinClass(CurrentActivityDataSource.class), 1, null));
            SendDiagnosticEvent sendDiagnosticEvent = (SendDiagnosticEvent) ServiceProvider.INSTANCE.getRegistry().resolveService(new ServiceKey(null, Reflection.getOrCreateKotlinClass(SendDiagnosticEvent.class), 1, null));
            SessionRepository sessionRepository = (SessionRepository) ServiceProvider.INSTANCE.getRegistry().resolveService(new ServiceKey(null, Reflection.getOrCreateKotlinClass(SessionRepository.class), 1, null));
            Activity currentActivity = currentActivityDataSource.getCurrentActivity();
            ShowActivityResolverKt.commitExtras(this.$context, currentActivity, this.$configuration);
            Activity activityResolveEffectiveActivity = ShowActivityResolverKt.resolveEffectiveActivity(this.$context, currentActivity, this.this$0.adObject, sendDiagnosticEvent, sessionRepository);
            this.this$0.adObject.setActivity(activityResolveEffectiveActivity != null ? new WeakReference<>(activityResolveEffectiveActivity) : null);
            UnityAdsSDK unityAdsSDK = new UnityAdsSDK(iServiceProvider, i, objArr == true ? 1 : 0);
            String placementId = this.this$0.adObject.getPlacementId();
            final RewardedOffersShowListener rewardedOffersShowListener = this.$listener;
            final RewardedOffersAd rewardedOffersAd = this.this$0;
            unityAdsSDK.show(placementId, unityAdsShowOptions, new Listeners() { // from class: com.unity3d.ads.RewardedOffersAd.show.1.2

                /* JADX INFO: renamed from: com.unity3d.ads.RewardedOffersAd$show$1$2$WhenMappings */
                /* JADX INFO: compiled from: RewardedOffersAd.kt */
                @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
                public /* synthetic */ class WhenMappings {
                    public static final /* synthetic */ int[] $EnumSwitchMapping$0;
                    public static final /* synthetic */ int[] $EnumSwitchMapping$1;

                    static {
                        int[] iArr = new int[UnityAds.UnityAdsShowError.values().length];
                        try {
                            iArr[UnityAds.UnityAdsShowError.TIMEOUT.ordinal()] = 1;
                        } catch (NoSuchFieldError unused) {
                        }
                        try {
                            iArr[UnityAds.UnityAdsShowError.EXPIRED.ordinal()] = 2;
                        } catch (NoSuchFieldError unused2) {
                        }
                        try {
                            iArr[UnityAds.UnityAdsShowError.ALREADY_SHOWING.ordinal()] = 3;
                        } catch (NoSuchFieldError unused3) {
                        }
                        $EnumSwitchMapping$0 = iArr;
                        int[] iArr2 = new int[UnityAds.UnityAdsShowCompletionState.values().length];
                        try {
                            iArr2[UnityAds.UnityAdsShowCompletionState.COMPLETED.ordinal()] = 1;
                        } catch (NoSuchFieldError unused4) {
                        }
                        try {
                            iArr2[UnityAds.UnityAdsShowCompletionState.SKIPPED.ordinal()] = 2;
                        } catch (NoSuchFieldError unused5) {
                        }
                        $EnumSwitchMapping$1 = iArr2;
                    }
                }

                @Override // com.unity3d.ads.core.data.model.Listeners
                public void onClick(String placementId2) {
                    Intrinsics.checkNotNullParameter(placementId2, "placementId");
                    RewardedOffersShowListener rewardedOffersShowListener2 = rewardedOffersShowListener;
                    if (rewardedOffersShowListener2 != null) {
                        rewardedOffersShowListener2.onClicked(rewardedOffersAd);
                    }
                }

                @Override // com.unity3d.ads.core.data.model.Listeners
                public void onComplete(String placementId2, UnityAds.UnityAdsShowCompletionState state) {
                    ShowFinishState showFinishState;
                    Intrinsics.checkNotNullParameter(placementId2, "placementId");
                    Intrinsics.checkNotNullParameter(state, "state");
                    int i2 = WhenMappings.$EnumSwitchMapping$1[state.ordinal()];
                    if (i2 == 1) {
                        showFinishState = ShowFinishState.COMPLETED;
                    } else {
                        if (i2 != 2) {
                            throw new NoWhenBranchMatchedException();
                        }
                        showFinishState = ShowFinishState.SKIPPED;
                    }
                    RewardedOffersShowListener rewardedOffersShowListener2 = rewardedOffersShowListener;
                    if (rewardedOffersShowListener2 != null) {
                        rewardedOffersShowListener2.onCompleted(rewardedOffersAd, showFinishState);
                    }
                }

                @Override // com.unity3d.ads.core.data.model.Listeners
                public void onError(String placementId2, UnityAds.UnityAdsShowError error, String message) {
                    ErrorOuterClass.PublicErrorCode publicErrorCode;
                    Intrinsics.checkNotNullParameter(placementId2, "placementId");
                    Intrinsics.checkNotNullParameter(error, "error");
                    Intrinsics.checkNotNullParameter(message, "message");
                    int i2 = WhenMappings.$EnumSwitchMapping$0[error.ordinal()];
                    if (i2 == 1) {
                        publicErrorCode = ErrorOuterClass.PublicErrorCode.PUBLIC_ERROR_CODE_TIMEOUT;
                    } else if (i2 != 2) {
                        publicErrorCode = i2 != 3 ? ErrorOuterClass.PublicErrorCode.PUBLIC_ERROR_CODE_SHOW_INTERNAL : ErrorOuterClass.PublicErrorCode.PUBLIC_ERROR_CODE_SHOW_ALREADY_SHOWN;
                    } else {
                        publicErrorCode = ErrorOuterClass.PublicErrorCode.PUBLIC_ERROR_CODE_SHOW_EXPIRED;
                    }
                    RewardedOffersShowListener rewardedOffersShowListener2 = rewardedOffersShowListener;
                    if (rewardedOffersShowListener2 != null) {
                        rewardedOffersShowListener2.onFailed(rewardedOffersAd, new UnityAdsError(publicErrorCode.getNumber(), UnityAdsErrorKt.getShowErrorMsg(publicErrorCode)));
                    }
                }

                @Override // com.unity3d.ads.core.data.model.Listeners
                public void onLeftApplication(String placementId2) {
                    Intrinsics.checkNotNullParameter(placementId2, "placementId");
                }

                @Override // com.unity3d.ads.core.data.model.Listeners
                public void onRewarded(String placementId2) {
                    Intrinsics.checkNotNullParameter(placementId2, "placementId");
                }

                @Override // com.unity3d.ads.core.data.model.Listeners
                public void onStart(String placementId2) {
                    Intrinsics.checkNotNullParameter(placementId2, "placementId");
                    RewardedOffersShowListener rewardedOffersShowListener2 = rewardedOffersShowListener;
                    if (rewardedOffersShowListener2 != null) {
                        rewardedOffersShowListener2.onStarted(rewardedOffersAd);
                    }
                }
            });
            return Unit.INSTANCE;
        }
    }

    public RewardedOffersAd(AdObject adObject, SafeCallbackInvoke safeCallbackInvoke) {
        CoroutineScope scope;
        Intrinsics.checkNotNullParameter(adObject, "adObject");
        Intrinsics.checkNotNullParameter(safeCallbackInvoke, "safeCallbackInvoke");
        this.adObject = adObject;
        this.safeCallbackInvoke = safeCallbackInvoke;
        AdPlayer adPlayer = adObject.getAdPlayer();
        if (adPlayer == null || (scope = adPlayer.getScope()) == null) {
            return;
        }
        BuildersKt__Builders_commonKt.launch$default(scope, null, null, new RewardedOffersAd$1$1(this, null), 3, null);
    }

    @JvmStatic
    public static final void load(LoadConfiguration loadConfiguration, LoadListener<RewardedOffersAd> loadListener) {
        INSTANCE.load(loadConfiguration, loadListener);
    }

    public static /* synthetic */ void show$default(RewardedOffersAd rewardedOffersAd, Context context, ShowConfiguration showConfiguration, RewardedOffersShowListener rewardedOffersShowListener, int i, Object obj) {
        if ((i & 2) != 0) {
            showConfiguration = null;
        }
        if ((i & 4) != 0) {
            rewardedOffersShowListener = null;
        }
        rewardedOffersAd.show(context, showConfiguration, rewardedOffersShowListener);
    }

    public final AdExpiredListener<RewardedOffersAd> getOnAdExpired() {
        return this.onAdExpired;
    }

    public final void setOnAdExpired(AdExpiredListener<RewardedOffersAd> adExpiredListener) {
        this.onAdExpired = adExpiredListener;
    }

    public final void show(Context context, ShowConfiguration configuration, RewardedOffersShowListener listener) {
        BuildersKt__Builders_commonKt.launch$default((CoroutineScope) ServiceProvider.INSTANCE.getRegistry().resolveService(new ServiceKey(ServiceProvider.NAMED_SHOW_SCOPE, Reflection.getOrCreateKotlinClass(CoroutineScope.class))), null, null, new AnonymousClass1(configuration, this, context, listener, null), 3, null);
    }
}
