package com.unity3d.ads.core.domain;

import com.google.protobuf.ByteString;
import com.ironsource.Ue;
import com.unity3d.ads.adplayer.AdPlayer;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.data.model.AdObjectState;
import com.unity3d.ads.core.data.model.AdRefreshState;
import com.unity3d.ads.core.data.repository.AdRepository;
import gatewayprotocol.v1.AdDataRefreshResponseOuterClass;
import gatewayprotocol.v1.AdResponseKt;
import gatewayprotocol.v1.AdResponseOuterClass;
import gatewayprotocol.v1.CampaignMetadataOuterClass;
import gatewayprotocol.v1.ErrorOuterClass;
import java.util.List;
import java.util.Set;
import kotlin.fh;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableSharedFlow;
import kotlinx.coroutines.selects.SelectImplementation;
import p005kotlin.Metadata;
import p005kotlin.ResultKt;
import p005kotlin.Unit;
import p005kotlin.collections.SetsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;
import p005kotlin.coroutines.jvm.internal.DebugMetadata;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;

/* JADX INFO: compiled from: AndroidAdRefresh.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u0016\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0096B¢\u0006\u0002\u0010\u000eJ\u0016\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u0011H\u0082@¢\u0006\u0002\u0010\u0012J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/unity3d/ads/core/domain/AndroidAdRefresh;", "Lcom/unity3d/ads/core/domain/AdRefresh;", "adRepository", "Lcom/unity3d/ads/core/data/repository/AdRepository;", "cacheAssets", "Lcom/unity3d/ads/core/domain/CacheAssets;", "refresh", "Lcom/unity3d/ads/core/domain/Refresh;", "<init>", "(Lcom/unity3d/ads/core/data/repository/AdRepository;Lcom/unity3d/ads/core/domain/CacheAssets;Lcom/unity3d/ads/core/domain/Refresh;)V", "invoke", "", "adObject", "Lcom/unity3d/ads/core/data/model/AdObject;", "(Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "performRefresh", "opportunityId", "Lcom/google/protobuf/ByteString;", "(Lcom/google/protobuf/ByteString;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "canUpdateRefreshData", "", "state", "Lcom/unity3d/ads/core/data/model/AdObjectState;", "Companion", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidAdRefresh implements AdRefresh {
    private static final Companion Companion = new Companion(null);
    private static final Set<AdObjectState> NON_UPDATABLE_STATES = SetsKt.setOf((Object[]) new AdObjectState[]{AdObjectState.SHOWING, AdObjectState.COMPLETED, AdObjectState.EXPIRED});
    private final AdRepository adRepository;
    private final CacheAssets cacheAssets;
    private final Refresh refresh;

    /* JADX INFO: compiled from: AndroidAdRefresh.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/unity3d/ads/core/domain/AndroidAdRefresh$Companion;", "", "<init>", "()V", "NON_UPDATABLE_STATES", "", "Lcom/unity3d/ads/core/data/model/AdObjectState;", "getNON_UPDATABLE_STATES", "()Ljava/util/Set;", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    private static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Set<AdObjectState> getNON_UPDATABLE_STATES() {
            return AndroidAdRefresh.NON_UPDATABLE_STATES;
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidAdRefresh$invoke$3, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidAdRefresh.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", ""}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidAdRefresh$invoke$3", f = "AndroidAdRefresh.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass3 extends SuspendLambda implements Function2<String, Continuation<? super Unit>, Object> {
        final /* synthetic */ AdObject $adObject;
        final /* synthetic */ CoroutineScope $refreshScope;
        int label;
        final /* synthetic */ AndroidAdRefresh this$0;

        /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidAdRefresh$invoke$3$1, reason: invalid class name */
        /* JADX INFO: compiled from: AndroidAdRefresh.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
        @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidAdRefresh$invoke$3$1", f = "AndroidAdRefresh.kt", i = {}, l = {126}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ AdObject $adObject;
            private /* synthetic */ Object L$0;
            int label;
            final /* synthetic */ AndroidAdRefresh this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(AdObject adObject, AndroidAdRefresh androidAdRefresh, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.$adObject = adObject;
                this.this$0 = androidAdRefresh;
            }

            @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$adObject, this.this$0, continuation);
                anonymousClass1.L$0 = obj;
                return anonymousClass1;
            }

            @Override // p005kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
                    Deferred deferredAsync$default = BuildersKt__Builders_commonKt.async$default(coroutineScope, null, null, new AndroidAdRefresh$invoke$3$1$showing$1(this.$adObject, null), 3, null);
                    Deferred deferredAsync$default2 = BuildersKt__Builders_commonKt.async$default(coroutineScope, null, null, new AndroidAdRefresh$invoke$3$1$refreshTask$1(this.this$0, this.$adObject, null), 3, null);
                    AdObject adObject = this.$adObject;
                    SelectImplementation selectImplementation = new SelectImplementation(getContext());
                    SelectImplementation selectImplementation2 = selectImplementation;
                    selectImplementation2.invoke(deferredAsync$default.getOnAwait(), new AndroidAdRefresh$invoke$3$1$1$1(deferredAsync$default2, adObject, null));
                    selectImplementation2.invoke(deferredAsync$default2.getOnAwait(), new AndroidAdRefresh$invoke$3$1$1$2(deferredAsync$default, null));
                    this.label = 1;
                    if (selectImplementation.doSelect(this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                return Unit.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass3(CoroutineScope coroutineScope, AdObject adObject, AndroidAdRefresh androidAdRefresh, Continuation<? super AnonymousClass3> continuation) {
            super(2, continuation);
            this.$refreshScope = coroutineScope;
            this.$adObject = adObject;
            this.this$0 = androidAdRefresh;
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass3(this.$refreshScope, this.$adObject, this.this$0, continuation);
        }

        @Override // p005kotlin.jvm.functions.Function2
        public final Object invoke(String str, Continuation<? super Unit> continuation) {
            return ((AnonymousClass3) create(str, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            BuildersKt__Builders_commonKt.launch$default(this.$refreshScope, null, null, new AnonymousClass1(this.$adObject, this.this$0, null), 3, null);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidAdRefresh$performRefresh$1, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidAdRefresh.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidAdRefresh", f = "AndroidAdRefresh.kt", i = {0, 0, 0, 0, 1, 1, 2, 2, 2}, l = {75, 79, fh.p0}, m = "performRefresh", n = {"opportunityId", "adObject", "wvLessRequiredData", HandleInvocationsFromAdViewer.KEY_AD_DATA_REFRESH_TOKEN, "adObject", "wvLessRequiredData", "adObject", "wvLessRequiredData", Ue.n}, s = {"L$0", "L$1", "L$2", "L$3", "L$0", "L$1", "L$0", "L$1", "L$2"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AndroidAdRefresh.this.performRefresh(null, this);
        }
    }

    public AndroidAdRefresh(AdRepository adRepository, CacheAssets cacheAssets, Refresh refresh) {
        Intrinsics.checkNotNullParameter(adRepository, "adRepository");
        Intrinsics.checkNotNullParameter(cacheAssets, "cacheAssets");
        Intrinsics.checkNotNullParameter(refresh, "refresh");
        this.adRepository = adRepository;
        this.cacheAssets = cacheAssets;
        this.refresh = refresh;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean canUpdateRefreshData(AdObjectState state) {
        return !NON_UPDATABLE_STATES.contains(state);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:47:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:49:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:50:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:53:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object performRefresh(ByteString byteString, Continuation<? super Unit> continuation) {
        AnonymousClass1 anonymousClass1;
        AdObject.WebViewLessLoadingRequiredData webViewLessLoadingRequiredData;
        AdResponseOuterClass.AdResponse adResponse;
        ByteString adDataRefreshToken;
        AdObject adObject;
        AdObject.WebViewLessLoadingRequiredData webViewLessLoadingRequiredData2;
        AdObject adObject2;
        AdDataRefreshResponseOuterClass.AdDataRefreshResponse adDataRefreshResponse;
        AdObject.WebViewLessLoadingRequiredData webViewLessLoadingRequiredData3;
        AdDataRefreshResponseOuterClass.AdDataRefreshResponse adDataRefreshResponse2;
        AdObject adObject3;
        AdRefreshState adRefreshState;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(continuation);
        }
        Object objInvoke = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass1.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objInvoke);
            AdObject ad = this.adRepository.getAd(byteString);
            if (ad == null) {
                throw new IllegalStateException(("No adObject for opportunityId: " + byteString).toString());
            }
            webViewLessLoadingRequiredData = ad.getWebViewLessLoadingRequiredData();
            if (webViewLessLoadingRequiredData == null || (adResponse = webViewLessLoadingRequiredData.getAdResponse()) == null) {
                return Unit.INSTANCE;
            }
            adDataRefreshToken = adResponse.getAdDataRefreshToken();
            if (adDataRefreshToken != null && !adDataRefreshToken.isEmpty()) {
                Duration.Companion companion = Duration.INSTANCE;
                long duration = DurationKt.toDuration(adResponse.getCampaignMetadata().getAdDataRefreshDelayMs(), DurationUnit.MILLISECONDS);
                anonymousClass1.L$0 = byteString;
                anonymousClass1.L$1 = ad;
                anonymousClass1.L$2 = webViewLessLoadingRequiredData;
                anonymousClass1.L$3 = adDataRefreshToken;
                anonymousClass1.label = 1;
                if (DelayKt.m4512delayVtjQ1oo(duration, anonymousClass1) != coroutine_suspended) {
                    adObject = ad;
                }
                return coroutine_suspended;
            }
            return Unit.INSTANCE;
        }
        if (i == 1) {
            ByteString byteString2 = (ByteString) anonymousClass1.L$3;
            webViewLessLoadingRequiredData = (AdObject.WebViewLessLoadingRequiredData) anonymousClass1.L$2;
            adObject = (AdObject) anonymousClass1.L$1;
            ByteString byteString3 = (ByteString) anonymousClass1.L$0;
            ResultKt.throwOnFailure(objInvoke);
            adDataRefreshToken = byteString2;
            byteString = byteString3;
        } else {
            if (i == 2) {
                webViewLessLoadingRequiredData2 = (AdObject.WebViewLessLoadingRequiredData) anonymousClass1.L$1;
                adObject2 = (AdObject) anonymousClass1.L$0;
                ResultKt.throwOnFailure(objInvoke);
                adDataRefreshResponse = (AdDataRefreshResponseOuterClass.AdDataRefreshResponse) objInvoke;
                if (!adDataRefreshResponse.hasError()) {
                    if (adDataRefreshResponse.getError().getErrorCode() == ErrorOuterClass.PublicErrorCode.PUBLIC_ERROR_CODE_LOAD_NO_FILL) {
                        adRefreshState = AdRefreshState.REUSE_NO_FILL;
                    } else {
                        adRefreshState = AdRefreshState.REUSE_ERROR;
                    }
                    webViewLessLoadingRequiredData2.setAdRefreshState(adRefreshState);
                    return Unit.INSTANCE;
                }
                if (adDataRefreshResponse.hasCampaignMetadata() || adDataRefreshResponse.getCampaignMetadata().getAssetsToCacheList().isEmpty()) {
                    webViewLessLoadingRequiredData2.setAdRefreshState(AdRefreshState.REUSE_NO_FILL);
                    return Unit.INSTANCE;
                }
                CacheAssets cacheAssets = this.cacheAssets;
                List<CampaignMetadataOuterClass.CampaignAsset> assetsToCacheList = adDataRefreshResponse.getCampaignMetadata().getAssetsToCacheList();
                Intrinsics.checkNotNullExpressionValue(assetsToCacheList, "getAssetsToCacheList(...)");
                anonymousClass1.L$0 = adObject2;
                anonymousClass1.L$1 = webViewLessLoadingRequiredData2;
                anonymousClass1.L$2 = adDataRefreshResponse;
                anonymousClass1.label = 3;
                Object objInvoke2 = cacheAssets.invoke(adObject2, assetsToCacheList, anonymousClass1);
                if (objInvoke2 != coroutine_suspended) {
                    webViewLessLoadingRequiredData3 = webViewLessLoadingRequiredData2;
                    adDataRefreshResponse2 = adDataRefreshResponse;
                    objInvoke = objInvoke2;
                    adObject3 = adObject2;
                }
                return coroutine_suspended;
            }
            if (i != 3) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            adDataRefreshResponse2 = (AdDataRefreshResponseOuterClass.AdDataRefreshResponse) anonymousClass1.L$2;
            webViewLessLoadingRequiredData3 = (AdObject.WebViewLessLoadingRequiredData) anonymousClass1.L$1;
            adObject3 = (AdObject) anonymousClass1.L$0;
            ResultKt.throwOnFailure(objInvoke);
        }
        if (!(((CacheAssetsEvent) objInvoke) instanceof CacheAssetsEvent.Success)) {
            AdObject.WebViewLessLoadingRequiredData webViewLessLoadingRequiredData4 = adObject3.getWebViewLessLoadingRequiredData();
            if (webViewLessLoadingRequiredData4 != null) {
                webViewLessLoadingRequiredData4.setAdRefreshState(AdRefreshState.REUSE_ERROR);
            }
        } else if (canUpdateRefreshData(adObject3.getState().getValue())) {
            webViewLessLoadingRequiredData3.setAdRefreshState(AdRefreshState.REUSE_RELOADED);
            ByteString trackingToken = adDataRefreshResponse2.getTrackingToken();
            Intrinsics.checkNotNullExpressionValue(trackingToken, "getTrackingToken(...)");
            adObject3.setTrackingToken(trackingToken);
            AdResponseOuterClass.AdResponse adResponse2 = webViewLessLoadingRequiredData3.getAdResponse();
            AdResponseKt.Dsl.Companion companion2 = AdResponseKt.Dsl.INSTANCE;
            AdResponseOuterClass.AdResponse.Builder builder = adResponse2.toBuilder();
            Intrinsics.checkNotNullExpressionValue(builder, "toBuilder(...)");
            AdResponseKt.Dsl dsl_create = companion2._create(builder);
            ByteString adData = adDataRefreshResponse2.getAdData();
            Intrinsics.checkNotNullExpressionValue(adData, "getAdData(...)");
            dsl_create.setAdData(adData);
            ByteString adDataRefreshToken2 = adDataRefreshResponse2.getAdDataRefreshToken();
            Intrinsics.checkNotNullExpressionValue(adDataRefreshToken2, "getAdDataRefreshToken(...)");
            dsl_create.setAdDataRefreshToken(adDataRefreshToken2);
            ByteString trackingToken2 = adDataRefreshResponse2.getTrackingToken();
            Intrinsics.checkNotNullExpressionValue(trackingToken2, "getTrackingToken(...)");
            dsl_create.setTrackingToken(trackingToken2);
            CampaignMetadataOuterClass.CampaignMetadata campaignMetadata = adDataRefreshResponse2.getCampaignMetadata();
            Intrinsics.checkNotNullExpressionValue(campaignMetadata, "getCampaignMetadata(...)");
            dsl_create.setCampaignMetadata(campaignMetadata);
            webViewLessLoadingRequiredData3.setAdResponse(dsl_create._build());
        }
        return Unit.INSTANCE;
        if (!canUpdateRefreshData(adObject.getState().getValue())) {
            return Unit.INSTANCE;
        }
        Refresh refresh = this.refresh;
        anonymousClass1.L$0 = adObject;
        anonymousClass1.L$1 = webViewLessLoadingRequiredData;
        anonymousClass1.L$2 = null;
        anonymousClass1.L$3 = null;
        anonymousClass1.label = 2;
        objInvoke = refresh.invoke(byteString, adDataRefreshToken, anonymousClass1);
        if (objInvoke != coroutine_suspended) {
            webViewLessLoadingRequiredData2 = webViewLessLoadingRequiredData;
            adObject2 = adObject;
            adDataRefreshResponse = (AdDataRefreshResponseOuterClass.AdDataRefreshResponse) objInvoke;
            if (!adDataRefreshResponse.hasError()) {
                if (adDataRefreshResponse.hasCampaignMetadata()) {
                }
                webViewLessLoadingRequiredData2.setAdRefreshState(AdRefreshState.REUSE_NO_FILL);
                return Unit.INSTANCE;
            }
            if (adDataRefreshResponse.getError().getErrorCode() == ErrorOuterClass.PublicErrorCode.PUBLIC_ERROR_CODE_LOAD_NO_FILL) {
                adRefreshState = AdRefreshState.REUSE_NO_FILL;
            } else {
                adRefreshState = AdRefreshState.REUSE_ERROR;
            }
            webViewLessLoadingRequiredData2.setAdRefreshState(adRefreshState);
            return Unit.INSTANCE;
        }
        return coroutine_suspended;
    }

    @Override // com.unity3d.ads.core.domain.AdRefresh
    public Object invoke(AdObject adObject, Continuation<? super Unit> continuation) {
        CoroutineScope CoroutineScope = CoroutineScopeKt.CoroutineScope(adObject.getAdScope().getCoroutineContext().plus(new CoroutineName("Ad_Refresh")));
        final MutableSharedFlow<String> broadcastEventChannel = AdPlayer.INSTANCE.getBroadcastEventChannel();
        final String str = "AD_REFRESH";
        FlowKt.launchIn(FlowKt.onEach(new Flow<String>() { // from class: com.unity3d.ads.core.domain.AndroidAdRefresh$invoke$$inlined$filter$1

            /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidAdRefresh$invoke$$inlined$filter$1$2, reason: invalid class name */
            /* JADX INFO: compiled from: Emitters.kt */
            @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
            public static final class AnonymousClass2<T> implements FlowCollector {
                final /* synthetic */ FlowCollector $this_unsafeFlow;
                final /* synthetic */ String receiver$inlined;

                /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidAdRefresh$invoke$$inlined$filter$1$2$1, reason: invalid class name */
                @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
                @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidAdRefresh$invoke$$inlined$filter$1$2", f = "AndroidAdRefresh.kt", i = {}, l = {50}, m = "emit", n = {}, s = {})
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    Object L$1;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector, String str) {
                    this.$this_unsafeFlow = flowCollector;
                    this.receiver$inlined = str;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0014  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj, Continuation continuation) {
                    AnonymousClass1 anonymousClass1;
                    if (continuation instanceof AnonymousClass1) {
                        anonymousClass1 = (AnonymousClass1) continuation;
                        if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                            anonymousClass1.label -= Integer.MIN_VALUE;
                        } else {
                            anonymousClass1 = new AnonymousClass1(continuation);
                        }
                    } else {
                        anonymousClass1 = new AnonymousClass1(continuation);
                    }
                    Object obj2 = anonymousClass1.result;
                    Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    int i = anonymousClass1.label;
                    if (i == 0) {
                        ResultKt.throwOnFailure(obj2);
                        FlowCollector flowCollector = this.$this_unsafeFlow;
                        if (this.receiver$inlined.equals(obj)) {
                            anonymousClass1.label = 1;
                            if (flowCollector.emit(obj, anonymousClass1) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                        }
                    } else {
                        if (i != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.throwOnFailure(obj2);
                    }
                    return Unit.INSTANCE;
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public Object collect(FlowCollector<? super String> flowCollector, Continuation continuation2) {
                Object objCollect = broadcastEventChannel.collect(new AnonymousClass2(flowCollector, str), continuation2);
                return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
            }
        }, new AnonymousClass3(CoroutineScope, adObject, this, null)), CoroutineScope);
        return Unit.INSTANCE;
    }
}
