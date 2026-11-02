package com.unity3d.ads.core.domain.exposure;

import android.util.Base64;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.google.protobuf.ByteString;
import com.google.protobuf.kotlin.ByteStringsKt;
import com.unity3d.ads.LoadConfiguration;
import com.unity3d.ads.MediationInfo;
import com.unity3d.ads.ShowConfiguration;
import com.unity3d.ads.adplayer.AndroidFullscreenWebViewAdPlayer;
import com.unity3d.ads.adplayer.DisplayMessage;
import com.unity3d.ads.adplayer.ExposedFunction;
import com.unity3d.ads.adplayer.model.OnWebRequestComplete;
import com.unity3d.ads.adplayer.model.OnWebRequestFailed;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.data.model.AdRefreshState;
import com.unity3d.ads.core.data.model.AdRefreshStateKt;
import com.unity3d.ads.core.data.model.CacheResult;
import com.unity3d.ads.core.data.model.InitializationConfigurationInternal;
import com.unity3d.ads.core.data.model.OMData;
import com.unity3d.ads.core.data.repository.CampaignRepository;
import com.unity3d.ads.core.data.repository.DeviceInfoRepository;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.domain.AndroidGetAdPlayerContext;
import com.unity3d.ads.core.domain.CacheFile;
import com.unity3d.ads.core.domain.ExecuteAdViewerRequest;
import com.unity3d.ads.core.domain.GetIsFileCache;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import com.unity3d.ads.core.domain.HandleOpenUrl;
import com.unity3d.ads.core.domain.Refresh;
import com.unity3d.ads.core.domain.SendAdViewerRequest;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import com.unity3d.ads.core.domain.SendPrivacyUpdateRequest;
import com.unity3d.ads.core.domain.WebViewScreenCapture;
import com.unity3d.ads.core.domain.attribution.AndroidAttribution;
import com.unity3d.ads.core.domain.events.GetOperativeEventApi;
import com.unity3d.ads.core.domain.offerwall.GetIsOfferwallAdReady;
import com.unity3d.ads.core.domain.offerwall.LoadOfferwallAd;
import com.unity3d.ads.core.domain.om.AndroidOmInteraction;
import com.unity3d.ads.core.domain.om.GetOmData;
import com.unity3d.ads.core.domain.om.IsOMActivated;
import com.unity3d.ads.core.domain.om.OmFinishSession;
import com.unity3d.ads.core.domain.om.OmImpressionOccurred;
import com.unity3d.ads.core.extensions.JSONObjectExtensionsKt;
import com.unity3d.ads.core.extensions.ProtobufExtensionsKt;
import com.unity3d.ads.core.utils.ContinuationFromCallback;
import com.unity3d.services.UnityAdsConstants;
import com.unity3d.services.core.api.Storage;
import com.unity3d.services.core.network.mapper.HttpResponseHeaderToJSONArrayKt;
import com.unity3d.services.core.network.model.HttpResponse;
import com.unity3d.services.core.network.model.RequestType;
import gatewayprotocol.v1.AdDataRefreshResponseOuterClass;
import gatewayprotocol.v1.AdViewerResponseOuterClass;
import gatewayprotocol.v1.AllowedPiiKt;
import gatewayprotocol.v1.AllowedPiiOuterClass;
import gatewayprotocol.v1.CampaignKt;
import gatewayprotocol.v1.CampaignStateOuterClass;
import gatewayprotocol.v1.OperativeEventRequestOuterClass;
import gatewayprotocol.v1.PrivacyUpdateResponseOuterClass;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableSharedFlow;
import kotlinx.coroutines.flow.MutableStateFlow;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p005kotlin.Metadata;
import p005kotlin.NoWhenBranchMatchedException;
import p005kotlin.ResultKt;
import p005kotlin.TuplesKt;
import p005kotlin.Unit;
import p005kotlin.collections.ArraysKt;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.collections.MapsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.SafeContinuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.coroutines.jvm.internal.DebugProbesKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.MutablePropertyReference0Impl;
import p005kotlin.sequences.Sequence;
import p005kotlin.sequences.SequencesKt;
import p005kotlin.text.Charsets;
import p005kotlin.text.StringsKt;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;

/* JADX INFO: compiled from: CommonAdViewerExposedFunctions.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000è\u0001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0004\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a?\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0000¢\u0006\u0004\b\u000e\u0010\u000f\u001a\u0010\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u0012H\u0000\u001a\u0010\u0010\u0013\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u0012H\u0000\u001a\u0010\u0010\u0014\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u0012H\u0000\u001a\u0010\u0010\u0015\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u0012H\u0000\u001a\u0010\u0010\u0016\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u0012H\u0000\u001a\u0018\u0010\u0017\u001a\u00020\u00012\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\f\u001a\u00020\rH\u0000\u001a\u0018\u0010\u001a\u001a\u00020\u00012\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\f\u001a\u00020\rH\u0000\u001a)\u0010\u001b\u001a\u0004\u0018\u00010\u001c*\b\u0012\u0004\u0012\u00020\u001e0\u001d2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"H\u0002¢\u0006\u0002\u0010#\u001a)\u0010$\u001a\u0004\u0018\u00010 *\b\u0012\u0004\u0012\u00020\u001e0\u001d2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"H\u0002¢\u0006\u0002\u0010%\u001a\u0018\u0010&\u001a\u00020\u00012\u0006\u0010\f\u001a\u00020\r2\u0006\u0010'\u001a\u00020(H\u0000\u001a\u0010\u0010)\u001a\u00020\u00012\u0006\u0010\f\u001a\u00020\rH\u0000\u001a\u0018\u0010*\u001a\u00020\u00012\u0006\u0010+\u001a\u00020,2\u0006\u0010\f\u001a\u00020\rH\u0000\u001a\b\u0010-\u001a\u00020\u0001H\u0000\u001a\b\u0010.\u001a\u00020\u0001H\u0000\u001a\b\u0010/\u001a\u00020\u0001H\u0000\u001a\b\u00100\u001a\u00020\u0001H\u0000\u001a\b\u00101\u001a\u00020\u0001H\u0000\u001a\b\u00102\u001a\u00020\u0001H\u0000\u001a\b\u00103\u001a\u00020\u0001H\u0000\u001a\u0010\u00104\u001a\u00020\u00012\u0006\u00105\u001a\u000206H\u0000\u001a\u0010\u00107\u001a\u00020\u00012\u0006\u00105\u001a\u000206H\u0000\u001a\u0010\u00108\u001a\u00020\u00012\u0006\u00105\u001a\u000206H\u0000\u001a\u0010\u00109\u001a\u00020\u00012\u0006\u00105\u001a\u000206H\u0000\u001a\u0010\u0010:\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u0012H\u0000\u001a\u0010\u0010;\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u0012H\u0000\u001a\u0010\u0010<\u001a\u00020\u00012\u0006\u00105\u001a\u000206H\u0000\u001a\u0018\u0010=\u001a\u00020\u00012\u0006\u0010>\u001a\u00020?2\u0006\u0010\f\u001a\u00020\rH\u0000\u001a\u0018\u0010@\u001a\u00020\u00012\u0006\u0010A\u001a\u00020B2\u0006\u0010\f\u001a\u00020\rH\u0000\u001a\u0018\u0010C\u001a\u00020\u00012\u0006\u0010C\u001a\u00020D2\u0006\u0010\f\u001a\u00020\rH\u0000\u001a\u0010\u0010E\u001a\u00020\u00012\u0006\u0010\f\u001a\u00020\rH\u0000\u001a\u0010\u0010F\u001a\u00020\u00012\u0006\u0010F\u001a\u00020GH\u0000\u001a\u0018\u0010H\u001a\u00020\u00012\u0006\u0010H\u001a\u00020I2\u0006\u0010\f\u001a\u00020\rH\u0000\u001a\u0010\u0010J\u001a\u00020\u00012\u0006\u00105\u001a\u000206H\u0000\u001a \u0010K\u001a\u00020\u00012\u0006\u0010L\u001a\u00020M2\u0006\u0010\f\u001a\u00020\r2\u0006\u00105\u001a\u000206H\u0000\u001a\u0018\u0010N\u001a\u00020\u00012\u0006\u0010L\u001a\u00020M2\u0006\u0010\f\u001a\u00020\rH\u0000\u001a\u0010\u0010O\u001a\u00020\u00012\u0006\u0010P\u001a\u00020QH\u0000\u001a\u0018\u0010R\u001a\u00020\u00012\u0006\u0010R\u001a\u00020S2\u0006\u0010\f\u001a\u00020\rH\u0000\u001a\u0018\u0010T\u001a\u00020\u00012\u0006\u0010T\u001a\u00020U2\u0006\u0010\f\u001a\u00020\rH\u0000\u001a\u0018\u0010V\u001a\u00020\u00012\u0006\u0010W\u001a\u00020X2\u0006\u0010\f\u001a\u00020\rH\u0000\u001a\u0010\u0010Y\u001a\u00020\u00012\u0006\u0010Z\u001a\u00020[H\u0000\u001a\u0010\u0010\\\u001a\u00020\u00012\u0006\u0010]\u001a\u00020^H\u0000\u001a\u0018\u0010_\u001a\u00020\u00012\u0006\u0010]\u001a\u00020^2\u0006\u0010\f\u001a\u00020\rH\u0000\u001a\u0018\u0010`\u001a\u00020\u00012\u0006\u0010]\u001a\u00020^2\u0006\u0010\f\u001a\u00020\rH\u0000\u001a\u0018\u0010a\u001a\u00020\u00012\u0006\u00105\u001a\u0002062\u0006\u0010\f\u001a\u00020\rH\u0000\u001a\u0010\u0010b\u001a\u00020\u00012\u0006\u00105\u001a\u000206H\u0000\u001a\u0010\u0010c\u001a\u00020\u00012\u0006\u00105\u001a\u000206H\u0000\u001a\u0018\u0010d\u001a\u00020\u00012\u0006\u0010d\u001a\u00020e2\u0006\u0010\f\u001a\u00020\rH\u0000\u001a\b\u0010f\u001a\u00020\u0001H\u0000\u001a\u0010\u0010g\u001a\u00020\u00012\u0006\u0010h\u001a\u00020iH\u0000\u001a\u0018\u0010j\u001a\u00020\u00012\u0006\u0010k\u001a\u00020l2\u0006\u0010m\u001a\u00020nH\u0000\u001a\u0010\u0010o\u001a\u00020\u00012\u0006\u0010\f\u001a\u00020\rH\u0000\u001a\u0018\u0010p\u001a\u00020\u00012\u0006\u0010>\u001a\u00020?2\u0006\u0010\f\u001a\u00020\rH\u0000\u001a\u0018\u0010q\u001a\u00020\u00012\u0006\u00105\u001a\u0002062\u0006\u0010\f\u001a\u00020\rH\u0000¨\u0006r"}, d2 = {"getAdContext", "Lcom/unity3d/ads/adplayer/ExposedFunction;", "getAndroidAdPlayerContext", "Lcom/unity3d/ads/core/domain/AndroidGetAdPlayerContext;", "adData", "Lcom/unity3d/ads/core/data/model/AdData;", HandleInvocationsFromAdViewer.KEY_IMPRESSION_CONFIG, "Lcom/unity3d/ads/core/data/model/ImpressionConfig;", HandleInvocationsFromAdViewer.KEY_AD_DATA_REFRESH_TOKEN, "Lcom/unity3d/ads/core/data/model/AdDataRefreshToken;", "isOMActivated", "Lcom/unity3d/ads/core/domain/om/IsOMActivated;", "adObject", "Lcom/unity3d/ads/core/data/model/AdObject;", "getAdContext-yLuu4LI", "(Lcom/unity3d/ads/core/domain/AndroidGetAdPlayerContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/core/domain/om/IsOMActivated;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;", "getConnectionType", "deviceInfoRepository", "Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;", "getDeviceVolume", "getDeviceMaxVolume", "getScreenHeight", "getScreenWidth", "getBlackPixelPercentage", "screenCapture", "Lcom/unity3d/ads/core/domain/WebViewScreenCapture;", "captureScreenshot", "numberArg", "", "", "", FirebaseAnalytics.Param.INDEX, "", "name", "", "([Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Number;", "intArg", "([Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Integer;", "openUrl", "handleOpenUrl", "Lcom/unity3d/ads/core/domain/HandleOpenUrl;", "setOrientation", "sendOperativeEvent", "getOperativeEventApi", "Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;", "writeStorage", "readStorage", "deleteStorage", "clearStorage", "getKeysStorage", "getStorage", "setStorage", "getPrivacyFsm", "sessionRepository", "Lcom/unity3d/ads/core/data/repository/SessionRepository;", "setPrivacyFsm", "getPrivacy", "setPrivacy", "getAllowedPii", "setAllowedPii", "getSessionToken", "markCampaignStateShown", "campaignRepository", "Lcom/unity3d/ads/core/data/repository/CampaignRepository;", "refreshAdData", "refresh", "Lcom/unity3d/ads/core/domain/Refresh;", "sendAdViewerRequest", "Lcom/unity3d/ads/core/domain/SendAdViewerRequest;", "updateTrackingToken", "sendPrivacyUpdateRequest", "Lcom/unity3d/ads/core/domain/SendPrivacyUpdateRequest;", "sendDiagnosticEvent", "Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;", "incrementBannerImpressionCount", "download", "cacheFile", "Lcom/unity3d/ads/core/domain/CacheFile;", "downloadWithProgress", "isFileCached", "getIfFileCache", "Lcom/unity3d/ads/core/domain/GetIsFileCache;", "omStartSession", "Lcom/unity3d/ads/core/domain/om/AndroidOmInteraction;", "omFinishSession", "Lcom/unity3d/ads/core/domain/om/OmFinishSession;", "omImpression", "omImpressionOccurred", "Lcom/unity3d/ads/core/domain/om/OmImpressionOccurred;", "omGetData", "getOmData", "Lcom/unity3d/ads/core/domain/om/GetOmData;", "isAttributionAvailable", "androidAttribution", "Lcom/unity3d/ads/core/domain/attribution/AndroidAttribution;", "attributionRegisterView", "attributionRegisterClick", "hbTokenIncrementWins", "hbTokenIncrementStarts", "hbTokenReset", "loadOfferwallAd", "Lcom/unity3d/ads/core/domain/offerwall/LoadOfferwallAd;", "showOfferwallAd", "isOfferwallAdReady", "getIsOfferwallAdReady", "Lcom/unity3d/ads/core/domain/offerwall/GetIsOfferwallAdReady;", "request", "type", "Lcom/unity3d/services/core/network/model/RequestType;", "executeAdViewerRequest", "Lcom/unity3d/ads/core/domain/ExecuteAdViewerRequest;", "setOpportunityTTL", "updateCampaignState", "getExtra", "unity-ads_defaultRelease"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class CommonAdViewerExposedFunctionsKt {

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$download$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: CommonAdViewerExposedFunctions.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    static final class C40361 implements ExposedFunction {
        final /* synthetic */ AdObject $adObject;
        final /* synthetic */ CacheFile $cacheFile;
        final /* synthetic */ SessionRepository $sessionRepository;

        C40361(SessionRepository sessionRepository, CacheFile cacheFile, AdObject adObject) {
            this.$sessionRepository = sessionRepository;
            this.$cacheFile = cacheFile;
            this.$adObject = adObject;
        }

        @Override // p005kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, Continuation<? super Object> continuation) {
            return invoke2(objArr, (Continuation<Object>) continuation);
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0014  */
        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(Object[] objArr, Continuation<Object> continuation) throws JSONException {
            CommonAdViewerExposedFunctionsKt$download$1$invoke$1 commonAdViewerExposedFunctionsKt$download$1$invoke$1;
            boolean disableCustomScheme;
            String str;
            if (continuation instanceof CommonAdViewerExposedFunctionsKt$download$1$invoke$1) {
                commonAdViewerExposedFunctionsKt$download$1$invoke$1 = (CommonAdViewerExposedFunctionsKt$download$1$invoke$1) continuation;
                if ((commonAdViewerExposedFunctionsKt$download$1$invoke$1.label & Integer.MIN_VALUE) != 0) {
                    commonAdViewerExposedFunctionsKt$download$1$invoke$1.label -= Integer.MIN_VALUE;
                } else {
                    commonAdViewerExposedFunctionsKt$download$1$invoke$1 = new CommonAdViewerExposedFunctionsKt$download$1$invoke$1(this, continuation);
                }
            } else {
                commonAdViewerExposedFunctionsKt$download$1$invoke$1 = new CommonAdViewerExposedFunctionsKt$download$1$invoke$1(this, continuation);
            }
            CommonAdViewerExposedFunctionsKt$download$1$invoke$1 commonAdViewerExposedFunctionsKt$download$1$invoke$2 = commonAdViewerExposedFunctionsKt$download$1$invoke$1;
            Object objInvoke$default = commonAdViewerExposedFunctionsKt$download$1$invoke$2.result;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = commonAdViewerExposedFunctionsKt$download$1$invoke$2.label;
            if (i == 0) {
                ResultKt.throwOnFailure(objInvoke$default);
                Object obj = objArr[0];
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type org.json.JSONObject");
                JSONObject jSONObject = (JSONObject) obj;
                String string = jSONObject.getString("url");
                JSONArray jSONArray = (JSONArray) ArraysKt.getOrNull(objArr, 2);
                int iOptInt = jSONObject.optInt(HandleInvocationsFromAdViewer.KEY_DOWNLOAD_PRIORITY, 0);
                disableCustomScheme = this.$sessionRepository.getFeatureFlags().getDisableCustomScheme();
                CacheFile cacheFile = this.$cacheFile;
                Intrinsics.checkNotNull(string);
                AdObject adObject = this.$adObject;
                commonAdViewerExposedFunctionsKt$download$1$invoke$2.L$0 = string;
                commonAdViewerExposedFunctionsKt$download$1$invoke$2.Z$0 = disableCustomScheme;
                commonAdViewerExposedFunctionsKt$download$1$invoke$2.label = 1;
                objInvoke$default = CacheFile.DefaultImpls.invoke$default(cacheFile, string, adObject, jSONArray, iOptInt, 0, null, commonAdViewerExposedFunctionsKt$download$1$invoke$2, 48, null);
                if (objInvoke$default == coroutine_suspended) {
                    return coroutine_suspended;
                }
                str = string;
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                disableCustomScheme = commonAdViewerExposedFunctionsKt$download$1$invoke$2.Z$0;
                str = (String) commonAdViewerExposedFunctionsKt$download$1$invoke$2.L$0;
                ResultKt.throwOnFailure(objInvoke$default);
            }
            CacheResult cacheResult = (CacheResult) objInvoke$default;
            if (cacheResult instanceof CacheResult.Success) {
                return disableCustomScheme ? str : "unity-ads-cache://unity.ads.cache/" + ((CacheResult.Success) cacheResult).getCachedFile().getName();
            }
            if (cacheResult instanceof CacheResult.Failure) {
                throw new IllegalStateException(((CacheResult.Failure) cacheResult).getError().name().toString());
            }
            throw new NoWhenBranchMatchedException();
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$getPrivacy$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: CommonAdViewerExposedFunctions.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    static final class C40451 implements ExposedFunction {
        final /* synthetic */ SessionRepository $sessionRepository;

        C40451(SessionRepository sessionRepository) {
            this.$sessionRepository = sessionRepository;
        }

        @Override // p005kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, Continuation<? super Object> continuation) {
            return invoke2(objArr, (Continuation<Object>) continuation);
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0014  */
        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(Object[] objArr, Continuation<Object> continuation) {
            CommonAdViewerExposedFunctionsKt$getPrivacy$1$invoke$1 commonAdViewerExposedFunctionsKt$getPrivacy$1$invoke$1;
            if (continuation instanceof CommonAdViewerExposedFunctionsKt$getPrivacy$1$invoke$1) {
                commonAdViewerExposedFunctionsKt$getPrivacy$1$invoke$1 = (CommonAdViewerExposedFunctionsKt$getPrivacy$1$invoke$1) continuation;
                if ((commonAdViewerExposedFunctionsKt$getPrivacy$1$invoke$1.label & Integer.MIN_VALUE) != 0) {
                    commonAdViewerExposedFunctionsKt$getPrivacy$1$invoke$1.label -= Integer.MIN_VALUE;
                } else {
                    commonAdViewerExposedFunctionsKt$getPrivacy$1$invoke$1 = new CommonAdViewerExposedFunctionsKt$getPrivacy$1$invoke$1(this, continuation);
                }
            } else {
                commonAdViewerExposedFunctionsKt$getPrivacy$1$invoke$1 = new CommonAdViewerExposedFunctionsKt$getPrivacy$1$invoke$1(this, continuation);
            }
            Object privacy = commonAdViewerExposedFunctionsKt$getPrivacy$1$invoke$1.result;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = commonAdViewerExposedFunctionsKt$getPrivacy$1$invoke$1.label;
            if (i == 0) {
                ResultKt.throwOnFailure(privacy);
                SessionRepository sessionRepository = this.$sessionRepository;
                commonAdViewerExposedFunctionsKt$getPrivacy$1$invoke$1.label = 1;
                privacy = sessionRepository.getPrivacy(commonAdViewerExposedFunctionsKt$getPrivacy$1$invoke$1);
                if (privacy == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(privacy);
            }
            return ProtobufExtensionsKt.toBase64$default((ByteString) privacy, false, 1, null);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$getPrivacyFsm$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: CommonAdViewerExposedFunctions.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    static final class C40461 implements ExposedFunction {
        final /* synthetic */ SessionRepository $sessionRepository;

        C40461(SessionRepository sessionRepository) {
            this.$sessionRepository = sessionRepository;
        }

        @Override // p005kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, Continuation<? super Object> continuation) {
            return invoke2(objArr, (Continuation<Object>) continuation);
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0014  */
        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(Object[] objArr, Continuation<Object> continuation) {
            CommonAdViewerExposedFunctionsKt$getPrivacyFsm$1$invoke$1 commonAdViewerExposedFunctionsKt$getPrivacyFsm$1$invoke$1;
            if (continuation instanceof CommonAdViewerExposedFunctionsKt$getPrivacyFsm$1$invoke$1) {
                commonAdViewerExposedFunctionsKt$getPrivacyFsm$1$invoke$1 = (CommonAdViewerExposedFunctionsKt$getPrivacyFsm$1$invoke$1) continuation;
                if ((commonAdViewerExposedFunctionsKt$getPrivacyFsm$1$invoke$1.label & Integer.MIN_VALUE) != 0) {
                    commonAdViewerExposedFunctionsKt$getPrivacyFsm$1$invoke$1.label -= Integer.MIN_VALUE;
                } else {
                    commonAdViewerExposedFunctionsKt$getPrivacyFsm$1$invoke$1 = new CommonAdViewerExposedFunctionsKt$getPrivacyFsm$1$invoke$1(this, continuation);
                }
            } else {
                commonAdViewerExposedFunctionsKt$getPrivacyFsm$1$invoke$1 = new CommonAdViewerExposedFunctionsKt$getPrivacyFsm$1$invoke$1(this, continuation);
            }
            Object privacyFsm = commonAdViewerExposedFunctionsKt$getPrivacyFsm$1$invoke$1.result;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = commonAdViewerExposedFunctionsKt$getPrivacyFsm$1$invoke$1.label;
            if (i == 0) {
                ResultKt.throwOnFailure(privacyFsm);
                SessionRepository sessionRepository = this.$sessionRepository;
                commonAdViewerExposedFunctionsKt$getPrivacyFsm$1$invoke$1.label = 1;
                privacyFsm = sessionRepository.getPrivacyFsm(commonAdViewerExposedFunctionsKt$getPrivacyFsm$1$invoke$1);
                if (privacyFsm == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(privacyFsm);
            }
            return ProtobufExtensionsKt.toBase64$default((ByteString) privacyFsm, false, 1, null);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$loadOfferwallAd$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: CommonAdViewerExposedFunctions.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    static final class C40581 implements ExposedFunction {
        final /* synthetic */ AdObject $adObject;
        final /* synthetic */ LoadOfferwallAd $loadOfferwallAd;

        C40581(AdObject adObject, LoadOfferwallAd loadOfferwallAd) {
            this.$adObject = adObject;
            this.$loadOfferwallAd = loadOfferwallAd;
        }

        @Override // p005kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, Continuation<? super Object> continuation) {
            return invoke2(objArr, (Continuation<? super Unit>) continuation);
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0014  */
        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(Object[] objArr, Continuation<? super Unit> continuation) {
            CommonAdViewerExposedFunctionsKt$loadOfferwallAd$1$invoke$1 commonAdViewerExposedFunctionsKt$loadOfferwallAd$1$invoke$1;
            if (continuation instanceof CommonAdViewerExposedFunctionsKt$loadOfferwallAd$1$invoke$1) {
                commonAdViewerExposedFunctionsKt$loadOfferwallAd$1$invoke$1 = (CommonAdViewerExposedFunctionsKt$loadOfferwallAd$1$invoke$1) continuation;
                if ((commonAdViewerExposedFunctionsKt$loadOfferwallAd$1$invoke$1.label & Integer.MIN_VALUE) != 0) {
                    commonAdViewerExposedFunctionsKt$loadOfferwallAd$1$invoke$1.label -= Integer.MIN_VALUE;
                } else {
                    commonAdViewerExposedFunctionsKt$loadOfferwallAd$1$invoke$1 = new CommonAdViewerExposedFunctionsKt$loadOfferwallAd$1$invoke$1(this, continuation);
                }
            } else {
                commonAdViewerExposedFunctionsKt$loadOfferwallAd$1$invoke$1 = new CommonAdViewerExposedFunctionsKt$loadOfferwallAd$1$invoke$1(this, continuation);
            }
            Object obj = commonAdViewerExposedFunctionsKt$loadOfferwallAd$1$invoke$1.result;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = commonAdViewerExposedFunctionsKt$loadOfferwallAd$1$invoke$1.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Object obj2 = objArr[0];
                Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type org.json.JSONObject");
                String strOptString = ((JSONObject) obj2).optString("placementName");
                this.$adObject.setOfferwallAd(true);
                this.$adObject.setOfferwallPlacementName(strOptString);
                LoadOfferwallAd loadOfferwallAd = this.$loadOfferwallAd;
                Intrinsics.checkNotNull(strOptString);
                commonAdViewerExposedFunctionsKt$loadOfferwallAd$1$invoke$1.label = 1;
                if (loadOfferwallAd.invoke(strOptString, commonAdViewerExposedFunctionsKt$loadOfferwallAd$1$invoke$1) == coroutine_suspended) {
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

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$omFinishSession$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: CommonAdViewerExposedFunctions.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    static final class C40601 implements ExposedFunction {
        final /* synthetic */ AdObject $adObject;
        final /* synthetic */ OmFinishSession $omFinishSession;

        C40601(OmFinishSession omFinishSession, AdObject adObject) {
            this.$omFinishSession = omFinishSession;
            this.$adObject = adObject;
        }

        @Override // p005kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, Continuation<? super Object> continuation) {
            return invoke2(objArr, (Continuation<? super Unit>) continuation);
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0014  */
        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(Object[] objArr, Continuation<? super Unit> continuation) {
            CommonAdViewerExposedFunctionsKt$omFinishSession$1$invoke$1 commonAdViewerExposedFunctionsKt$omFinishSession$1$invoke$1;
            if (continuation instanceof CommonAdViewerExposedFunctionsKt$omFinishSession$1$invoke$1) {
                commonAdViewerExposedFunctionsKt$omFinishSession$1$invoke$1 = (CommonAdViewerExposedFunctionsKt$omFinishSession$1$invoke$1) continuation;
                if ((commonAdViewerExposedFunctionsKt$omFinishSession$1$invoke$1.label & Integer.MIN_VALUE) != 0) {
                    commonAdViewerExposedFunctionsKt$omFinishSession$1$invoke$1.label -= Integer.MIN_VALUE;
                } else {
                    commonAdViewerExposedFunctionsKt$omFinishSession$1$invoke$1 = new CommonAdViewerExposedFunctionsKt$omFinishSession$1$invoke$1(this, continuation);
                }
            } else {
                commonAdViewerExposedFunctionsKt$omFinishSession$1$invoke$1 = new CommonAdViewerExposedFunctionsKt$omFinishSession$1$invoke$1(this, continuation);
            }
            Object obj = commonAdViewerExposedFunctionsKt$omFinishSession$1$invoke$1.result;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = commonAdViewerExposedFunctionsKt$omFinishSession$1$invoke$1.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                OmFinishSession omFinishSession = this.$omFinishSession;
                AdObject adObject = this.$adObject;
                commonAdViewerExposedFunctionsKt$omFinishSession$1$invoke$1.label = 1;
                if (omFinishSession.invoke(adObject, commonAdViewerExposedFunctionsKt$omFinishSession$1$invoke$1) == coroutine_suspended) {
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

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$omGetData$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: CommonAdViewerExposedFunctions.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    static final class C40611 implements ExposedFunction {
        final /* synthetic */ GetOmData $getOmData;

        C40611(GetOmData getOmData) {
            this.$getOmData = getOmData;
        }

        @Override // p005kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, Continuation<? super Object> continuation) {
            return invoke2(objArr, (Continuation<Object>) continuation);
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0014  */
        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(Object[] objArr, Continuation<Object> continuation) {
            CommonAdViewerExposedFunctionsKt$omGetData$1$invoke$1 commonAdViewerExposedFunctionsKt$omGetData$1$invoke$1;
            if (continuation instanceof CommonAdViewerExposedFunctionsKt$omGetData$1$invoke$1) {
                commonAdViewerExposedFunctionsKt$omGetData$1$invoke$1 = (CommonAdViewerExposedFunctionsKt$omGetData$1$invoke$1) continuation;
                if ((commonAdViewerExposedFunctionsKt$omGetData$1$invoke$1.label & Integer.MIN_VALUE) != 0) {
                    commonAdViewerExposedFunctionsKt$omGetData$1$invoke$1.label -= Integer.MIN_VALUE;
                } else {
                    commonAdViewerExposedFunctionsKt$omGetData$1$invoke$1 = new CommonAdViewerExposedFunctionsKt$omGetData$1$invoke$1(this, continuation);
                }
            } else {
                commonAdViewerExposedFunctionsKt$omGetData$1$invoke$1 = new CommonAdViewerExposedFunctionsKt$omGetData$1$invoke$1(this, continuation);
            }
            Object objInvoke = commonAdViewerExposedFunctionsKt$omGetData$1$invoke$1.result;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = commonAdViewerExposedFunctionsKt$omGetData$1$invoke$1.label;
            if (i == 0) {
                ResultKt.throwOnFailure(objInvoke);
                GetOmData getOmData = this.$getOmData;
                commonAdViewerExposedFunctionsKt$omGetData$1$invoke$1.label = 1;
                objInvoke = getOmData.invoke(commonAdViewerExposedFunctionsKt$omGetData$1$invoke$1);
                if (objInvoke == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(objInvoke);
            }
            OMData oMData = (OMData) objInvoke;
            Map mapCreateMapBuilder = MapsKt.createMapBuilder();
            mapCreateMapBuilder.put("version", oMData.getVersion());
            mapCreateMapBuilder.put(HandleInvocationsFromAdViewer.KEY_OM_PARTNER, oMData.getPartnerName());
            mapCreateMapBuilder.put(HandleInvocationsFromAdViewer.KEY_OM_PARTNER_VERSION, oMData.getPartnerVersion());
            return MapsKt.build(mapCreateMapBuilder);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$omImpression$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: CommonAdViewerExposedFunctions.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    static final class C40621 implements ExposedFunction {
        final /* synthetic */ AdObject $adObject;
        final /* synthetic */ OmImpressionOccurred $omImpressionOccurred;

        C40621(OmImpressionOccurred omImpressionOccurred, AdObject adObject) {
            this.$omImpressionOccurred = omImpressionOccurred;
            this.$adObject = adObject;
        }

        @Override // p005kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, Continuation<? super Object> continuation) {
            return invoke2(objArr, (Continuation<? super Unit>) continuation);
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0014  */
        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(Object[] objArr, Continuation<? super Unit> continuation) {
            CommonAdViewerExposedFunctionsKt$omImpression$1$invoke$1 commonAdViewerExposedFunctionsKt$omImpression$1$invoke$1;
            if (continuation instanceof CommonAdViewerExposedFunctionsKt$omImpression$1$invoke$1) {
                commonAdViewerExposedFunctionsKt$omImpression$1$invoke$1 = (CommonAdViewerExposedFunctionsKt$omImpression$1$invoke$1) continuation;
                if ((commonAdViewerExposedFunctionsKt$omImpression$1$invoke$1.label & Integer.MIN_VALUE) != 0) {
                    commonAdViewerExposedFunctionsKt$omImpression$1$invoke$1.label -= Integer.MIN_VALUE;
                } else {
                    commonAdViewerExposedFunctionsKt$omImpression$1$invoke$1 = new CommonAdViewerExposedFunctionsKt$omImpression$1$invoke$1(this, continuation);
                }
            } else {
                commonAdViewerExposedFunctionsKt$omImpression$1$invoke$1 = new CommonAdViewerExposedFunctionsKt$omImpression$1$invoke$1(this, continuation);
            }
            Object obj = commonAdViewerExposedFunctionsKt$omImpression$1$invoke$1.result;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = commonAdViewerExposedFunctionsKt$omImpression$1$invoke$1.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Object obj2 = objArr[0];
                Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.Boolean");
                boolean zBooleanValue = ((Boolean) obj2).booleanValue();
                OmImpressionOccurred omImpressionOccurred = this.$omImpressionOccurred;
                AdObject adObject = this.$adObject;
                commonAdViewerExposedFunctionsKt$omImpression$1$invoke$1.label = 1;
                if (omImpressionOccurred.invoke(adObject, zBooleanValue, commonAdViewerExposedFunctionsKt$omImpression$1$invoke$1) == coroutine_suspended) {
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

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$omStartSession$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: CommonAdViewerExposedFunctions.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    static final class C40631 implements ExposedFunction {
        final /* synthetic */ AdObject $adObject;
        final /* synthetic */ AndroidOmInteraction $omStartSession;

        C40631(AndroidOmInteraction androidOmInteraction, AdObject adObject) {
            this.$omStartSession = androidOmInteraction;
            this.$adObject = adObject;
        }

        @Override // p005kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, Continuation<? super Object> continuation) {
            return invoke2(objArr, (Continuation<? super Unit>) continuation);
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0014  */
        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(Object[] objArr, Continuation<? super Unit> continuation) {
            CommonAdViewerExposedFunctionsKt$omStartSession$1$invoke$1 commonAdViewerExposedFunctionsKt$omStartSession$1$invoke$1;
            if (continuation instanceof CommonAdViewerExposedFunctionsKt$omStartSession$1$invoke$1) {
                commonAdViewerExposedFunctionsKt$omStartSession$1$invoke$1 = (CommonAdViewerExposedFunctionsKt$omStartSession$1$invoke$1) continuation;
                if ((commonAdViewerExposedFunctionsKt$omStartSession$1$invoke$1.label & Integer.MIN_VALUE) != 0) {
                    commonAdViewerExposedFunctionsKt$omStartSession$1$invoke$1.label -= Integer.MIN_VALUE;
                } else {
                    commonAdViewerExposedFunctionsKt$omStartSession$1$invoke$1 = new CommonAdViewerExposedFunctionsKt$omStartSession$1$invoke$1(this, continuation);
                }
            } else {
                commonAdViewerExposedFunctionsKt$omStartSession$1$invoke$1 = new CommonAdViewerExposedFunctionsKt$omStartSession$1$invoke$1(this, continuation);
            }
            Object obj = commonAdViewerExposedFunctionsKt$omStartSession$1$invoke$1.result;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = commonAdViewerExposedFunctionsKt$omStartSession$1$invoke$1.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Object obj2 = objArr[0];
                Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type org.json.JSONObject");
                AndroidOmInteraction androidOmInteraction = this.$omStartSession;
                AdObject adObject = this.$adObject;
                commonAdViewerExposedFunctionsKt$omStartSession$1$invoke$1.label = 1;
                if (androidOmInteraction.invoke(adObject, (JSONObject) obj2, commonAdViewerExposedFunctionsKt$omStartSession$1$invoke$1) == coroutine_suspended) {
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

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$refreshAdData$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: CommonAdViewerExposedFunctions.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    static final class C40661 implements ExposedFunction {
        final /* synthetic */ AdObject $adObject;
        final /* synthetic */ Refresh $refresh;

        C40661(Refresh refresh, AdObject adObject) {
            this.$refresh = refresh;
            this.$adObject = adObject;
        }

        @Override // p005kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, Continuation<? super Object> continuation) {
            return invoke2(objArr, (Continuation<Object>) continuation);
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0014  */
        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(Object[] objArr, Continuation<Object> continuation) {
            CommonAdViewerExposedFunctionsKt$refreshAdData$1$invoke$1 commonAdViewerExposedFunctionsKt$refreshAdData$1$invoke$1;
            ByteString byteStringFromBase64$default;
            if (continuation instanceof CommonAdViewerExposedFunctionsKt$refreshAdData$1$invoke$1) {
                commonAdViewerExposedFunctionsKt$refreshAdData$1$invoke$1 = (CommonAdViewerExposedFunctionsKt$refreshAdData$1$invoke$1) continuation;
                if ((commonAdViewerExposedFunctionsKt$refreshAdData$1$invoke$1.label & Integer.MIN_VALUE) != 0) {
                    commonAdViewerExposedFunctionsKt$refreshAdData$1$invoke$1.label -= Integer.MIN_VALUE;
                } else {
                    commonAdViewerExposedFunctionsKt$refreshAdData$1$invoke$1 = new CommonAdViewerExposedFunctionsKt$refreshAdData$1$invoke$1(this, continuation);
                }
            } else {
                commonAdViewerExposedFunctionsKt$refreshAdData$1$invoke$1 = new CommonAdViewerExposedFunctionsKt$refreshAdData$1$invoke$1(this, continuation);
            }
            Object objInvoke = commonAdViewerExposedFunctionsKt$refreshAdData$1$invoke$1.result;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = commonAdViewerExposedFunctionsKt$refreshAdData$1$invoke$1.label;
            if (i == 0) {
                ResultKt.throwOnFailure(objInvoke);
                if (objArr.length == 0) {
                    byteStringFromBase64$default = ByteString.EMPTY;
                } else {
                    Object obj = objArr[0];
                    Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type org.json.JSONObject");
                    String strOptString = ((JSONObject) obj).optString(HandleInvocationsFromAdViewer.KEY_AD_DATA_REFRESH_TOKEN);
                    Intrinsics.checkNotNull(strOptString);
                    byteStringFromBase64$default = ProtobufExtensionsKt.fromBase64$default(strOptString, false, 1, null);
                }
                Refresh refresh = this.$refresh;
                Intrinsics.checkNotNull(byteStringFromBase64$default);
                ByteString opportunityId = this.$adObject.getOpportunityId();
                commonAdViewerExposedFunctionsKt$refreshAdData$1$invoke$1.label = 1;
                objInvoke = refresh.invoke(byteStringFromBase64$default, opportunityId, commonAdViewerExposedFunctionsKt$refreshAdData$1$invoke$1);
                if (objInvoke == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(objInvoke);
            }
            AdDataRefreshResponseOuterClass.AdDataRefreshResponse adDataRefreshResponse = (AdDataRefreshResponseOuterClass.AdDataRefreshResponse) objInvoke;
            if (adDataRefreshResponse.hasError()) {
                throw new IllegalArgumentException("Refresh failed");
            }
            Map mapCreateMapBuilder = MapsKt.createMapBuilder();
            ByteString adData = adDataRefreshResponse.getAdData();
            Intrinsics.checkNotNullExpressionValue(adData, "getAdData(...)");
            mapCreateMapBuilder.put("adData", ProtobufExtensionsKt.toBase64$default(adData, false, 1, null));
            ByteString adDataRefreshToken = adDataRefreshResponse.getAdDataRefreshToken();
            Intrinsics.checkNotNullExpressionValue(adDataRefreshToken, "getAdDataRefreshToken(...)");
            mapCreateMapBuilder.put(HandleInvocationsFromAdViewer.KEY_AD_DATA_REFRESH_TOKEN, ProtobufExtensionsKt.toBase64$default(adDataRefreshToken, false, 1, null));
            ByteString trackingToken = adDataRefreshResponse.getTrackingToken();
            Intrinsics.checkNotNullExpressionValue(trackingToken, "getTrackingToken(...)");
            mapCreateMapBuilder.put(HandleInvocationsFromAdViewer.KEY_TRACKING_TOKEN, ProtobufExtensionsKt.toBase64$default(trackingToken, false, 1, null));
            return MapsKt.build(mapCreateMapBuilder);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$request$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: CommonAdViewerExposedFunctions.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    static final class C40671 implements ExposedFunction {
        final /* synthetic */ ExecuteAdViewerRequest $executeAdViewerRequest;
        final /* synthetic */ RequestType $type;

        C40671(ExecuteAdViewerRequest executeAdViewerRequest, RequestType requestType) {
            this.$executeAdViewerRequest = executeAdViewerRequest;
            this.$type = requestType;
        }

        @Override // p005kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, Continuation<? super Object> continuation) {
            return invoke2(objArr, (Continuation<Object>) continuation);
        }

        /* JADX WARN: Code duplicated, block: B:36:0x00ba  */
        /* JADX WARN: Code duplicated, block: B:7:0x0014  */
        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(Object[] objArr, Continuation<Object> continuation) {
            CommonAdViewerExposedFunctionsKt$request$1$invoke$1 commonAdViewerExposedFunctionsKt$request$1$invoke$1;
            String str;
            Exception e;
            String str2;
            String message;
            String str3;
            if (continuation instanceof CommonAdViewerExposedFunctionsKt$request$1$invoke$1) {
                commonAdViewerExposedFunctionsKt$request$1$invoke$1 = (CommonAdViewerExposedFunctionsKt$request$1$invoke$1) continuation;
                if ((commonAdViewerExposedFunctionsKt$request$1$invoke$1.label & Integer.MIN_VALUE) != 0) {
                    commonAdViewerExposedFunctionsKt$request$1$invoke$1.label -= Integer.MIN_VALUE;
                } else {
                    commonAdViewerExposedFunctionsKt$request$1$invoke$1 = new CommonAdViewerExposedFunctionsKt$request$1$invoke$1(this, continuation);
                }
            } else {
                commonAdViewerExposedFunctionsKt$request$1$invoke$1 = new CommonAdViewerExposedFunctionsKt$request$1$invoke$1(this, continuation);
            }
            Object obj = commonAdViewerExposedFunctionsKt$request$1$invoke$1.result;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = commonAdViewerExposedFunctionsKt$request$1$invoke$1.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Object objFirst = ArraysKt.first(objArr);
                Intrinsics.checkNotNull(objFirst, "null cannot be cast to non-null type kotlin.String");
                String str4 = (String) objFirst;
                String str5 = (String) ArraysKt.getOrNull(objArr, 1);
                try {
                    ExecuteAdViewerRequest executeAdViewerRequest = this.$executeAdViewerRequest;
                    RequestType requestType = this.$type;
                    commonAdViewerExposedFunctionsKt$request$1$invoke$1.L$0 = str4;
                    commonAdViewerExposedFunctionsKt$request$1$invoke$1.L$1 = str5;
                    commonAdViewerExposedFunctionsKt$request$1$invoke$1.label = 1;
                    Object objInvoke = executeAdViewerRequest.invoke(requestType, objArr, commonAdViewerExposedFunctionsKt$request$1$invoke$1);
                    if (objInvoke == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    str = str4;
                    obj = objInvoke;
                    str2 = str5;
                } catch (Exception e2) {
                    str = str4;
                    e = e2;
                    str2 = str5;
                    String[] strArr = new String[3];
                    strArr[0] = str;
                    strArr[1] = str2;
                    message = e.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    strArr[2] = message;
                    return new OnWebRequestFailed(CollectionsKt.listOf((Object[]) strArr));
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                str2 = (String) commonAdViewerExposedFunctionsKt$request$1$invoke$1.L$1;
                str = (String) commonAdViewerExposedFunctionsKt$request$1$invoke$1.L$0;
                try {
                    ResultKt.throwOnFailure(obj);
                } catch (Exception e3) {
                    e = e3;
                    String[] strArr2 = new String[3];
                    strArr2[0] = str;
                    strArr2[1] = str2;
                    message = e.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    strArr2[2] = message;
                    return new OnWebRequestFailed(CollectionsKt.listOf((Object[]) strArr2));
                }
            }
            HttpResponse httpResponse = (HttpResponse) obj;
            Object body = httpResponse.getBody();
            if (body instanceof String) {
                str3 = (String) body;
            } else {
                str3 = body instanceof byte[] ? new String((byte[]) body, Charsets.UTF_8) : null;
            }
            return new OnWebRequestComplete(CollectionsKt.listOf(str, httpResponse.getUrlString(), str3, Boxing.boxInt(httpResponse.getStatusCode()), HttpResponseHeaderToJSONArrayKt.toResponseHeadersMap(httpResponse.getHeaders())));
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$sendAdViewerRequest$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: CommonAdViewerExposedFunctions.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    static final class C40681 implements ExposedFunction {
        final /* synthetic */ AdObject $adObject;
        final /* synthetic */ SendAdViewerRequest $sendAdViewerRequest;

        C40681(SendAdViewerRequest sendAdViewerRequest, AdObject adObject) {
            this.$sendAdViewerRequest = sendAdViewerRequest;
            this.$adObject = adObject;
        }

        @Override // p005kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, Continuation<? super Object> continuation) {
            return invoke2(objArr, (Continuation<Object>) continuation);
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0014  */
        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(Object[] objArr, Continuation<Object> continuation) {
            CommonAdViewerExposedFunctionsKt$sendAdViewerRequest$1$invoke$1 commonAdViewerExposedFunctionsKt$sendAdViewerRequest$1$invoke$1;
            ByteString byteStringFromBase64$default;
            if (continuation instanceof CommonAdViewerExposedFunctionsKt$sendAdViewerRequest$1$invoke$1) {
                commonAdViewerExposedFunctionsKt$sendAdViewerRequest$1$invoke$1 = (CommonAdViewerExposedFunctionsKt$sendAdViewerRequest$1$invoke$1) continuation;
                if ((commonAdViewerExposedFunctionsKt$sendAdViewerRequest$1$invoke$1.label & Integer.MIN_VALUE) != 0) {
                    commonAdViewerExposedFunctionsKt$sendAdViewerRequest$1$invoke$1.label -= Integer.MIN_VALUE;
                } else {
                    commonAdViewerExposedFunctionsKt$sendAdViewerRequest$1$invoke$1 = new CommonAdViewerExposedFunctionsKt$sendAdViewerRequest$1$invoke$1(this, continuation);
                }
            } else {
                commonAdViewerExposedFunctionsKt$sendAdViewerRequest$1$invoke$1 = new CommonAdViewerExposedFunctionsKt$sendAdViewerRequest$1$invoke$1(this, continuation);
            }
            Object objInvoke = commonAdViewerExposedFunctionsKt$sendAdViewerRequest$1$invoke$1.result;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = commonAdViewerExposedFunctionsKt$sendAdViewerRequest$1$invoke$1.label;
            if (i == 0) {
                ResultKt.throwOnFailure(objInvoke);
                if (objArr.length == 0) {
                    byteStringFromBase64$default = ByteString.EMPTY;
                } else {
                    Object obj = objArr[0];
                    Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type org.json.JSONObject");
                    String strOptString = ((JSONObject) obj).optString(HandleInvocationsFromAdViewer.KEY_PAYLOAD);
                    Intrinsics.checkNotNull(strOptString);
                    byteStringFromBase64$default = ProtobufExtensionsKt.fromBase64$default(strOptString, false, 1, null);
                }
                SendAdViewerRequest sendAdViewerRequest = this.$sendAdViewerRequest;
                ByteString opportunityId = this.$adObject.getOpportunityId();
                Intrinsics.checkNotNull(byteStringFromBase64$default);
                commonAdViewerExposedFunctionsKt$sendAdViewerRequest$1$invoke$1.label = 1;
                objInvoke = sendAdViewerRequest.invoke(opportunityId, byteStringFromBase64$default, commonAdViewerExposedFunctionsKt$sendAdViewerRequest$1$invoke$1);
                if (objInvoke == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(objInvoke);
            }
            AdViewerResponseOuterClass.AdViewerResponse adViewerResponse = (AdViewerResponseOuterClass.AdViewerResponse) objInvoke;
            if (adViewerResponse.hasError()) {
                throw new IllegalArgumentException("Ad viewer request failed");
            }
            Map mapCreateMapBuilder = MapsKt.createMapBuilder();
            ByteString payload = adViewerResponse.getPayload();
            Intrinsics.checkNotNullExpressionValue(payload, "getPayload(...)");
            mapCreateMapBuilder.put(HandleInvocationsFromAdViewer.KEY_PAYLOAD, ProtobufExtensionsKt.toBase64$default(payload, false, 1, null));
            mapCreateMapBuilder.put(HandleInvocationsFromAdViewer.KEY_PAYLOAD_VERSION, Boxing.boxInt(adViewerResponse.getPayloadVersion()));
            return MapsKt.build(mapCreateMapBuilder);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$sendOperativeEvent$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: CommonAdViewerExposedFunctions.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    static final class C40701 implements ExposedFunction {
        final /* synthetic */ AdObject $adObject;
        final /* synthetic */ GetOperativeEventApi $getOperativeEventApi;

        C40701(GetOperativeEventApi getOperativeEventApi, AdObject adObject) {
            this.$getOperativeEventApi = getOperativeEventApi;
            this.$adObject = adObject;
        }

        @Override // p005kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, Continuation<? super Object> continuation) {
            return invoke2(objArr, (Continuation<? super Unit>) continuation);
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0014  */
        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(Object[] objArr, Continuation<? super Unit> continuation) {
            CommonAdViewerExposedFunctionsKt$sendOperativeEvent$1$invoke$1 commonAdViewerExposedFunctionsKt$sendOperativeEvent$1$invoke$1;
            if (continuation instanceof CommonAdViewerExposedFunctionsKt$sendOperativeEvent$1$invoke$1) {
                commonAdViewerExposedFunctionsKt$sendOperativeEvent$1$invoke$1 = (CommonAdViewerExposedFunctionsKt$sendOperativeEvent$1$invoke$1) continuation;
                if ((commonAdViewerExposedFunctionsKt$sendOperativeEvent$1$invoke$1.label & Integer.MIN_VALUE) != 0) {
                    commonAdViewerExposedFunctionsKt$sendOperativeEvent$1$invoke$1.label -= Integer.MIN_VALUE;
                } else {
                    commonAdViewerExposedFunctionsKt$sendOperativeEvent$1$invoke$1 = new CommonAdViewerExposedFunctionsKt$sendOperativeEvent$1$invoke$1(this, continuation);
                }
            } else {
                commonAdViewerExposedFunctionsKt$sendOperativeEvent$1$invoke$1 = new CommonAdViewerExposedFunctionsKt$sendOperativeEvent$1$invoke$1(this, continuation);
            }
            Object obj = commonAdViewerExposedFunctionsKt$sendOperativeEvent$1$invoke$1.result;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = commonAdViewerExposedFunctionsKt$sendOperativeEvent$1$invoke$1.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                OperativeEventRequestOuterClass.OperativeEventType operativeEventType = OperativeEventRequestOuterClass.OperativeEventType.OPERATIVE_EVENT_TYPE_SPECIFIED_BY_AD_PLAYER;
                Object obj2 = objArr[0];
                Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.String");
                byte[] bArrDecode = Base64.decode((String) obj2, 2);
                Intrinsics.checkNotNullExpressionValue(bArrDecode, "decode(...)");
                ByteString byteString = ByteStringsKt.toByteString(bArrDecode);
                GetOperativeEventApi getOperativeEventApi = this.$getOperativeEventApi;
                AdObject adObject = this.$adObject;
                commonAdViewerExposedFunctionsKt$sendOperativeEvent$1$invoke$1.label = 1;
                if (getOperativeEventApi.invoke(operativeEventType, adObject, byteString, commonAdViewerExposedFunctionsKt$sendOperativeEvent$1$invoke$1) == coroutine_suspended) {
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

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$sendPrivacyUpdateRequest$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: CommonAdViewerExposedFunctions.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    static final class C40711 implements ExposedFunction {
        final /* synthetic */ SendPrivacyUpdateRequest $sendPrivacyUpdateRequest;

        C40711(SendPrivacyUpdateRequest sendPrivacyUpdateRequest) {
            this.$sendPrivacyUpdateRequest = sendPrivacyUpdateRequest;
        }

        @Override // p005kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, Continuation<? super Object> continuation) {
            return invoke2(objArr, (Continuation<Object>) continuation);
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0014  */
        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(Object[] objArr, Continuation<Object> continuation) {
            CommonAdViewerExposedFunctionsKt$sendPrivacyUpdateRequest$1$invoke$1 commonAdViewerExposedFunctionsKt$sendPrivacyUpdateRequest$1$invoke$1;
            if (continuation instanceof CommonAdViewerExposedFunctionsKt$sendPrivacyUpdateRequest$1$invoke$1) {
                commonAdViewerExposedFunctionsKt$sendPrivacyUpdateRequest$1$invoke$1 = (CommonAdViewerExposedFunctionsKt$sendPrivacyUpdateRequest$1$invoke$1) continuation;
                if ((commonAdViewerExposedFunctionsKt$sendPrivacyUpdateRequest$1$invoke$1.label & Integer.MIN_VALUE) != 0) {
                    commonAdViewerExposedFunctionsKt$sendPrivacyUpdateRequest$1$invoke$1.label -= Integer.MIN_VALUE;
                } else {
                    commonAdViewerExposedFunctionsKt$sendPrivacyUpdateRequest$1$invoke$1 = new CommonAdViewerExposedFunctionsKt$sendPrivacyUpdateRequest$1$invoke$1(this, continuation);
                }
            } else {
                commonAdViewerExposedFunctionsKt$sendPrivacyUpdateRequest$1$invoke$1 = new CommonAdViewerExposedFunctionsKt$sendPrivacyUpdateRequest$1$invoke$1(this, continuation);
            }
            Object objInvoke = commonAdViewerExposedFunctionsKt$sendPrivacyUpdateRequest$1$invoke$1.result;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = commonAdViewerExposedFunctionsKt$sendPrivacyUpdateRequest$1$invoke$1.label;
            if (i == 0) {
                ResultKt.throwOnFailure(objInvoke);
                Object obj = objArr[0];
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type org.json.JSONObject");
                JSONObject jSONObject = (JSONObject) obj;
                String strOptString = jSONObject.optString("content");
                int iOptInt = jSONObject.optInt("version");
                SendPrivacyUpdateRequest sendPrivacyUpdateRequest = this.$sendPrivacyUpdateRequest;
                Intrinsics.checkNotNull(strOptString);
                ByteString byteStringFromBase64$default = ProtobufExtensionsKt.fromBase64$default(strOptString, false, 1, null);
                commonAdViewerExposedFunctionsKt$sendPrivacyUpdateRequest$1$invoke$1.label = 1;
                objInvoke = sendPrivacyUpdateRequest.invoke(iOptInt, byteStringFromBase64$default, commonAdViewerExposedFunctionsKt$sendPrivacyUpdateRequest$1$invoke$1);
                if (objInvoke == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(objInvoke);
            }
            PrivacyUpdateResponseOuterClass.PrivacyUpdateResponse privacyUpdateResponse = (PrivacyUpdateResponseOuterClass.PrivacyUpdateResponse) objInvoke;
            Map mapCreateMapBuilder = MapsKt.createMapBuilder();
            mapCreateMapBuilder.put("version", Boxing.boxInt(privacyUpdateResponse.getVersion()));
            ByteString content = privacyUpdateResponse.getContent();
            Intrinsics.checkNotNullExpressionValue(content, "getContent(...)");
            mapCreateMapBuilder.put("content", ProtobufExtensionsKt.toBase64$default(content, false, 1, null));
            return MapsKt.build(mapCreateMapBuilder);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$setOrientation$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: CommonAdViewerExposedFunctions.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    static final class C40741 implements ExposedFunction {
        final /* synthetic */ AdObject $adObject;

        C40741(AdObject adObject) {
            this.$adObject = adObject;
        }

        @Override // p005kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, Continuation<? super Object> continuation) {
            return invoke2(objArr, (Continuation<? super Unit>) continuation);
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0014  */
        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(Object[] objArr, Continuation<? super Unit> continuation) {
            CommonAdViewerExposedFunctionsKt$setOrientation$1$invoke$1 commonAdViewerExposedFunctionsKt$setOrientation$1$invoke$1;
            if (continuation instanceof CommonAdViewerExposedFunctionsKt$setOrientation$1$invoke$1) {
                commonAdViewerExposedFunctionsKt$setOrientation$1$invoke$1 = (CommonAdViewerExposedFunctionsKt$setOrientation$1$invoke$1) continuation;
                if ((commonAdViewerExposedFunctionsKt$setOrientation$1$invoke$1.label & Integer.MIN_VALUE) != 0) {
                    commonAdViewerExposedFunctionsKt$setOrientation$1$invoke$1.label -= Integer.MIN_VALUE;
                } else {
                    commonAdViewerExposedFunctionsKt$setOrientation$1$invoke$1 = new CommonAdViewerExposedFunctionsKt$setOrientation$1$invoke$1(this, continuation);
                }
            } else {
                commonAdViewerExposedFunctionsKt$setOrientation$1$invoke$1 = new CommonAdViewerExposedFunctionsKt$setOrientation$1$invoke$1(this, continuation);
            }
            Object obj = commonAdViewerExposedFunctionsKt$setOrientation$1$invoke$1.result;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = commonAdViewerExposedFunctionsKt$setOrientation$1$invoke$1.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Object obj2 = objArr[0];
                Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.Int");
                int iIntValue = ((Integer) obj2).intValue();
                MutableSharedFlow<DisplayMessage> displayMessages = AndroidFullscreenWebViewAdPlayer.INSTANCE.getDisplayMessages();
                String stringUtf8 = this.$adObject.getOpportunityId().toStringUtf8();
                Intrinsics.checkNotNullExpressionValue(stringUtf8, "toStringUtf8(...)");
                DisplayMessage.SetOrientation setOrientation = new DisplayMessage.SetOrientation(stringUtf8, iIntValue);
                commonAdViewerExposedFunctionsKt$setOrientation$1$invoke$1.label = 1;
                if (displayMessages.emit(setOrientation, commonAdViewerExposedFunctionsKt$setOrientation$1$invoke$1) == coroutine_suspended) {
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

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$setPrivacy$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: CommonAdViewerExposedFunctions.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    static final class C40751 implements ExposedFunction {
        final /* synthetic */ SessionRepository $sessionRepository;

        C40751(SessionRepository sessionRepository) {
            this.$sessionRepository = sessionRepository;
        }

        @Override // p005kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, Continuation<? super Object> continuation) {
            return invoke2(objArr, (Continuation<? super Unit>) continuation);
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0014  */
        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(Object[] objArr, Continuation<? super Unit> continuation) {
            CommonAdViewerExposedFunctionsKt$setPrivacy$1$invoke$1 commonAdViewerExposedFunctionsKt$setPrivacy$1$invoke$1;
            if (continuation instanceof CommonAdViewerExposedFunctionsKt$setPrivacy$1$invoke$1) {
                commonAdViewerExposedFunctionsKt$setPrivacy$1$invoke$1 = (CommonAdViewerExposedFunctionsKt$setPrivacy$1$invoke$1) continuation;
                if ((commonAdViewerExposedFunctionsKt$setPrivacy$1$invoke$1.label & Integer.MIN_VALUE) != 0) {
                    commonAdViewerExposedFunctionsKt$setPrivacy$1$invoke$1.label -= Integer.MIN_VALUE;
                } else {
                    commonAdViewerExposedFunctionsKt$setPrivacy$1$invoke$1 = new CommonAdViewerExposedFunctionsKt$setPrivacy$1$invoke$1(this, continuation);
                }
            } else {
                commonAdViewerExposedFunctionsKt$setPrivacy$1$invoke$1 = new CommonAdViewerExposedFunctionsKt$setPrivacy$1$invoke$1(this, continuation);
            }
            Object obj = commonAdViewerExposedFunctionsKt$setPrivacy$1$invoke$1.result;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = commonAdViewerExposedFunctionsKt$setPrivacy$1$invoke$1.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                SessionRepository sessionRepository = this.$sessionRepository;
                Object obj2 = objArr[0];
                Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.String");
                byte[] bArrDecode = Base64.decode((String) obj2, 2);
                Intrinsics.checkNotNullExpressionValue(bArrDecode, "decode(...)");
                ByteString byteString = ByteStringsKt.toByteString(bArrDecode);
                commonAdViewerExposedFunctionsKt$setPrivacy$1$invoke$1.label = 1;
                if (sessionRepository.setPrivacy(byteString, commonAdViewerExposedFunctionsKt$setPrivacy$1$invoke$1) == coroutine_suspended) {
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

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$setPrivacyFsm$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: CommonAdViewerExposedFunctions.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    static final class C40761 implements ExposedFunction {
        final /* synthetic */ SessionRepository $sessionRepository;

        C40761(SessionRepository sessionRepository) {
            this.$sessionRepository = sessionRepository;
        }

        @Override // p005kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, Continuation<? super Object> continuation) {
            return invoke2(objArr, (Continuation<? super Unit>) continuation);
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0014  */
        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(Object[] objArr, Continuation<? super Unit> continuation) {
            CommonAdViewerExposedFunctionsKt$setPrivacyFsm$1$invoke$1 commonAdViewerExposedFunctionsKt$setPrivacyFsm$1$invoke$1;
            if (continuation instanceof CommonAdViewerExposedFunctionsKt$setPrivacyFsm$1$invoke$1) {
                commonAdViewerExposedFunctionsKt$setPrivacyFsm$1$invoke$1 = (CommonAdViewerExposedFunctionsKt$setPrivacyFsm$1$invoke$1) continuation;
                if ((commonAdViewerExposedFunctionsKt$setPrivacyFsm$1$invoke$1.label & Integer.MIN_VALUE) != 0) {
                    commonAdViewerExposedFunctionsKt$setPrivacyFsm$1$invoke$1.label -= Integer.MIN_VALUE;
                } else {
                    commonAdViewerExposedFunctionsKt$setPrivacyFsm$1$invoke$1 = new CommonAdViewerExposedFunctionsKt$setPrivacyFsm$1$invoke$1(this, continuation);
                }
            } else {
                commonAdViewerExposedFunctionsKt$setPrivacyFsm$1$invoke$1 = new CommonAdViewerExposedFunctionsKt$setPrivacyFsm$1$invoke$1(this, continuation);
            }
            Object obj = commonAdViewerExposedFunctionsKt$setPrivacyFsm$1$invoke$1.result;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = commonAdViewerExposedFunctionsKt$setPrivacyFsm$1$invoke$1.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                SessionRepository sessionRepository = this.$sessionRepository;
                Object obj2 = objArr[0];
                Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.String");
                byte[] bArrDecode = Base64.decode((String) obj2, 2);
                Intrinsics.checkNotNullExpressionValue(bArrDecode, "decode(...)");
                ByteString byteString = ByteStringsKt.toByteString(bArrDecode);
                commonAdViewerExposedFunctionsKt$setPrivacyFsm$1$invoke$1.label = 1;
                if (sessionRepository.setPrivacyFsm(byteString, commonAdViewerExposedFunctionsKt$setPrivacyFsm$1$invoke$1) == coroutine_suspended) {
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

    public static final ExposedFunction attributionRegisterClick(final AndroidAttribution androidAttribution, final AdObject adObject) {
        Intrinsics.checkNotNullParameter(androidAttribution, "androidAttribution");
        Intrinsics.checkNotNullParameter(adObject, "adObject");
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt.attributionRegisterClick.1
            @Override // p005kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, Continuation<? super Object> continuation) {
                return invoke2(objArr, (Continuation<Object>) continuation);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(Object[] objArr, Continuation<Object> continuation) {
                AndroidAttribution androidAttribution2 = androidAttribution;
                Object obj = objArr[0];
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
                return androidAttribution2.registerClick((String) obj, adObject, continuation);
            }
        };
    }

    public static final ExposedFunction attributionRegisterView(final AndroidAttribution androidAttribution, final AdObject adObject) {
        Intrinsics.checkNotNullParameter(androidAttribution, "androidAttribution");
        Intrinsics.checkNotNullParameter(adObject, "adObject");
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt.attributionRegisterView.1
            @Override // p005kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, Continuation<? super Object> continuation) {
                return invoke2(objArr, (Continuation<Object>) continuation);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(Object[] objArr, Continuation<Object> continuation) {
                AndroidAttribution androidAttribution2 = androidAttribution;
                Object obj = objArr[0];
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
                return androidAttribution2.registerView((String) obj, adObject, continuation);
            }
        };
    }

    public static final ExposedFunction captureScreenshot(final WebViewScreenCapture screenCapture, final AdObject adObject) {
        Intrinsics.checkNotNullParameter(screenCapture, "screenCapture");
        Intrinsics.checkNotNullParameter(adObject, "adObject");
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt.captureScreenshot.1
            @Override // p005kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, Continuation<? super Object> continuation) {
                return invoke2(objArr, (Continuation<Object>) continuation);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(Object[] objArr, Continuation<Object> continuation) {
                Integer numIntArg = CommonAdViewerExposedFunctionsKt.intArg(objArr, 0, "quality");
                int iIntValue = numIntArg != null ? numIntArg.intValue() : 50;
                Number numberNumberArg = CommonAdViewerExposedFunctionsKt.numberArg(objArr, 1, "samplingRate");
                double dDoubleValue = numberNumberArg != null ? numberNumberArg.doubleValue() : 1.0d;
                if (iIntValue < 0 || iIntValue >= 101) {
                    throw new IllegalArgumentException(("quality must be in 0..100, was " + iIntValue).toString());
                }
                if (dDoubleValue <= FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE || dDoubleValue > 1.0d) {
                    throw new IllegalArgumentException(("samplingRate must be in (0, 1], was " + dDoubleValue).toString());
                }
                return screenCapture.captureScreenshot(adObject, iIntValue, dDoubleValue, continuation);
            }
        };
    }

    public static final ExposedFunction clearStorage() {
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt.clearStorage.1
            @Override // p005kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, Continuation<? super Object> continuation) {
                return invoke2(objArr, (Continuation<Object>) continuation);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(Object[] objArr, Continuation<Object> continuation) throws Throwable {
                SafeContinuation safeContinuation = new SafeContinuation(IntrinsicsKt.intercepted(continuation));
                Object obj = objArr[0];
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
                Storage.clear((String) obj, new ContinuationFromCallback(safeContinuation));
                Object orThrow = safeContinuation.getOrThrow();
                if (orThrow == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                    DebugProbesKt.probeCoroutineSuspended(continuation);
                }
                return orThrow;
            }
        };
    }

    public static final ExposedFunction deleteStorage() {
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt.deleteStorage.1
            @Override // p005kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, Continuation<? super Object> continuation) {
                return invoke2(objArr, (Continuation<Object>) continuation);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(Object[] objArr, Continuation<Object> continuation) throws Throwable {
                SafeContinuation safeContinuation = new SafeContinuation(IntrinsicsKt.intercepted(continuation));
                Object obj = objArr[0];
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
                Object obj2 = objArr[1];
                Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.String");
                Storage.delete((String) obj, (String) obj2, new ContinuationFromCallback(safeContinuation));
                Object orThrow = safeContinuation.getOrThrow();
                if (orThrow == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                    DebugProbesKt.probeCoroutineSuspended(continuation);
                }
                return orThrow;
            }
        };
    }

    public static final ExposedFunction download(CacheFile cacheFile, AdObject adObject, SessionRepository sessionRepository) {
        Intrinsics.checkNotNullParameter(cacheFile, "cacheFile");
        Intrinsics.checkNotNullParameter(adObject, "adObject");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        return new C40361(sessionRepository, cacheFile, adObject);
    }

    public static final ExposedFunction downloadWithProgress(final CacheFile cacheFile, final AdObject adObject) {
        Intrinsics.checkNotNullParameter(cacheFile, "cacheFile");
        Intrinsics.checkNotNullParameter(adObject, "adObject");
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt.downloadWithProgress.1
            @Override // p005kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, Continuation<? super Object> continuation) {
                return invoke2(objArr, (Continuation<Object>) continuation);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(Object[] objArr, Continuation<Object> continuation) throws JSONException {
                Object obj = objArr[0];
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type org.json.JSONObject");
                JSONObject jSONObject = (JSONObject) obj;
                String string = jSONObject.getString("url");
                JSONArray jSONArray = (JSONArray) ArraysKt.getOrNull(objArr, 2);
                int iOptInt = jSONObject.optInt(HandleInvocationsFromAdViewer.KEY_DOWNLOAD_PRIORITY, 0);
                Object orNull = ArraysKt.getOrNull(objArr, 1);
                Number number = orNull instanceof Number ? (Number) orNull : null;
                if (number == null) {
                    throw new IllegalStateException("intervalMs is required".toString());
                }
                int iIntValue = number.intValue();
                String string2 = UUID.randomUUID().toString();
                Intrinsics.checkNotNullExpressionValue(string2, "toString(...)");
                return TuplesKt.to(MapsKt.mapOf(TuplesKt.to("url", string), TuplesKt.to("downloadId", string2)), FlowKt.channelFlow(new CommonAdViewerExposedFunctionsKt$downloadWithProgress$1$progressFlow$1(cacheFile, string, adObject, jSONArray, iOptInt, iIntValue, string2, null)));
            }
        };
    }

    /* JADX INFO: renamed from: getAdContext-yLuu4LI, reason: not valid java name */
    public static final ExposedFunction m2793getAdContextyLuu4LI(final AndroidGetAdPlayerContext getAndroidAdPlayerContext, final String adData, final String impressionConfig, final String adDataRefreshToken, final IsOMActivated isOMActivated, final AdObject adObject) {
        Intrinsics.checkNotNullParameter(getAndroidAdPlayerContext, "getAndroidAdPlayerContext");
        Intrinsics.checkNotNullParameter(adData, "adData");
        Intrinsics.checkNotNullParameter(impressionConfig, "impressionConfig");
        Intrinsics.checkNotNullParameter(adDataRefreshToken, "adDataRefreshToken");
        Intrinsics.checkNotNullParameter(isOMActivated, "isOMActivated");
        Intrinsics.checkNotNullParameter(adObject, "adObject");
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$getAdContext$1
            @Override // p005kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, Continuation<? super Object> continuation) {
                return invoke2(objArr, (Continuation<Object>) continuation);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(Object[] objArr, Continuation<Object> continuation) throws JSONException {
                AdRefreshState adRefreshState;
                String str = adData;
                String str2 = impressionConfig;
                String str3 = adDataRefreshToken;
                AndroidGetAdPlayerContext androidGetAdPlayerContext = getAndroidAdPlayerContext;
                AdObject adObject2 = adObject;
                IsOMActivated isOMActivated2 = isOMActivated;
                Map mapCreateMapBuilder = MapsKt.createMapBuilder();
                mapCreateMapBuilder.put("adData", str);
                mapCreateMapBuilder.put(HandleInvocationsFromAdViewer.KEY_IMPRESSION_CONFIG, str2);
                mapCreateMapBuilder.put(HandleInvocationsFromAdViewer.KEY_AD_DATA_REFRESH_TOKEN, str3);
                mapCreateMapBuilder.put(HandleInvocationsFromAdViewer.KEY_NATIVE_CONTEXT, androidGetAdPlayerContext.invoke());
                mapCreateMapBuilder.put(HandleInvocationsFromAdViewer.KEY_TRACKING_TOKEN, ProtobufExtensionsKt.toBase64$default(adObject2.getTrackingToken(), false, 1, null));
                JSONObject data = adObject2.getLoadOptions().getData();
                if (data != null && data.length() != 0) {
                    Iterator<String> itKeys = data.keys();
                    Intrinsics.checkNotNullExpressionValue(itKeys, "keys(...)");
                    Sequence<String> sequenceAsSequence = SequencesKt.asSequence(itKeys);
                    JSONObject jSONObject = new JSONObject();
                    for (String str4 : sequenceAsSequence) {
                        if (!Intrinsics.areEqual(str4, "adMarkup") && !Intrinsics.areEqual(str4, "objectId")) {
                            jSONObject = jSONObject.put(str4, data.get(str4));
                            Intrinsics.checkNotNullExpressionValue(jSONObject, "put(...)");
                        }
                    }
                    mapCreateMapBuilder.put(HandleInvocationsFromAdViewer.KEY_LOAD_OPTIONS, jSONObject);
                }
                if (isOMActivated2.invoke()) {
                    mapCreateMapBuilder.put(HandleInvocationsFromAdViewer.KEY_OMID, MapsKt.mapOf(TuplesKt.to(HandleInvocationsFromAdViewer.KEY_OMJS_SESSION, UnityAdsConstants.OpenMeasurement.OM_JS_URL_SESSION), TuplesKt.to(HandleInvocationsFromAdViewer.KEY_OMJS_SERVICE, UnityAdsConstants.OpenMeasurement.OM_JS_URL_SERVICE)));
                }
                mapCreateMapBuilder.put(HandleInvocationsFromAdViewer.KEY_IS_HEADER_BIDDING, Boxing.boxBoolean(adObject2.isHeaderBidding()));
                String string = ProtobufExtensionsKt.toUUID(adObject2.getOpportunityId()).toString();
                Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                mapCreateMapBuilder.put("impressionOpportunityId", string);
                AdObject.WebViewLessLoadingRequiredData webViewLessLoadingRequiredData = adObject2.getWebViewLessLoadingRequiredData();
                if (webViewLessLoadingRequiredData != null && (adRefreshState = webViewLessLoadingRequiredData.getAdRefreshState()) != null) {
                    mapCreateMapBuilder.put(HandleInvocationsFromAdViewer.KEY_AD_REFRESH_INVALIDATION_REASON, AdRefreshStateKt.getInvalidationReason(adRefreshState));
                }
                return MapsKt.build(mapCreateMapBuilder);
            }
        };
    }

    public static final ExposedFunction getAllowedPii(final DeviceInfoRepository deviceInfoRepository) {
        Intrinsics.checkNotNullParameter(deviceInfoRepository, "deviceInfoRepository");
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt.getAllowedPii.1
            @Override // p005kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, Continuation<? super Object> continuation) {
                return invoke2(objArr, (Continuation<Object>) continuation);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(Object[] objArr, Continuation<Object> continuation) {
                return Base64.encodeToString(deviceInfoRepository.getAllowedPii().getValue().toByteArray(), 2);
            }
        };
    }

    public static final ExposedFunction getBlackPixelPercentage(final WebViewScreenCapture screenCapture, final AdObject adObject) {
        Intrinsics.checkNotNullParameter(screenCapture, "screenCapture");
        Intrinsics.checkNotNullParameter(adObject, "adObject");
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt.getBlackPixelPercentage.1
            @Override // p005kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, Continuation<? super Object> continuation) {
                return invoke2(objArr, (Continuation<Object>) continuation);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(Object[] objArr, Continuation<Object> continuation) {
                Integer numIntArg = CommonAdViewerExposedFunctionsKt.intArg(objArr, 0, "threshold");
                int iIntValue = numIntArg != null ? numIntArg.intValue() : 10;
                if (iIntValue < 0 || iIntValue >= 256) {
                    throw new IllegalArgumentException(("threshold must be in 0..255, was " + iIntValue).toString());
                }
                return screenCapture.getBlackPixelPercentage(adObject, iIntValue, continuation);
            }
        };
    }

    public static final ExposedFunction getConnectionType(final DeviceInfoRepository deviceInfoRepository) {
        Intrinsics.checkNotNullParameter(deviceInfoRepository, "deviceInfoRepository");
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt.getConnectionType.1
            @Override // p005kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, Continuation<? super Object> continuation) {
                return invoke2(objArr, (Continuation<Object>) continuation);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(Object[] objArr, Continuation<Object> continuation) {
                return deviceInfoRepository.getConnectionType();
            }
        };
    }

    public static final ExposedFunction getDeviceMaxVolume(final DeviceInfoRepository deviceInfoRepository) {
        Intrinsics.checkNotNullParameter(deviceInfoRepository, "deviceInfoRepository");
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt.getDeviceMaxVolume.1
            @Override // p005kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, Continuation<? super Object> continuation) {
                return invoke2(objArr, (Continuation<Object>) continuation);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(Object[] objArr, Continuation<Object> continuation) {
                return Boxing.boxDouble(deviceInfoRepository.getMaxVolume());
            }
        };
    }

    public static final ExposedFunction getDeviceVolume(final DeviceInfoRepository deviceInfoRepository) {
        Intrinsics.checkNotNullParameter(deviceInfoRepository, "deviceInfoRepository");
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt.getDeviceVolume.1
            @Override // p005kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, Continuation<? super Object> continuation) {
                return invoke2(objArr, (Continuation<Object>) continuation);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(Object[] objArr, Continuation<Object> continuation) {
                return Boxing.boxDouble(deviceInfoRepository.getVolume());
            }
        };
    }

    public static final ExposedFunction getExtra(final SessionRepository sessionRepository, final AdObject adObject) {
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        Intrinsics.checkNotNullParameter(adObject, "adObject");
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt.getExtra.1
            @Override // p005kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, Continuation<? super Object> continuation) {
                return invoke2(objArr, (Continuation<Object>) continuation);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(Object[] objArr, Continuation<Object> continuation) {
                InitializationConfigurationInternal initializationConfiguration;
                Map<String, String> extras;
                LoadConfiguration loadConfiguration;
                Map<String, String> extras2;
                ShowConfiguration showConfiguration;
                Map<String, String> extras3;
                Object obj = objArr[0];
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
                String str = (String) obj;
                Object obj2 = objArr[1];
                Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.String");
                String str2 = (String) obj2;
                int iHashCode = str.hashCode();
                if (iHashCode == 3237136) {
                    if (!str.equals("init") || (initializationConfiguration = sessionRepository.getInitializationConfiguration()) == null || (extras = initializationConfiguration.getExtras()) == null) {
                        return null;
                    }
                    return extras.get(str2);
                }
                if (iHashCode == 3327206) {
                    if (!str.equals("load") || (loadConfiguration = adObject.getLoadConfiguration()) == null || (extras2 = loadConfiguration.getExtras()) == null) {
                        return null;
                    }
                    return extras2.get(str2);
                }
                if (iHashCode == 3529469 && str.equals("show") && (showConfiguration = adObject.getShowConfiguration()) != null && (extras3 = showConfiguration.getExtras()) != null) {
                    return extras3.get(str2);
                }
                return null;
                return null;
            }
        };
    }

    public static final ExposedFunction getKeysStorage() {
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt.getKeysStorage.1
            @Override // p005kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, Continuation<? super Object> continuation) {
                return invoke2(objArr, (Continuation<Object>) continuation);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(Object[] objArr, Continuation<Object> continuation) throws Throwable {
                SafeContinuation safeContinuation = new SafeContinuation(IntrinsicsKt.intercepted(continuation));
                Object obj = objArr[0];
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
                Object obj2 = objArr[1];
                Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.String");
                Object obj3 = objArr[2];
                Intrinsics.checkNotNull(obj3, "null cannot be cast to non-null type kotlin.Boolean");
                Storage.getKeys((String) obj, (String) obj2, (Boolean) obj3, new ContinuationFromCallback(safeContinuation));
                Object orThrow = safeContinuation.getOrThrow();
                if (orThrow == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                    DebugProbesKt.probeCoroutineSuspended(continuation);
                }
                return orThrow;
            }
        };
    }

    public static final ExposedFunction getPrivacy(SessionRepository sessionRepository) {
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        return new C40451(sessionRepository);
    }

    public static final ExposedFunction getPrivacyFsm(SessionRepository sessionRepository) {
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        return new C40461(sessionRepository);
    }

    public static final ExposedFunction getScreenHeight(final DeviceInfoRepository deviceInfoRepository) {
        Intrinsics.checkNotNullParameter(deviceInfoRepository, "deviceInfoRepository");
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt.getScreenHeight.1
            @Override // p005kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, Continuation<? super Object> continuation) {
                return invoke2(objArr, (Continuation<Object>) continuation);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(Object[] objArr, Continuation<Object> continuation) {
                return Boxing.boxInt(deviceInfoRepository.getScreenHeight());
            }
        };
    }

    public static final ExposedFunction getScreenWidth(final DeviceInfoRepository deviceInfoRepository) {
        Intrinsics.checkNotNullParameter(deviceInfoRepository, "deviceInfoRepository");
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt.getScreenWidth.1
            @Override // p005kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, Continuation<? super Object> continuation) {
                return invoke2(objArr, (Continuation<Object>) continuation);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(Object[] objArr, Continuation<Object> continuation) {
                return Boxing.boxInt(deviceInfoRepository.getScreenWidth());
            }
        };
    }

    public static final ExposedFunction getSessionToken(final SessionRepository sessionRepository) {
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt.getSessionToken.1
            @Override // p005kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, Continuation<? super Object> continuation) {
                return invoke2(objArr, (Continuation<Object>) continuation);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(Object[] objArr, Continuation<Object> continuation) {
                return ProtobufExtensionsKt.toBase64$default(sessionRepository.getSessionToken(), false, 1, null);
            }
        };
    }

    public static final ExposedFunction getStorage() {
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt.getStorage.1
            @Override // p005kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, Continuation<? super Object> continuation) {
                return invoke2(objArr, (Continuation<Object>) continuation);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(Object[] objArr, Continuation<Object> continuation) throws Throwable {
                SafeContinuation safeContinuation = new SafeContinuation(IntrinsicsKt.intercepted(continuation));
                Object obj = objArr[0];
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
                Object obj2 = objArr[1];
                Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.String");
                Storage.get((String) obj, (String) obj2, new ContinuationFromCallback(safeContinuation));
                Object orThrow = safeContinuation.getOrThrow();
                if (orThrow == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                    DebugProbesKt.probeCoroutineSuspended(continuation);
                }
                return orThrow;
            }
        };
    }

    public static final ExposedFunction hbTokenIncrementStarts(final SessionRepository sessionRepository) {
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt.hbTokenIncrementStarts.1
            @Override // p005kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, Continuation<? super Object> continuation) {
                return invoke2(objArr, (Continuation<? super Unit>) continuation);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(Object[] objArr, Continuation<? super Unit> continuation) {
                sessionRepository.incrementTokenStartsCount();
                return Unit.INSTANCE;
            }
        };
    }

    public static final ExposedFunction hbTokenIncrementWins(final SessionRepository sessionRepository, final AdObject adObject) {
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        Intrinsics.checkNotNullParameter(adObject, "adObject");
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt.hbTokenIncrementWins.1
            @Override // p005kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, Continuation<? super Object> continuation) {
                return invoke2(objArr, (Continuation<? super Unit>) continuation);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(Object[] objArr, Continuation<? super Unit> continuation) {
                if (adObject.getWebViewLessLoadingRequiredData() == null) {
                    sessionRepository.incrementTokenWinsCount();
                }
                return Unit.INSTANCE;
            }
        };
    }

    public static final ExposedFunction hbTokenReset(final SessionRepository sessionRepository) {
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt.hbTokenReset.1
            @Override // p005kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, Continuation<? super Object> continuation) {
                return invoke2(objArr, (Continuation<? super Unit>) continuation);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(Object[] objArr, Continuation<? super Unit> continuation) {
                sessionRepository.resetTokenCounters();
                return Unit.INSTANCE;
            }
        };
    }

    public static final ExposedFunction incrementBannerImpressionCount(final SessionRepository sessionRepository) {
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt.incrementBannerImpressionCount.1
            @Override // p005kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, Continuation<? super Object> continuation) {
                return invoke2(objArr, (Continuation<? super Unit>) continuation);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(Object[] objArr, Continuation<? super Unit> continuation) {
                sessionRepository.incrementBannerImpressionCount();
                return Unit.INSTANCE;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Integer intArg(Object[] objArr, int i, String str) {
        Number numberNumberArg = numberArg(objArr, i, str);
        if (numberNumberArg == null) {
            return null;
        }
        double dDoubleValue = numberNumberArg.doubleValue();
        if (dDoubleValue % 1.0d != FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE || -2.147483648E9d > dDoubleValue || dDoubleValue > 2.147483647E9d) {
            throw new IllegalArgumentException((str + " must be an integer, was " + numberNumberArg).toString());
        }
        return Integer.valueOf((int) dDoubleValue);
    }

    public static final ExposedFunction isAttributionAvailable(final AndroidAttribution androidAttribution) {
        Intrinsics.checkNotNullParameter(androidAttribution, "androidAttribution");
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt.isAttributionAvailable.1
            @Override // p005kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, Continuation<? super Object> continuation) {
                return invoke2(objArr, (Continuation<Object>) continuation);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(Object[] objArr, Continuation<Object> continuation) {
                return androidAttribution.isAvailable(continuation);
            }
        };
    }

    public static final ExposedFunction isFileCached(final GetIsFileCache getIfFileCache) {
        Intrinsics.checkNotNullParameter(getIfFileCache, "getIfFileCache");
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt.isFileCached.1
            @Override // p005kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, Continuation<? super Object> continuation) {
                return invoke2(objArr, (Continuation<Object>) continuation);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(Object[] objArr, Continuation<Object> continuation) {
                Object obj = objArr[0];
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
                return getIfFileCache.invoke((String) obj, continuation);
            }
        };
    }

    public static final ExposedFunction isOfferwallAdReady(final GetIsOfferwallAdReady getIsOfferwallAdReady) {
        Intrinsics.checkNotNullParameter(getIsOfferwallAdReady, "getIsOfferwallAdReady");
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt.isOfferwallAdReady.1
            @Override // p005kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, Continuation<? super Object> continuation) {
                return invoke2(objArr, (Continuation<Object>) continuation);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(Object[] objArr, Continuation<Object> continuation) {
                Object obj = objArr[0];
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type org.json.JSONObject");
                String strOptString = ((JSONObject) obj).optString("placementName");
                GetIsOfferwallAdReady getIsOfferwallAdReady2 = getIsOfferwallAdReady;
                Intrinsics.checkNotNull(strOptString);
                return getIsOfferwallAdReady2.invoke(strOptString, continuation);
            }
        };
    }

    public static final ExposedFunction loadOfferwallAd(LoadOfferwallAd loadOfferwallAd, AdObject adObject) {
        Intrinsics.checkNotNullParameter(loadOfferwallAd, "loadOfferwallAd");
        Intrinsics.checkNotNullParameter(adObject, "adObject");
        return new C40581(adObject, loadOfferwallAd);
    }

    public static final ExposedFunction markCampaignStateShown(final CampaignRepository campaignRepository, final AdObject adObject) {
        Intrinsics.checkNotNullParameter(campaignRepository, "campaignRepository");
        Intrinsics.checkNotNullParameter(adObject, "adObject");
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt.markCampaignStateShown.1
            @Override // p005kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, Continuation<? super Object> continuation) {
                return invoke2(objArr, (Continuation<? super Unit>) continuation);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(Object[] objArr, Continuation<? super Unit> continuation) {
                campaignRepository.setShowTimestamp(adObject.getOpportunityId());
                return Unit.INSTANCE;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Number numberArg(Object[] objArr, int i, String str) {
        Object orNull = ArraysKt.getOrNull(objArr, i);
        if (orNull == null) {
            return null;
        }
        Number number = orNull instanceof Number ? (Number) orNull : null;
        if (number != null) {
            return number;
        }
        throw new IllegalArgumentException(str + " must be a number, was " + orNull);
    }

    public static final ExposedFunction omFinishSession(OmFinishSession omFinishSession, AdObject adObject) {
        Intrinsics.checkNotNullParameter(omFinishSession, "omFinishSession");
        Intrinsics.checkNotNullParameter(adObject, "adObject");
        return new C40601(omFinishSession, adObject);
    }

    public static final ExposedFunction omGetData(GetOmData getOmData) {
        Intrinsics.checkNotNullParameter(getOmData, "getOmData");
        return new C40611(getOmData);
    }

    public static final ExposedFunction omImpression(OmImpressionOccurred omImpressionOccurred, AdObject adObject) {
        Intrinsics.checkNotNullParameter(omImpressionOccurred, "omImpressionOccurred");
        Intrinsics.checkNotNullParameter(adObject, "adObject");
        return new C40621(omImpressionOccurred, adObject);
    }

    public static final ExposedFunction omStartSession(AndroidOmInteraction omStartSession, AdObject adObject) {
        Intrinsics.checkNotNullParameter(omStartSession, "omStartSession");
        Intrinsics.checkNotNullParameter(adObject, "adObject");
        return new C40631(omStartSession, adObject);
    }

    public static final ExposedFunction openUrl(final AdObject adObject, final HandleOpenUrl handleOpenUrl) {
        Intrinsics.checkNotNullParameter(adObject, "adObject");
        Intrinsics.checkNotNullParameter(handleOpenUrl, "handleOpenUrl");
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt.openUrl.1
            @Override // p005kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, Continuation<? super Object> continuation) {
                return invoke2(objArr, (Continuation<Object>) continuation);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(Object[] objArr, Continuation<Object> continuation) {
                Object obj = objArr[0];
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
                String str = (String) obj;
                Object orNull = ArraysKt.getOrNull(objArr, 1);
                JSONObject jSONObject = orNull instanceof JSONObject ? (JSONObject) orNull : null;
                String strOptString = jSONObject != null ? jSONObject.optString("packageName") : null;
                String strOptString2 = jSONObject != null ? jSONObject.optString("action", "android.intent.action.VIEW") : null;
                JSONObject jSONObjectOptJSONObject = jSONObject != null ? jSONObject.optJSONObject(HandleInvocationsFromAdViewer.KEY_EXTRAS) : null;
                return handleOpenUrl.invoke(adObject, str, strOptString, strOptString2, jSONObjectOptJSONObject != null ? JSONObjectExtensionsKt.toBuiltInMap(jSONObjectOptJSONObject) : null, jSONObject != null ? jSONObject.optBoolean(HandleInvocationsFromAdViewer.KEY_USE_ACTIVITY_FOR_RESULT) : false, continuation);
            }
        };
    }

    public static final ExposedFunction readStorage() {
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt.readStorage.1
            @Override // p005kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, Continuation<? super Object> continuation) {
                return invoke2(objArr, (Continuation<Object>) continuation);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(Object[] objArr, Continuation<Object> continuation) throws Throwable {
                SafeContinuation safeContinuation = new SafeContinuation(IntrinsicsKt.intercepted(continuation));
                Object obj = objArr[0];
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
                Storage.read((String) obj, new ContinuationFromCallback(safeContinuation));
                Object orThrow = safeContinuation.getOrThrow();
                if (orThrow == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                    DebugProbesKt.probeCoroutineSuspended(continuation);
                }
                return orThrow;
            }
        };
    }

    public static final ExposedFunction refreshAdData(Refresh refresh, AdObject adObject) {
        Intrinsics.checkNotNullParameter(refresh, "refresh");
        Intrinsics.checkNotNullParameter(adObject, "adObject");
        return new C40661(refresh, adObject);
    }

    public static final ExposedFunction request(RequestType type, ExecuteAdViewerRequest executeAdViewerRequest) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(executeAdViewerRequest, "executeAdViewerRequest");
        return new C40671(executeAdViewerRequest, type);
    }

    public static final ExposedFunction sendAdViewerRequest(SendAdViewerRequest sendAdViewerRequest, AdObject adObject) {
        Intrinsics.checkNotNullParameter(sendAdViewerRequest, "sendAdViewerRequest");
        Intrinsics.checkNotNullParameter(adObject, "adObject");
        return new C40681(sendAdViewerRequest, adObject);
    }

    public static final ExposedFunction sendDiagnosticEvent(final SendDiagnosticEvent sendDiagnosticEvent, final AdObject adObject) {
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        Intrinsics.checkNotNullParameter(adObject, "adObject");
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt.sendDiagnosticEvent.1
            @Override // p005kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, Continuation<? super Object> continuation) {
                return invoke2(objArr, (Continuation<? super Unit>) continuation);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(Object[] objArr, Continuation<? super Unit> continuation) {
                String string;
                Object obj = objArr[0];
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
                String str = (String) obj;
                Object obj2 = objArr[1];
                Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type org.json.JSONObject");
                JSONObject jSONObject = (JSONObject) obj2;
                Map mapCreateMapBuilder = MapsKt.createMapBuilder();
                Iterator<String> itKeys = jSONObject.keys();
                Intrinsics.checkNotNullExpressionValue(itKeys, "keys(...)");
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    mapCreateMapBuilder.put(next, jSONObject.getString(next));
                }
                Map mapBuild = MapsKt.build(mapCreateMapBuilder);
                Object orNull = ArraysKt.getOrNull(objArr, 2);
                SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent, str, (orNull == null || (string = orNull.toString()) == null) ? null : Boxing.boxDouble(Double.parseDouble(string)), mapBuild, (Map) null, adObject, (Integer) null, (ByteString) null, (MediationInfo) null, 232, (Object) null);
                return Unit.INSTANCE;
            }
        };
    }

    public static final ExposedFunction sendOperativeEvent(GetOperativeEventApi getOperativeEventApi, AdObject adObject) {
        Intrinsics.checkNotNullParameter(getOperativeEventApi, "getOperativeEventApi");
        Intrinsics.checkNotNullParameter(adObject, "adObject");
        return new C40701(getOperativeEventApi, adObject);
    }

    public static final ExposedFunction sendPrivacyUpdateRequest(SendPrivacyUpdateRequest sendPrivacyUpdateRequest) {
        Intrinsics.checkNotNullParameter(sendPrivacyUpdateRequest, "sendPrivacyUpdateRequest");
        return new C40711(sendPrivacyUpdateRequest);
    }

    public static final ExposedFunction setAllowedPii(final DeviceInfoRepository deviceInfoRepository) {
        Intrinsics.checkNotNullParameter(deviceInfoRepository, "deviceInfoRepository");
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt.setAllowedPii.1
            @Override // p005kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, Continuation<? super Object> continuation) {
                return invoke2(objArr, (Continuation<? super Unit>) continuation);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(Object[] objArr, Continuation<? super Unit> continuation) {
                AllowedPiiOuterClass.AllowedPii value;
                final AllowedPiiKt.Dsl dsl_create;
                Object obj = objArr[0];
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type org.json.JSONObject");
                JSONObject jSONObject = (JSONObject) obj;
                MutableStateFlow<AllowedPiiOuterClass.AllowedPii> allowedPii = deviceInfoRepository.getAllowedPii();
                do {
                    value = allowedPii.getValue();
                    AllowedPiiKt.Dsl.Companion companion = AllowedPiiKt.Dsl.INSTANCE;
                    AllowedPiiOuterClass.AllowedPii.Builder builder = value.toBuilder();
                    Intrinsics.checkNotNullExpressionValue(builder, "toBuilder(...)");
                    dsl_create = companion._create(builder);
                    Object objOpt = jSONObject.opt("idfa");
                    Boolean bool = objOpt instanceof Boolean ? (Boolean) objOpt : null;
                    if (bool != null) {
                        new MutablePropertyReference0Impl(dsl_create) { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$setAllowedPii$1$1$1$2
                            @Override // p005kotlin.jvm.internal.MutablePropertyReference0Impl, p005kotlin.reflect.KProperty0
                            public Object get() {
                                return Boolean.valueOf(((AllowedPiiKt.Dsl) this.receiver).getIdfa());
                            }

                            @Override // p005kotlin.jvm.internal.MutablePropertyReference0Impl, p005kotlin.reflect.KMutableProperty0
                            public void set(Object obj2) {
                                ((AllowedPiiKt.Dsl) this.receiver).setIdfa(((Boolean) obj2).booleanValue());
                            }
                        }.set(Boxing.boxBoolean(bool.booleanValue()));
                    }
                    Object objOpt2 = jSONObject.opt("idfv");
                    Boolean bool2 = objOpt2 instanceof Boolean ? (Boolean) objOpt2 : null;
                    if (bool2 != null) {
                        new MutablePropertyReference0Impl(dsl_create) { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$setAllowedPii$1$1$1$4
                            @Override // p005kotlin.jvm.internal.MutablePropertyReference0Impl, p005kotlin.reflect.KProperty0
                            public Object get() {
                                return Boolean.valueOf(((AllowedPiiKt.Dsl) this.receiver).getIdfv());
                            }

                            @Override // p005kotlin.jvm.internal.MutablePropertyReference0Impl, p005kotlin.reflect.KMutableProperty0
                            public void set(Object obj2) {
                                ((AllowedPiiKt.Dsl) this.receiver).setIdfv(((Boolean) obj2).booleanValue());
                            }
                        }.set(Boxing.boxBoolean(bool2.booleanValue()));
                    }
                    Object objOpt3 = jSONObject.opt("appset_id");
                    Boolean bool3 = objOpt3 instanceof Boolean ? (Boolean) objOpt3 : null;
                    if (bool3 != null) {
                        new MutablePropertyReference0Impl(dsl_create) { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$setAllowedPii$1$1$1$6
                            @Override // p005kotlin.jvm.internal.MutablePropertyReference0Impl, p005kotlin.reflect.KProperty0
                            public Object get() {
                                return Boolean.valueOf(((AllowedPiiKt.Dsl) this.receiver).getAppsetId());
                            }

                            @Override // p005kotlin.jvm.internal.MutablePropertyReference0Impl, p005kotlin.reflect.KMutableProperty0
                            public void set(Object obj2) {
                                ((AllowedPiiKt.Dsl) this.receiver).setAppsetId(((Boolean) obj2).booleanValue());
                            }
                        }.set(Boxing.boxBoolean(bool3.booleanValue()));
                    }
                } while (!allowedPii.compareAndSet(value, dsl_create._build()));
                return Unit.INSTANCE;
            }
        };
    }

    public static final ExposedFunction setOpportunityTTL(final AdObject adObject) {
        Intrinsics.checkNotNullParameter(adObject, "adObject");
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt.setOpportunityTTL.1
            @Override // p005kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, Continuation<? super Object> continuation) {
                return invoke2(objArr, (Continuation<? super Unit>) continuation);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(Object[] objArr, Continuation<? super Unit> continuation) {
                Object obj = objArr[0];
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Int");
                int iIntValue = ((Integer) obj).intValue();
                MutableStateFlow<Duration> ttl = adObject.getTtl();
                Duration.Companion companion = Duration.INSTANCE;
                ttl.setValue(Duration.m4365boximpl(DurationKt.toDuration(iIntValue, DurationUnit.SECONDS)));
                return Unit.INSTANCE;
            }
        };
    }

    public static final ExposedFunction setOrientation(AdObject adObject) {
        Intrinsics.checkNotNullParameter(adObject, "adObject");
        return new C40741(adObject);
    }

    public static final ExposedFunction setPrivacy(SessionRepository sessionRepository) {
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        return new C40751(sessionRepository);
    }

    public static final ExposedFunction setPrivacyFsm(SessionRepository sessionRepository) {
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        return new C40761(sessionRepository);
    }

    public static final ExposedFunction setStorage() {
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt.setStorage.1
            @Override // p005kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, Continuation<? super Object> continuation) {
                return invoke2(objArr, (Continuation<Object>) continuation);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(Object[] objArr, Continuation<Object> continuation) throws Throwable {
                SafeContinuation safeContinuation = new SafeContinuation(IntrinsicsKt.intercepted(continuation));
                Object obj = objArr[0];
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
                Object obj2 = objArr[1];
                Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.String");
                Storage.set((String) obj, (String) obj2, objArr[2], new ContinuationFromCallback(safeContinuation));
                Object orThrow = safeContinuation.getOrThrow();
                if (orThrow == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                    DebugProbesKt.probeCoroutineSuspended(continuation);
                }
                return orThrow;
            }
        };
    }

    public static final ExposedFunction showOfferwallAd() {
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt.showOfferwallAd.1
            @Override // p005kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, Continuation<? super Object> continuation) {
                return invoke2(objArr, (Continuation<? super Unit>) continuation);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(Object[] objArr, Continuation<? super Unit> continuation) {
                return Unit.INSTANCE;
            }
        };
    }

    public static final ExposedFunction updateCampaignState(final CampaignRepository campaignRepository, final AdObject adObject) {
        Intrinsics.checkNotNullParameter(campaignRepository, "campaignRepository");
        Intrinsics.checkNotNullParameter(adObject, "adObject");
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt.updateCampaignState.1
            @Override // p005kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, Continuation<? super Object> continuation) {
                return invoke2(objArr, (Continuation<? super Unit>) continuation);
            }

            /* JADX WARN: Code duplicated, block: B:24:0x006c  */
            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(Object[] objArr, Continuation<? super Unit> continuation) {
                CampaignStateOuterClass.Campaign campaign_build;
                Object objFirstOrNull = ArraysKt.firstOrNull(objArr);
                JSONObject jSONObject = objFirstOrNull instanceof JSONObject ? (JSONObject) objFirstOrNull : null;
                if (jSONObject == null) {
                    throw new IllegalArgumentException("Update campaign state requires a JSONObject".toString());
                }
                String strOptString = jSONObject.optString("data");
                String str = strOptString;
                if (str == null || StringsKt.isBlank(str)) {
                    throw new IllegalArgumentException("Update campaign state requires a data string".toString());
                }
                int iOptInt = jSONObject.optInt("dataVersion");
                if (iOptInt == 0) {
                    throw new IllegalArgumentException("Update campaign state requires a dataVersion integer".toString());
                }
                ByteString opportunityId = adObject.getOpportunityId();
                String placementId = adObject.getPlacementId();
                ByteString byteStringFromBase64$default = ProtobufExtensionsKt.fromBase64$default(strOptString, false, 1, null);
                if (byteStringFromBase64$default.isEmpty()) {
                    throw new IllegalArgumentException("Update campaign state requires a non-empty data byte string".toString());
                }
                CampaignStateOuterClass.Campaign campaign = campaignRepository.getCampaign(opportunityId);
                if (campaign != null) {
                    CampaignKt.Dsl.Companion companion = CampaignKt.Dsl.INSTANCE;
                    CampaignStateOuterClass.Campaign.Builder builder = campaign.toBuilder();
                    Intrinsics.checkNotNullExpressionValue(builder, "toBuilder(...)");
                    CampaignKt.Dsl dsl_create = companion._create(builder);
                    dsl_create.setData(byteStringFromBase64$default);
                    dsl_create.setDataVersion(iOptInt);
                    campaign_build = dsl_create._build();
                    if (campaign_build == null) {
                        CampaignKt.Dsl.Companion companion2 = CampaignKt.Dsl.INSTANCE;
                        CampaignStateOuterClass.Campaign.Builder builderNewBuilder = CampaignStateOuterClass.Campaign.newBuilder();
                        Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
                        CampaignKt.Dsl dsl_create2 = companion2._create(builderNewBuilder);
                        dsl_create2.setData(byteStringFromBase64$default);
                        dsl_create2.setDataVersion(iOptInt);
                        dsl_create2.setPlacementId(placementId);
                        dsl_create2.setImpressionOpportunityId(opportunityId);
                        campaign_build = dsl_create2._build();
                    }
                } else {
                    CampaignKt.Dsl.Companion companion3 = CampaignKt.Dsl.INSTANCE;
                    CampaignStateOuterClass.Campaign.Builder builderNewBuilder2 = CampaignStateOuterClass.Campaign.newBuilder();
                    Intrinsics.checkNotNullExpressionValue(builderNewBuilder2, "newBuilder(...)");
                    CampaignKt.Dsl dsl_create3 = companion3._create(builderNewBuilder2);
                    dsl_create3.setData(byteStringFromBase64$default);
                    dsl_create3.setDataVersion(iOptInt);
                    dsl_create3.setPlacementId(placementId);
                    dsl_create3.setImpressionOpportunityId(opportunityId);
                    campaign_build = dsl_create3._build();
                }
                campaignRepository.setCampaign(opportunityId, campaign_build);
                return Unit.INSTANCE;
            }
        };
    }

    public static final ExposedFunction updateTrackingToken(final AdObject adObject) {
        Intrinsics.checkNotNullParameter(adObject, "adObject");
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt.updateTrackingToken.1
            @Override // p005kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, Continuation<? super Object> continuation) {
                return invoke2(objArr, (Continuation<? super Unit>) continuation);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(Object[] objArr, Continuation<? super Unit> continuation) {
                Object obj = objArr[0];
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type org.json.JSONObject");
                String strOptString = ((JSONObject) obj).optString(HandleInvocationsFromAdViewer.KEY_TRACKING_TOKEN);
                String str = strOptString;
                if (str != null && str.length() != 0) {
                    adObject.setTrackingToken(ProtobufExtensionsKt.fromBase64$default(strOptString, false, 1, null));
                }
                return Unit.INSTANCE;
            }
        };
    }

    public static final ExposedFunction writeStorage() {
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt.writeStorage.1
            @Override // p005kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, Continuation<? super Object> continuation) {
                return invoke2(objArr, (Continuation<Object>) continuation);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(Object[] objArr, Continuation<Object> continuation) throws Throwable {
                SafeContinuation safeContinuation = new SafeContinuation(IntrinsicsKt.intercepted(continuation));
                Object obj = objArr[0];
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
                Storage.write((String) obj, new ContinuationFromCallback(safeContinuation));
                Object orThrow = safeContinuation.getOrThrow();
                if (orThrow == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                    DebugProbesKt.probeCoroutineSuspended(continuation);
                }
                return orThrow;
            }
        };
    }
}
