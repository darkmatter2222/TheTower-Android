package com.unity3d.ads.core.domain;

import android.content.Context;
import com.google.protobuf.ByteString;
import com.google.protobuf.kotlin.ByteStringsKt;
import com.ironsource.C3510b4;
import com.unity3d.ads.MediationInfo;
import com.unity3d.ads.UnityAdsErrorKt;
import com.unity3d.ads.UnityAdsLoadOptions;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.data.model.LoadAdType;
import com.unity3d.ads.core.data.model.LoadConfigurationInternal;
import com.unity3d.ads.core.data.model.LoadResult;
import com.unity3d.ads.core.data.model.OperationType;
import com.unity3d.ads.core.data.model.exception.GatewayException;
import com.unity3d.ads.core.data.model.exception.NetworkTimeoutException;
import com.unity3d.ads.core.data.model.exception.UnityAdsNetworkException;
import com.unity3d.ads.core.data.repository.AdRepository;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.extensions.ErrorExtensionsKt;
import com.unity3d.ads.core.extensions.TimeExtensionsKt;
import com.unity3d.ads.gatewayclient.GatewayClient;
import com.unity3d.ads.gatewayclient.RequestPolicy;
import com.unity3d.services.UnityAdsConstants;
import gatewayprotocol.v1.AdFormatOuterClass;
import gatewayprotocol.v1.AdPlayerConfigResponseOuterClass;
import gatewayprotocol.v1.AdRequestOuterClass;
import gatewayprotocol.v1.AdResponseKt;
import gatewayprotocol.v1.AdResponseOuterClass;
import gatewayprotocol.v1.CampaignMetadataOuterClass;
import gatewayprotocol.v1.DiagnosticEventRequestOuterClass;
import gatewayprotocol.v1.ErrorOuterClass;
import gatewayprotocol.v1.HeaderBiddingAdMarkupOuterClass;
import gatewayprotocol.v1.UniversalRequestOuterClass;
import gatewayprotocol.v1.UniversalResponseOuterClass;
import gatewayprotocol.v1.WebviewConfiguration;
import java.util.Map;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.Metadata;
import p005kotlin.NoWhenBranchMatchedException;
import p005kotlin.Result;
import p005kotlin.ResultKt;
import p005kotlin.Unit;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.coroutines.jvm.internal.DebugMetadata;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationUnit;
import p005kotlin.time.TimeSource;
import p005kotlin.time.TimedValue;

/* JADX INFO: compiled from: AndroidLoad.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u009e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001BW\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u0012\u0006\u0010\u0014\u001a\u00020\u0015¢\u0006\u0004\b\u0016\u0010\u0017J@\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\b\u0010\"\u001a\u0004\u0018\u00010#2\u0006\u0010$\u001a\u00020%H\u0096B¢\u0006\u0002\u0010&J\u0010\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020*H\u0002J\u0010\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020(H\u0002J\u0010\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020,H\u0002J\u0010\u00101\u001a\u00020/2\u0006\u00100\u001a\u00020,H\u0002J0\u00102\u001a\u0002032\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u00104\u001a\u00020,2\u0006\u00105\u001a\u0002062\u0006\u0010$\u001a\u00020%H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000¨\u00067"}, d2 = {"Lcom/unity3d/ads/core/domain/AndroidLoad;", "Lcom/unity3d/ads/core/domain/Load;", "defaultDispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "getAdRequest", "Lcom/unity3d/ads/core/domain/GetAdRequest;", "getAdPlayerConfigRequest", "Lcom/unity3d/ads/core/domain/GetAdPlayerConfigRequest;", "getRequestPolicy", "Lcom/unity3d/ads/core/domain/GetRequestPolicy;", "handleGatewayAdResponse", "Lcom/unity3d/ads/core/domain/HandleGatewayAdResponse;", "sessionRepository", "Lcom/unity3d/ads/core/data/repository/SessionRepository;", "gatewayClient", "Lcom/unity3d/ads/gatewayclient/GatewayClient;", "adRepository", "Lcom/unity3d/ads/core/data/repository/AdRepository;", "sendDiagnosticEvent", "Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;", "validateExtrasSize", "Lcom/unity3d/ads/core/domain/ValidateExtrasSize;", "<init>", "(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/unity3d/ads/core/domain/GetAdRequest;Lcom/unity3d/ads/core/domain/GetAdPlayerConfigRequest;Lcom/unity3d/ads/core/domain/GetRequestPolicy;Lcom/unity3d/ads/core/domain/HandleGatewayAdResponse;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/gatewayclient/GatewayClient;Lcom/unity3d/ads/core/data/repository/AdRepository;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/domain/ValidateExtrasSize;)V", "invoke", "Lcom/unity3d/ads/core/data/model/LoadResult;", "context", "Landroid/content/Context;", "placement", "", "opportunityId", "Lcom/google/protobuf/ByteString;", "headerBiddingAdMarkup", "Lgatewayprotocol/v1/HeaderBiddingAdMarkupOuterClass$HeaderBiddingAdMarkup;", "bannerSize", "Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;", HandleInvocationsFromAdViewer.KEY_LOAD_OPTIONS, "Lcom/unity3d/ads/UnityAdsLoadOptions;", "(Landroid/content/Context;Ljava/lang/String;Lcom/google/protobuf/ByteString;Lgatewayprotocol/v1/HeaderBiddingAdMarkupOuterClass$HeaderBiddingAdMarkup;Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;Lcom/unity3d/ads/UnityAdsLoadOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "handleGatewayException", "Lcom/unity3d/ads/core/data/model/LoadResult$Failure;", "e", "Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;", "isCachePhaseFailure", "", "failure", "incrementLoadRequestCount", "", C3510b4.w, "incrementLoadRequestAdmCount", "getTmpAdObject", "Lcom/unity3d/ads/core/data/model/AdObject;", HandleInvocationsFromAdViewer.KEY_IS_HEADER_BIDDING, "adType", "Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidLoad implements Load {
    private final AdRepository adRepository;
    private final CoroutineDispatcher defaultDispatcher;
    private final GatewayClient gatewayClient;
    private final GetAdPlayerConfigRequest getAdPlayerConfigRequest;
    private final GetAdRequest getAdRequest;
    private final GetRequestPolicy getRequestPolicy;
    private final HandleGatewayAdResponse handleGatewayAdResponse;
    private final SendDiagnosticEvent sendDiagnosticEvent;
    private final SessionRepository sessionRepository;
    private final ValidateExtrasSize validateExtrasSize;

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidLoad$invoke$2, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidLoad.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/data/model/LoadResult;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidLoad$invoke$2", f = "AndroidLoad.kt", i = {0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4}, l = {101, 105, 123, 127, 170}, m = "invokeSuspend", n = {"$this$invokeSuspend_u24lambda_u249", "adType", "tmpAdObject", C3510b4.w, "isRewardedOffers", C3510b4.i.y0, HandleInvocationsFromAdViewer.KEY_IS_HEADER_BIDDING, "adType", "tmpAdObject", C3510b4.w, "isRewardedOffers", C3510b4.i.y0, HandleInvocationsFromAdViewer.KEY_IS_HEADER_BIDDING, "mark$iv$iv", "$this$invokeSuspend_u24lambda_u249", "adType", "tmpAdObject", C3510b4.w, "isRewardedOffers", C3510b4.i.y0, HandleInvocationsFromAdViewer.KEY_IS_HEADER_BIDDING, "adType", "tmpAdObject", C3510b4.w, "isRewardedOffers", C3510b4.i.y0, HandleInvocationsFromAdViewer.KEY_IS_HEADER_BIDDING, "mark$iv$iv", C3510b4.w, "isRewardedOffers", C3510b4.i.y0}, s = {"L$5", "L$6", "L$7", "I$0", "I$1", "J$0", "I$2", "L$5", "L$6", "I$0", "I$1", "J$0", "I$2", "J$1", "L$6", "L$7", "L$8", "I$0", "I$1", "J$0", "I$2", "L$6", "L$7", "I$0", "I$1", "J$0", "I$2", "J$1", "I$0", "I$1", "J$0"})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super LoadResult>, Object> {
        final /* synthetic */ AdRequestOuterClass.BannerSize $bannerSize;
        final /* synthetic */ Context $context;
        final /* synthetic */ HeaderBiddingAdMarkupOuterClass.HeaderBiddingAdMarkup $headerBiddingAdMarkup;
        final /* synthetic */ UnityAdsLoadOptions $loadOptions;
        final /* synthetic */ ByteString $opportunityId;
        final /* synthetic */ String $placement;
        int I$0;
        int I$1;
        int I$2;
        long J$0;
        long J$1;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        Object L$6;
        Object L$7;
        Object L$8;
        int label;
        final /* synthetic */ AndroidLoad this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(AdRequestOuterClass.BannerSize bannerSize, UnityAdsLoadOptions unityAdsLoadOptions, AndroidLoad androidLoad, HeaderBiddingAdMarkupOuterClass.HeaderBiddingAdMarkup headerBiddingAdMarkup, ByteString byteString, String str, Context context, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$bannerSize = bannerSize;
            this.$loadOptions = unityAdsLoadOptions;
            this.this$0 = androidLoad;
            this.$headerBiddingAdMarkup = headerBiddingAdMarkup;
            this.$opportunityId = byteString;
            this.$placement = str;
            this.$context = context;
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$bannerSize, this.$loadOptions, this.this$0, this.$headerBiddingAdMarkup, this.$opportunityId, this.$placement, this.$context, continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // p005kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super LoadResult> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code duplicated, block: B:109:0x03af  */
        /* JADX WARN: Code duplicated, block: B:110:0x03b2  */
        /* JADX WARN: Code duplicated, block: B:113:0x03c4 A[Catch: UnityAdsNetworkException -> 0x0402, TryCatch #0 {UnityAdsNetworkException -> 0x0402, blocks: (B:107:0x0389, B:111:0x03b4, B:113:0x03c4, B:115:0x03cd), top: B:271:0x0389 }] */
        /* JADX WARN: Code duplicated, block: B:114:0x03cb  */
        /* JADX WARN: Code duplicated, block: B:160:0x04ea  */
        /* JADX WARN: Code duplicated, block: B:181:0x0571  */
        /* JADX WARN: Code duplicated, block: B:182:0x0574  */
        /* JADX WARN: Code duplicated, block: B:185:0x0586 A[Catch: UnityAdsNetworkException -> 0x0736, TryCatch #6 {UnityAdsNetworkException -> 0x0736, blocks: (B:179:0x054b, B:183:0x0576, B:185:0x0586, B:187:0x058f, B:190:0x05b5, B:192:0x05ce, B:195:0x05d6, B:196:0x0603, B:198:0x0678, B:199:0x0682, B:201:0x068f, B:202:0x06a0), top: B:282:0x054b }] */
        /* JADX WARN: Code duplicated, block: B:186:0x058d  */
        /* JADX WARN: Code duplicated, block: B:190:0x05b5 A[Catch: UnityAdsNetworkException -> 0x0736, TRY_ENTER, TryCatch #6 {UnityAdsNetworkException -> 0x0736, blocks: (B:179:0x054b, B:183:0x0576, B:185:0x0586, B:187:0x058f, B:190:0x05b5, B:192:0x05ce, B:195:0x05d6, B:196:0x0603, B:198:0x0678, B:199:0x0682, B:201:0x068f, B:202:0x06a0), top: B:282:0x054b }] */
        /* JADX WARN: Code duplicated, block: B:192:0x05ce A[Catch: UnityAdsNetworkException -> 0x0736, TryCatch #6 {UnityAdsNetworkException -> 0x0736, blocks: (B:179:0x054b, B:183:0x0576, B:185:0x0586, B:187:0x058f, B:190:0x05b5, B:192:0x05ce, B:195:0x05d6, B:196:0x0603, B:198:0x0678, B:199:0x0682, B:201:0x068f, B:202:0x06a0), top: B:282:0x054b }] */
        /* JADX WARN: Code duplicated, block: B:194:0x05d4  */
        /* JADX WARN: Code duplicated, block: B:196:0x0603 A[Catch: UnityAdsNetworkException -> 0x0736, TryCatch #6 {UnityAdsNetworkException -> 0x0736, blocks: (B:179:0x054b, B:183:0x0576, B:185:0x0586, B:187:0x058f, B:190:0x05b5, B:192:0x05ce, B:195:0x05d6, B:196:0x0603, B:198:0x0678, B:199:0x0682, B:201:0x068f, B:202:0x06a0), top: B:282:0x054b }] */
        /* JADX WARN: Code duplicated, block: B:198:0x0678 A[Catch: UnityAdsNetworkException -> 0x0736, TryCatch #6 {UnityAdsNetworkException -> 0x0736, blocks: (B:179:0x054b, B:183:0x0576, B:185:0x0586, B:187:0x058f, B:190:0x05b5, B:192:0x05ce, B:195:0x05d6, B:196:0x0603, B:198:0x0678, B:199:0x0682, B:201:0x068f, B:202:0x06a0), top: B:282:0x054b }] */
        /* JADX WARN: Code duplicated, block: B:201:0x068f A[Catch: UnityAdsNetworkException -> 0x0736, TryCatch #6 {UnityAdsNetworkException -> 0x0736, blocks: (B:179:0x054b, B:183:0x0576, B:185:0x0586, B:187:0x058f, B:190:0x05b5, B:192:0x05ce, B:195:0x05d6, B:196:0x0603, B:198:0x0678, B:199:0x0682, B:201:0x068f, B:202:0x06a0), top: B:282:0x054b }] */
        /* JADX WARN: Code duplicated, block: B:206:0x06b8  */
        /* JADX WARN: Code duplicated, block: B:207:0x06bb  */
        /* JADX WARN: Code duplicated, block: B:214:0x06e4  */
        /* JADX WARN: Code duplicated, block: B:217:0x06ed A[Catch: UnityAdsNetworkException -> 0x072a, TryCatch #9 {UnityAdsNetworkException -> 0x072a, blocks: (B:215:0x06e7, B:217:0x06ed, B:219:0x06f7, B:220:0x0710, B:221:0x0719, B:224:0x0724, B:225:0x0729), top: B:287:0x06e7 }] */
        /* JADX WARN: Code duplicated, block: B:219:0x06f7 A[Catch: UnityAdsNetworkException -> 0x072a, TryCatch #9 {UnityAdsNetworkException -> 0x072a, blocks: (B:215:0x06e7, B:217:0x06ed, B:219:0x06f7, B:220:0x0710, B:221:0x0719, B:224:0x0724, B:225:0x0729), top: B:287:0x06e7 }] */
        /* JADX WARN: Code duplicated, block: B:220:0x0710 A[Catch: UnityAdsNetworkException -> 0x072a, TryCatch #9 {UnityAdsNetworkException -> 0x072a, blocks: (B:215:0x06e7, B:217:0x06ed, B:219:0x06f7, B:220:0x0710, B:221:0x0719, B:224:0x0724, B:225:0x0729), top: B:287:0x06e7 }] */
        /* JADX WARN: Code duplicated, block: B:221:0x0719 A[Catch: UnityAdsNetworkException -> 0x072a, TryCatch #9 {UnityAdsNetworkException -> 0x072a, blocks: (B:215:0x06e7, B:217:0x06ed, B:219:0x06f7, B:220:0x0710, B:221:0x0719, B:224:0x0724, B:225:0x0729), top: B:287:0x06e7 }] */
        /* JADX WARN: Code duplicated, block: B:224:0x0724 A[Catch: UnityAdsNetworkException -> 0x072a, TryCatch #9 {UnityAdsNetworkException -> 0x072a, blocks: (B:215:0x06e7, B:217:0x06ed, B:219:0x06f7, B:220:0x0710, B:221:0x0719, B:224:0x0724, B:225:0x0729), top: B:287:0x06e7 }] */
        /* JADX WARN: Code duplicated, block: B:259:0x0772 A[ADDED_TO_REGION] */
        /* JADX WARN: Code duplicated, block: B:262:0x078a  */
        /* JADX WARN: Code duplicated, block: B:263:0x0794  */
        /* JADX WARN: Code duplicated, block: B:265:0x0798  */
        /* JADX WARN: Code duplicated, block: B:267:0x07ac  */
        /* JADX WARN: Code duplicated, block: B:268:0x07b6  */
        /* JADX WARN: Code duplicated, block: B:334:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:335:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:337:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:90:0x0310  */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r10v25 */
        /* JADX WARN: Type inference failed for: r10v4 */
        /* JADX WARN: Type inference failed for: r10v5, types: [com.unity3d.ads.core.domain.AndroidLoad] */
        /* JADX WARN: Type inference failed for: r12v13 */
        /* JADX WARN: Type inference failed for: r12v19 */
        /* JADX WARN: Type inference failed for: r12v27 */
        /* JADX WARN: Type inference failed for: r12v29, types: [long] */
        /* JADX WARN: Type inference failed for: r12v31 */
        /* JADX WARN: Type inference failed for: r12v41 */
        /* JADX WARN: Type inference failed for: r13v12 */
        /* JADX WARN: Type inference failed for: r13v15 */
        /* JADX WARN: Type inference failed for: r13v25 */
        /* JADX WARN: Type inference failed for: r13v26 */
        /* JADX WARN: Type inference failed for: r13v31, types: [long] */
        /* JADX WARN: Type inference failed for: r13v32 */
        /* JADX WARN: Type inference failed for: r13v34 */
        /* JADX WARN: Type inference failed for: r13v35 */
        /* JADX WARN: Type inference failed for: r13v42 */
        /* JADX WARN: Type inference failed for: r13v7 */
        /* JADX WARN: Type inference failed for: r15v14 */
        /* JADX WARN: Type inference failed for: r15v21, types: [com.unity3d.ads.core.domain.AndroidLoad, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r15v23 */
        /* JADX WARN: Type inference failed for: r1v0 */
        /* JADX WARN: Type inference failed for: r1v13 */
        /* JADX WARN: Type inference failed for: r1v21 */
        /* JADX WARN: Type inference failed for: r1v33 */
        /* JADX WARN: Type inference failed for: r1v36 */
        /* JADX WARN: Type inference failed for: r1v37 */
        /* JADX WARN: Type inference failed for: r1v4, types: [long] */
        /* JADX WARN: Type inference failed for: r1v42 */
        /* JADX WARN: Type inference failed for: r1v44 */
        /* JADX WARN: Type inference failed for: r1v70 */
        /* JADX WARN: Type inference failed for: r1v9 */
        /* JADX WARN: Type inference failed for: r22v14 */
        /* JADX WARN: Type inference failed for: r22v18, types: [com.unity3d.ads.core.domain.AndroidLoad] */
        /* JADX WARN: Type inference failed for: r22v35 */
        /* JADX WARN: Type inference failed for: r25v0 */
        /* JADX WARN: Type inference failed for: r25v1 */
        /* JADX WARN: Type inference failed for: r25v10 */
        /* JADX WARN: Type inference failed for: r25v11 */
        /* JADX WARN: Type inference failed for: r25v12 */
        /* JADX WARN: Type inference failed for: r25v19 */
        /* JADX WARN: Type inference failed for: r25v2 */
        /* JADX WARN: Type inference failed for: r25v20 */
        /* JADX WARN: Type inference failed for: r25v21 */
        /* JADX WARN: Type inference failed for: r25v3 */
        /* JADX WARN: Type inference failed for: r25v5 */
        /* JADX WARN: Type inference failed for: r25v6 */
        /* JADX WARN: Type inference failed for: r25v7 */
        /* JADX WARN: Type inference failed for: r25v8, types: [long] */
        /* JADX WARN: Type inference failed for: r25v9 */
        /* JADX WARN: Type inference failed for: r6v0 */
        /* JADX WARN: Type inference failed for: r6v13 */
        /* JADX WARN: Type inference failed for: r6v14 */
        /* JADX WARN: Type inference failed for: r6v15 */
        /* JADX WARN: Type inference failed for: r6v17 */
        /* JADX WARN: Type inference failed for: r6v18 */
        /* JADX WARN: Type inference failed for: r6v20 */
        /* JADX WARN: Type inference failed for: r6v23 */
        /* JADX WARN: Type inference failed for: r6v24 */
        /* JADX WARN: Type inference failed for: r6v26 */
        /* JADX WARN: Type inference failed for: r6v27 */
        /* JADX WARN: Type inference failed for: r6v28 */
        /* JADX WARN: Type inference failed for: r6v29 */
        /* JADX WARN: Type inference failed for: r6v30 */
        /* JADX WARN: Type inference failed for: r6v33 */
        /* JADX WARN: Type inference failed for: r6v34, types: [com.unity3d.ads.core.domain.AndroidLoad] */
        /* JADX WARN: Type inference failed for: r6v35, types: [com.unity3d.ads.core.domain.AndroidLoad] */
        /* JADX WARN: Type inference failed for: r6v37 */
        /* JADX WARN: Type inference failed for: r6v38 */
        /* JADX WARN: Type inference failed for: r6v40 */
        /* JADX WARN: Type inference failed for: r6v44 */
        /* JADX WARN: Type inference failed for: r6v49 */
        /* JADX WARN: Type inference failed for: r6v61 */
        /* JADX WARN: Type inference failed for: r6v64 */
        /* JADX WARN: Type inference failed for: r6v65 */
        /* JADX WARN: Type inference failed for: r6v66 */
        /* JADX WARN: Type inference failed for: r6v67 */
        /* JADX WARN: Type inference failed for: r6v7 */
        /* JADX WARN: Type inference failed for: r7v10 */
        /* JADX WARN: Type inference failed for: r7v16 */
        /* JADX WARN: Type inference failed for: r7v17 */
        /* JADX WARN: Type inference failed for: r7v23 */
        /* JADX WARN: Type inference failed for: r7v24 */
        /* JADX WARN: Type inference failed for: r7v37 */
        /* JADX WARN: Type inference failed for: r7v38 */
        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            String str;
            String str2;
            int i;
            AdObject adObject;
            ByteString byteString;
            Object objInvoke;
            DiagnosticEventRequestOuterClass.DiagnosticAdType diagnosticAdType;
            int i2;
            String str3;
            int i3;
            Object obj2;
            AndroidLoad androidLoad;
            Context context;
            UnityAdsLoadOptions unityAdsLoadOptions;
            long j;
            long j2;
            int i4;
            int i5;
            AdObject adObject2;
            DiagnosticEventRequestOuterClass.DiagnosticAdType diagnosticAdType2;
            Context context2;
            UnityAdsLoadOptions unityAdsLoadOptions2;
            String str4;
            ByteString byteString2;
            boolean z;
            ByteString byteString3;
            int i6;
            int i7;
            int i8;
            Object obj3;
            UnityAdsLoadOptions unityAdsLoadOptions3;
            Object objRequest$default;
            Object obj4;
            int i9;
            Object objInvoke2;
            int i10;
            Object obj5;
            String str5;
            AndroidLoad androidLoad2;
            AdObject adObject3;
            ByteString byteString4;
            UnityAdsLoadOptions unityAdsLoadOptions4;
            HeaderBiddingAdMarkupOuterClass.HeaderBiddingAdMarkup headerBiddingAdMarkup;
            Context context3;
            DiagnosticEventRequestOuterClass.DiagnosticAdType diagnosticAdType3;
            ?? r13;
            long j3;
            int i11;
            int i12;
            int i13;
            DiagnosticEventRequestOuterClass.DiagnosticAdType diagnosticAdType4;
            UnityAdsLoadOptions unityAdsLoadOptions5;
            String str6;
            HeaderBiddingAdMarkupOuterClass.HeaderBiddingAdMarkup headerBiddingAdMarkup2;
            ?? r25;
            Context context4;
            ByteString byteString5;
            AndroidLoad androidLoad3;
            Object obj6;
            ByteString byteString6;
            Object objRequest$default2;
            Object obj7;
            AndroidLoad androidLoad4;
            ?? r12;
            ByteString byteString7;
            Object objInvoke3;
            ?? r26;
            Object obj8;
            int i14;
            Object objM3022constructorimpl;
            ?? r10;
            DiagnosticEventRequestOuterClass.DiagnosticAdType diagnosticAdType5;
            ?? r6;
            Object obj9;
            UnityAdsLoadOptions unityAdsLoadOptions6;
            Context context5;
            Object value;
            String str7;
            Throwable thM3025exceptionOrNullimpl;
            ByteString errorTokenOrNull;
            UniversalResponseOuterClass.UniversalResponse universalResponse;
            AdPlayerConfigResponseOuterClass.AdPlayerConfigResponse adPlayerConfigResponse;
            AdResponseKt.Dsl dsl_create;
            String str8;
            ByteString adData;
            AdResponseOuterClass.AdResponse adResponse_build;
            int i15;
            Context context6;
            DiagnosticEventRequestOuterClass.DiagnosticAdType diagnosticAdType6;
            ?? r14;
            UnityAdsLoadOptions unityAdsLoadOptions7;
            ?? r15;
            ErrorOuterClass.PublicErrorCode errorCode;
            String loadErrorMsg;
            ?? r16;
            LoadResult failure;
            ?? r7;
            ?? r8;
            long jM4482markNowz9LOYto;
            DiagnosticEventRequestOuterClass.DiagnosticAdType diagnosticAdType7;
            ?? r27;
            UnityAdsLoadOptions unityAdsLoadOptions8;
            ByteString byteString8;
            HeaderBiddingAdMarkupOuterClass.HeaderBiddingAdMarkup headerBiddingAdMarkup3;
            long j4;
            long j5;
            Object obj10;
            Context context7;
            Object obj11;
            Object objM3022constructorimpl2;
            ?? r22;
            long j6;
            AndroidLoad androidLoad5;
            long j7;
            ?? r17;
            LoadResult.Failure failureHandleGatewayException;
            ?? r9;
            LoadResult.Success success;
            AdObject ad;
            Object obj12;
            int i16;
            boolean z2;
            AnonymousClass2 anonymousClass2;
            Object obj13;
            Object value2;
            String str9;
            Throwable thM3025exceptionOrNullimpl2;
            ByteString errorTokenOrNull2;
            AndroidLoad androidLoad6;
            long j8;
            long jM4482markNowz9LOYto2;
            long j9;
            Object obj14;
            Object obj15;
            Context context8;
            AndroidLoad androidLoad7;
            AndroidLoad androidLoad8;
            Object obj16;
            AnonymousClass2 anonymousClass3 = this;
            String str10 = "getAdData(...)";
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i17 = anonymousClass3.label;
            ?? r1 = 3;
            ?? r11 = 2;
            if (i17 != 0) {
                try {
                    if (i17 == 1) {
                        int i18 = anonymousClass3.I$2;
                        long j10 = anonymousClass3.J$0;
                        int i19 = anonymousClass3.I$1;
                        int i20 = anonymousClass3.I$0;
                        AdObject adObject4 = (AdObject) anonymousClass3.L$7;
                        DiagnosticEventRequestOuterClass.DiagnosticAdType diagnosticAdType8 = (DiagnosticEventRequestOuterClass.DiagnosticAdType) anonymousClass3.L$6;
                        Context context9 = (Context) anonymousClass3.L$4;
                        UnityAdsLoadOptions unityAdsLoadOptions9 = (UnityAdsLoadOptions) anonymousClass3.L$3;
                        String str11 = (String) anonymousClass3.L$2;
                        ByteString byteString9 = (ByteString) anonymousClass3.L$1;
                        AndroidLoad androidLoad9 = (AndroidLoad) anonymousClass3.L$0;
                        ResultKt.throwOnFailure(obj);
                        str = "native_load_config_success_time";
                        str2 = "native_load_config_failure_time";
                        i = i18;
                        adObject = adObject4;
                        byteString = byteString9;
                        objInvoke = obj;
                        diagnosticAdType = diagnosticAdType8;
                        i2 = i20;
                        str3 = str11;
                        i3 = i19;
                        obj2 = coroutine_suspended;
                        androidLoad = androidLoad9;
                        context = context9;
                        unityAdsLoadOptions = unityAdsLoadOptions9;
                        j = j10;
                        try {
                            UniversalRequestOuterClass.UniversalRequest universalRequest = (UniversalRequestOuterClass.UniversalRequest) objInvoke;
                            RequestPolicy requestPolicyInvoke = androidLoad.getRequestPolicy.invoke();
                            byteString3 = byteString;
                            jM4482markNowz9LOYto2 = TimeSource.Monotonic.INSTANCE.m4482markNowz9LOYto();
                            try {
                                Result.Companion companion = Result.INSTANCE;
                                GatewayClient gatewayClient = androidLoad.gatewayClient;
                                OperationType operationType = OperationType.LOAD;
                                anonymousClass3.L$0 = androidLoad;
                                obj15 = obj2;
                                try {
                                    anonymousClass3.L$1 = byteString3;
                                    anonymousClass3.L$2 = str3;
                                    anonymousClass3.L$3 = unityAdsLoadOptions;
                                    anonymousClass3.L$4 = context;
                                    anonymousClass3.L$5 = diagnosticAdType;
                                    anonymousClass3.L$6 = adObject;
                                    context8 = context;
                                    try {
                                        anonymousClass3.L$7 = null;
                                        anonymousClass3.I$0 = i2;
                                        anonymousClass3.I$1 = i3;
                                        anonymousClass3.J$0 = j;
                                        anonymousClass3.I$2 = i;
                                        anonymousClass3.J$1 = jM4482markNowz9LOYto2;
                                        anonymousClass3.label = 2;
                                        j9 = jM4482markNowz9LOYto2;
                                        unityAdsLoadOptions3 = unityAdsLoadOptions;
                                        i6 = i;
                                        context7 = context8;
                                        obj14 = obj15;
                                        byteString3 = byteString3;
                                        str4 = str3;
                                        z = true;
                                        try {
                                            objRequest$default = GatewayClient.DefaultImpls.request$default(gatewayClient, null, universalRequest, requestPolicyInvoke, operationType, anonymousClass3, 1, null);
                                            if (objRequest$default == obj14) {
                                                return obj14;
                                            }
                                            i5 = i3;
                                            j8 = j;
                                            diagnosticAdType2 = diagnosticAdType;
                                            unityAdsLoadOptions2 = unityAdsLoadOptions3;
                                            i4 = i6;
                                            context2 = context7;
                                            byteString2 = byteString3;
                                            j2 = j9;
                                            adObject2 = adObject;
                                            androidLoad6 = androidLoad;
                                            obj4 = obj14;
                                            objM3022constructorimpl2 = Result.m3022constructorimpl((UniversalResponseOuterClass.UniversalResponse) objRequest$default);
                                            byteString3 = byteString2;
                                            i6 = i4;
                                            i7 = i5;
                                            i8 = i2;
                                            j6 = j8;
                                            obj13 = obj4;
                                            r22 = androidLoad6;
                                            AdObject adObject5 = adObject2;
                                            TimedValue timedValue = new TimedValue(Result.m3021boximpl(objM3022constructorimpl2), TimeSource.Monotonic.ValueTimeMark.m4487elapsedNowUwyO8pc(j2), null);
                                            value2 = ((Result) timedValue.component1()).getValue();
                                            long duration = timedValue.getDuration();
                                            SendDiagnosticEvent sendDiagnosticEvent = ((AndroidLoad) r22).sendDiagnosticEvent;
                                            if (Result.m3029isSuccessimpl(value2)) {
                                                str9 = str;
                                            } else {
                                                str9 = str2;
                                            }
                                            Double dBoxDouble = Boxing.boxDouble(Duration.m4403toDoubleimpl(duration, DurationUnit.MILLISECONDS));
                                            thM3025exceptionOrNullimpl2 = Result.m3025exceptionOrNullimpl(value2);
                                            if (thM3025exceptionOrNullimpl2 != null) {
                                                errorTokenOrNull2 = ErrorExtensionsKt.getErrorTokenOrNull(thM3025exceptionOrNullimpl2);
                                            } else {
                                                errorTokenOrNull2 = null;
                                            }
                                            SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent, str9, dBoxDouble, (Map) null, (Map) null, adObject5, (Integer) null, errorTokenOrNull2, (MediationInfo) null, 172, (Object) null);
                                            Object value3 = ((Result) timedValue.getValue()).getValue();
                                            ResultKt.throwOnFailure(value3);
                                            adResponse_build = ((UniversalResponseOuterClass.UniversalResponse) value3).getPayload().getAdResponse();
                                            Context context10 = context2;
                                            i15 = i8;
                                            context6 = context10;
                                            long j11 = j6;
                                            diagnosticAdType6 = diagnosticAdType2;
                                            r14 = j11;
                                            unityAdsLoadOptions7 = unityAdsLoadOptions2;
                                            r15 = r22;
                                            byteString7 = byteString3;
                                            obj12 = obj13;
                                            i16 = i7;
                                            AdResponseOuterClass.AdResponse adResponse = adResponse_build;
                                            HandleGatewayAdResponse handleGatewayAdResponse = ((AndroidLoad) r15).handleGatewayAdResponse;
                                            Intrinsics.checkNotNull(adResponse);
                                            if (i6 != 0) {
                                                z2 = z;
                                            } else {
                                                z2 = false;
                                            }
                                            anonymousClass3.L$0 = r15;
                                            anonymousClass3.L$1 = byteString7;
                                            anonymousClass3.L$2 = null;
                                            anonymousClass3.L$3 = null;
                                            anonymousClass3.L$4 = null;
                                            anonymousClass3.L$5 = null;
                                            anonymousClass3.L$6 = null;
                                            anonymousClass3.L$7 = null;
                                            anonymousClass3.L$8 = null;
                                            anonymousClass3.I$0 = i15;
                                            anonymousClass3.I$1 = i16;
                                            anonymousClass3.J$0 = r14;
                                            anonymousClass3.label = 5;
                                            anonymousClass2 = anonymousClass3;
                                            objInvoke3 = handleGatewayAdResponse.invoke(unityAdsLoadOptions7, byteString7, adResponse, context6, str4, diagnosticAdType6, z2, false, anonymousClass2);
                                            anonymousClass3 = anonymousClass2;
                                            if (objInvoke3 == obj12) {
                                                return obj12;
                                            }
                                            i7 = i16;
                                            i8 = i15;
                                            r11 = r15;
                                            r12 = r14;
                                            success = (LoadResult) objInvoke3;
                                            if (success instanceof LoadResult.Success) {
                                                ad = ((AndroidLoad) r11).adRepository.getAd(byteString7);
                                                if (ad == null) {
                                                    success = new LoadResult.Failure(ErrorOuterClass.PublicErrorCode.PUBLIC_ERROR_CODE_UNSPECIFIED, LoadResult.MSG_AD_OBJECT, null, "ad_object_not_found", null, null, 52, null);
                                                } else {
                                                    success = new LoadResult.Success(ad);
                                                }
                                            } else if (!(success instanceof LoadResult.Failure)) {
                                                throw new NoWhenBranchMatchedException();
                                            }
                                            r17 = r12;
                                            failureHandleGatewayException = success;
                                            r9 = i8;
                                            i3 = i7;
                                        } catch (Throwable th) {
                                            th = th;
                                            i8 = i2;
                                            r11 = androidLoad;
                                            i7 = i3;
                                            j2 = j9;
                                            adObject2 = adObject;
                                            obj11 = obj14;
                                            j4 = j;
                                            Result.Companion companion2 = Result.INSTANCE;
                                            objM3022constructorimpl2 = Result.m3022constructorimpl(ResultKt.createFailure(th));
                                            Context context11 = context7;
                                            r22 = r11;
                                            j6 = j4;
                                            context2 = context11;
                                            diagnosticAdType2 = diagnosticAdType;
                                            unityAdsLoadOptions2 = unityAdsLoadOptions3;
                                            obj13 = obj11;
                                        }
                                    } catch (Throwable th2) {
                                        th = th2;
                                        unityAdsLoadOptions3 = unityAdsLoadOptions;
                                        str4 = str3;
                                        j9 = jM4482markNowz9LOYto2;
                                        i6 = i;
                                        context7 = context8;
                                        obj14 = obj15;
                                        z = true;
                                        byteString3 = byteString3;
                                    }
                                } catch (Throwable th3) {
                                    th = th3;
                                    context7 = context;
                                    unityAdsLoadOptions3 = unityAdsLoadOptions;
                                    byteString3 = byteString3;
                                    str4 = str3;
                                    j9 = jM4482markNowz9LOYto2;
                                    i6 = i;
                                    obj14 = obj15;
                                    z = true;
                                }
                            } catch (Throwable th4) {
                                th = th4;
                                context7 = context;
                                unityAdsLoadOptions3 = unityAdsLoadOptions;
                                str4 = str3;
                                j9 = jM4482markNowz9LOYto2;
                                i6 = i;
                                z = true;
                                obj14 = obj2;
                            }
                        } catch (UnityAdsNetworkException e) {
                            e = e;
                            i8 = i2;
                            obj10 = androidLoad;
                            j5 = j;
                            r11 = obj10;
                            j4 = j5;
                            i7 = i3;
                            r1 = j4;
                            r17 = r1;
                            failureHandleGatewayException = r11.handleGatewayException(e);
                            i3 = i7;
                            r9 = i8;
                            failure = failureHandleGatewayException;
                            r7 = r9;
                            r16 = r17;
                            if (r7 == 0) {
                                anonymousClass3.this$0.sessionRepository.setLastLoadLatency((int) TimeExtensionsKt.elapsedMillis(TimeSource.Monotonic.ValueTimeMark.m4483boximpl(r16)));
                                if (failure instanceof LoadResult.Success) {
                                    anonymousClass3.this$0.sessionRepository.incrementSuccessCount();
                                } else {
                                    if (!(failure instanceof LoadResult.Failure)) {
                                        throw new NoWhenBranchMatchedException();
                                    }
                                    anonymousClass3.this$0.sessionRepository.incrementAllErrorsCount();
                                    if (anonymousClass3.this$0.isCachePhaseFailure((LoadResult.Failure) failure)) {
                                        anonymousClass3.this$0.sessionRepository.incrementCacheTimeoutErrorsCount();
                                    }
                                }
                            }
                            return failure;
                        }
                    } else if (i17 == 2) {
                        j2 = anonymousClass3.J$1;
                        i4 = anonymousClass3.I$2;
                        long j12 = anonymousClass3.J$0;
                        i5 = anonymousClass3.I$1;
                        i2 = anonymousClass3.I$0;
                        adObject2 = (AdObject) anonymousClass3.L$6;
                        diagnosticAdType2 = (DiagnosticEventRequestOuterClass.DiagnosticAdType) anonymousClass3.L$5;
                        context2 = (Context) anonymousClass3.L$4;
                        unityAdsLoadOptions2 = (UnityAdsLoadOptions) anonymousClass3.L$3;
                        str4 = (String) anonymousClass3.L$2;
                        byteString2 = (ByteString) anonymousClass3.L$1;
                        AndroidLoad androidLoad10 = (AndroidLoad) anonymousClass3.L$0;
                        try {
                            try {
                                ResultKt.throwOnFailure(obj);
                                objRequest$default = obj;
                                str = "native_load_config_success_time";
                                str2 = "native_load_config_failure_time";
                                z = true;
                                obj4 = coroutine_suspended;
                                j8 = j12;
                                androidLoad6 = androidLoad10;
                                try {
                                    objM3022constructorimpl2 = Result.m3022constructorimpl((UniversalResponseOuterClass.UniversalResponse) objRequest$default);
                                    byteString3 = byteString2;
                                    i6 = i4;
                                    i7 = i5;
                                    i8 = i2;
                                    j6 = j8;
                                    obj13 = obj4;
                                    r22 = androidLoad6;
                                } catch (Throwable th5) {
                                    th = th5;
                                    unityAdsLoadOptions3 = unityAdsLoadOptions2;
                                    byteString3 = byteString2;
                                    i6 = i4;
                                    i7 = i5;
                                    i8 = i2;
                                    j7 = j8;
                                    obj3 = obj4;
                                    androidLoad5 = androidLoad6;
                                    diagnosticAdType = diagnosticAdType2;
                                    AndroidLoad androidLoad11 = androidLoad5;
                                    context7 = context2;
                                    j4 = j7;
                                    r11 = androidLoad11;
                                    obj11 = obj3;
                                    try {
                                        Result.Companion companion3 = Result.INSTANCE;
                                        objM3022constructorimpl2 = Result.m3022constructorimpl(ResultKt.createFailure(th));
                                        Context context12 = context7;
                                        r22 = r11;
                                        j6 = j4;
                                        context2 = context12;
                                        diagnosticAdType2 = diagnosticAdType;
                                        unityAdsLoadOptions2 = unityAdsLoadOptions3;
                                        obj13 = obj11;
                                    } catch (UnityAdsNetworkException e2) {
                                        e = e2;
                                        r1 = j4;
                                        r17 = r1;
                                        failureHandleGatewayException = r11.handleGatewayException(e);
                                        i3 = i7;
                                        r9 = i8;
                                        failure = failureHandleGatewayException;
                                        r7 = r9;
                                        r16 = r17;
                                        if (r7 == 0) {
                                            anonymousClass3.this$0.sessionRepository.setLastLoadLatency((int) TimeExtensionsKt.elapsedMillis(TimeSource.Monotonic.ValueTimeMark.m4483boximpl(r16)));
                                            if (failure instanceof LoadResult.Success) {
                                                anonymousClass3.this$0.sessionRepository.incrementSuccessCount();
                                            } else {
                                                if (!(failure instanceof LoadResult.Failure)) {
                                                    throw new NoWhenBranchMatchedException();
                                                }
                                                anonymousClass3.this$0.sessionRepository.incrementAllErrorsCount();
                                                if (anonymousClass3.this$0.isCachePhaseFailure((LoadResult.Failure) failure)) {
                                                    anonymousClass3.this$0.sessionRepository.incrementCacheTimeoutErrorsCount();
                                                }
                                            }
                                        }
                                        return failure;
                                    }
                                }
                            } catch (Throwable th6) {
                                th = th6;
                                str = "native_load_config_success_time";
                                str2 = "native_load_config_failure_time";
                                z = true;
                                byteString3 = byteString2;
                                i6 = i4;
                                i7 = i5;
                                i8 = i2;
                                obj3 = coroutine_suspended;
                                unityAdsLoadOptions3 = unityAdsLoadOptions2;
                                j7 = j12;
                                androidLoad5 = androidLoad10;
                                diagnosticAdType = diagnosticAdType2;
                                AndroidLoad androidLoad12 = androidLoad5;
                                context7 = context2;
                                j4 = j7;
                                r11 = androidLoad12;
                                obj11 = obj3;
                                Result.Companion companion4 = Result.INSTANCE;
                                objM3022constructorimpl2 = Result.m3022constructorimpl(ResultKt.createFailure(th));
                                Context context13 = context7;
                                r22 = r11;
                                j6 = j4;
                                context2 = context13;
                                diagnosticAdType2 = diagnosticAdType;
                                unityAdsLoadOptions2 = unityAdsLoadOptions3;
                                obj13 = obj11;
                                AdObject adObject6 = adObject2;
                                TimedValue timedValue2 = new TimedValue(Result.m3021boximpl(objM3022constructorimpl2), TimeSource.Monotonic.ValueTimeMark.m4487elapsedNowUwyO8pc(j2), null);
                                value2 = ((Result) timedValue2.component1()).getValue();
                                long duration2 = timedValue2.getDuration();
                                SendDiagnosticEvent sendDiagnosticEvent2 = ((AndroidLoad) r22).sendDiagnosticEvent;
                                if (Result.m3029isSuccessimpl(value2)) {
                                    str9 = str;
                                } else {
                                    str9 = str2;
                                }
                                Double dBoxDouble2 = Boxing.boxDouble(Duration.m4403toDoubleimpl(duration2, DurationUnit.MILLISECONDS));
                                thM3025exceptionOrNullimpl2 = Result.m3025exceptionOrNullimpl(value2);
                                if (thM3025exceptionOrNullimpl2 != null) {
                                    errorTokenOrNull2 = ErrorExtensionsKt.getErrorTokenOrNull(thM3025exceptionOrNullimpl2);
                                } else {
                                    errorTokenOrNull2 = null;
                                }
                                SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent2, str9, dBoxDouble2, (Map) null, (Map) null, adObject6, (Integer) null, errorTokenOrNull2, (MediationInfo) null, 172, (Object) null);
                                Object value4 = ((Result) timedValue2.getValue()).getValue();
                                ResultKt.throwOnFailure(value4);
                                adResponse_build = ((UniversalResponseOuterClass.UniversalResponse) value4).getPayload().getAdResponse();
                                Context context14 = context2;
                                i15 = i8;
                                context6 = context14;
                                long j13 = j6;
                                diagnosticAdType6 = diagnosticAdType2;
                                r14 = j13;
                                unityAdsLoadOptions7 = unityAdsLoadOptions2;
                                r15 = r22;
                                byteString7 = byteString3;
                                obj12 = obj13;
                                i16 = i7;
                                AdResponseOuterClass.AdResponse adResponse2 = adResponse_build;
                                HandleGatewayAdResponse handleGatewayAdResponse2 = ((AndroidLoad) r15).handleGatewayAdResponse;
                                Intrinsics.checkNotNull(adResponse2);
                                if (i6 != 0) {
                                    z2 = z;
                                } else {
                                    z2 = false;
                                }
                                anonymousClass3.L$0 = r15;
                                anonymousClass3.L$1 = byteString7;
                                anonymousClass3.L$2 = null;
                                anonymousClass3.L$3 = null;
                                anonymousClass3.L$4 = null;
                                anonymousClass3.L$5 = null;
                                anonymousClass3.L$6 = null;
                                anonymousClass3.L$7 = null;
                                anonymousClass3.L$8 = null;
                                anonymousClass3.I$0 = i15;
                                anonymousClass3.I$1 = i16;
                                anonymousClass3.J$0 = r14;
                                anonymousClass3.label = 5;
                                anonymousClass2 = anonymousClass3;
                                objInvoke3 = handleGatewayAdResponse2.invoke(unityAdsLoadOptions7, byteString7, adResponse2, context6, str4, diagnosticAdType6, z2, false, anonymousClass2);
                                anonymousClass3 = anonymousClass2;
                                if (objInvoke3 == obj12) {
                                    return obj12;
                                }
                                i7 = i16;
                                i8 = i15;
                                r11 = r15;
                                r12 = r14;
                                success = (LoadResult) objInvoke3;
                                if (success instanceof LoadResult.Success) {
                                    ad = ((AndroidLoad) r11).adRepository.getAd(byteString7);
                                    if (ad == null) {
                                        success = new LoadResult.Failure(ErrorOuterClass.PublicErrorCode.PUBLIC_ERROR_CODE_UNSPECIFIED, LoadResult.MSG_AD_OBJECT, null, "ad_object_not_found", null, null, 52, null);
                                    } else {
                                        success = new LoadResult.Success(ad);
                                    }
                                } else if (!(success instanceof LoadResult.Failure)) {
                                    throw new NoWhenBranchMatchedException();
                                }
                                r17 = r12;
                                failureHandleGatewayException = success;
                                r9 = i8;
                                i3 = i7;
                                failure = failureHandleGatewayException;
                                r7 = r9;
                                r16 = r17;
                                if (r7 == 0) {
                                    anonymousClass3.this$0.sessionRepository.setLastLoadLatency((int) TimeExtensionsKt.elapsedMillis(TimeSource.Monotonic.ValueTimeMark.m4483boximpl(r16)));
                                    if (failure instanceof LoadResult.Success) {
                                        anonymousClass3.this$0.sessionRepository.incrementSuccessCount();
                                    } else {
                                        if (!(failure instanceof LoadResult.Failure)) {
                                            throw new NoWhenBranchMatchedException();
                                        }
                                        anonymousClass3.this$0.sessionRepository.incrementAllErrorsCount();
                                        if (anonymousClass3.this$0.isCachePhaseFailure((LoadResult.Failure) failure)) {
                                            anonymousClass3.this$0.sessionRepository.incrementCacheTimeoutErrorsCount();
                                        }
                                    }
                                }
                                return failure;
                            }
                            TimedValue timedValue3 = new TimedValue(Result.m3021boximpl(objM3022constructorimpl2), TimeSource.Monotonic.ValueTimeMark.m4487elapsedNowUwyO8pc(j2), null);
                            value2 = ((Result) timedValue3.component1()).getValue();
                            long duration3 = timedValue3.getDuration();
                            SendDiagnosticEvent sendDiagnosticEvent3 = ((AndroidLoad) r22).sendDiagnosticEvent;
                            if (Result.m3029isSuccessimpl(value2)) {
                                str9 = str;
                            } else {
                                str9 = str2;
                            }
                            Double dBoxDouble3 = Boxing.boxDouble(Duration.m4403toDoubleimpl(duration3, DurationUnit.MILLISECONDS));
                            thM3025exceptionOrNullimpl2 = Result.m3025exceptionOrNullimpl(value2);
                            if (thM3025exceptionOrNullimpl2 != null) {
                                errorTokenOrNull2 = ErrorExtensionsKt.getErrorTokenOrNull(thM3025exceptionOrNullimpl2);
                            } else {
                                errorTokenOrNull2 = null;
                            }
                            SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent3, str9, dBoxDouble3, (Map) null, (Map) null, adObject6, (Integer) null, errorTokenOrNull2, (MediationInfo) null, 172, (Object) null);
                            Object value5 = ((Result) timedValue3.getValue()).getValue();
                            ResultKt.throwOnFailure(value5);
                            adResponse_build = ((UniversalResponseOuterClass.UniversalResponse) value5).getPayload().getAdResponse();
                            Context context15 = context2;
                            i15 = i8;
                            context6 = context15;
                            long j14 = j6;
                            diagnosticAdType6 = diagnosticAdType2;
                            r14 = j14;
                            unityAdsLoadOptions7 = unityAdsLoadOptions2;
                            r15 = r22;
                            byteString7 = byteString3;
                            obj12 = obj13;
                            i16 = i7;
                            AdResponseOuterClass.AdResponse adResponse3 = adResponse_build;
                            HandleGatewayAdResponse handleGatewayAdResponse3 = ((AndroidLoad) r15).handleGatewayAdResponse;
                            Intrinsics.checkNotNull(adResponse3);
                            if (i6 != 0) {
                                z2 = z;
                            } else {
                                z2 = false;
                            }
                            anonymousClass3.L$0 = r15;
                            anonymousClass3.L$1 = byteString7;
                            anonymousClass3.L$2 = null;
                            anonymousClass3.L$3 = null;
                            anonymousClass3.L$4 = null;
                            anonymousClass3.L$5 = null;
                            anonymousClass3.L$6 = null;
                            anonymousClass3.L$7 = null;
                            anonymousClass3.L$8 = null;
                            anonymousClass3.I$0 = i15;
                            anonymousClass3.I$1 = i16;
                            anonymousClass3.J$0 = r14;
                            anonymousClass3.label = 5;
                            anonymousClass2 = anonymousClass3;
                            objInvoke3 = handleGatewayAdResponse3.invoke(unityAdsLoadOptions7, byteString7, adResponse3, context6, str4, diagnosticAdType6, z2, false, anonymousClass2);
                            anonymousClass3 = anonymousClass2;
                            if (objInvoke3 == obj12) {
                                return obj12;
                            }
                            i7 = i16;
                            i8 = i15;
                            r11 = r15;
                            r12 = r14;
                            success = (LoadResult) objInvoke3;
                            if (success instanceof LoadResult.Success) {
                                ad = ((AndroidLoad) r11).adRepository.getAd(byteString7);
                                if (ad == null) {
                                    success = new LoadResult.Failure(ErrorOuterClass.PublicErrorCode.PUBLIC_ERROR_CODE_UNSPECIFIED, LoadResult.MSG_AD_OBJECT, null, "ad_object_not_found", null, null, 52, null);
                                } else {
                                    success = new LoadResult.Success(ad);
                                }
                            } else if (!(success instanceof LoadResult.Failure)) {
                                throw new NoWhenBranchMatchedException();
                            }
                            r17 = r12;
                            failureHandleGatewayException = success;
                            r9 = i8;
                            i3 = i7;
                        } catch (UnityAdsNetworkException e3) {
                            e = e3;
                            r1 = j6;
                            r11 = r22;
                            r17 = r1;
                            failureHandleGatewayException = r11.handleGatewayException(e);
                            i3 = i7;
                            r9 = i8;
                            failure = failureHandleGatewayException;
                            r7 = r9;
                            r16 = r17;
                            if (r7 == 0) {
                                anonymousClass3.this$0.sessionRepository.setLastLoadLatency((int) TimeExtensionsKt.elapsedMillis(TimeSource.Monotonic.ValueTimeMark.m4483boximpl(r16)));
                                if (failure instanceof LoadResult.Success) {
                                    anonymousClass3.this$0.sessionRepository.incrementSuccessCount();
                                } else {
                                    if (!(failure instanceof LoadResult.Failure)) {
                                        throw new NoWhenBranchMatchedException();
                                    }
                                    anonymousClass3.this$0.sessionRepository.incrementAllErrorsCount();
                                    if (anonymousClass3.this$0.isCachePhaseFailure((LoadResult.Failure) failure)) {
                                        anonymousClass3.this$0.sessionRepository.incrementCacheTimeoutErrorsCount();
                                    }
                                }
                            }
                            return failure;
                        }
                        AdObject adObject7 = adObject2;
                    } else if (i17 != 3) {
                        try {
                            if (i17 == 4) {
                                j3 = anonymousClass3.J$1;
                                i11 = anonymousClass3.I$2;
                                long j15 = anonymousClass3.J$0;
                                i12 = anonymousClass3.I$1;
                                i13 = anonymousClass3.I$0;
                                AdObject adObject8 = (AdObject) anonymousClass3.L$7;
                                diagnosticAdType4 = (DiagnosticEventRequestOuterClass.DiagnosticAdType) anonymousClass3.L$6;
                                Context context16 = (Context) anonymousClass3.L$5;
                                unityAdsLoadOptions5 = (UnityAdsLoadOptions) anonymousClass3.L$4;
                                str6 = (String) anonymousClass3.L$3;
                                ByteString byteString10 = (ByteString) anonymousClass3.L$2;
                                headerBiddingAdMarkup2 = (HeaderBiddingAdMarkupOuterClass.HeaderBiddingAdMarkup) anonymousClass3.L$1;
                                AndroidLoad androidLoad13 = (AndroidLoad) anonymousClass3.L$0;
                                try {
                                    try {
                                        ResultKt.throwOnFailure(obj);
                                        str10 = "getAdData(...)";
                                        byteString6 = byteString10;
                                        objRequest$default2 = obj;
                                        str = "native_load_config_success_time";
                                        str2 = "native_load_config_failure_time";
                                        adObject3 = adObject8;
                                        context4 = context16;
                                        obj7 = coroutine_suspended;
                                        androidLoad4 = androidLoad13;
                                        z = true;
                                        r8 = j15;
                                        try {
                                            objM3022constructorimpl = Result.m3022constructorimpl((UniversalResponseOuterClass.UniversalResponse) objRequest$default2);
                                            String str12 = str6;
                                            i6 = i11;
                                            i7 = i12;
                                            i8 = i13;
                                            diagnosticAdType5 = diagnosticAdType4;
                                            str4 = str12;
                                            r6 = r8;
                                            r10 = androidLoad4;
                                            obj9 = obj7;
                                        } catch (Throwable th7) {
                                            th = th7;
                                            r25 = r8;
                                            byteString5 = byteString6;
                                            androidLoad3 = androidLoad4;
                                            obj6 = obj7;
                                            i14 = i11;
                                            i7 = i12;
                                            i8 = i13;
                                            r11 = androidLoad3;
                                            obj8 = obj6;
                                            r26 = r25;
                                            try {
                                                Result.Companion companion5 = Result.INSTANCE;
                                                objM3022constructorimpl = Result.m3022constructorimpl(ResultKt.createFailure(th));
                                                r10 = r11;
                                                diagnosticAdType5 = diagnosticAdType4;
                                                str4 = str6;
                                                i6 = i14;
                                                byteString6 = byteString5;
                                                r6 = r26;
                                                obj9 = obj8;
                                            } catch (UnityAdsNetworkException e4) {
                                                e = e4;
                                                r1 = r26;
                                                r17 = r1;
                                                failureHandleGatewayException = r11.handleGatewayException(e);
                                                i3 = i7;
                                                r9 = i8;
                                                failure = failureHandleGatewayException;
                                                r7 = r9;
                                                r16 = r17;
                                                if (r7 == 0) {
                                                    anonymousClass3.this$0.sessionRepository.setLastLoadLatency((int) TimeExtensionsKt.elapsedMillis(TimeSource.Monotonic.ValueTimeMark.m4483boximpl(r16)));
                                                    if (failure instanceof LoadResult.Success) {
                                                        anonymousClass3.this$0.sessionRepository.incrementSuccessCount();
                                                    } else {
                                                        if (!(failure instanceof LoadResult.Failure)) {
                                                            throw new NoWhenBranchMatchedException();
                                                        }
                                                        anonymousClass3.this$0.sessionRepository.incrementAllErrorsCount();
                                                        if (anonymousClass3.this$0.isCachePhaseFailure((LoadResult.Failure) failure)) {
                                                            anonymousClass3.this$0.sessionRepository.incrementCacheTimeoutErrorsCount();
                                                        }
                                                    }
                                                }
                                                return failure;
                                            }
                                        }
                                    } catch (Throwable th8) {
                                        th = th8;
                                        r25 = j15;
                                        str = "native_load_config_success_time";
                                        str2 = "native_load_config_failure_time";
                                        adObject3 = adObject8;
                                        context4 = context16;
                                        byteString5 = byteString10;
                                        androidLoad3 = androidLoad13;
                                        str10 = "getAdData(...)";
                                        obj6 = coroutine_suspended;
                                        z = true;
                                        i14 = i11;
                                        i7 = i12;
                                        i8 = i13;
                                        r11 = androidLoad3;
                                        obj8 = obj6;
                                        r26 = r25;
                                        Result.Companion companion6 = Result.INSTANCE;
                                        objM3022constructorimpl = Result.m3022constructorimpl(ResultKt.createFailure(th));
                                        r10 = r11;
                                        diagnosticAdType5 = diagnosticAdType4;
                                        str4 = str6;
                                        i6 = i14;
                                        byteString6 = byteString5;
                                        r6 = r26;
                                        obj9 = obj8;
                                        AdObject adObject9 = adObject3;
                                        unityAdsLoadOptions6 = unityAdsLoadOptions5;
                                        context5 = context4;
                                        TimedValue timedValue4 = new TimedValue(Result.m3021boximpl(objM3022constructorimpl), TimeSource.Monotonic.ValueTimeMark.m4487elapsedNowUwyO8pc(j3), null);
                                        value = ((Result) timedValue4.component1()).getValue();
                                        long duration4 = timedValue4.getDuration();
                                        SendDiagnosticEvent sendDiagnosticEvent4 = ((AndroidLoad) r10).sendDiagnosticEvent;
                                        if (Result.m3029isSuccessimpl(value)) {
                                            str7 = str;
                                        } else {
                                            str7 = str2;
                                        }
                                        Double dBoxDouble4 = Boxing.boxDouble(Duration.m4403toDoubleimpl(duration4, DurationUnit.MILLISECONDS));
                                        thM3025exceptionOrNullimpl = Result.m3025exceptionOrNullimpl(value);
                                        if (thM3025exceptionOrNullimpl != null) {
                                            errorTokenOrNull = ErrorExtensionsKt.getErrorTokenOrNull(thM3025exceptionOrNullimpl);
                                        } else {
                                            errorTokenOrNull = null;
                                        }
                                        SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent4, str7, dBoxDouble4, (Map) null, (Map) null, adObject9, (Integer) null, errorTokenOrNull, (MediationInfo) null, 172, (Object) null);
                                        Object value6 = ((Result) timedValue4.getValue()).getValue();
                                        ResultKt.throwOnFailure(value6);
                                        universalResponse = (UniversalResponseOuterClass.UniversalResponse) value6;
                                        if (universalResponse.hasError()) {
                                            ErrorOuterClass.PublicErrorCode errorCode2 = universalResponse.getError().getErrorCode();
                                            Intrinsics.checkNotNullExpressionValue(errorCode2, "getErrorCode(...)");
                                            errorCode = universalResponse.getError().getErrorCode();
                                            if (errorCode != null) {
                                                loadErrorMsg = UnityAdsConstants.Messages.MSG_INTERNAL_ERROR;
                                            } else {
                                                loadErrorMsg = UnityAdsConstants.Messages.MSG_INTERNAL_ERROR;
                                            }
                                            String errorText = universalResponse.getError().getErrorText();
                                            ErrorOuterClass.Error error = universalResponse.getError();
                                            Intrinsics.checkNotNullExpressionValue(error, "getError(...)");
                                            i3 = i7;
                                            r16 = r6;
                                            failure = new LoadResult.Failure(errorCode2, loadErrorMsg, null, "gateway", errorText, ErrorExtensionsKt.getErrorTokenOrNull(error), 4, null);
                                            r7 = i8;
                                        } else {
                                            adPlayerConfigResponse = universalResponse.getPayload().getAdPlayerConfigResponse();
                                            AdResponseKt.Dsl.Companion companion7 = AdResponseKt.Dsl.INSTANCE;
                                            AdResponseOuterClass.AdResponse.Builder builderNewBuilder = AdResponseOuterClass.AdResponse.newBuilder();
                                            Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
                                            dsl_create = companion7._create(builderNewBuilder);
                                            ByteString adData2 = headerBiddingAdMarkup2.getAdData();
                                            str8 = str10;
                                            Intrinsics.checkNotNullExpressionValue(adData2, str8);
                                            dsl_create.setAdData(adData2);
                                            dsl_create.setAdDataVersion(headerBiddingAdMarkup2.getAdDataVersion());
                                            ByteString trackingToken = adPlayerConfigResponse.getTrackingToken();
                                            Intrinsics.checkNotNullExpressionValue(trackingToken, "getTrackingToken(...)");
                                            dsl_create.setTrackingToken(trackingToken);
                                            ByteString impressionConfiguration = adPlayerConfigResponse.getImpressionConfiguration();
                                            Intrinsics.checkNotNullExpressionValue(impressionConfiguration, "getImpressionConfiguration(...)");
                                            dsl_create.setImpressionConfiguration(impressionConfiguration);
                                            dsl_create.setImpressionConfigurationVersion(adPlayerConfigResponse.getImpressionConfigurationVersion());
                                            WebviewConfiguration.WebViewConfiguration webviewConfiguration = adPlayerConfigResponse.getWebviewConfiguration();
                                            Intrinsics.checkNotNullExpressionValue(webviewConfiguration, "getWebviewConfiguration(...)");
                                            dsl_create.setWebviewConfiguration(webviewConfiguration);
                                            ByteString adDataRefreshToken = adPlayerConfigResponse.getAdDataRefreshToken();
                                            Intrinsics.checkNotNullExpressionValue(adDataRefreshToken, "getAdDataRefreshToken(...)");
                                            dsl_create.setAdDataRefreshToken(adDataRefreshToken);
                                            CampaignMetadataOuterClass.CampaignMetadata campaignMetadata = adPlayerConfigResponse.getCampaignMetadata();
                                            Intrinsics.checkNotNullExpressionValue(campaignMetadata, "getCampaignMetadata(...)");
                                            dsl_create.setCampaignMetadata(campaignMetadata);
                                            if (adPlayerConfigResponse.hasError()) {
                                                ErrorOuterClass.Error error2 = adPlayerConfigResponse.getError();
                                                Intrinsics.checkNotNullExpressionValue(error2, "getError(...)");
                                                dsl_create.setError(error2);
                                            }
                                            adData = adPlayerConfigResponse.getAdData();
                                            Intrinsics.checkNotNullExpressionValue(adData, str8);
                                            if (ByteStringsKt.isNotEmpty(adData)) {
                                                ByteString adData3 = adPlayerConfigResponse.getAdData();
                                                Intrinsics.checkNotNullExpressionValue(adData3, str8);
                                                dsl_create.setAdData(adData3);
                                                dsl_create.setAdDataVersion(adPlayerConfigResponse.getAdDataVersion());
                                            }
                                            adResponse_build = dsl_create._build();
                                            i15 = i8;
                                            context6 = context5;
                                            ?? r2 = r6;
                                            diagnosticAdType6 = diagnosticAdType5;
                                            r14 = r2;
                                            byteString7 = byteString6;
                                            unityAdsLoadOptions7 = unityAdsLoadOptions6;
                                            r15 = r10;
                                            obj12 = obj9;
                                            i16 = i7;
                                            AdResponseOuterClass.AdResponse adResponse4 = adResponse_build;
                                            try {
                                                HandleGatewayAdResponse handleGatewayAdResponse4 = ((AndroidLoad) r15).handleGatewayAdResponse;
                                                Intrinsics.checkNotNull(adResponse4);
                                                if (i6 != 0) {
                                                    z2 = z;
                                                } else {
                                                    z2 = false;
                                                }
                                                anonymousClass3.L$0 = r15;
                                                anonymousClass3.L$1 = byteString7;
                                                anonymousClass3.L$2 = null;
                                                anonymousClass3.L$3 = null;
                                                anonymousClass3.L$4 = null;
                                                anonymousClass3.L$5 = null;
                                                anonymousClass3.L$6 = null;
                                                anonymousClass3.L$7 = null;
                                                anonymousClass3.L$8 = null;
                                                anonymousClass3.I$0 = i15;
                                                anonymousClass3.I$1 = i16;
                                                anonymousClass3.J$0 = r14;
                                                anonymousClass3.label = 5;
                                                anonymousClass2 = anonymousClass3;
                                                try {
                                                    objInvoke3 = handleGatewayAdResponse4.invoke(unityAdsLoadOptions7, byteString7, adResponse4, context6, str4, diagnosticAdType6, z2, false, anonymousClass2);
                                                    anonymousClass3 = anonymousClass2;
                                                    if (objInvoke3 == obj12) {
                                                        return obj12;
                                                    }
                                                    i7 = i16;
                                                    i8 = i15;
                                                    r11 = r15;
                                                    r12 = r14;
                                                    success = (LoadResult) objInvoke3;
                                                    if (success instanceof LoadResult.Success) {
                                                        ad = ((AndroidLoad) r11).adRepository.getAd(byteString7);
                                                        if (ad == null) {
                                                            success = new LoadResult.Failure(ErrorOuterClass.PublicErrorCode.PUBLIC_ERROR_CODE_UNSPECIFIED, LoadResult.MSG_AD_OBJECT, null, "ad_object_not_found", null, null, 52, null);
                                                        } else {
                                                            success = new LoadResult.Success(ad);
                                                        }
                                                    } else if (!(success instanceof LoadResult.Failure)) {
                                                        throw new NoWhenBranchMatchedException();
                                                    }
                                                    r17 = r12;
                                                    failureHandleGatewayException = success;
                                                    r9 = i8;
                                                    i3 = i7;
                                                    failure = failureHandleGatewayException;
                                                    r7 = r9;
                                                    r16 = r17;
                                                } catch (UnityAdsNetworkException e5) {
                                                    e = e5;
                                                    anonymousClass3 = anonymousClass2;
                                                    i7 = i16;
                                                    r1 = r14;
                                                    i8 = i15;
                                                    r11 = r15;
                                                    r17 = r1;
                                                    failureHandleGatewayException = r11.handleGatewayException(e);
                                                    i3 = i7;
                                                    r9 = i8;
                                                    failure = failureHandleGatewayException;
                                                    r7 = r9;
                                                    r16 = r17;
                                                    if (r7 == 0) {
                                                        anonymousClass3.this$0.sessionRepository.setLastLoadLatency((int) TimeExtensionsKt.elapsedMillis(TimeSource.Monotonic.ValueTimeMark.m4483boximpl(r16)));
                                                        if (failure instanceof LoadResult.Success) {
                                                            anonymousClass3.this$0.sessionRepository.incrementSuccessCount();
                                                        } else {
                                                            if (!(failure instanceof LoadResult.Failure)) {
                                                                throw new NoWhenBranchMatchedException();
                                                            }
                                                            anonymousClass3.this$0.sessionRepository.incrementAllErrorsCount();
                                                            if (anonymousClass3.this$0.isCachePhaseFailure((LoadResult.Failure) failure)) {
                                                                anonymousClass3.this$0.sessionRepository.incrementCacheTimeoutErrorsCount();
                                                            }
                                                        }
                                                    }
                                                    return failure;
                                                }
                                            } catch (UnityAdsNetworkException e6) {
                                                e = e6;
                                            }
                                        }
                                        if (r7 == 0) {
                                            anonymousClass3.this$0.sessionRepository.setLastLoadLatency((int) TimeExtensionsKt.elapsedMillis(TimeSource.Monotonic.ValueTimeMark.m4483boximpl(r16)));
                                            if (failure instanceof LoadResult.Success) {
                                                anonymousClass3.this$0.sessionRepository.incrementSuccessCount();
                                            } else {
                                                if (!(failure instanceof LoadResult.Failure)) {
                                                    throw new NoWhenBranchMatchedException();
                                                }
                                                anonymousClass3.this$0.sessionRepository.incrementAllErrorsCount();
                                                if (anonymousClass3.this$0.isCachePhaseFailure((LoadResult.Failure) failure)) {
                                                    anonymousClass3.this$0.sessionRepository.incrementCacheTimeoutErrorsCount();
                                                }
                                            }
                                        }
                                        return failure;
                                    }
                                    TimedValue timedValue5 = new TimedValue(Result.m3021boximpl(objM3022constructorimpl), TimeSource.Monotonic.ValueTimeMark.m4487elapsedNowUwyO8pc(j3), null);
                                    value = ((Result) timedValue5.component1()).getValue();
                                    long duration5 = timedValue5.getDuration();
                                    SendDiagnosticEvent sendDiagnosticEvent5 = ((AndroidLoad) r10).sendDiagnosticEvent;
                                    if (Result.m3029isSuccessimpl(value)) {
                                        str7 = str;
                                    } else {
                                        str7 = str2;
                                    }
                                    Double dBoxDouble5 = Boxing.boxDouble(Duration.m4403toDoubleimpl(duration5, DurationUnit.MILLISECONDS));
                                    thM3025exceptionOrNullimpl = Result.m3025exceptionOrNullimpl(value);
                                    if (thM3025exceptionOrNullimpl != null) {
                                        errorTokenOrNull = ErrorExtensionsKt.getErrorTokenOrNull(thM3025exceptionOrNullimpl);
                                    } else {
                                        errorTokenOrNull = null;
                                    }
                                    SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent5, str7, dBoxDouble5, (Map) null, (Map) null, adObject9, (Integer) null, errorTokenOrNull, (MediationInfo) null, 172, (Object) null);
                                    Object value7 = ((Result) timedValue5.getValue()).getValue();
                                    ResultKt.throwOnFailure(value7);
                                    universalResponse = (UniversalResponseOuterClass.UniversalResponse) value7;
                                    if (universalResponse.hasError()) {
                                        ErrorOuterClass.PublicErrorCode errorCode3 = universalResponse.getError().getErrorCode();
                                        Intrinsics.checkNotNullExpressionValue(errorCode3, "getErrorCode(...)");
                                        errorCode = universalResponse.getError().getErrorCode();
                                        if (errorCode != null || (loadErrorMsg = UnityAdsErrorKt.getLoadErrorMsg(errorCode)) == null) {
                                            loadErrorMsg = UnityAdsConstants.Messages.MSG_INTERNAL_ERROR;
                                        }
                                        String errorText2 = universalResponse.getError().getErrorText();
                                        ErrorOuterClass.Error error3 = universalResponse.getError();
                                        Intrinsics.checkNotNullExpressionValue(error3, "getError(...)");
                                        i3 = i7;
                                        r16 = r6;
                                        failure = new LoadResult.Failure(errorCode3, loadErrorMsg, null, "gateway", errorText2, ErrorExtensionsKt.getErrorTokenOrNull(error3), 4, null);
                                        r7 = i8;
                                    } else {
                                        adPlayerConfigResponse = universalResponse.getPayload().getAdPlayerConfigResponse();
                                        AdResponseKt.Dsl.Companion companion8 = AdResponseKt.Dsl.INSTANCE;
                                        AdResponseOuterClass.AdResponse.Builder builderNewBuilder2 = AdResponseOuterClass.AdResponse.newBuilder();
                                        Intrinsics.checkNotNullExpressionValue(builderNewBuilder2, "newBuilder(...)");
                                        dsl_create = companion8._create(builderNewBuilder2);
                                        ByteString adData4 = headerBiddingAdMarkup2.getAdData();
                                        str8 = str10;
                                        Intrinsics.checkNotNullExpressionValue(adData4, str8);
                                        dsl_create.setAdData(adData4);
                                        dsl_create.setAdDataVersion(headerBiddingAdMarkup2.getAdDataVersion());
                                        ByteString trackingToken2 = adPlayerConfigResponse.getTrackingToken();
                                        Intrinsics.checkNotNullExpressionValue(trackingToken2, "getTrackingToken(...)");
                                        dsl_create.setTrackingToken(trackingToken2);
                                        ByteString impressionConfiguration2 = adPlayerConfigResponse.getImpressionConfiguration();
                                        Intrinsics.checkNotNullExpressionValue(impressionConfiguration2, "getImpressionConfiguration(...)");
                                        dsl_create.setImpressionConfiguration(impressionConfiguration2);
                                        dsl_create.setImpressionConfigurationVersion(adPlayerConfigResponse.getImpressionConfigurationVersion());
                                        WebviewConfiguration.WebViewConfiguration webviewConfiguration2 = adPlayerConfigResponse.getWebviewConfiguration();
                                        Intrinsics.checkNotNullExpressionValue(webviewConfiguration2, "getWebviewConfiguration(...)");
                                        dsl_create.setWebviewConfiguration(webviewConfiguration2);
                                        ByteString adDataRefreshToken2 = adPlayerConfigResponse.getAdDataRefreshToken();
                                        Intrinsics.checkNotNullExpressionValue(adDataRefreshToken2, "getAdDataRefreshToken(...)");
                                        dsl_create.setAdDataRefreshToken(adDataRefreshToken2);
                                        CampaignMetadataOuterClass.CampaignMetadata campaignMetadata2 = adPlayerConfigResponse.getCampaignMetadata();
                                        Intrinsics.checkNotNullExpressionValue(campaignMetadata2, "getCampaignMetadata(...)");
                                        dsl_create.setCampaignMetadata(campaignMetadata2);
                                        if (adPlayerConfigResponse.hasError()) {
                                            ErrorOuterClass.Error error4 = adPlayerConfigResponse.getError();
                                            Intrinsics.checkNotNullExpressionValue(error4, "getError(...)");
                                            dsl_create.setError(error4);
                                        }
                                        adData = adPlayerConfigResponse.getAdData();
                                        Intrinsics.checkNotNullExpressionValue(adData, str8);
                                        if (ByteStringsKt.isNotEmpty(adData)) {
                                            ByteString adData5 = adPlayerConfigResponse.getAdData();
                                            Intrinsics.checkNotNullExpressionValue(adData5, str8);
                                            dsl_create.setAdData(adData5);
                                            dsl_create.setAdDataVersion(adPlayerConfigResponse.getAdDataVersion());
                                        }
                                        adResponse_build = dsl_create._build();
                                        i15 = i8;
                                        context6 = context5;
                                        ?? r3 = r6;
                                        diagnosticAdType6 = diagnosticAdType5;
                                        r14 = r3;
                                        byteString7 = byteString6;
                                        unityAdsLoadOptions7 = unityAdsLoadOptions6;
                                        r15 = r10;
                                        obj12 = obj9;
                                        i16 = i7;
                                        AdResponseOuterClass.AdResponse adResponse5 = adResponse_build;
                                        HandleGatewayAdResponse handleGatewayAdResponse5 = ((AndroidLoad) r15).handleGatewayAdResponse;
                                        Intrinsics.checkNotNull(adResponse5);
                                        if (i6 != 0) {
                                            z2 = z;
                                        } else {
                                            z2 = false;
                                        }
                                        anonymousClass3.L$0 = r15;
                                        anonymousClass3.L$1 = byteString7;
                                        anonymousClass3.L$2 = null;
                                        anonymousClass3.L$3 = null;
                                        anonymousClass3.L$4 = null;
                                        anonymousClass3.L$5 = null;
                                        anonymousClass3.L$6 = null;
                                        anonymousClass3.L$7 = null;
                                        anonymousClass3.L$8 = null;
                                        anonymousClass3.I$0 = i15;
                                        anonymousClass3.I$1 = i16;
                                        anonymousClass3.J$0 = r14;
                                        anonymousClass3.label = 5;
                                        anonymousClass2 = anonymousClass3;
                                        objInvoke3 = handleGatewayAdResponse5.invoke(unityAdsLoadOptions7, byteString7, adResponse5, context6, str4, diagnosticAdType6, z2, false, anonymousClass2);
                                        anonymousClass3 = anonymousClass2;
                                        if (objInvoke3 == obj12) {
                                            return obj12;
                                        }
                                        i7 = i16;
                                        i8 = i15;
                                        r11 = r15;
                                        r12 = r14;
                                    }
                                } catch (UnityAdsNetworkException e7) {
                                    e = e7;
                                    r1 = r6;
                                    r11 = r10;
                                    r17 = r1;
                                    failureHandleGatewayException = r11.handleGatewayException(e);
                                    i3 = i7;
                                    r9 = i8;
                                    failure = failureHandleGatewayException;
                                    r7 = r9;
                                    r16 = r17;
                                    if (r7 == 0) {
                                        anonymousClass3.this$0.sessionRepository.setLastLoadLatency((int) TimeExtensionsKt.elapsedMillis(TimeSource.Monotonic.ValueTimeMark.m4483boximpl(r16)));
                                        if (failure instanceof LoadResult.Success) {
                                            anonymousClass3.this$0.sessionRepository.incrementSuccessCount();
                                        } else {
                                            if (!(failure instanceof LoadResult.Failure)) {
                                                throw new NoWhenBranchMatchedException();
                                            }
                                            anonymousClass3.this$0.sessionRepository.incrementAllErrorsCount();
                                            if (anonymousClass3.this$0.isCachePhaseFailure((LoadResult.Failure) failure)) {
                                                anonymousClass3.this$0.sessionRepository.incrementCacheTimeoutErrorsCount();
                                            }
                                        }
                                    }
                                    return failure;
                                }
                                AdObject adObject10 = adObject3;
                                unityAdsLoadOptions6 = unityAdsLoadOptions5;
                                context5 = context4;
                                if (r7 == 0 && i3 == 0) {
                                    anonymousClass3.this$0.sessionRepository.setLastLoadLatency((int) TimeExtensionsKt.elapsedMillis(TimeSource.Monotonic.ValueTimeMark.m4483boximpl(r16)));
                                    if (failure instanceof LoadResult.Success) {
                                        anonymousClass3.this$0.sessionRepository.incrementSuccessCount();
                                    } else {
                                        if (!(failure instanceof LoadResult.Failure)) {
                                            throw new NoWhenBranchMatchedException();
                                        }
                                        anonymousClass3.this$0.sessionRepository.incrementAllErrorsCount();
                                        if (anonymousClass3.this$0.isCachePhaseFailure((LoadResult.Failure) failure)) {
                                            anonymousClass3.this$0.sessionRepository.incrementCacheTimeoutErrorsCount();
                                        }
                                    }
                                }
                                return failure;
                            }
                            if (i17 != 5) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            long j16 = anonymousClass3.J$0;
                            i7 = anonymousClass3.I$1;
                            i8 = anonymousClass3.I$0;
                            ByteString byteString11 = (ByteString) anonymousClass3.L$1;
                            AndroidLoad androidLoad14 = (AndroidLoad) anonymousClass3.L$0;
                            ResultKt.throwOnFailure(obj);
                            r12 = j16;
                            byteString7 = byteString11;
                            objInvoke3 = obj;
                            r11 = androidLoad14;
                            success = (LoadResult) objInvoke3;
                            if (success instanceof LoadResult.Success) {
                                ad = ((AndroidLoad) r11).adRepository.getAd(byteString7);
                                if (ad == null) {
                                    success = new LoadResult.Failure(ErrorOuterClass.PublicErrorCode.PUBLIC_ERROR_CODE_UNSPECIFIED, LoadResult.MSG_AD_OBJECT, null, "ad_object_not_found", null, null, 52, null);
                                } else {
                                    success = new LoadResult.Success(ad);
                                }
                            } else if (!(success instanceof LoadResult.Failure)) {
                                throw new NoWhenBranchMatchedException();
                            }
                            r17 = r12;
                            failureHandleGatewayException = success;
                            r9 = i8;
                            i3 = i7;
                        } catch (UnityAdsNetworkException e8) {
                            e = e8;
                            r1 = r12;
                            r17 = r1;
                            failureHandleGatewayException = r11.handleGatewayException(e);
                            i3 = i7;
                            r9 = i8;
                        }
                    } else {
                        int i21 = anonymousClass3.I$2;
                        r1 = anonymousClass3.J$0;
                        i7 = anonymousClass3.I$1;
                        i8 = anonymousClass3.I$0;
                        AdObject adObject11 = (AdObject) anonymousClass3.L$8;
                        DiagnosticEventRequestOuterClass.DiagnosticAdType diagnosticAdType9 = (DiagnosticEventRequestOuterClass.DiagnosticAdType) anonymousClass3.L$7;
                        Context context17 = (Context) anonymousClass3.L$5;
                        UnityAdsLoadOptions unityAdsLoadOptions10 = (UnityAdsLoadOptions) anonymousClass3.L$4;
                        String str13 = (String) anonymousClass3.L$3;
                        ByteString byteString12 = (ByteString) anonymousClass3.L$2;
                        i9 = i21;
                        HeaderBiddingAdMarkupOuterClass.HeaderBiddingAdMarkup headerBiddingAdMarkup4 = (HeaderBiddingAdMarkupOuterClass.HeaderBiddingAdMarkup) anonymousClass3.L$1;
                        AndroidLoad androidLoad15 = (AndroidLoad) anonymousClass3.L$0;
                        try {
                            ResultKt.throwOnFailure(obj);
                            objInvoke2 = obj;
                            str = "native_load_config_success_time";
                            str2 = "native_load_config_failure_time";
                            z = true;
                            i10 = i8;
                            obj5 = coroutine_suspended;
                            str5 = str13;
                            androidLoad2 = androidLoad15;
                            adObject3 = adObject11;
                            byteString4 = byteString12;
                            i3 = i7;
                            unityAdsLoadOptions4 = unityAdsLoadOptions10;
                            headerBiddingAdMarkup = headerBiddingAdMarkup4;
                            context3 = context17;
                            diagnosticAdType3 = diagnosticAdType9;
                            r13 = r1;
                            i14 = i9;
                            try {
                                UniversalRequestOuterClass.UniversalRequest universalRequest2 = (UniversalRequestOuterClass.UniversalRequest) objInvoke2;
                                RequestPolicy requestPolicyInvoke2 = androidLoad2.getRequestPolicy.invoke();
                                r26 = r13;
                                try {
                                    jM4482markNowz9LOYto = TimeSource.Monotonic.INSTANCE.m4482markNowz9LOYto();
                                    try {
                                        Result.Companion companion9 = Result.INSTANCE;
                                        GatewayClient gatewayClient2 = androidLoad2.gatewayClient;
                                        OperationType operationType2 = OperationType.LOAD_HEADER_BIDDING;
                                        anonymousClass3.L$0 = androidLoad2;
                                        anonymousClass3.L$1 = headerBiddingAdMarkup;
                                        anonymousClass3.L$2 = byteString4;
                                        anonymousClass3.L$3 = str5;
                                        anonymousClass3.L$4 = unityAdsLoadOptions4;
                                        anonymousClass3.L$5 = context3;
                                        anonymousClass3.L$6 = diagnosticAdType3;
                                        anonymousClass3.L$7 = adObject3;
                                        diagnosticAdType7 = diagnosticAdType3;
                                        try {
                                            anonymousClass3.L$8 = null;
                                            anonymousClass3.I$0 = i10;
                                            anonymousClass3.I$1 = i3;
                                            context4 = context3;
                                            try {
                                                anonymousClass3.J$0 = r26;
                                                anonymousClass3.I$2 = i14;
                                                anonymousClass3.J$1 = jM4482markNowz9LOYto;
                                                anonymousClass3.label = 4;
                                                r27 = r26;
                                                headerBiddingAdMarkup3 = headerBiddingAdMarkup;
                                                byteString8 = byteString4;
                                                str6 = str5;
                                                unityAdsLoadOptions8 = unityAdsLoadOptions4;
                                                try {
                                                    objRequest$default2 = GatewayClient.DefaultImpls.request$default(gatewayClient2, null, universalRequest2, requestPolicyInvoke2, operationType2, anonymousClass3, 1, null);
                                                    if (objRequest$default2 == obj5) {
                                                        return obj5;
                                                    }
                                                    i11 = i14;
                                                    i12 = i3;
                                                    j3 = jM4482markNowz9LOYto;
                                                    byteString6 = byteString8;
                                                    unityAdsLoadOptions5 = unityAdsLoadOptions8;
                                                    r8 = r27;
                                                    i13 = i10;
                                                    headerBiddingAdMarkup2 = headerBiddingAdMarkup3;
                                                    diagnosticAdType4 = diagnosticAdType7;
                                                    androidLoad4 = androidLoad2;
                                                    obj7 = obj5;
                                                    objM3022constructorimpl = Result.m3022constructorimpl((UniversalResponseOuterClass.UniversalResponse) objRequest$default2);
                                                    String str14 = str6;
                                                    i6 = i11;
                                                    i7 = i12;
                                                    i8 = i13;
                                                    diagnosticAdType5 = diagnosticAdType4;
                                                    str4 = str14;
                                                    r6 = r8;
                                                    r10 = androidLoad4;
                                                    obj9 = obj7;
                                                    AdObject adObject12 = adObject3;
                                                    unityAdsLoadOptions6 = unityAdsLoadOptions5;
                                                    context5 = context4;
                                                    TimedValue timedValue6 = new TimedValue(Result.m3021boximpl(objM3022constructorimpl), TimeSource.Monotonic.ValueTimeMark.m4487elapsedNowUwyO8pc(j3), null);
                                                    value = ((Result) timedValue6.component1()).getValue();
                                                    long duration6 = timedValue6.getDuration();
                                                    SendDiagnosticEvent sendDiagnosticEvent6 = ((AndroidLoad) r10).sendDiagnosticEvent;
                                                    if (Result.m3029isSuccessimpl(value)) {
                                                        str7 = str;
                                                    } else {
                                                        str7 = str2;
                                                    }
                                                    Double dBoxDouble6 = Boxing.boxDouble(Duration.m4403toDoubleimpl(duration6, DurationUnit.MILLISECONDS));
                                                    thM3025exceptionOrNullimpl = Result.m3025exceptionOrNullimpl(value);
                                                    if (thM3025exceptionOrNullimpl != null) {
                                                        errorTokenOrNull = ErrorExtensionsKt.getErrorTokenOrNull(thM3025exceptionOrNullimpl);
                                                    } else {
                                                        errorTokenOrNull = null;
                                                    }
                                                    SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent6, str7, dBoxDouble6, (Map) null, (Map) null, adObject12, (Integer) null, errorTokenOrNull, (MediationInfo) null, 172, (Object) null);
                                                    Object value8 = ((Result) timedValue6.getValue()).getValue();
                                                    ResultKt.throwOnFailure(value8);
                                                    universalResponse = (UniversalResponseOuterClass.UniversalResponse) value8;
                                                    if (universalResponse.hasError()) {
                                                        ErrorOuterClass.PublicErrorCode errorCode4 = universalResponse.getError().getErrorCode();
                                                        Intrinsics.checkNotNullExpressionValue(errorCode4, "getErrorCode(...)");
                                                        errorCode = universalResponse.getError().getErrorCode();
                                                        if (errorCode != null) {
                                                            loadErrorMsg = UnityAdsConstants.Messages.MSG_INTERNAL_ERROR;
                                                        } else {
                                                            loadErrorMsg = UnityAdsConstants.Messages.MSG_INTERNAL_ERROR;
                                                        }
                                                        String errorText3 = universalResponse.getError().getErrorText();
                                                        ErrorOuterClass.Error error5 = universalResponse.getError();
                                                        Intrinsics.checkNotNullExpressionValue(error5, "getError(...)");
                                                        i3 = i7;
                                                        r16 = r6;
                                                        failure = new LoadResult.Failure(errorCode4, loadErrorMsg, null, "gateway", errorText3, ErrorExtensionsKt.getErrorTokenOrNull(error5), 4, null);
                                                        r7 = i8;
                                                    } else {
                                                        adPlayerConfigResponse = universalResponse.getPayload().getAdPlayerConfigResponse();
                                                        AdResponseKt.Dsl.Companion companion10 = AdResponseKt.Dsl.INSTANCE;
                                                        AdResponseOuterClass.AdResponse.Builder builderNewBuilder3 = AdResponseOuterClass.AdResponse.newBuilder();
                                                        Intrinsics.checkNotNullExpressionValue(builderNewBuilder3, "newBuilder(...)");
                                                        dsl_create = companion10._create(builderNewBuilder3);
                                                        ByteString adData6 = headerBiddingAdMarkup2.getAdData();
                                                        str8 = str10;
                                                        Intrinsics.checkNotNullExpressionValue(adData6, str8);
                                                        dsl_create.setAdData(adData6);
                                                        dsl_create.setAdDataVersion(headerBiddingAdMarkup2.getAdDataVersion());
                                                        ByteString trackingToken3 = adPlayerConfigResponse.getTrackingToken();
                                                        Intrinsics.checkNotNullExpressionValue(trackingToken3, "getTrackingToken(...)");
                                                        dsl_create.setTrackingToken(trackingToken3);
                                                        ByteString impressionConfiguration3 = adPlayerConfigResponse.getImpressionConfiguration();
                                                        Intrinsics.checkNotNullExpressionValue(impressionConfiguration3, "getImpressionConfiguration(...)");
                                                        dsl_create.setImpressionConfiguration(impressionConfiguration3);
                                                        dsl_create.setImpressionConfigurationVersion(adPlayerConfigResponse.getImpressionConfigurationVersion());
                                                        WebviewConfiguration.WebViewConfiguration webviewConfiguration3 = adPlayerConfigResponse.getWebviewConfiguration();
                                                        Intrinsics.checkNotNullExpressionValue(webviewConfiguration3, "getWebviewConfiguration(...)");
                                                        dsl_create.setWebviewConfiguration(webviewConfiguration3);
                                                        ByteString adDataRefreshToken3 = adPlayerConfigResponse.getAdDataRefreshToken();
                                                        Intrinsics.checkNotNullExpressionValue(adDataRefreshToken3, "getAdDataRefreshToken(...)");
                                                        dsl_create.setAdDataRefreshToken(adDataRefreshToken3);
                                                        CampaignMetadataOuterClass.CampaignMetadata campaignMetadata3 = adPlayerConfigResponse.getCampaignMetadata();
                                                        Intrinsics.checkNotNullExpressionValue(campaignMetadata3, "getCampaignMetadata(...)");
                                                        dsl_create.setCampaignMetadata(campaignMetadata3);
                                                        if (adPlayerConfigResponse.hasError()) {
                                                            ErrorOuterClass.Error error6 = adPlayerConfigResponse.getError();
                                                            Intrinsics.checkNotNullExpressionValue(error6, "getError(...)");
                                                            dsl_create.setError(error6);
                                                        }
                                                        adData = adPlayerConfigResponse.getAdData();
                                                        Intrinsics.checkNotNullExpressionValue(adData, str8);
                                                        if (ByteStringsKt.isNotEmpty(adData)) {
                                                            ByteString adData7 = adPlayerConfigResponse.getAdData();
                                                            Intrinsics.checkNotNullExpressionValue(adData7, str8);
                                                            dsl_create.setAdData(adData7);
                                                            dsl_create.setAdDataVersion(adPlayerConfigResponse.getAdDataVersion());
                                                        }
                                                        adResponse_build = dsl_create._build();
                                                        i15 = i8;
                                                        context6 = context5;
                                                        ?? r4 = r6;
                                                        diagnosticAdType6 = diagnosticAdType5;
                                                        r14 = r4;
                                                        byteString7 = byteString6;
                                                        unityAdsLoadOptions7 = unityAdsLoadOptions6;
                                                        r15 = r10;
                                                        obj12 = obj9;
                                                        i16 = i7;
                                                        AdResponseOuterClass.AdResponse adResponse6 = adResponse_build;
                                                        HandleGatewayAdResponse handleGatewayAdResponse6 = ((AndroidLoad) r15).handleGatewayAdResponse;
                                                        Intrinsics.checkNotNull(adResponse6);
                                                        if (i6 != 0) {
                                                            z2 = z;
                                                        } else {
                                                            z2 = false;
                                                        }
                                                        anonymousClass3.L$0 = r15;
                                                        anonymousClass3.L$1 = byteString7;
                                                        anonymousClass3.L$2 = null;
                                                        anonymousClass3.L$3 = null;
                                                        anonymousClass3.L$4 = null;
                                                        anonymousClass3.L$5 = null;
                                                        anonymousClass3.L$6 = null;
                                                        anonymousClass3.L$7 = null;
                                                        anonymousClass3.L$8 = null;
                                                        anonymousClass3.I$0 = i15;
                                                        anonymousClass3.I$1 = i16;
                                                        anonymousClass3.J$0 = r14;
                                                        anonymousClass3.label = 5;
                                                        anonymousClass2 = anonymousClass3;
                                                        objInvoke3 = handleGatewayAdResponse6.invoke(unityAdsLoadOptions7, byteString7, adResponse6, context6, str4, diagnosticAdType6, z2, false, anonymousClass2);
                                                        anonymousClass3 = anonymousClass2;
                                                        if (objInvoke3 == obj12) {
                                                            return obj12;
                                                        }
                                                        i7 = i16;
                                                        i8 = i15;
                                                        r11 = r15;
                                                        r12 = r14;
                                                        success = (LoadResult) objInvoke3;
                                                        if (success instanceof LoadResult.Success) {
                                                            ad = ((AndroidLoad) r11).adRepository.getAd(byteString7);
                                                            if (ad == null) {
                                                                success = new LoadResult.Failure(ErrorOuterClass.PublicErrorCode.PUBLIC_ERROR_CODE_UNSPECIFIED, LoadResult.MSG_AD_OBJECT, null, "ad_object_not_found", null, null, 52, null);
                                                            } else {
                                                                success = new LoadResult.Success(ad);
                                                            }
                                                        } else if (!(success instanceof LoadResult.Failure)) {
                                                            throw new NoWhenBranchMatchedException();
                                                        }
                                                        r17 = r12;
                                                        failureHandleGatewayException = success;
                                                        r9 = i8;
                                                        i3 = i7;
                                                    }
                                                    if (r7 == 0) {
                                                        anonymousClass3.this$0.sessionRepository.setLastLoadLatency((int) TimeExtensionsKt.elapsedMillis(TimeSource.Monotonic.ValueTimeMark.m4483boximpl(r16)));
                                                        if (failure instanceof LoadResult.Success) {
                                                            anonymousClass3.this$0.sessionRepository.incrementSuccessCount();
                                                        } else {
                                                            if (!(failure instanceof LoadResult.Failure)) {
                                                                throw new NoWhenBranchMatchedException();
                                                            }
                                                            anonymousClass3.this$0.sessionRepository.incrementAllErrorsCount();
                                                            if (anonymousClass3.this$0.isCachePhaseFailure((LoadResult.Failure) failure)) {
                                                                anonymousClass3.this$0.sessionRepository.incrementCacheTimeoutErrorsCount();
                                                            }
                                                        }
                                                    }
                                                    return failure;
                                                } catch (Throwable th9) {
                                                    th = th9;
                                                    i8 = i10;
                                                    r11 = androidLoad2;
                                                    i7 = i3;
                                                    j3 = jM4482markNowz9LOYto;
                                                    byteString5 = byteString8;
                                                    unityAdsLoadOptions5 = unityAdsLoadOptions8;
                                                    headerBiddingAdMarkup2 = headerBiddingAdMarkup3;
                                                    diagnosticAdType4 = diagnosticAdType7;
                                                    obj8 = obj5;
                                                    r26 = r27;
                                                    Result.Companion companion11 = Result.INSTANCE;
                                                    objM3022constructorimpl = Result.m3022constructorimpl(ResultKt.createFailure(th));
                                                    r10 = r11;
                                                    diagnosticAdType5 = diagnosticAdType4;
                                                    str4 = str6;
                                                    i6 = i14;
                                                    byteString6 = byteString5;
                                                    r6 = r26;
                                                    obj9 = obj8;
                                                }
                                            } catch (Throwable th10) {
                                                th = th10;
                                                r27 = r26;
                                                unityAdsLoadOptions8 = unityAdsLoadOptions4;
                                                str6 = str5;
                                                byteString8 = byteString4;
                                                headerBiddingAdMarkup3 = headerBiddingAdMarkup;
                                                i8 = i10;
                                                r11 = androidLoad2;
                                                i7 = i3;
                                                j3 = jM4482markNowz9LOYto;
                                                byteString5 = byteString8;
                                                unityAdsLoadOptions5 = unityAdsLoadOptions8;
                                                headerBiddingAdMarkup2 = headerBiddingAdMarkup3;
                                                diagnosticAdType4 = diagnosticAdType7;
                                                obj8 = obj5;
                                                r26 = r27;
                                                Result.Companion companion12 = Result.INSTANCE;
                                                objM3022constructorimpl = Result.m3022constructorimpl(ResultKt.createFailure(th));
                                                r10 = r11;
                                                diagnosticAdType5 = diagnosticAdType4;
                                                str4 = str6;
                                                i6 = i14;
                                                byteString6 = byteString5;
                                                r6 = r26;
                                                obj9 = obj8;
                                                AdObject adObject13 = adObject3;
                                                unityAdsLoadOptions6 = unityAdsLoadOptions5;
                                                context5 = context4;
                                                TimedValue timedValue7 = new TimedValue(Result.m3021boximpl(objM3022constructorimpl), TimeSource.Monotonic.ValueTimeMark.m4487elapsedNowUwyO8pc(j3), null);
                                                value = ((Result) timedValue7.component1()).getValue();
                                                long duration7 = timedValue7.getDuration();
                                                SendDiagnosticEvent sendDiagnosticEvent7 = ((AndroidLoad) r10).sendDiagnosticEvent;
                                                if (Result.m3029isSuccessimpl(value)) {
                                                    str7 = str;
                                                } else {
                                                    str7 = str2;
                                                }
                                                Double dBoxDouble7 = Boxing.boxDouble(Duration.m4403toDoubleimpl(duration7, DurationUnit.MILLISECONDS));
                                                thM3025exceptionOrNullimpl = Result.m3025exceptionOrNullimpl(value);
                                                if (thM3025exceptionOrNullimpl != null) {
                                                    errorTokenOrNull = ErrorExtensionsKt.getErrorTokenOrNull(thM3025exceptionOrNullimpl);
                                                } else {
                                                    errorTokenOrNull = null;
                                                }
                                                SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent7, str7, dBoxDouble7, (Map) null, (Map) null, adObject13, (Integer) null, errorTokenOrNull, (MediationInfo) null, 172, (Object) null);
                                                Object value9 = ((Result) timedValue7.getValue()).getValue();
                                                ResultKt.throwOnFailure(value9);
                                                universalResponse = (UniversalResponseOuterClass.UniversalResponse) value9;
                                                if (universalResponse.hasError()) {
                                                    ErrorOuterClass.PublicErrorCode errorCode5 = universalResponse.getError().getErrorCode();
                                                    Intrinsics.checkNotNullExpressionValue(errorCode5, "getErrorCode(...)");
                                                    errorCode = universalResponse.getError().getErrorCode();
                                                    if (errorCode != null) {
                                                        loadErrorMsg = UnityAdsConstants.Messages.MSG_INTERNAL_ERROR;
                                                    } else {
                                                        loadErrorMsg = UnityAdsConstants.Messages.MSG_INTERNAL_ERROR;
                                                    }
                                                    String errorText4 = universalResponse.getError().getErrorText();
                                                    ErrorOuterClass.Error error7 = universalResponse.getError();
                                                    Intrinsics.checkNotNullExpressionValue(error7, "getError(...)");
                                                    i3 = i7;
                                                    r16 = r6;
                                                    failure = new LoadResult.Failure(errorCode5, loadErrorMsg, null, "gateway", errorText4, ErrorExtensionsKt.getErrorTokenOrNull(error7), 4, null);
                                                    r7 = i8;
                                                } else {
                                                    adPlayerConfigResponse = universalResponse.getPayload().getAdPlayerConfigResponse();
                                                    AdResponseKt.Dsl.Companion companion13 = AdResponseKt.Dsl.INSTANCE;
                                                    AdResponseOuterClass.AdResponse.Builder builderNewBuilder4 = AdResponseOuterClass.AdResponse.newBuilder();
                                                    Intrinsics.checkNotNullExpressionValue(builderNewBuilder4, "newBuilder(...)");
                                                    dsl_create = companion13._create(builderNewBuilder4);
                                                    ByteString adData8 = headerBiddingAdMarkup2.getAdData();
                                                    str8 = str10;
                                                    Intrinsics.checkNotNullExpressionValue(adData8, str8);
                                                    dsl_create.setAdData(adData8);
                                                    dsl_create.setAdDataVersion(headerBiddingAdMarkup2.getAdDataVersion());
                                                    ByteString trackingToken4 = adPlayerConfigResponse.getTrackingToken();
                                                    Intrinsics.checkNotNullExpressionValue(trackingToken4, "getTrackingToken(...)");
                                                    dsl_create.setTrackingToken(trackingToken4);
                                                    ByteString impressionConfiguration4 = adPlayerConfigResponse.getImpressionConfiguration();
                                                    Intrinsics.checkNotNullExpressionValue(impressionConfiguration4, "getImpressionConfiguration(...)");
                                                    dsl_create.setImpressionConfiguration(impressionConfiguration4);
                                                    dsl_create.setImpressionConfigurationVersion(adPlayerConfigResponse.getImpressionConfigurationVersion());
                                                    WebviewConfiguration.WebViewConfiguration webviewConfiguration4 = adPlayerConfigResponse.getWebviewConfiguration();
                                                    Intrinsics.checkNotNullExpressionValue(webviewConfiguration4, "getWebviewConfiguration(...)");
                                                    dsl_create.setWebviewConfiguration(webviewConfiguration4);
                                                    ByteString adDataRefreshToken4 = adPlayerConfigResponse.getAdDataRefreshToken();
                                                    Intrinsics.checkNotNullExpressionValue(adDataRefreshToken4, "getAdDataRefreshToken(...)");
                                                    dsl_create.setAdDataRefreshToken(adDataRefreshToken4);
                                                    CampaignMetadataOuterClass.CampaignMetadata campaignMetadata4 = adPlayerConfigResponse.getCampaignMetadata();
                                                    Intrinsics.checkNotNullExpressionValue(campaignMetadata4, "getCampaignMetadata(...)");
                                                    dsl_create.setCampaignMetadata(campaignMetadata4);
                                                    if (adPlayerConfigResponse.hasError()) {
                                                        ErrorOuterClass.Error error8 = adPlayerConfigResponse.getError();
                                                        Intrinsics.checkNotNullExpressionValue(error8, "getError(...)");
                                                        dsl_create.setError(error8);
                                                    }
                                                    adData = adPlayerConfigResponse.getAdData();
                                                    Intrinsics.checkNotNullExpressionValue(adData, str8);
                                                    if (ByteStringsKt.isNotEmpty(adData)) {
                                                        ByteString adData9 = adPlayerConfigResponse.getAdData();
                                                        Intrinsics.checkNotNullExpressionValue(adData9, str8);
                                                        dsl_create.setAdData(adData9);
                                                        dsl_create.setAdDataVersion(adPlayerConfigResponse.getAdDataVersion());
                                                    }
                                                    adResponse_build = dsl_create._build();
                                                    i15 = i8;
                                                    context6 = context5;
                                                    ?? r5 = r6;
                                                    diagnosticAdType6 = diagnosticAdType5;
                                                    r14 = r5;
                                                    byteString7 = byteString6;
                                                    unityAdsLoadOptions7 = unityAdsLoadOptions6;
                                                    r15 = r10;
                                                    obj12 = obj9;
                                                    i16 = i7;
                                                    AdResponseOuterClass.AdResponse adResponse7 = adResponse_build;
                                                    HandleGatewayAdResponse handleGatewayAdResponse7 = ((AndroidLoad) r15).handleGatewayAdResponse;
                                                    Intrinsics.checkNotNull(adResponse7);
                                                    if (i6 != 0) {
                                                        z2 = z;
                                                    } else {
                                                        z2 = false;
                                                    }
                                                    anonymousClass3.L$0 = r15;
                                                    anonymousClass3.L$1 = byteString7;
                                                    anonymousClass3.L$2 = null;
                                                    anonymousClass3.L$3 = null;
                                                    anonymousClass3.L$4 = null;
                                                    anonymousClass3.L$5 = null;
                                                    anonymousClass3.L$6 = null;
                                                    anonymousClass3.L$7 = null;
                                                    anonymousClass3.L$8 = null;
                                                    anonymousClass3.I$0 = i15;
                                                    anonymousClass3.I$1 = i16;
                                                    anonymousClass3.J$0 = r14;
                                                    anonymousClass3.label = 5;
                                                    anonymousClass2 = anonymousClass3;
                                                    objInvoke3 = handleGatewayAdResponse7.invoke(unityAdsLoadOptions7, byteString7, adResponse7, context6, str4, diagnosticAdType6, z2, false, anonymousClass2);
                                                    anonymousClass3 = anonymousClass2;
                                                    if (objInvoke3 == obj12) {
                                                        return obj12;
                                                    }
                                                    i7 = i16;
                                                    i8 = i15;
                                                    r11 = r15;
                                                    r12 = r14;
                                                    success = (LoadResult) objInvoke3;
                                                    if (success instanceof LoadResult.Success) {
                                                        ad = ((AndroidLoad) r11).adRepository.getAd(byteString7);
                                                        if (ad == null) {
                                                            success = new LoadResult.Failure(ErrorOuterClass.PublicErrorCode.PUBLIC_ERROR_CODE_UNSPECIFIED, LoadResult.MSG_AD_OBJECT, null, "ad_object_not_found", null, null, 52, null);
                                                        } else {
                                                            success = new LoadResult.Success(ad);
                                                        }
                                                    } else if (!(success instanceof LoadResult.Failure)) {
                                                        throw new NoWhenBranchMatchedException();
                                                    }
                                                    r17 = r12;
                                                    failureHandleGatewayException = success;
                                                    r9 = i8;
                                                    i3 = i7;
                                                    failure = failureHandleGatewayException;
                                                    r7 = r9;
                                                    r16 = r17;
                                                }
                                                if (r7 == 0) {
                                                    anonymousClass3.this$0.sessionRepository.setLastLoadLatency((int) TimeExtensionsKt.elapsedMillis(TimeSource.Monotonic.ValueTimeMark.m4483boximpl(r16)));
                                                    if (failure instanceof LoadResult.Success) {
                                                        anonymousClass3.this$0.sessionRepository.incrementSuccessCount();
                                                    } else {
                                                        if (!(failure instanceof LoadResult.Failure)) {
                                                            throw new NoWhenBranchMatchedException();
                                                        }
                                                        anonymousClass3.this$0.sessionRepository.incrementAllErrorsCount();
                                                        if (anonymousClass3.this$0.isCachePhaseFailure((LoadResult.Failure) failure)) {
                                                            anonymousClass3.this$0.sessionRepository.incrementCacheTimeoutErrorsCount();
                                                        }
                                                    }
                                                }
                                                return failure;
                                            }
                                        } catch (Throwable th11) {
                                            th = th11;
                                            context4 = context3;
                                            r27 = r26;
                                            unityAdsLoadOptions8 = unityAdsLoadOptions4;
                                            str6 = str5;
                                            byteString8 = byteString4;
                                            headerBiddingAdMarkup3 = headerBiddingAdMarkup;
                                            i8 = i10;
                                            r11 = androidLoad2;
                                            i7 = i3;
                                            j3 = jM4482markNowz9LOYto;
                                            byteString5 = byteString8;
                                            unityAdsLoadOptions5 = unityAdsLoadOptions8;
                                            headerBiddingAdMarkup2 = headerBiddingAdMarkup3;
                                            diagnosticAdType4 = diagnosticAdType7;
                                            obj8 = obj5;
                                            r26 = r27;
                                            Result.Companion companion14 = Result.INSTANCE;
                                            objM3022constructorimpl = Result.m3022constructorimpl(ResultKt.createFailure(th));
                                            r10 = r11;
                                            diagnosticAdType5 = diagnosticAdType4;
                                            str4 = str6;
                                            i6 = i14;
                                            byteString6 = byteString5;
                                            r6 = r26;
                                            obj9 = obj8;
                                            AdObject adObject14 = adObject3;
                                            unityAdsLoadOptions6 = unityAdsLoadOptions5;
                                            context5 = context4;
                                            TimedValue timedValue8 = new TimedValue(Result.m3021boximpl(objM3022constructorimpl), TimeSource.Monotonic.ValueTimeMark.m4487elapsedNowUwyO8pc(j3), null);
                                            value = ((Result) timedValue8.component1()).getValue();
                                            long duration8 = timedValue8.getDuration();
                                            SendDiagnosticEvent sendDiagnosticEvent8 = ((AndroidLoad) r10).sendDiagnosticEvent;
                                            if (Result.m3029isSuccessimpl(value)) {
                                                str7 = str;
                                            } else {
                                                str7 = str2;
                                            }
                                            Double dBoxDouble8 = Boxing.boxDouble(Duration.m4403toDoubleimpl(duration8, DurationUnit.MILLISECONDS));
                                            thM3025exceptionOrNullimpl = Result.m3025exceptionOrNullimpl(value);
                                            if (thM3025exceptionOrNullimpl != null) {
                                                errorTokenOrNull = ErrorExtensionsKt.getErrorTokenOrNull(thM3025exceptionOrNullimpl);
                                            } else {
                                                errorTokenOrNull = null;
                                            }
                                            SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent8, str7, dBoxDouble8, (Map) null, (Map) null, adObject14, (Integer) null, errorTokenOrNull, (MediationInfo) null, 172, (Object) null);
                                            Object value10 = ((Result) timedValue8.getValue()).getValue();
                                            ResultKt.throwOnFailure(value10);
                                            universalResponse = (UniversalResponseOuterClass.UniversalResponse) value10;
                                            if (universalResponse.hasError()) {
                                                ErrorOuterClass.PublicErrorCode errorCode6 = universalResponse.getError().getErrorCode();
                                                Intrinsics.checkNotNullExpressionValue(errorCode6, "getErrorCode(...)");
                                                errorCode = universalResponse.getError().getErrorCode();
                                                if (errorCode != null) {
                                                    loadErrorMsg = UnityAdsConstants.Messages.MSG_INTERNAL_ERROR;
                                                } else {
                                                    loadErrorMsg = UnityAdsConstants.Messages.MSG_INTERNAL_ERROR;
                                                }
                                                String errorText5 = universalResponse.getError().getErrorText();
                                                ErrorOuterClass.Error error9 = universalResponse.getError();
                                                Intrinsics.checkNotNullExpressionValue(error9, "getError(...)");
                                                i3 = i7;
                                                r16 = r6;
                                                failure = new LoadResult.Failure(errorCode6, loadErrorMsg, null, "gateway", errorText5, ErrorExtensionsKt.getErrorTokenOrNull(error9), 4, null);
                                                r7 = i8;
                                            } else {
                                                adPlayerConfigResponse = universalResponse.getPayload().getAdPlayerConfigResponse();
                                                AdResponseKt.Dsl.Companion companion15 = AdResponseKt.Dsl.INSTANCE;
                                                AdResponseOuterClass.AdResponse.Builder builderNewBuilder5 = AdResponseOuterClass.AdResponse.newBuilder();
                                                Intrinsics.checkNotNullExpressionValue(builderNewBuilder5, "newBuilder(...)");
                                                dsl_create = companion15._create(builderNewBuilder5);
                                                ByteString adData10 = headerBiddingAdMarkup2.getAdData();
                                                str8 = str10;
                                                Intrinsics.checkNotNullExpressionValue(adData10, str8);
                                                dsl_create.setAdData(adData10);
                                                dsl_create.setAdDataVersion(headerBiddingAdMarkup2.getAdDataVersion());
                                                ByteString trackingToken5 = adPlayerConfigResponse.getTrackingToken();
                                                Intrinsics.checkNotNullExpressionValue(trackingToken5, "getTrackingToken(...)");
                                                dsl_create.setTrackingToken(trackingToken5);
                                                ByteString impressionConfiguration5 = adPlayerConfigResponse.getImpressionConfiguration();
                                                Intrinsics.checkNotNullExpressionValue(impressionConfiguration5, "getImpressionConfiguration(...)");
                                                dsl_create.setImpressionConfiguration(impressionConfiguration5);
                                                dsl_create.setImpressionConfigurationVersion(adPlayerConfigResponse.getImpressionConfigurationVersion());
                                                WebviewConfiguration.WebViewConfiguration webviewConfiguration5 = adPlayerConfigResponse.getWebviewConfiguration();
                                                Intrinsics.checkNotNullExpressionValue(webviewConfiguration5, "getWebviewConfiguration(...)");
                                                dsl_create.setWebviewConfiguration(webviewConfiguration5);
                                                ByteString adDataRefreshToken5 = adPlayerConfigResponse.getAdDataRefreshToken();
                                                Intrinsics.checkNotNullExpressionValue(adDataRefreshToken5, "getAdDataRefreshToken(...)");
                                                dsl_create.setAdDataRefreshToken(adDataRefreshToken5);
                                                CampaignMetadataOuterClass.CampaignMetadata campaignMetadata5 = adPlayerConfigResponse.getCampaignMetadata();
                                                Intrinsics.checkNotNullExpressionValue(campaignMetadata5, "getCampaignMetadata(...)");
                                                dsl_create.setCampaignMetadata(campaignMetadata5);
                                                if (adPlayerConfigResponse.hasError()) {
                                                    ErrorOuterClass.Error error10 = adPlayerConfigResponse.getError();
                                                    Intrinsics.checkNotNullExpressionValue(error10, "getError(...)");
                                                    dsl_create.setError(error10);
                                                }
                                                adData = adPlayerConfigResponse.getAdData();
                                                Intrinsics.checkNotNullExpressionValue(adData, str8);
                                                if (ByteStringsKt.isNotEmpty(adData)) {
                                                    ByteString adData11 = adPlayerConfigResponse.getAdData();
                                                    Intrinsics.checkNotNullExpressionValue(adData11, str8);
                                                    dsl_create.setAdData(adData11);
                                                    dsl_create.setAdDataVersion(adPlayerConfigResponse.getAdDataVersion());
                                                }
                                                adResponse_build = dsl_create._build();
                                                i15 = i8;
                                                context6 = context5;
                                                ?? r18 = r6;
                                                diagnosticAdType6 = diagnosticAdType5;
                                                r14 = r18;
                                                byteString7 = byteString6;
                                                unityAdsLoadOptions7 = unityAdsLoadOptions6;
                                                r15 = r10;
                                                obj12 = obj9;
                                                i16 = i7;
                                                AdResponseOuterClass.AdResponse adResponse8 = adResponse_build;
                                                HandleGatewayAdResponse handleGatewayAdResponse8 = ((AndroidLoad) r15).handleGatewayAdResponse;
                                                Intrinsics.checkNotNull(adResponse8);
                                                if (i6 != 0) {
                                                    z2 = z;
                                                } else {
                                                    z2 = false;
                                                }
                                                anonymousClass3.L$0 = r15;
                                                anonymousClass3.L$1 = byteString7;
                                                anonymousClass3.L$2 = null;
                                                anonymousClass3.L$3 = null;
                                                anonymousClass3.L$4 = null;
                                                anonymousClass3.L$5 = null;
                                                anonymousClass3.L$6 = null;
                                                anonymousClass3.L$7 = null;
                                                anonymousClass3.L$8 = null;
                                                anonymousClass3.I$0 = i15;
                                                anonymousClass3.I$1 = i16;
                                                anonymousClass3.J$0 = r14;
                                                anonymousClass3.label = 5;
                                                anonymousClass2 = anonymousClass3;
                                                objInvoke3 = handleGatewayAdResponse8.invoke(unityAdsLoadOptions7, byteString7, adResponse8, context6, str4, diagnosticAdType6, z2, false, anonymousClass2);
                                                anonymousClass3 = anonymousClass2;
                                                if (objInvoke3 == obj12) {
                                                    return obj12;
                                                }
                                                i7 = i16;
                                                i8 = i15;
                                                r11 = r15;
                                                r12 = r14;
                                                success = (LoadResult) objInvoke3;
                                                if (success instanceof LoadResult.Success) {
                                                    ad = ((AndroidLoad) r11).adRepository.getAd(byteString7);
                                                    if (ad == null) {
                                                        success = new LoadResult.Failure(ErrorOuterClass.PublicErrorCode.PUBLIC_ERROR_CODE_UNSPECIFIED, LoadResult.MSG_AD_OBJECT, null, "ad_object_not_found", null, null, 52, null);
                                                    } else {
                                                        success = new LoadResult.Success(ad);
                                                    }
                                                } else if (!(success instanceof LoadResult.Failure)) {
                                                    throw new NoWhenBranchMatchedException();
                                                }
                                                r17 = r12;
                                                failureHandleGatewayException = success;
                                                r9 = i8;
                                                i3 = i7;
                                                failure = failureHandleGatewayException;
                                                r7 = r9;
                                                r16 = r17;
                                            }
                                            if (r7 == 0) {
                                                anonymousClass3.this$0.sessionRepository.setLastLoadLatency((int) TimeExtensionsKt.elapsedMillis(TimeSource.Monotonic.ValueTimeMark.m4483boximpl(r16)));
                                                if (failure instanceof LoadResult.Success) {
                                                    anonymousClass3.this$0.sessionRepository.incrementSuccessCount();
                                                } else {
                                                    if (!(failure instanceof LoadResult.Failure)) {
                                                        throw new NoWhenBranchMatchedException();
                                                    }
                                                    anonymousClass3.this$0.sessionRepository.incrementAllErrorsCount();
                                                    if (anonymousClass3.this$0.isCachePhaseFailure((LoadResult.Failure) failure)) {
                                                        anonymousClass3.this$0.sessionRepository.incrementCacheTimeoutErrorsCount();
                                                    }
                                                }
                                            }
                                            return failure;
                                        }
                                    } catch (Throwable th12) {
                                        th = th12;
                                        diagnosticAdType7 = diagnosticAdType3;
                                    }
                                } catch (UnityAdsNetworkException e9) {
                                    e = e9;
                                    i8 = i10;
                                    r11 = androidLoad2;
                                    i7 = i3;
                                    r1 = r26;
                                    r17 = r1;
                                    failureHandleGatewayException = r11.handleGatewayException(e);
                                    i3 = i7;
                                    r9 = i8;
                                    failure = failureHandleGatewayException;
                                    r7 = r9;
                                    r16 = r17;
                                    if (r7 == 0) {
                                        anonymousClass3.this$0.sessionRepository.setLastLoadLatency((int) TimeExtensionsKt.elapsedMillis(TimeSource.Monotonic.ValueTimeMark.m4483boximpl(r16)));
                                        if (failure instanceof LoadResult.Success) {
                                            anonymousClass3.this$0.sessionRepository.incrementSuccessCount();
                                        } else {
                                            if (!(failure instanceof LoadResult.Failure)) {
                                                throw new NoWhenBranchMatchedException();
                                            }
                                            anonymousClass3.this$0.sessionRepository.incrementAllErrorsCount();
                                            if (anonymousClass3.this$0.isCachePhaseFailure((LoadResult.Failure) failure)) {
                                                anonymousClass3.this$0.sessionRepository.incrementCacheTimeoutErrorsCount();
                                            }
                                        }
                                    }
                                    return failure;
                                }
                            } catch (UnityAdsNetworkException e10) {
                                e = e10;
                                r26 = r13;
                            }
                        } catch (UnityAdsNetworkException e11) {
                            e = e11;
                            r11 = androidLoad15;
                            r17 = r1;
                            failureHandleGatewayException = r11.handleGatewayException(e);
                            i3 = i7;
                            r9 = i8;
                            failure = failureHandleGatewayException;
                            r7 = r9;
                            r16 = r17;
                            if (r7 == 0) {
                                anonymousClass3.this$0.sessionRepository.setLastLoadLatency((int) TimeExtensionsKt.elapsedMillis(TimeSource.Monotonic.ValueTimeMark.m4483boximpl(r16)));
                                if (failure instanceof LoadResult.Success) {
                                    anonymousClass3.this$0.sessionRepository.incrementSuccessCount();
                                } else {
                                    if (!(failure instanceof LoadResult.Failure)) {
                                        throw new NoWhenBranchMatchedException();
                                    }
                                    anonymousClass3.this$0.sessionRepository.incrementAllErrorsCount();
                                    if (anonymousClass3.this$0.isCachePhaseFailure((LoadResult.Failure) failure)) {
                                        anonymousClass3.this$0.sessionRepository.incrementCacheTimeoutErrorsCount();
                                    }
                                }
                            }
                            return failure;
                        }
                    }
                } catch (UnityAdsNetworkException e12) {
                    e = e12;
                }
            } else {
                ResultKt.throwOnFailure(obj);
                CoroutineScope coroutineScope = (CoroutineScope) anonymousClass3.L$0;
                boolean z3 = anonymousClass3.$bannerSize != null;
                LoadConfigurationInternal loadConfigurationInternal = anonymousClass3.$loadOptions.loadConfiguration;
                i3 = (loadConfigurationInternal != null ? loadConfigurationInternal.getAdType() : null) == LoadAdType.REWARDED_OFFERS ? 1 : 0;
                long jM4482markNowz9LOYto3 = TimeSource.Monotonic.INSTANCE.m4482markNowz9LOYto();
                AndroidLoad androidLoad16 = anonymousClass3.this$0;
                HeaderBiddingAdMarkupOuterClass.HeaderBiddingAdMarkup headerBiddingAdMarkup5 = anonymousClass3.$headerBiddingAdMarkup;
                ByteString byteString13 = anonymousClass3.$opportunityId;
                String str15 = anonymousClass3.$placement;
                UnityAdsLoadOptions unityAdsLoadOptions11 = anonymousClass3.$loadOptions;
                AdRequestOuterClass.BannerSize bannerSize = anonymousClass3.$bannerSize;
                str = "native_load_config_success_time";
                Context context18 = anonymousClass3.$context;
                try {
                    try {
                        if (androidLoad16.sessionRepository.isSdkInitialized()) {
                            DiagnosticEventRequestOuterClass.DiagnosticAdType diagnosticAdType10 = z3 ? DiagnosticEventRequestOuterClass.DiagnosticAdType.DIAGNOSTIC_AD_TYPE_BANNER : DiagnosticEventRequestOuterClass.DiagnosticAdType.DIAGNOSTIC_AD_TYPE_FULLSCREEN;
                            boolean zIsEmpty = headerBiddingAdMarkup5.getAdData().isEmpty();
                            str2 = "native_load_config_failure_time";
                            int i22 = !zIsEmpty ? 1 : 0;
                            try {
                                AdObject tmpAdObject = androidLoad16.getTmpAdObject(byteString13, str15, !zIsEmpty, diagnosticAdType10, unityAdsLoadOptions11);
                                diagnosticAdType = diagnosticAdType10;
                                try {
                                    LoadConfigurationInternal loadConfigurationInternal2 = unityAdsLoadOptions11.loadConfiguration;
                                    if (loadConfigurationInternal2 != null) {
                                        try {
                                            ValidateExtrasSize validateExtrasSize = androidLoad16.validateExtrasSize;
                                            Map<String, String> extras = loadConfigurationInternal2.getExtras();
                                            validateExtrasSize.invoke(extras, "load", tmpAdObject);
                                            Unit unit = Unit.INSTANCE;
                                            obj16 = extras;
                                        } catch (UnityAdsNetworkException e13) {
                                            e = e13;
                                            androidLoad7 = androidLoad16;
                                            i8 = z3 ? 1 : 0;
                                            r11 = androidLoad7;
                                            j4 = jM4482markNowz9LOYto3;
                                            i7 = i3;
                                            r1 = j4;
                                            r17 = r1;
                                            failureHandleGatewayException = r11.handleGatewayException(e);
                                            i3 = i7;
                                            r9 = i8;
                                            failure = failureHandleGatewayException;
                                            r7 = r9;
                                            r16 = r17;
                                            if (r7 == 0) {
                                                anonymousClass3.this$0.sessionRepository.setLastLoadLatency((int) TimeExtensionsKt.elapsedMillis(TimeSource.Monotonic.ValueTimeMark.m4483boximpl(r16)));
                                                if (failure instanceof LoadResult.Success) {
                                                    anonymousClass3.this$0.sessionRepository.incrementSuccessCount();
                                                } else {
                                                    if (!(failure instanceof LoadResult.Failure)) {
                                                        throw new NoWhenBranchMatchedException();
                                                    }
                                                    anonymousClass3.this$0.sessionRepository.incrementAllErrorsCount();
                                                    if (anonymousClass3.this$0.isCachePhaseFailure((LoadResult.Failure) failure)) {
                                                        anonymousClass3.this$0.sessionRepository.incrementCacheTimeoutErrorsCount();
                                                    }
                                                }
                                            }
                                            return failure;
                                        }
                                    } else {
                                        obj16 = coroutine_suspended;
                                    }
                                    try {
                                        if (zIsEmpty) {
                                            if (i3 == 0) {
                                                androidLoad16.incrementLoadRequestCount(z3);
                                            }
                                            try {
                                                GetAdRequest getAdRequest = androidLoad16.getAdRequest;
                                                LoadConfigurationInternal loadConfigurationInternal3 = unityAdsLoadOptions11.loadConfiguration;
                                                anonymousClass3.L$0 = androidLoad16;
                                                anonymousClass3.L$1 = byteString13;
                                                anonymousClass3.L$2 = str15;
                                                anonymousClass3.L$3 = unityAdsLoadOptions11;
                                                anonymousClass3.L$4 = context18;
                                                anonymousClass3.L$5 = coroutineScope;
                                                anonymousClass3.L$6 = diagnosticAdType;
                                                anonymousClass3.L$7 = tmpAdObject;
                                                anonymousClass3.I$0 = z3 ? 1 : 0;
                                                anonymousClass3.I$1 = i3;
                                                anonymousClass3.J$0 = jM4482markNowz9LOYto3;
                                                i = i22;
                                                anonymousClass3.I$2 = i;
                                                anonymousClass3.label = 1;
                                                androidLoad = androidLoad16;
                                                objInvoke = getAdRequest.invoke(str15, byteString13, bannerSize, loadConfigurationInternal3, anonymousClass3);
                                                Object obj17 = coroutine_suspended;
                                                if (objInvoke == obj17) {
                                                    return obj17;
                                                }
                                                boolean z4 = z3 ? 1 : 0;
                                                byteString = byteString13;
                                                unityAdsLoadOptions = unityAdsLoadOptions11;
                                                i2 = z4 ? 1 : 0;
                                                str3 = str15;
                                                context = context18;
                                                adObject = tmpAdObject;
                                                obj2 = obj17;
                                                j = jM4482markNowz9LOYto3;
                                                UniversalRequestOuterClass.UniversalRequest universalRequest3 = (UniversalRequestOuterClass.UniversalRequest) objInvoke;
                                                RequestPolicy requestPolicyInvoke3 = androidLoad.getRequestPolicy.invoke();
                                                byteString3 = byteString;
                                                jM4482markNowz9LOYto2 = TimeSource.Monotonic.INSTANCE.m4482markNowz9LOYto();
                                                Result.Companion companion16 = Result.INSTANCE;
                                                GatewayClient gatewayClient3 = androidLoad.gatewayClient;
                                                OperationType operationType3 = OperationType.LOAD;
                                                anonymousClass3.L$0 = androidLoad;
                                                obj15 = obj2;
                                                anonymousClass3.L$1 = byteString3;
                                                anonymousClass3.L$2 = str3;
                                                anonymousClass3.L$3 = unityAdsLoadOptions;
                                                anonymousClass3.L$4 = context;
                                                anonymousClass3.L$5 = diagnosticAdType;
                                                anonymousClass3.L$6 = adObject;
                                                context8 = context;
                                                anonymousClass3.L$7 = null;
                                                anonymousClass3.I$0 = i2;
                                                anonymousClass3.I$1 = i3;
                                                anonymousClass3.J$0 = j;
                                                anonymousClass3.I$2 = i;
                                                anonymousClass3.J$1 = jM4482markNowz9LOYto2;
                                                anonymousClass3.label = 2;
                                                j9 = jM4482markNowz9LOYto2;
                                                unityAdsLoadOptions3 = unityAdsLoadOptions;
                                                i6 = i;
                                                context7 = context8;
                                                obj14 = obj15;
                                                byteString3 = byteString3;
                                                str4 = str3;
                                                z = true;
                                                objRequest$default = GatewayClient.DefaultImpls.request$default(gatewayClient3, null, universalRequest3, requestPolicyInvoke3, operationType3, anonymousClass3, 1, null);
                                                if (objRequest$default == obj14) {
                                                    return obj14;
                                                }
                                                i5 = i3;
                                                j8 = j;
                                                diagnosticAdType2 = diagnosticAdType;
                                                unityAdsLoadOptions2 = unityAdsLoadOptions3;
                                                i4 = i6;
                                                context2 = context7;
                                                byteString2 = byteString3;
                                                j2 = j9;
                                                adObject2 = adObject;
                                                androidLoad6 = androidLoad;
                                                obj4 = obj14;
                                                objM3022constructorimpl2 = Result.m3022constructorimpl((UniversalResponseOuterClass.UniversalResponse) objRequest$default);
                                                byteString3 = byteString2;
                                                i6 = i4;
                                                i7 = i5;
                                                i8 = i2;
                                                j6 = j8;
                                                obj13 = obj4;
                                                r22 = androidLoad6;
                                                AdObject adObject15 = adObject2;
                                                TimedValue timedValue9 = new TimedValue(Result.m3021boximpl(objM3022constructorimpl2), TimeSource.Monotonic.ValueTimeMark.m4487elapsedNowUwyO8pc(j2), null);
                                                value2 = ((Result) timedValue9.component1()).getValue();
                                                long duration9 = timedValue9.getDuration();
                                                SendDiagnosticEvent sendDiagnosticEvent9 = ((AndroidLoad) r22).sendDiagnosticEvent;
                                                if (Result.m3029isSuccessimpl(value2)) {
                                                    str9 = str;
                                                } else {
                                                    str9 = str2;
                                                }
                                                Double dBoxDouble9 = Boxing.boxDouble(Duration.m4403toDoubleimpl(duration9, DurationUnit.MILLISECONDS));
                                                thM3025exceptionOrNullimpl2 = Result.m3025exceptionOrNullimpl(value2);
                                                if (thM3025exceptionOrNullimpl2 != null) {
                                                    errorTokenOrNull2 = ErrorExtensionsKt.getErrorTokenOrNull(thM3025exceptionOrNullimpl2);
                                                } else {
                                                    errorTokenOrNull2 = null;
                                                }
                                                SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent9, str9, dBoxDouble9, (Map) null, (Map) null, adObject15, (Integer) null, errorTokenOrNull2, (MediationInfo) null, 172, (Object) null);
                                                Object value11 = ((Result) timedValue9.getValue()).getValue();
                                                ResultKt.throwOnFailure(value11);
                                                adResponse_build = ((UniversalResponseOuterClass.UniversalResponse) value11).getPayload().getAdResponse();
                                                Context context19 = context2;
                                                i15 = i8;
                                                context6 = context19;
                                                long j17 = j6;
                                                diagnosticAdType6 = diagnosticAdType2;
                                                r14 = j17;
                                                unityAdsLoadOptions7 = unityAdsLoadOptions2;
                                                r15 = r22;
                                                byteString7 = byteString3;
                                                obj12 = obj13;
                                                i16 = i7;
                                                AdResponseOuterClass.AdResponse adResponse9 = adResponse_build;
                                                HandleGatewayAdResponse handleGatewayAdResponse9 = ((AndroidLoad) r15).handleGatewayAdResponse;
                                                Intrinsics.checkNotNull(adResponse9);
                                                if (i6 != 0) {
                                                    z2 = z;
                                                } else {
                                                    z2 = false;
                                                }
                                                anonymousClass3.L$0 = r15;
                                                anonymousClass3.L$1 = byteString7;
                                                anonymousClass3.L$2 = null;
                                                anonymousClass3.L$3 = null;
                                                anonymousClass3.L$4 = null;
                                                anonymousClass3.L$5 = null;
                                                anonymousClass3.L$6 = null;
                                                anonymousClass3.L$7 = null;
                                                anonymousClass3.L$8 = null;
                                                anonymousClass3.I$0 = i15;
                                                anonymousClass3.I$1 = i16;
                                                anonymousClass3.J$0 = r14;
                                                anonymousClass3.label = 5;
                                                anonymousClass2 = anonymousClass3;
                                                objInvoke3 = handleGatewayAdResponse9.invoke(unityAdsLoadOptions7, byteString7, adResponse9, context6, str4, diagnosticAdType6, z2, false, anonymousClass2);
                                                anonymousClass3 = anonymousClass2;
                                                if (objInvoke3 == obj12) {
                                                    return obj12;
                                                }
                                                i7 = i16;
                                                i8 = i15;
                                                r11 = r15;
                                                r12 = r14;
                                                success = (LoadResult) objInvoke3;
                                                if (success instanceof LoadResult.Success) {
                                                    ad = ((AndroidLoad) r11).adRepository.getAd(byteString7);
                                                    if (ad == null) {
                                                        success = new LoadResult.Failure(ErrorOuterClass.PublicErrorCode.PUBLIC_ERROR_CODE_UNSPECIFIED, LoadResult.MSG_AD_OBJECT, null, "ad_object_not_found", null, null, 52, null);
                                                    } else {
                                                        success = new LoadResult.Success(ad);
                                                    }
                                                } else if (!(success instanceof LoadResult.Failure)) {
                                                    throw new NoWhenBranchMatchedException();
                                                }
                                                r17 = r12;
                                                failureHandleGatewayException = success;
                                                r9 = i8;
                                                i3 = i7;
                                            } catch (UnityAdsNetworkException e14) {
                                                e = e14;
                                                obj16 = androidLoad16;
                                                i8 = z3 ? 1 : 0;
                                                obj10 = obj16;
                                                j5 = jM4482markNowz9LOYto3;
                                                r11 = obj10;
                                                j4 = j5;
                                                i7 = i3;
                                                r1 = j4;
                                                r17 = r1;
                                                failureHandleGatewayException = r11.handleGatewayException(e);
                                                i3 = i7;
                                                r9 = i8;
                                                failure = failureHandleGatewayException;
                                                r7 = r9;
                                                r16 = r17;
                                                if (r7 == 0) {
                                                    anonymousClass3.this$0.sessionRepository.setLastLoadLatency((int) TimeExtensionsKt.elapsedMillis(TimeSource.Monotonic.ValueTimeMark.m4483boximpl(r16)));
                                                    if (failure instanceof LoadResult.Success) {
                                                        anonymousClass3.this$0.sessionRepository.incrementSuccessCount();
                                                    } else {
                                                        if (!(failure instanceof LoadResult.Failure)) {
                                                            throw new NoWhenBranchMatchedException();
                                                        }
                                                        anonymousClass3.this$0.sessionRepository.incrementAllErrorsCount();
                                                        if (anonymousClass3.this$0.isCachePhaseFailure((LoadResult.Failure) failure)) {
                                                            anonymousClass3.this$0.sessionRepository.incrementCacheTimeoutErrorsCount();
                                                        }
                                                    }
                                                }
                                                return failure;
                                            }
                                        } else {
                                            Object obj18 = coroutine_suspended;
                                            z = true;
                                            try {
                                                androidLoad16.incrementLoadRequestAdmCount(z3);
                                                GetAdPlayerConfigRequest getAdPlayerConfigRequest = androidLoad16.getAdPlayerConfigRequest;
                                                ByteString configurationToken = headerBiddingAdMarkup5.getConfigurationToken();
                                                Intrinsics.checkNotNullExpressionValue(configurationToken, "getConfigurationToken(...)");
                                                AdFormatOuterClass.AdFormat adFormat = bannerSize != null ? AdFormatOuterClass.AdFormat.AD_FORMAT_BANNER : null;
                                                LoadConfigurationInternal loadConfigurationInternal4 = unityAdsLoadOptions11.loadConfiguration;
                                                anonymousClass3.L$0 = androidLoad16;
                                                androidLoad8 = androidLoad16;
                                                try {
                                                    anonymousClass3.L$1 = headerBiddingAdMarkup5;
                                                    anonymousClass3.L$2 = byteString13;
                                                    anonymousClass3.L$3 = str15;
                                                    anonymousClass3.L$4 = unityAdsLoadOptions11;
                                                    anonymousClass3.L$5 = context18;
                                                    anonymousClass3.L$6 = coroutineScope;
                                                    anonymousClass3.L$7 = diagnosticAdType;
                                                    anonymousClass3.L$8 = tmpAdObject;
                                                    anonymousClass3.I$0 = z3 ? 1 : 0;
                                                    anonymousClass3.I$1 = i3;
                                                    anonymousClass3.J$0 = jM4482markNowz9LOYto3;
                                                    anonymousClass3.I$2 = i22;
                                                    anonymousClass3.label = 3;
                                                    i9 = i22;
                                                    try {
                                                        objInvoke2 = getAdPlayerConfigRequest.invoke(str15, byteString13, configurationToken, adFormat, loadConfigurationInternal4, anonymousClass3);
                                                        anonymousClass3 = anonymousClass3;
                                                        if (objInvoke2 == obj18) {
                                                            return obj18;
                                                        }
                                                        str5 = str15;
                                                        byteString4 = byteString13;
                                                        unityAdsLoadOptions4 = unityAdsLoadOptions11;
                                                        context3 = context18;
                                                        diagnosticAdType3 = diagnosticAdType;
                                                        adObject3 = tmpAdObject;
                                                        i10 = z3 ? 1 : 0;
                                                        headerBiddingAdMarkup = headerBiddingAdMarkup5;
                                                        androidLoad2 = androidLoad8;
                                                        obj5 = obj18;
                                                        r13 = jM4482markNowz9LOYto3;
                                                        i14 = i9;
                                                        UniversalRequestOuterClass.UniversalRequest universalRequest4 = (UniversalRequestOuterClass.UniversalRequest) objInvoke2;
                                                        RequestPolicy requestPolicyInvoke4 = androidLoad2.getRequestPolicy.invoke();
                                                        r26 = r13;
                                                        jM4482markNowz9LOYto = TimeSource.Monotonic.INSTANCE.m4482markNowz9LOYto();
                                                        Result.Companion companion17 = Result.INSTANCE;
                                                        GatewayClient gatewayClient4 = androidLoad2.gatewayClient;
                                                        OperationType operationType4 = OperationType.LOAD_HEADER_BIDDING;
                                                        anonymousClass3.L$0 = androidLoad2;
                                                        anonymousClass3.L$1 = headerBiddingAdMarkup;
                                                        anonymousClass3.L$2 = byteString4;
                                                        anonymousClass3.L$3 = str5;
                                                        anonymousClass3.L$4 = unityAdsLoadOptions4;
                                                        anonymousClass3.L$5 = context3;
                                                        anonymousClass3.L$6 = diagnosticAdType3;
                                                        anonymousClass3.L$7 = adObject3;
                                                        diagnosticAdType7 = diagnosticAdType3;
                                                        anonymousClass3.L$8 = null;
                                                        anonymousClass3.I$0 = i10;
                                                        anonymousClass3.I$1 = i3;
                                                        context4 = context3;
                                                        anonymousClass3.J$0 = r26;
                                                        anonymousClass3.I$2 = i14;
                                                        anonymousClass3.J$1 = jM4482markNowz9LOYto;
                                                        anonymousClass3.label = 4;
                                                        r27 = r26;
                                                        headerBiddingAdMarkup3 = headerBiddingAdMarkup;
                                                        byteString8 = byteString4;
                                                        str6 = str5;
                                                        unityAdsLoadOptions8 = unityAdsLoadOptions4;
                                                        objRequest$default2 = GatewayClient.DefaultImpls.request$default(gatewayClient4, null, universalRequest4, requestPolicyInvoke4, operationType4, anonymousClass3, 1, null);
                                                        if (objRequest$default2 == obj5) {
                                                            return obj5;
                                                        }
                                                        i11 = i14;
                                                        i12 = i3;
                                                        j3 = jM4482markNowz9LOYto;
                                                        byteString6 = byteString8;
                                                        unityAdsLoadOptions5 = unityAdsLoadOptions8;
                                                        r8 = r27;
                                                        i13 = i10;
                                                        headerBiddingAdMarkup2 = headerBiddingAdMarkup3;
                                                        diagnosticAdType4 = diagnosticAdType7;
                                                        androidLoad4 = androidLoad2;
                                                        obj7 = obj5;
                                                        objM3022constructorimpl = Result.m3022constructorimpl((UniversalResponseOuterClass.UniversalResponse) objRequest$default2);
                                                        String str16 = str6;
                                                        i6 = i11;
                                                        i7 = i12;
                                                        i8 = i13;
                                                        diagnosticAdType5 = diagnosticAdType4;
                                                        str4 = str16;
                                                        r6 = r8;
                                                        r10 = androidLoad4;
                                                        obj9 = obj7;
                                                        AdObject adObject16 = adObject3;
                                                        unityAdsLoadOptions6 = unityAdsLoadOptions5;
                                                        context5 = context4;
                                                        TimedValue timedValue10 = new TimedValue(Result.m3021boximpl(objM3022constructorimpl), TimeSource.Monotonic.ValueTimeMark.m4487elapsedNowUwyO8pc(j3), null);
                                                        value = ((Result) timedValue10.component1()).getValue();
                                                        long duration10 = timedValue10.getDuration();
                                                        SendDiagnosticEvent sendDiagnosticEvent10 = ((AndroidLoad) r10).sendDiagnosticEvent;
                                                        if (Result.m3029isSuccessimpl(value)) {
                                                            str7 = str;
                                                        } else {
                                                            str7 = str2;
                                                        }
                                                        Double dBoxDouble10 = Boxing.boxDouble(Duration.m4403toDoubleimpl(duration10, DurationUnit.MILLISECONDS));
                                                        thM3025exceptionOrNullimpl = Result.m3025exceptionOrNullimpl(value);
                                                        if (thM3025exceptionOrNullimpl != null) {
                                                            errorTokenOrNull = ErrorExtensionsKt.getErrorTokenOrNull(thM3025exceptionOrNullimpl);
                                                        } else {
                                                            errorTokenOrNull = null;
                                                        }
                                                        SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent10, str7, dBoxDouble10, (Map) null, (Map) null, adObject16, (Integer) null, errorTokenOrNull, (MediationInfo) null, 172, (Object) null);
                                                        Object value12 = ((Result) timedValue10.getValue()).getValue();
                                                        ResultKt.throwOnFailure(value12);
                                                        universalResponse = (UniversalResponseOuterClass.UniversalResponse) value12;
                                                        if (universalResponse.hasError()) {
                                                            ErrorOuterClass.PublicErrorCode errorCode7 = universalResponse.getError().getErrorCode();
                                                            Intrinsics.checkNotNullExpressionValue(errorCode7, "getErrorCode(...)");
                                                            errorCode = universalResponse.getError().getErrorCode();
                                                            if (errorCode != null) {
                                                                loadErrorMsg = UnityAdsConstants.Messages.MSG_INTERNAL_ERROR;
                                                            } else {
                                                                loadErrorMsg = UnityAdsConstants.Messages.MSG_INTERNAL_ERROR;
                                                            }
                                                            String errorText6 = universalResponse.getError().getErrorText();
                                                            ErrorOuterClass.Error error11 = universalResponse.getError();
                                                            Intrinsics.checkNotNullExpressionValue(error11, "getError(...)");
                                                            i3 = i7;
                                                            r16 = r6;
                                                            failure = new LoadResult.Failure(errorCode7, loadErrorMsg, null, "gateway", errorText6, ErrorExtensionsKt.getErrorTokenOrNull(error11), 4, null);
                                                            r7 = i8;
                                                        } else {
                                                            adPlayerConfigResponse = universalResponse.getPayload().getAdPlayerConfigResponse();
                                                            AdResponseKt.Dsl.Companion companion18 = AdResponseKt.Dsl.INSTANCE;
                                                            AdResponseOuterClass.AdResponse.Builder builderNewBuilder6 = AdResponseOuterClass.AdResponse.newBuilder();
                                                            Intrinsics.checkNotNullExpressionValue(builderNewBuilder6, "newBuilder(...)");
                                                            dsl_create = companion18._create(builderNewBuilder6);
                                                            ByteString adData12 = headerBiddingAdMarkup2.getAdData();
                                                            str8 = str10;
                                                            Intrinsics.checkNotNullExpressionValue(adData12, str8);
                                                            dsl_create.setAdData(adData12);
                                                            dsl_create.setAdDataVersion(headerBiddingAdMarkup2.getAdDataVersion());
                                                            ByteString trackingToken6 = adPlayerConfigResponse.getTrackingToken();
                                                            Intrinsics.checkNotNullExpressionValue(trackingToken6, "getTrackingToken(...)");
                                                            dsl_create.setTrackingToken(trackingToken6);
                                                            ByteString impressionConfiguration6 = adPlayerConfigResponse.getImpressionConfiguration();
                                                            Intrinsics.checkNotNullExpressionValue(impressionConfiguration6, "getImpressionConfiguration(...)");
                                                            dsl_create.setImpressionConfiguration(impressionConfiguration6);
                                                            dsl_create.setImpressionConfigurationVersion(adPlayerConfigResponse.getImpressionConfigurationVersion());
                                                            WebviewConfiguration.WebViewConfiguration webviewConfiguration6 = adPlayerConfigResponse.getWebviewConfiguration();
                                                            Intrinsics.checkNotNullExpressionValue(webviewConfiguration6, "getWebviewConfiguration(...)");
                                                            dsl_create.setWebviewConfiguration(webviewConfiguration6);
                                                            ByteString adDataRefreshToken6 = adPlayerConfigResponse.getAdDataRefreshToken();
                                                            Intrinsics.checkNotNullExpressionValue(adDataRefreshToken6, "getAdDataRefreshToken(...)");
                                                            dsl_create.setAdDataRefreshToken(adDataRefreshToken6);
                                                            CampaignMetadataOuterClass.CampaignMetadata campaignMetadata6 = adPlayerConfigResponse.getCampaignMetadata();
                                                            Intrinsics.checkNotNullExpressionValue(campaignMetadata6, "getCampaignMetadata(...)");
                                                            dsl_create.setCampaignMetadata(campaignMetadata6);
                                                            if (adPlayerConfigResponse.hasError()) {
                                                                ErrorOuterClass.Error error12 = adPlayerConfigResponse.getError();
                                                                Intrinsics.checkNotNullExpressionValue(error12, "getError(...)");
                                                                dsl_create.setError(error12);
                                                            }
                                                            adData = adPlayerConfigResponse.getAdData();
                                                            Intrinsics.checkNotNullExpressionValue(adData, str8);
                                                            if (ByteStringsKt.isNotEmpty(adData)) {
                                                                ByteString adData13 = adPlayerConfigResponse.getAdData();
                                                                Intrinsics.checkNotNullExpressionValue(adData13, str8);
                                                                dsl_create.setAdData(adData13);
                                                                dsl_create.setAdDataVersion(adPlayerConfigResponse.getAdDataVersion());
                                                            }
                                                            adResponse_build = dsl_create._build();
                                                            i15 = i8;
                                                            context6 = context5;
                                                            ?? r19 = r6;
                                                            diagnosticAdType6 = diagnosticAdType5;
                                                            r14 = r19;
                                                            byteString7 = byteString6;
                                                            unityAdsLoadOptions7 = unityAdsLoadOptions6;
                                                            r15 = r10;
                                                            obj12 = obj9;
                                                            i16 = i7;
                                                            AdResponseOuterClass.AdResponse adResponse10 = adResponse_build;
                                                            HandleGatewayAdResponse handleGatewayAdResponse10 = ((AndroidLoad) r15).handleGatewayAdResponse;
                                                            Intrinsics.checkNotNull(adResponse10);
                                                            if (i6 != 0) {
                                                                z2 = z;
                                                            } else {
                                                                z2 = false;
                                                            }
                                                            anonymousClass3.L$0 = r15;
                                                            anonymousClass3.L$1 = byteString7;
                                                            anonymousClass3.L$2 = null;
                                                            anonymousClass3.L$3 = null;
                                                            anonymousClass3.L$4 = null;
                                                            anonymousClass3.L$5 = null;
                                                            anonymousClass3.L$6 = null;
                                                            anonymousClass3.L$7 = null;
                                                            anonymousClass3.L$8 = null;
                                                            anonymousClass3.I$0 = i15;
                                                            anonymousClass3.I$1 = i16;
                                                            anonymousClass3.J$0 = r14;
                                                            anonymousClass3.label = 5;
                                                            anonymousClass2 = anonymousClass3;
                                                            objInvoke3 = handleGatewayAdResponse10.invoke(unityAdsLoadOptions7, byteString7, adResponse10, context6, str4, diagnosticAdType6, z2, false, anonymousClass2);
                                                            anonymousClass3 = anonymousClass2;
                                                            if (objInvoke3 == obj12) {
                                                                return obj12;
                                                            }
                                                            i7 = i16;
                                                            i8 = i15;
                                                            r11 = r15;
                                                            r12 = r14;
                                                            success = (LoadResult) objInvoke3;
                                                            if (success instanceof LoadResult.Success) {
                                                                ad = ((AndroidLoad) r11).adRepository.getAd(byteString7);
                                                                if (ad == null) {
                                                                    success = new LoadResult.Failure(ErrorOuterClass.PublicErrorCode.PUBLIC_ERROR_CODE_UNSPECIFIED, LoadResult.MSG_AD_OBJECT, null, "ad_object_not_found", null, null, 52, null);
                                                                } else {
                                                                    success = new LoadResult.Success(ad);
                                                                }
                                                            } else if (!(success instanceof LoadResult.Failure)) {
                                                                throw new NoWhenBranchMatchedException();
                                                            }
                                                            r17 = r12;
                                                            failureHandleGatewayException = success;
                                                            r9 = i8;
                                                            i3 = i7;
                                                        }
                                                        if (r7 == 0) {
                                                            anonymousClass3.this$0.sessionRepository.setLastLoadLatency((int) TimeExtensionsKt.elapsedMillis(TimeSource.Monotonic.ValueTimeMark.m4483boximpl(r16)));
                                                            if (failure instanceof LoadResult.Success) {
                                                                anonymousClass3.this$0.sessionRepository.incrementSuccessCount();
                                                            } else {
                                                                if (!(failure instanceof LoadResult.Failure)) {
                                                                    throw new NoWhenBranchMatchedException();
                                                                }
                                                                anonymousClass3.this$0.sessionRepository.incrementAllErrorsCount();
                                                                if (anonymousClass3.this$0.isCachePhaseFailure((LoadResult.Failure) failure)) {
                                                                    anonymousClass3.this$0.sessionRepository.incrementCacheTimeoutErrorsCount();
                                                                }
                                                            }
                                                        }
                                                        return failure;
                                                    } catch (UnityAdsNetworkException e15) {
                                                        e = e15;
                                                        anonymousClass3 = anonymousClass3;
                                                        i8 = z3 ? 1 : 0;
                                                        i7 = i3;
                                                        r1 = jM4482markNowz9LOYto3;
                                                        r11 = androidLoad8;
                                                        r17 = r1;
                                                        failureHandleGatewayException = r11.handleGatewayException(e);
                                                        i3 = i7;
                                                        r9 = i8;
                                                        failure = failureHandleGatewayException;
                                                        r7 = r9;
                                                        r16 = r17;
                                                        if (r7 == 0) {
                                                            anonymousClass3.this$0.sessionRepository.setLastLoadLatency((int) TimeExtensionsKt.elapsedMillis(TimeSource.Monotonic.ValueTimeMark.m4483boximpl(r16)));
                                                            if (failure instanceof LoadResult.Success) {
                                                                anonymousClass3.this$0.sessionRepository.incrementSuccessCount();
                                                            } else {
                                                                if (!(failure instanceof LoadResult.Failure)) {
                                                                    throw new NoWhenBranchMatchedException();
                                                                }
                                                                anonymousClass3.this$0.sessionRepository.incrementAllErrorsCount();
                                                                if (anonymousClass3.this$0.isCachePhaseFailure((LoadResult.Failure) failure)) {
                                                                    anonymousClass3.this$0.sessionRepository.incrementCacheTimeoutErrorsCount();
                                                                }
                                                            }
                                                        }
                                                        return failure;
                                                    }
                                                } catch (UnityAdsNetworkException e16) {
                                                    e = e16;
                                                }
                                            } catch (UnityAdsNetworkException e17) {
                                                e = e17;
                                                androidLoad8 = androidLoad16;
                                            }
                                        }
                                    } catch (UnityAdsNetworkException e18) {
                                        e = e18;
                                    }
                                } catch (UnityAdsNetworkException e19) {
                                    e = e19;
                                    androidLoad8 = androidLoad16;
                                }
                            } catch (UnityAdsNetworkException e20) {
                                e = e20;
                                androidLoad8 = androidLoad16;
                            }
                        } else {
                            failureHandleGatewayException = new LoadResult.Failure(ErrorOuterClass.PublicErrorCode.PUBLIC_ERROR_CODE_LOAD_NOT_INITIALIZED, UnityAdsErrorKt.MSG_BOLD_LOAD_FAIL_SDK_NOT_INITIALIZED, null, "not_initialized", null, null, 52, null);
                            r9 = z3;
                            r17 = jM4482markNowz9LOYto3;
                        }
                    } catch (UnityAdsNetworkException e21) {
                        e = e21;
                        androidLoad7 = androidLoad16;
                    }
                } catch (UnityAdsNetworkException e22) {
                    e = e22;
                    androidLoad7 = androidLoad16;
                }
            }
            failure = failureHandleGatewayException;
            r7 = r9;
            r16 = r17;
            if (r7 == 0) {
                anonymousClass3.this$0.sessionRepository.setLastLoadLatency((int) TimeExtensionsKt.elapsedMillis(TimeSource.Monotonic.ValueTimeMark.m4483boximpl(r16)));
                if (failure instanceof LoadResult.Success) {
                    anonymousClass3.this$0.sessionRepository.incrementSuccessCount();
                } else {
                    if (!(failure instanceof LoadResult.Failure)) {
                        throw new NoWhenBranchMatchedException();
                    }
                    anonymousClass3.this$0.sessionRepository.incrementAllErrorsCount();
                    if (anonymousClass3.this$0.isCachePhaseFailure((LoadResult.Failure) failure)) {
                        anonymousClass3.this$0.sessionRepository.incrementCacheTimeoutErrorsCount();
                    }
                }
            }
            return failure;
        }
    }

    public AndroidLoad(CoroutineDispatcher defaultDispatcher, GetAdRequest getAdRequest, GetAdPlayerConfigRequest getAdPlayerConfigRequest, GetRequestPolicy getRequestPolicy, HandleGatewayAdResponse handleGatewayAdResponse, SessionRepository sessionRepository, GatewayClient gatewayClient, AdRepository adRepository, SendDiagnosticEvent sendDiagnosticEvent, ValidateExtrasSize validateExtrasSize) {
        Intrinsics.checkNotNullParameter(defaultDispatcher, "defaultDispatcher");
        Intrinsics.checkNotNullParameter(getAdRequest, "getAdRequest");
        Intrinsics.checkNotNullParameter(getAdPlayerConfigRequest, "getAdPlayerConfigRequest");
        Intrinsics.checkNotNullParameter(getRequestPolicy, "getRequestPolicy");
        Intrinsics.checkNotNullParameter(handleGatewayAdResponse, "handleGatewayAdResponse");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        Intrinsics.checkNotNullParameter(gatewayClient, "gatewayClient");
        Intrinsics.checkNotNullParameter(adRepository, "adRepository");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        Intrinsics.checkNotNullParameter(validateExtrasSize, "validateExtrasSize");
        this.defaultDispatcher = defaultDispatcher;
        this.getAdRequest = getAdRequest;
        this.getAdPlayerConfigRequest = getAdPlayerConfigRequest;
        this.getRequestPolicy = getRequestPolicy;
        this.handleGatewayAdResponse = handleGatewayAdResponse;
        this.sessionRepository = sessionRepository;
        this.gatewayClient = gatewayClient;
        this.adRepository = adRepository;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
        this.validateExtrasSize = validateExtrasSize;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AdObject getTmpAdObject(ByteString opportunityId, String placement, boolean isHeaderBidding, DiagnosticEventRequestOuterClass.DiagnosticAdType adType, UnityAdsLoadOptions loadOptions) {
        return SendDiagnosticEvent.INSTANCE.getTmpAdObjectForEventSending(opportunityId, placement, isHeaderBidding, loadOptions, adType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LoadResult.Failure handleGatewayException(UnityAdsNetworkException e) {
        ErrorOuterClass.PublicErrorCode errorCode;
        String loadErrorMsg;
        ErrorOuterClass.PublicErrorCode errorCode2;
        boolean z = e instanceof NetworkTimeoutException;
        if (z) {
            errorCode = ErrorOuterClass.PublicErrorCode.PUBLIC_ERROR_CODE_TIMEOUT;
        } else if (!(e instanceof GatewayException) || (errorCode = ((GatewayException) e).getErrorCode()) == null) {
            errorCode = ErrorOuterClass.PublicErrorCode.PUBLIC_ERROR_CODE_LOAD_NETWORK;
        }
        ErrorOuterClass.PublicErrorCode publicErrorCode = errorCode;
        if (z) {
            loadErrorMsg = UnityAdsErrorKt.MSG_BOLD_LOAD_FAIL_TIME_OUT;
        } else if (!(e instanceof GatewayException) || (errorCode2 = ((GatewayException) e).getErrorCode()) == null || (loadErrorMsg = UnityAdsErrorKt.getLoadErrorMsg(errorCode2)) == null) {
            loadErrorMsg = UnityAdsErrorKt.getLoadErrorMsg(ErrorOuterClass.PublicErrorCode.PUBLIC_ERROR_CODE_LOAD_NETWORK);
        }
        return new LoadResult.Failure(publicErrorCode, loadErrorMsg, e, z ? "timeout" : "gateway", e.getMessage(), e instanceof GatewayException ? ((GatewayException) e).getErrorToken() : null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void incrementLoadRequestAdmCount(boolean isBanner) {
        if (isBanner) {
            this.sessionRepository.incrementBannerLoadRequestAdmCount();
        } else {
            this.sessionRepository.incrementLoadRequestAdmCount();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void incrementLoadRequestCount(boolean isBanner) {
        if (isBanner) {
            this.sessionRepository.incrementBannerLoadRequestCount();
        } else {
            this.sessionRepository.incrementLoadRequestCount();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isCachePhaseFailure(LoadResult.Failure failure) {
        String reason = failure.getReason();
        int iHashCode = reason.hashCode();
        if (iHashCode == -1131560769) {
            return reason.equals("no_webview_entry_point");
        }
        if (iHashCode != -952823001) {
            return iHashCode == -711698443 && reason.equals("adviewer");
        }
        return reason.equals("invalid_url");
    }

    @Override // com.unity3d.ads.core.domain.Load
    public Object invoke(Context context, String str, ByteString byteString, HeaderBiddingAdMarkupOuterClass.HeaderBiddingAdMarkup headerBiddingAdMarkup, AdRequestOuterClass.BannerSize bannerSize, UnityAdsLoadOptions unityAdsLoadOptions, Continuation<? super LoadResult> continuation) {
        return BuildersKt.withContext(this.defaultDispatcher, new AnonymousClass2(bannerSize, unityAdsLoadOptions, this, headerBiddingAdMarkup, byteString, str, context, null), continuation);
    }
}
