package com.unity3d.ads.core.domain.adload;

import com.google.protobuf.ByteString;
import com.ironsource.Ue;
import com.unity3d.ads.UnityAdsLoadOptions;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.data.model.LoadResult;
import com.unity3d.ads.core.data.repository.AdRepository;
import com.unity3d.ads.core.data.repository.CampaignRepository;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.domain.AdRefresh;
import com.unity3d.ads.core.domain.CacheAssets;
import com.unity3d.ads.core.domain.CacheAssetsEvent;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import gatewayprotocol.v1.AdResponseOuterClass;
import gatewayprotocol.v1.CampaignMetadataOuterClass;
import gatewayprotocol.v1.DiagnosticEventRequestOuterClass;
import gatewayprotocol.v1.ErrorOuterClass;
import java.util.List;
import kotlinx.coroutines.CoroutineScope;
import org.json.JSONObject;
import p005kotlin.Metadata;
import p005kotlin.ResultKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;
import p005kotlin.coroutines.jvm.internal.DebugMetadata;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.StringsKt;

/* JADX INFO: compiled from: AndroidWebViewLessLoadStrategy.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0004\b\f\u0010\rJN\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0096B¢\u0006\u0002\u0010\u001fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"Lcom/unity3d/ads/core/domain/adload/AndroidWebViewLessLoadStrategy;", "Lcom/unity3d/ads/core/domain/adload/WebViewLessLoadStrategy;", "adRepository", "Lcom/unity3d/ads/core/data/repository/AdRepository;", "campaignRepository", "Lcom/unity3d/ads/core/data/repository/CampaignRepository;", "cacheAssets", "Lcom/unity3d/ads/core/domain/CacheAssets;", "adRefresh", "Lcom/unity3d/ads/core/domain/AdRefresh;", "sessionRepository", "Lcom/unity3d/ads/core/data/repository/SessionRepository;", "<init>", "(Lcom/unity3d/ads/core/data/repository/AdRepository;Lcom/unity3d/ads/core/data/repository/CampaignRepository;Lcom/unity3d/ads/core/domain/CacheAssets;Lcom/unity3d/ads/core/domain/AdRefresh;Lcom/unity3d/ads/core/data/repository/SessionRepository;)V", "invoke", "Lcom/unity3d/ads/core/data/model/LoadResult;", "scope", "Lkotlinx/coroutines/CoroutineScope;", "webViewUrl", "", HandleInvocationsFromAdViewer.KEY_LOAD_OPTIONS, "Lcom/unity3d/ads/UnityAdsLoadOptions;", "opportunityId", "Lcom/google/protobuf/ByteString;", Ue.n, "Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;", "placementId", "adType", "Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;", HandleInvocationsFromAdViewer.KEY_IS_HEADER_BIDDING, "", "(Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Lcom/unity3d/ads/UnityAdsLoadOptions;Lcom/google/protobuf/ByteString;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Ljava/lang/String;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidWebViewLessLoadStrategy implements WebViewLessLoadStrategy {
    private final AdRefresh adRefresh;
    private final AdRepository adRepository;
    private final CacheAssets cacheAssets;
    private final CampaignRepository campaignRepository;
    private final SessionRepository sessionRepository;

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.adload.AndroidWebViewLessLoadStrategy$invoke$1, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidWebViewLessLoadStrategy.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.adload.AndroidWebViewLessLoadStrategy", f = "AndroidWebViewLessLoadStrategy.kt", i = {0, 0, 0, 0, 0, 1, 1, 1, 1, 1}, l = {51, 58}, m = "invoke", n = {HandleInvocationsFromAdViewer.KEY_LOAD_OPTIONS, "opportunityId", "placementId", "adObject", HandleInvocationsFromAdViewer.KEY_IS_HEADER_BIDDING, HandleInvocationsFromAdViewer.KEY_LOAD_OPTIONS, "opportunityId", "placementId", "adObject", HandleInvocationsFromAdViewer.KEY_IS_HEADER_BIDDING}, s = {"L$0", "L$1", "L$2", "L$3", "Z$0", "L$0", "L$1", "L$2", "L$3", "Z$0"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AndroidWebViewLessLoadStrategy.this.invoke(null, null, null, null, null, null, null, false, this);
        }
    }

    public AndroidWebViewLessLoadStrategy(AdRepository adRepository, CampaignRepository campaignRepository, CacheAssets cacheAssets, AdRefresh adRefresh, SessionRepository sessionRepository) {
        Intrinsics.checkNotNullParameter(adRepository, "adRepository");
        Intrinsics.checkNotNullParameter(campaignRepository, "campaignRepository");
        Intrinsics.checkNotNullParameter(cacheAssets, "cacheAssets");
        Intrinsics.checkNotNullParameter(adRefresh, "adRefresh");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        this.adRepository = adRepository;
        this.campaignRepository = campaignRepository;
        this.cacheAssets = cacheAssets;
        this.adRefresh = adRefresh;
        this.sessionRepository = sessionRepository;
    }

    /* JADX WARN: Code duplicated, block: B:36:0x011c  */
    /* JADX WARN: Code duplicated, block: B:7:0x0018  */
    @Override // com.unity3d.ads.core.domain.adload.WebViewLessLoadStrategy
    public Object invoke(CoroutineScope coroutineScope, String str, UnityAdsLoadOptions unityAdsLoadOptions, ByteString byteString, AdResponseOuterClass.AdResponse adResponse, String str2, DiagnosticEventRequestOuterClass.DiagnosticAdType diagnosticAdType, boolean z, Continuation<? super LoadResult> continuation) {
        AnonymousClass1 anonymousClass1;
        String str3;
        UnityAdsLoadOptions unityAdsLoadOptions2;
        boolean z2;
        AdObject adObject;
        ByteString byteString2;
        String message;
        boolean z3;
        AdObject adObject2;
        UnityAdsLoadOptions unityAdsLoadOptions3;
        ByteString byteString3;
        String str4;
        String objectId;
        JSONObject data;
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
            ByteString trackingToken = adResponse.getTrackingToken();
            Intrinsics.checkNotNullExpressionValue(trackingToken, "getTrackingToken(...)");
            str3 = str2;
            AdObject adObject3 = new AdObject(coroutineScope, byteString, str3, trackingToken, false, null, null, null, unityAdsLoadOptions, z, diagnosticAdType, null, null, null, null, null, new AdObject.WebViewLessLoadingRequiredData(str, adResponse, null, 4, null), 63728, null);
            CacheAssets cacheAssets = this.cacheAssets;
            List<CampaignMetadataOuterClass.CampaignAsset> assetsToCacheList = adResponse.getCampaignMetadata().getAssetsToCacheList();
            Intrinsics.checkNotNullExpressionValue(assetsToCacheList, "getAssetsToCacheList(...)");
            unityAdsLoadOptions2 = unityAdsLoadOptions;
            anonymousClass1.L$0 = unityAdsLoadOptions2;
            anonymousClass1.L$1 = byteString;
            anonymousClass1.L$2 = str3;
            anonymousClass1.L$3 = adObject3;
            anonymousClass1.Z$0 = z;
            anonymousClass1.label = 1;
            objInvoke = cacheAssets.invoke(adObject3, assetsToCacheList, anonymousClass1);
            if (objInvoke != coroutine_suspended) {
                z2 = z;
                adObject = adObject3;
                byteString2 = byteString;
            }
            return coroutine_suspended;
        }
        if (i == 1) {
            z2 = anonymousClass1.Z$0;
            adObject = (AdObject) anonymousClass1.L$3;
            String str5 = (String) anonymousClass1.L$2;
            byteString2 = (ByteString) anonymousClass1.L$1;
            UnityAdsLoadOptions unityAdsLoadOptions4 = (UnityAdsLoadOptions) anonymousClass1.L$0;
            ResultKt.throwOnFailure(objInvoke);
            str3 = str5;
            unityAdsLoadOptions2 = unityAdsLoadOptions4;
        } else {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            z3 = anonymousClass1.Z$0;
            adObject2 = (AdObject) anonymousClass1.L$3;
            str4 = (String) anonymousClass1.L$2;
            byteString3 = (ByteString) anonymousClass1.L$1;
            unityAdsLoadOptions3 = (UnityAdsLoadOptions) anonymousClass1.L$0;
            ResultKt.throwOnFailure(objInvoke);
        }
        objectId = unityAdsLoadOptions3.getObjectId();
        if ((objectId != null || StringsKt.isBlank(objectId)) && (data = unityAdsLoadOptions3.getData()) != null && !data.has("adMarkup")) {
            this.adRepository.enqueueOpportunityForPlacement(str4, byteString3);
        }
        if (z3) {
            this.sessionRepository.incrementTokenWinsCount();
        }
        return new LoadResult.Success(adObject2);
        CacheAssetsEvent cacheAssetsEvent = (CacheAssetsEvent) objInvoke;
        if (!(cacheAssetsEvent instanceof CacheAssetsEvent.Success)) {
            ErrorOuterClass.PublicErrorCode publicErrorCode = ErrorOuterClass.PublicErrorCode.PUBLIC_ERROR_CODE_LOAD_FILE_SYSTEM;
            CacheAssetsEvent.Failure failure = cacheAssetsEvent instanceof CacheAssetsEvent.Failure ? (CacheAssetsEvent.Failure) cacheAssetsEvent : null;
            if (failure == null || (message = failure.getMessage()) == null) {
                message = "";
            }
            return new LoadResult.Failure(publicErrorCode, null, null, message, null, null, 54, null);
        }
        this.campaignRepository.setLoadTimestamp(byteString2);
        this.adRepository.addAd(byteString2, adObject);
        AdRefresh adRefresh = this.adRefresh;
        anonymousClass1.L$0 = unityAdsLoadOptions2;
        anonymousClass1.L$1 = byteString2;
        anonymousClass1.L$2 = str3;
        anonymousClass1.L$3 = adObject;
        anonymousClass1.Z$0 = z2;
        anonymousClass1.label = 2;
        if (adRefresh.invoke(adObject, anonymousClass1) != coroutine_suspended) {
            z3 = z2;
            adObject2 = adObject;
            unityAdsLoadOptions3 = unityAdsLoadOptions2;
            byteString3 = byteString2;
            str4 = str3;
            objectId = unityAdsLoadOptions3.getObjectId();
            if (objectId != null) {
                this.adRepository.enqueueOpportunityForPlacement(str4, byteString3);
            } else {
                this.adRepository.enqueueOpportunityForPlacement(str4, byteString3);
            }
            if (z3) {
                this.sessionRepository.incrementTokenWinsCount();
            }
            return new LoadResult.Success(adObject2);
        }
        return coroutine_suspended;
    }
}
