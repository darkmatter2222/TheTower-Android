package com.unity3d.ads.core.domain;

import com.google.protobuf.ByteString;
import com.google.protobuf.kotlin.ByteStringsKt;
import com.google.protobuf.kotlin.DslList;
import com.ironsource.adapters.facebook.FacebookConstants;
import com.unity3d.ads.UnityAds;
import com.unity3d.ads.core.configuration.MediationInitBlobMetadataReader;
import com.unity3d.ads.core.configuration.MediationTraitsMetadataReader;
import com.unity3d.ads.core.data.datasource.GoogleAppIdDataSource;
import com.unity3d.ads.core.data.datasource.InstallReferrerDataSource;
import com.unity3d.ads.core.data.datasource.ModuleInitParamsDataSource;
import com.unity3d.ads.core.data.model.InitializationConfigurationInternal;
import com.unity3d.ads.core.data.repository.DeviceInfoRepository;
import com.unity3d.ads.core.data.repository.LegacyUserConsentRepository;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.data.repository.TcfRepository;
import com.unity3d.ads.core.domain.capability.GatherQuickCapabilities;
import com.unity3d.services.core.device.Storage;
import com.unity3d.services.core.device.StorageManager;
import gatewayprotocol.v1.ClientInfoOuterClass;
import gatewayprotocol.v1.InitializationDeviceInfoKt;
import gatewayprotocol.v1.InitializationRequestKt;
import gatewayprotocol.v1.InitializationRequestOuterClass;
import gatewayprotocol.v1.QuickCapabilitiesKt;
import java.util.Map;
import kotlin.fh;
import org.json.JSONException;
import p005kotlin.Metadata;
import p005kotlin.ResultKt;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.collections.MapsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;
import p005kotlin.coroutines.jvm.internal.DebugMetadata;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.MutablePropertyReference0Impl;

/* JADX INFO: compiled from: AndroidGetInitializationRequestPayload.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB_\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u0012\u0006\u0010\u0014\u001a\u00020\u0015\u0012\u0006\u0010\u0016\u001a\u00020\u0017¢\u0006\u0004\b\u0018\u0010\u0019J\u000e\u0010\u001a\u001a\u00020\u001bH\u0096B¢\u0006\u0002\u0010\u001cR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload;", "Lcom/unity3d/ads/core/domain/GetInitializationRequestPayload;", "getClientInfo", "Lcom/unity3d/ads/core/domain/GetClientInfo;", "sessionRepository", "Lcom/unity3d/ads/core/data/repository/SessionRepository;", "deviceInfoRepository", "Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;", "legacyUserConsentRepository", "Lcom/unity3d/ads/core/data/repository/LegacyUserConsentRepository;", "mediationInitBlobMetadataReader", "Lcom/unity3d/ads/core/configuration/MediationInitBlobMetadataReader;", "installReferrerDataSource", "Lcom/unity3d/ads/core/data/datasource/InstallReferrerDataSource;", "googleAppIdDataSource", "Lcom/unity3d/ads/core/data/datasource/GoogleAppIdDataSource;", "moduleInitParamsDataSource", "Lcom/unity3d/ads/core/data/datasource/ModuleInitParamsDataSource;", "mediationTraitsMetadataReader", "Lcom/unity3d/ads/core/configuration/MediationTraitsMetadataReader;", "gatherQuickCapabilities", "Lcom/unity3d/ads/core/domain/capability/GatherQuickCapabilities;", "tcfRepository", "Lcom/unity3d/ads/core/data/repository/TcfRepository;", "<init>", "(Lcom/unity3d/ads/core/domain/GetClientInfo;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/repository/LegacyUserConsentRepository;Lcom/unity3d/ads/core/configuration/MediationInitBlobMetadataReader;Lcom/unity3d/ads/core/data/datasource/InstallReferrerDataSource;Lcom/unity3d/ads/core/data/datasource/GoogleAppIdDataSource;Lcom/unity3d/ads/core/data/datasource/ModuleInitParamsDataSource;Lcom/unity3d/ads/core/configuration/MediationTraitsMetadataReader;Lcom/unity3d/ads/core/domain/capability/GatherQuickCapabilities;Lcom/unity3d/ads/core/data/repository/TcfRepository;)V", "invoke", "Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Companion", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidGetInitializationRequestPayload implements GetInitializationRequestPayload {
    private static final String BLOB_EXTRA_KEY = "uads_init_blob";
    private final DeviceInfoRepository deviceInfoRepository;
    private final GatherQuickCapabilities gatherQuickCapabilities;
    private final GetClientInfo getClientInfo;
    private final GoogleAppIdDataSource googleAppIdDataSource;
    private final InstallReferrerDataSource installReferrerDataSource;
    private final LegacyUserConsentRepository legacyUserConsentRepository;
    private final MediationInitBlobMetadataReader mediationInitBlobMetadataReader;
    private final MediationTraitsMetadataReader mediationTraitsMetadataReader;
    private final ModuleInitParamsDataSource moduleInitParamsDataSource;
    private final SessionRepository sessionRepository;
    private final TcfRepository tcfRepository;

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidGetInitializationRequestPayload$invoke$1, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidGetInitializationRequestPayload.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidGetInitializationRequestPayload", f = "AndroidGetInitializationRequestPayload.kt", i = {0, 1, 2, 3, 4, 5, 6, 7, 8}, l = {39, 40, 61, 66, 71, 76, 91, fh.h1, 117}, m = "invoke", n = {"$this$invoke_u24lambda_u2417", "$this$invoke_u24lambda_u2417", "$this$invoke_u24lambda_u2417", "$this$invoke_u24lambda_u2417", "$this$invoke_u24lambda_u2417", "$this$invoke_u24lambda_u2417", "$this$invoke_u24lambda_u2417", "$this$invoke_u24lambda_u2417", "$this$invoke_u24lambda_u2417"}, s = {"L$1", "L$1", "L$1", "L$1", "L$1", "L$1", "L$1", "L$1", "L$1"})
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
            return AndroidGetInitializationRequestPayload.this.invoke(this);
        }
    }

    public AndroidGetInitializationRequestPayload(GetClientInfo getClientInfo, SessionRepository sessionRepository, DeviceInfoRepository deviceInfoRepository, LegacyUserConsentRepository legacyUserConsentRepository, MediationInitBlobMetadataReader mediationInitBlobMetadataReader, InstallReferrerDataSource installReferrerDataSource, GoogleAppIdDataSource googleAppIdDataSource, ModuleInitParamsDataSource moduleInitParamsDataSource, MediationTraitsMetadataReader mediationTraitsMetadataReader, GatherQuickCapabilities gatherQuickCapabilities, TcfRepository tcfRepository) {
        Intrinsics.checkNotNullParameter(getClientInfo, "getClientInfo");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        Intrinsics.checkNotNullParameter(deviceInfoRepository, "deviceInfoRepository");
        Intrinsics.checkNotNullParameter(legacyUserConsentRepository, "legacyUserConsentRepository");
        Intrinsics.checkNotNullParameter(mediationInitBlobMetadataReader, "mediationInitBlobMetadataReader");
        Intrinsics.checkNotNullParameter(installReferrerDataSource, "installReferrerDataSource");
        Intrinsics.checkNotNullParameter(googleAppIdDataSource, "googleAppIdDataSource");
        Intrinsics.checkNotNullParameter(moduleInitParamsDataSource, "moduleInitParamsDataSource");
        Intrinsics.checkNotNullParameter(mediationTraitsMetadataReader, "mediationTraitsMetadataReader");
        Intrinsics.checkNotNullParameter(gatherQuickCapabilities, "gatherQuickCapabilities");
        Intrinsics.checkNotNullParameter(tcfRepository, "tcfRepository");
        this.getClientInfo = getClientInfo;
        this.sessionRepository = sessionRepository;
        this.deviceInfoRepository = deviceInfoRepository;
        this.legacyUserConsentRepository = legacyUserConsentRepository;
        this.mediationInitBlobMetadataReader = mediationInitBlobMetadataReader;
        this.installReferrerDataSource = installReferrerDataSource;
        this.googleAppIdDataSource = googleAppIdDataSource;
        this.moduleInitParamsDataSource = moduleInitParamsDataSource;
        this.mediationTraitsMetadataReader = mediationTraitsMetadataReader;
        this.gatherQuickCapabilities = gatherQuickCapabilities;
        this.tcfRepository = tcfRepository;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x02cd  */
    /* JADX WARN: Code duplicated, block: B:106:0x02e3  */
    /* JADX WARN: Code duplicated, block: B:113:0x0313  */
    /* JADX WARN: Code duplicated, block: B:116:0x0322  */
    /* JADX WARN: Code duplicated, block: B:118:0x0334 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:119:0x0336  */
    /* JADX WARN: Code duplicated, block: B:120:0x0339  */
    /* JADX WARN: Code duplicated, block: B:123:0x033d  */
    /* JADX WARN: Code duplicated, block: B:125:0x0340  */
    /* JADX WARN: Code duplicated, block: B:128:0x0345  */
    /* JADX WARN: Code duplicated, block: B:133:0x035b  */
    /* JADX WARN: Code duplicated, block: B:136:0x0370  */
    /* JADX WARN: Code duplicated, block: B:139:0x0376  */
    /* JADX WARN: Code duplicated, block: B:143:0x0381  */
    /* JADX WARN: Code duplicated, block: B:146:0x0394  */
    /* JADX WARN: Code duplicated, block: B:151:0x03b1  */
    /* JADX WARN: Code duplicated, block: B:154:0x03dd  */
    /* JADX WARN: Code duplicated, block: B:156:0x03e0  */
    /* JADX WARN: Code duplicated, block: B:158:0x03e3  */
    /* JADX WARN: Code duplicated, block: B:15:0x0069 A[PHI: r1 r4 r9
  0x0069: PHI (r1v57 java.lang.Object) = (r1v54 java.lang.Object), (r1v1 java.lang.Object) binds: [B:83:0x02a5, B:14:0x005e] A[DONT_GENERATE, DONT_INLINE]
  0x0069: PHI (r4v54 gatewayprotocol.v1.InitializationRequestKt$Dsl) = (r4v51 gatewayprotocol.v1.InitializationRequestKt$Dsl), (r4v57 gatewayprotocol.v1.InitializationRequestKt$Dsl) binds: [B:83:0x02a5, B:14:0x005e] A[DONT_GENERATE, DONT_INLINE]
  0x0069: PHI (r9v23 gatewayprotocol.v1.InitializationRequestKt$Dsl) = (r9v20 gatewayprotocol.v1.InitializationRequestKt$Dsl), (r9v26 gatewayprotocol.v1.InitializationRequestKt$Dsl) binds: [B:83:0x02a5, B:14:0x005e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:161:0x03ee  */
    /* JADX WARN: Code duplicated, block: B:33:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:41:0x012c  */
    /* JADX WARN: Code duplicated, block: B:44:0x013a  */
    /* JADX WARN: Code duplicated, block: B:48:0x020c  */
    /* JADX WARN: Code duplicated, block: B:51:0x0212  */
    /* JADX WARN: Code duplicated, block: B:55:0x0226 A[PHI: r1 r4 r9
  0x0226: PHI (r1v37 java.lang.Object) = (r1v36 java.lang.Object), (r1v1 java.lang.Object) binds: [B:53:0x0222, B:18:0x008a] A[DONT_GENERATE, DONT_INLINE]
  0x0226: PHI (r4v45 gatewayprotocol.v1.InitializationRequestKt$Dsl) = (r4v42 gatewayprotocol.v1.InitializationRequestKt$Dsl), (r4v47 gatewayprotocol.v1.InitializationRequestKt$Dsl) binds: [B:53:0x0222, B:18:0x008a] A[DONT_GENERATE, DONT_INLINE]
  0x0226: PHI (r9v14 gatewayprotocol.v1.InitializationRequestKt$Dsl) = (r9v11 gatewayprotocol.v1.InitializationRequestKt$Dsl), (r9v16 gatewayprotocol.v1.InitializationRequestKt$Dsl) binds: [B:53:0x0222, B:18:0x008a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:57:0x022d  */
    /* JADX WARN: Code duplicated, block: B:64:0x0248 A[PHI: r1 r4 r9
  0x0248: PHI (r1v41 java.lang.Object) = (r1v40 java.lang.Object), (r1v1 java.lang.Object) binds: [B:62:0x0244, B:17:0x007d] A[DONT_GENERATE, DONT_INLINE]
  0x0248: PHI (r4v48 gatewayprotocol.v1.InitializationRequestKt$Dsl) = (r4v45 gatewayprotocol.v1.InitializationRequestKt$Dsl), (r4v50 gatewayprotocol.v1.InitializationRequestKt$Dsl) binds: [B:62:0x0244, B:17:0x007d] A[DONT_GENERATE, DONT_INLINE]
  0x0248: PHI (r9v17 gatewayprotocol.v1.InitializationRequestKt$Dsl) = (r9v14 gatewayprotocol.v1.InitializationRequestKt$Dsl), (r9v19 gatewayprotocol.v1.InitializationRequestKt$Dsl) binds: [B:62:0x0244, B:17:0x007d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:66:0x0250  */
    /* JADX WARN: Code duplicated, block: B:70:0x0264 A[PHI: r1 r4 r9
  0x0264: PHI (r1v45 java.lang.Object) = (r1v44 java.lang.Object), (r1v1 java.lang.Object) binds: [B:68:0x0260, B:16:0x0070] A[DONT_GENERATE, DONT_INLINE]
  0x0264: PHI (r4v51 gatewayprotocol.v1.InitializationRequestKt$Dsl) = (r4v48 gatewayprotocol.v1.InitializationRequestKt$Dsl), (r4v53 gatewayprotocol.v1.InitializationRequestKt$Dsl) binds: [B:68:0x0260, B:16:0x0070] A[DONT_GENERATE, DONT_INLINE]
  0x0264: PHI (r9v20 gatewayprotocol.v1.InitializationRequestKt$Dsl) = (r9v17 gatewayprotocol.v1.InitializationRequestKt$Dsl), (r9v22 gatewayprotocol.v1.InitializationRequestKt$Dsl) binds: [B:68:0x0260, B:16:0x0070] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:72:0x026c  */
    /* JADX WARN: Code duplicated, block: B:75:0x0277  */
    /* JADX WARN: Code duplicated, block: B:78:0x0282  */
    /* JADX WARN: Code duplicated, block: B:7:0x0018  */
    /* JADX WARN: Code duplicated, block: B:81:0x0291  */
    /* JADX WARN: Code duplicated, block: B:87:0x02b0  */
    /* JADX WARN: Code duplicated, block: B:91:0x02b9  */
    /* JADX WARN: Code duplicated, block: B:94:0x02bd  */
    /* JADX WARN: Code duplicated, block: B:97:0x02c2  */
    @Override // com.unity3d.ads.core.domain.GetInitializationRequestPayload
    public Object invoke(Continuation<? super InitializationRequestOuterClass.InitializationRequest> continuation) throws JSONException {
        AnonymousClass1 anonymousClass1;
        InitializationRequestKt.Dsl dsl_create;
        boolean z;
        InitializationRequestKt.Dsl dsl;
        InitializationRequestKt.Dsl dsl2;
        InitializationRequestKt.Dsl dsl3;
        String analyticsUserId;
        InitializationRequestKt.Dsl dsl4;
        InitializationRequestKt.Dsl dsl5;
        ByteString byteString;
        String str;
        String str2;
        ByteString byteString2;
        ByteString byteString3;
        String legacyFlowUserConsent;
        String unityInstallationId;
        String unityMegaSessionId;
        final InitializationRequestKt.Dsl dsl6;
        InitializationRequestKt.Dsl dsl7;
        String str3;
        boolean z2;
        String str4;
        InitializationConfigurationInternal initializationConfiguration;
        DslList moduleInitParams;
        Object objInvoke;
        DslList dslList;
        InitializationRequestKt.Dsl dsl8;
        Map<String, String> extras;
        Map mutableMap;
        String str5;
        ByteString byteStringUtf8;
        InitializationRequestKt.Dsl dsl9;
        InitializationRequestKt.Dsl dsl10;
        Object obj;
        String str6;
        ByteString byteStringUtf9;
        boolean z3;
        String userIdentifier;
        String str7;
        String tcfString;
        String googleAppId;
        InitializationRequestOuterClass.InstallReferrer installReferrer;
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
        Object objInvoke2 = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (anonymousClass1.label) {
            case 0:
                ResultKt.throwOnFailure(objInvoke2);
                InitializationRequestKt.Dsl.Companion companion = InitializationRequestKt.Dsl.INSTANCE;
                InitializationRequestOuterClass.InitializationRequest.Builder builderNewBuilder = InitializationRequestOuterClass.InitializationRequest.newBuilder();
                Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
                dsl_create = companion._create(builderNewBuilder);
                Storage storage = StorageManager.getStorage(StorageManager.StorageType.PRIVATE);
                if (storage.readStorage()) {
                    Object obj2 = storage.get("configuration.hasInitialized");
                    Boolean bool = obj2 instanceof Boolean ? (Boolean) obj2 : null;
                    if (bool != null ? bool.booleanValue() : false) {
                        z = true;
                    } else {
                        z = false;
                    }
                } else {
                    z = false;
                }
                dsl_create.setIsFirstInit(!z);
                GetClientInfo getClientInfo = this.getClientInfo;
                anonymousClass1.L$0 = dsl_create;
                anonymousClass1.L$1 = dsl_create;
                anonymousClass1.L$2 = dsl_create;
                anonymousClass1.label = 1;
                objInvoke2 = getClientInfo.invoke(anonymousClass1);
                if (objInvoke2 != coroutine_suspended) {
                    dsl = dsl_create;
                    dsl2 = dsl;
                    dsl_create.setClientInfo((ClientInfoOuterClass.ClientInfo) objInvoke2);
                    DeviceInfoRepository deviceInfoRepository = this.deviceInfoRepository;
                    anonymousClass1.L$0 = dsl2;
                    anonymousClass1.L$1 = dsl;
                    anonymousClass1.L$2 = dsl;
                    anonymousClass1.label = 2;
                    objInvoke2 = deviceInfoRepository.getIdfi(anonymousClass1);
                    if (objInvoke2 != coroutine_suspended) {
                        dsl3 = dsl;
                        dsl3.setIdfi((String) objInvoke2);
                        analyticsUserId = this.deviceInfoRepository.getAnalyticsUserId();
                        if (analyticsUserId != null) {
                            dsl.setAnalyticsUserId(analyticsUserId);
                        }
                        dsl.setSessionId(this.sessionRepository.getSessionId());
                        InitializationDeviceInfoKt.Dsl.Companion companion2 = InitializationDeviceInfoKt.Dsl.INSTANCE;
                        InitializationRequestOuterClass.InitializationDeviceInfo.Builder builderNewBuilder2 = InitializationRequestOuterClass.InitializationDeviceInfo.newBuilder();
                        Intrinsics.checkNotNullExpressionValue(builderNewBuilder2, "newBuilder(...)");
                        InitializationDeviceInfoKt.Dsl dsl_create2 = companion2._create(builderNewBuilder2);
                        dsl_create2.setBundleId(this.deviceInfoRepository.getAppName());
                        dsl_create2.setDeviceModel(this.deviceInfoRepository.getModel());
                        dsl_create2.setDeviceMake(this.deviceInfoRepository.getManufacturer());
                        dsl_create2.setOsVersion(this.deviceInfoRepository.getOsVersion());
                        dsl_create2.setTotalDiskSpace(this.deviceInfoRepository.getTotalDiskSpace());
                        dsl_create2.setTotalRamMemory(this.deviceInfoRepository.getTotalRamMemory());
                        dsl_create2.setCurrentUiTheme(this.deviceInfoRepository.getCurrentUiTheme());
                        dsl_create2.setNetworkOperator(this.deviceInfoRepository.getNetworkOperator());
                        dsl_create2.setBatteryLevel(this.deviceInfoRepository.getBatteryLevel());
                        dsl_create2.setBatteryStatus(this.deviceInfoRepository.getBatteryStatus());
                        dsl_create2.setSystemBootTime(this.deviceInfoRepository.getSystemBootTime());
                        dsl_create2.setLanguage(this.deviceInfoRepository.getLanguage());
                        dsl_create2.setLocalList(CollectionsKt.joinToString$default(this.deviceInfoRepository.getLocaleList(), FacebookConstants.PLACEMENT_IDS_SEPARATOR, null, null, 0, null, null, 62, null));
                        dsl_create2.setConnectionType(this.deviceInfoRepository.getConnectionTypeStr());
                        dsl_create2.setBundleVersion(this.deviceInfoRepository.getBundleVersion());
                        dsl.setDeviceInfo(dsl_create2._build());
                        DeviceInfoRepository deviceInfoRepository2 = this.deviceInfoRepository;
                        anonymousClass1.L$0 = dsl2;
                        anonymousClass1.L$1 = dsl;
                        anonymousClass1.L$2 = null;
                        anonymousClass1.label = 3;
                        objInvoke2 = deviceInfoRepository2.getAuidByteString(anonymousClass1);
                        if (objInvoke2 != coroutine_suspended) {
                            dsl4 = dsl;
                            dsl5 = dsl2;
                            byteString = (ByteString) objInvoke2;
                            if (byteString != null) {
                                dsl4.setAuid(byteString);
                            }
                            DeviceInfoRepository deviceInfoRepository3 = this.deviceInfoRepository;
                            anonymousClass1.L$0 = dsl5;
                            anonymousClass1.L$1 = dsl4;
                            anonymousClass1.label = 4;
                            objInvoke2 = deviceInfoRepository3.getAuidString(anonymousClass1);
                            if (objInvoke2 != coroutine_suspended) {
                                str = (String) objInvoke2;
                                str2 = str;
                                if (str2 != null && str2.length() != 0) {
                                    dsl4.setAuidString(str);
                                }
                                SessionRepository sessionRepository = this.sessionRepository;
                                anonymousClass1.L$0 = dsl5;
                                anonymousClass1.L$1 = dsl4;
                                anonymousClass1.label = 5;
                                objInvoke2 = sessionRepository.getPrivacy(anonymousClass1);
                                if (objInvoke2 != coroutine_suspended) {
                                    byteString2 = (ByteString) objInvoke2;
                                    if (!byteString2.isEmpty()) {
                                        dsl4.setPrivacy(byteString2);
                                    }
                                    SessionRepository sessionRepository2 = this.sessionRepository;
                                    anonymousClass1.L$0 = dsl5;
                                    anonymousClass1.L$1 = dsl4;
                                    anonymousClass1.label = 6;
                                    objInvoke2 = sessionRepository2.getGatewayCache(anonymousClass1);
                                    if (objInvoke2 != coroutine_suspended) {
                                        byteString3 = (ByteString) objInvoke2;
                                        if (!byteString3.isEmpty()) {
                                            dsl4.setCache(byteString3);
                                        }
                                        legacyFlowUserConsent = this.legacyUserConsentRepository.getLegacyFlowUserConsent();
                                        if (legacyFlowUserConsent != null) {
                                            dsl4.setLegacyFlowUserConsent(legacyFlowUserConsent);
                                        }
                                        unityInstallationId = this.sessionRepository.getUnityInstallationId();
                                        if (unityInstallationId != null) {
                                            dsl4.setUnityInstallationId(ByteStringsKt.toByteStringUtf8(unityInstallationId));
                                        }
                                        unityMegaSessionId = this.sessionRepository.getUnityMegaSessionId();
                                        if (unityMegaSessionId != null) {
                                            dsl4.setUnityMegaSessionId(ByteStringsKt.toByteStringUtf8(unityMegaSessionId));
                                        }
                                        DeviceInfoRepository deviceInfoRepository4 = this.deviceInfoRepository;
                                        anonymousClass1.L$0 = dsl5;
                                        anonymousClass1.L$1 = dsl4;
                                        anonymousClass1.label = 7;
                                        objInvoke2 = deviceInfoRepository4.getUnityBuildGuid(anonymousClass1);
                                        if (objInvoke2 != coroutine_suspended) {
                                            InitializationRequestKt.Dsl dsl11 = dsl5;
                                            dsl6 = dsl4;
                                            dsl7 = dsl11;
                                            str3 = (String) objInvoke2;
                                            if (str3 != null || str3.length() == 0) {
                                                z2 = true;
                                            } else {
                                                z2 = false;
                                            }
                                            if (z2) {
                                                objInvoke2 = null;
                                            }
                                            str4 = (String) objInvoke2;
                                            if (str4 != null) {
                                                dsl6.setUnityBuildGuid(str4);
                                            }
                                            initializationConfiguration = this.sessionRepository.getInitializationConfiguration();
                                            if (initializationConfiguration != null && (extras = initializationConfiguration.getExtras()) != null && (mutableMap = MapsKt.toMutableMap(extras)) != null) {
                                                str5 = (String) mutableMap.remove("uads_init_blob");
                                                if (str5 != null && (byteStringUtf8 = ByteStringsKt.toByteStringUtf8(str5)) != null) {
                                                    new MutablePropertyReference0Impl(dsl6) { // from class: com.unity3d.ads.core.domain.AndroidGetInitializationRequestPayload$invoke$2$9$2
                                                        @Override // p005kotlin.jvm.internal.MutablePropertyReference0Impl, p005kotlin.reflect.KProperty0
                                                        public Object get() {
                                                            return ((InitializationRequestKt.Dsl) this.receiver).getUadsInitBlob();
                                                        }

                                                        @Override // p005kotlin.jvm.internal.MutablePropertyReference0Impl, p005kotlin.reflect.KMutableProperty0
                                                        public void set(Object obj3) {
                                                            ((InitializationRequestKt.Dsl) this.receiver).setUadsInitBlob((ByteString) obj3);
                                                        }
                                                    }.set(byteStringUtf8);
                                                }
                                                dsl6.putAllExtras(dsl6.getExtrasMap(), mutableMap);
                                            }
                                            moduleInitParams = dsl6.getModuleInitParams();
                                            ModuleInitParamsDataSource moduleInitParamsDataSource = this.moduleInitParamsDataSource;
                                            anonymousClass1.L$0 = dsl7;
                                            anonymousClass1.L$1 = dsl6;
                                            anonymousClass1.L$2 = dsl6;
                                            anonymousClass1.L$3 = moduleInitParams;
                                            anonymousClass1.label = 8;
                                            objInvoke = moduleInitParamsDataSource.invoke(anonymousClass1);
                                            if (objInvoke != coroutine_suspended) {
                                                dslList = moduleInitParams;
                                                objInvoke2 = objInvoke;
                                                dsl8 = dsl6;
                                                dsl8.addAllModuleInitParams(dslList, (Iterable) objInvoke2);
                                                if (!dsl6.hasUadsInitBlob()) {
                                                    MediationInitBlobMetadataReader mediationInitBlobMetadataReader = this.mediationInitBlobMetadataReader;
                                                    obj = mediationInitBlobMetadataReader.getJsonStorage().get(mediationInitBlobMetadataReader.getKey());
                                                    if (obj == null) {
                                                        obj = null;
                                                    } else {
                                                        if (obj != null) {
                                                            z3 = obj instanceof String;
                                                        } else {
                                                            z3 = true;
                                                        }
                                                        if (!z3) {
                                                            obj = null;
                                                        }
                                                        if (obj == null) {
                                                            obj = null;
                                                        }
                                                    }
                                                    str6 = (String) obj;
                                                    if (str6 != null && (byteStringUtf9 = ByteStringsKt.toByteStringUtf8(str6)) != null) {
                                                        new MutablePropertyReference0Impl(dsl6) { // from class: com.unity3d.ads.core.domain.AndroidGetInitializationRequestPayload$invoke$2$11
                                                            @Override // p005kotlin.jvm.internal.MutablePropertyReference0Impl, p005kotlin.reflect.KProperty0
                                                            public Object get() {
                                                                return ((InitializationRequestKt.Dsl) this.receiver).getUadsInitBlob();
                                                            }

                                                            @Override // p005kotlin.jvm.internal.MutablePropertyReference0Impl, p005kotlin.reflect.KMutableProperty0
                                                            public void set(Object obj3) {
                                                                ((InitializationRequestKt.Dsl) this.receiver).setUadsInitBlob((ByteString) obj3);
                                                            }
                                                        }.set(byteStringUtf9);
                                                    }
                                                }
                                                if (dsl6.getIsFirstInit()) {
                                                    InstallReferrerDataSource installReferrerDataSource = this.installReferrerDataSource;
                                                    anonymousClass1.L$0 = dsl7;
                                                    anonymousClass1.L$1 = dsl6;
                                                    anonymousClass1.L$2 = null;
                                                    anonymousClass1.L$3 = null;
                                                    anonymousClass1.label = 9;
                                                    objInvoke2 = installReferrerDataSource.invoke(anonymousClass1);
                                                    if (objInvoke2 != coroutine_suspended) {
                                                        dsl9 = dsl7;
                                                        dsl10 = dsl6;
                                                        installReferrer = (InitializationRequestOuterClass.InstallReferrer) objInvoke2;
                                                        if (installReferrer != null) {
                                                            dsl10.setInstallReferrer(installReferrer);
                                                        }
                                                        dsl7 = dsl9;
                                                        dsl6 = dsl10;
                                                    }
                                                }
                                                userIdentifier = UnityAds.getUserIdentifier();
                                                if (userIdentifier != null) {
                                                    dsl6.setExternalUserIdentifier(userIdentifier);
                                                }
                                                if (this.sessionRepository.getNativeConfiguration().getFeatureFlags().getCollectGoogleAppId() && (googleAppId = this.googleAppIdDataSource.getGoogleAppId()) != null) {
                                                    dsl6.setGoogleAppId(googleAppId);
                                                }
                                                if (Intrinsics.areEqual(this.mediationTraitsMetadataReader.getBooleanTrait(MediationTraitsMetadataReader.REPORT_CAPABILITIES), Boxing.boxBoolean(true))) {
                                                    QuickCapabilitiesKt.Dsl.Companion companion3 = QuickCapabilitiesKt.Dsl.INSTANCE;
                                                    InitializationRequestOuterClass.QuickCapabilities.Builder builderNewBuilder3 = InitializationRequestOuterClass.QuickCapabilities.newBuilder();
                                                    Intrinsics.checkNotNullExpressionValue(builderNewBuilder3, "newBuilder(...)");
                                                    QuickCapabilitiesKt.Dsl dsl_create3 = companion3._create(builderNewBuilder3);
                                                    dsl_create3.setAndroid(this.gatherQuickCapabilities.invoke());
                                                    dsl6.setQuickCapabilities(dsl_create3._build());
                                                }
                                                String installSource = this.deviceInfoRepository.getInstallSource();
                                                str7 = installSource.length() > 0 ? installSource : null;
                                                if (str7 != null) {
                                                    dsl6.setInstallSource(str7);
                                                }
                                                tcfString = this.tcfRepository.getTcfString();
                                                if (tcfString != null) {
                                                    dsl6.setTcf(ByteStringsKt.toByteStringUtf8(tcfString));
                                                }
                                                return dsl7._build();
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                return coroutine_suspended;
            case 1:
                dsl_create = (InitializationRequestKt.Dsl) anonymousClass1.L$2;
                dsl = (InitializationRequestKt.Dsl) anonymousClass1.L$1;
                dsl2 = (InitializationRequestKt.Dsl) anonymousClass1.L$0;
                ResultKt.throwOnFailure(objInvoke2);
                dsl_create.setClientInfo((ClientInfoOuterClass.ClientInfo) objInvoke2);
                DeviceInfoRepository deviceInfoRepository5 = this.deviceInfoRepository;
                anonymousClass1.L$0 = dsl2;
                anonymousClass1.L$1 = dsl;
                anonymousClass1.L$2 = dsl;
                anonymousClass1.label = 2;
                objInvoke2 = deviceInfoRepository5.getIdfi(anonymousClass1);
                if (objInvoke2 != coroutine_suspended) {
                    dsl3 = dsl;
                    dsl3.setIdfi((String) objInvoke2);
                    analyticsUserId = this.deviceInfoRepository.getAnalyticsUserId();
                    if (analyticsUserId != null) {
                        dsl.setAnalyticsUserId(analyticsUserId);
                    }
                    dsl.setSessionId(this.sessionRepository.getSessionId());
                    InitializationDeviceInfoKt.Dsl.Companion companion4 = InitializationDeviceInfoKt.Dsl.INSTANCE;
                    InitializationRequestOuterClass.InitializationDeviceInfo.Builder builderNewBuilder4 = InitializationRequestOuterClass.InitializationDeviceInfo.newBuilder();
                    Intrinsics.checkNotNullExpressionValue(builderNewBuilder4, "newBuilder(...)");
                    InitializationDeviceInfoKt.Dsl dsl_create4 = companion4._create(builderNewBuilder4);
                    dsl_create4.setBundleId(this.deviceInfoRepository.getAppName());
                    dsl_create4.setDeviceModel(this.deviceInfoRepository.getModel());
                    dsl_create4.setDeviceMake(this.deviceInfoRepository.getManufacturer());
                    dsl_create4.setOsVersion(this.deviceInfoRepository.getOsVersion());
                    dsl_create4.setTotalDiskSpace(this.deviceInfoRepository.getTotalDiskSpace());
                    dsl_create4.setTotalRamMemory(this.deviceInfoRepository.getTotalRamMemory());
                    dsl_create4.setCurrentUiTheme(this.deviceInfoRepository.getCurrentUiTheme());
                    dsl_create4.setNetworkOperator(this.deviceInfoRepository.getNetworkOperator());
                    dsl_create4.setBatteryLevel(this.deviceInfoRepository.getBatteryLevel());
                    dsl_create4.setBatteryStatus(this.deviceInfoRepository.getBatteryStatus());
                    dsl_create4.setSystemBootTime(this.deviceInfoRepository.getSystemBootTime());
                    dsl_create4.setLanguage(this.deviceInfoRepository.getLanguage());
                    dsl_create4.setLocalList(CollectionsKt.joinToString$default(this.deviceInfoRepository.getLocaleList(), FacebookConstants.PLACEMENT_IDS_SEPARATOR, null, null, 0, null, null, 62, null));
                    dsl_create4.setConnectionType(this.deviceInfoRepository.getConnectionTypeStr());
                    dsl_create4.setBundleVersion(this.deviceInfoRepository.getBundleVersion());
                    dsl.setDeviceInfo(dsl_create4._build());
                    DeviceInfoRepository deviceInfoRepository6 = this.deviceInfoRepository;
                    anonymousClass1.L$0 = dsl2;
                    anonymousClass1.L$1 = dsl;
                    anonymousClass1.L$2 = null;
                    anonymousClass1.label = 3;
                    objInvoke2 = deviceInfoRepository6.getAuidByteString(anonymousClass1);
                    if (objInvoke2 != coroutine_suspended) {
                        dsl4 = dsl;
                        dsl5 = dsl2;
                        byteString = (ByteString) objInvoke2;
                        if (byteString != null) {
                            dsl4.setAuid(byteString);
                        }
                        DeviceInfoRepository deviceInfoRepository7 = this.deviceInfoRepository;
                        anonymousClass1.L$0 = dsl5;
                        anonymousClass1.L$1 = dsl4;
                        anonymousClass1.label = 4;
                        objInvoke2 = deviceInfoRepository7.getAuidString(anonymousClass1);
                        if (objInvoke2 != coroutine_suspended) {
                            str = (String) objInvoke2;
                            str2 = str;
                            if (str2 != null) {
                                dsl4.setAuidString(str);
                            }
                            SessionRepository sessionRepository3 = this.sessionRepository;
                            anonymousClass1.L$0 = dsl5;
                            anonymousClass1.L$1 = dsl4;
                            anonymousClass1.label = 5;
                            objInvoke2 = sessionRepository3.getPrivacy(anonymousClass1);
                            if (objInvoke2 != coroutine_suspended) {
                                byteString2 = (ByteString) objInvoke2;
                                if (!byteString2.isEmpty()) {
                                    dsl4.setPrivacy(byteString2);
                                }
                                SessionRepository sessionRepository4 = this.sessionRepository;
                                anonymousClass1.L$0 = dsl5;
                                anonymousClass1.L$1 = dsl4;
                                anonymousClass1.label = 6;
                                objInvoke2 = sessionRepository4.getGatewayCache(anonymousClass1);
                                if (objInvoke2 != coroutine_suspended) {
                                    byteString3 = (ByteString) objInvoke2;
                                    if (!byteString3.isEmpty()) {
                                        dsl4.setCache(byteString3);
                                    }
                                    legacyFlowUserConsent = this.legacyUserConsentRepository.getLegacyFlowUserConsent();
                                    if (legacyFlowUserConsent != null) {
                                        dsl4.setLegacyFlowUserConsent(legacyFlowUserConsent);
                                    }
                                    unityInstallationId = this.sessionRepository.getUnityInstallationId();
                                    if (unityInstallationId != null) {
                                        dsl4.setUnityInstallationId(ByteStringsKt.toByteStringUtf8(unityInstallationId));
                                    }
                                    unityMegaSessionId = this.sessionRepository.getUnityMegaSessionId();
                                    if (unityMegaSessionId != null) {
                                        dsl4.setUnityMegaSessionId(ByteStringsKt.toByteStringUtf8(unityMegaSessionId));
                                    }
                                    DeviceInfoRepository deviceInfoRepository8 = this.deviceInfoRepository;
                                    anonymousClass1.L$0 = dsl5;
                                    anonymousClass1.L$1 = dsl4;
                                    anonymousClass1.label = 7;
                                    objInvoke2 = deviceInfoRepository8.getUnityBuildGuid(anonymousClass1);
                                    if (objInvoke2 != coroutine_suspended) {
                                        InitializationRequestKt.Dsl dsl12 = dsl5;
                                        dsl6 = dsl4;
                                        dsl7 = dsl12;
                                        str3 = (String) objInvoke2;
                                        if (str3 != null) {
                                            z2 = true;
                                        } else {
                                            z2 = true;
                                        }
                                        if (z2) {
                                            objInvoke2 = null;
                                        }
                                        str4 = (String) objInvoke2;
                                        if (str4 != null) {
                                            dsl6.setUnityBuildGuid(str4);
                                        }
                                        initializationConfiguration = this.sessionRepository.getInitializationConfiguration();
                                        if (initializationConfiguration != null) {
                                            str5 = (String) mutableMap.remove("uads_init_blob");
                                            if (str5 != null) {
                                                new MutablePropertyReference0Impl(dsl6) { // from class: com.unity3d.ads.core.domain.AndroidGetInitializationRequestPayload$invoke$2$9$2
                                                    @Override // p005kotlin.jvm.internal.MutablePropertyReference0Impl, p005kotlin.reflect.KProperty0
                                                    public Object get() {
                                                        return ((InitializationRequestKt.Dsl) this.receiver).getUadsInitBlob();
                                                    }

                                                    @Override // p005kotlin.jvm.internal.MutablePropertyReference0Impl, p005kotlin.reflect.KMutableProperty0
                                                    public void set(Object obj3) {
                                                        ((InitializationRequestKt.Dsl) this.receiver).setUadsInitBlob((ByteString) obj3);
                                                    }
                                                }.set(byteStringUtf8);
                                            }
                                            dsl6.putAllExtras(dsl6.getExtrasMap(), mutableMap);
                                        }
                                        moduleInitParams = dsl6.getModuleInitParams();
                                        ModuleInitParamsDataSource moduleInitParamsDataSource2 = this.moduleInitParamsDataSource;
                                        anonymousClass1.L$0 = dsl7;
                                        anonymousClass1.L$1 = dsl6;
                                        anonymousClass1.L$2 = dsl6;
                                        anonymousClass1.L$3 = moduleInitParams;
                                        anonymousClass1.label = 8;
                                        objInvoke = moduleInitParamsDataSource2.invoke(anonymousClass1);
                                        if (objInvoke != coroutine_suspended) {
                                            dslList = moduleInitParams;
                                            objInvoke2 = objInvoke;
                                            dsl8 = dsl6;
                                            dsl8.addAllModuleInitParams(dslList, (Iterable) objInvoke2);
                                            if (!dsl6.hasUadsInitBlob()) {
                                                MediationInitBlobMetadataReader mediationInitBlobMetadataReader2 = this.mediationInitBlobMetadataReader;
                                                obj = mediationInitBlobMetadataReader2.getJsonStorage().get(mediationInitBlobMetadataReader2.getKey());
                                                if (obj == null) {
                                                    obj = null;
                                                } else {
                                                    if (obj != null) {
                                                        z3 = obj instanceof String;
                                                    } else {
                                                        z3 = true;
                                                    }
                                                    if (!z3) {
                                                        obj = null;
                                                    }
                                                    if (obj == null) {
                                                        obj = null;
                                                    }
                                                }
                                                str6 = (String) obj;
                                                if (str6 != null) {
                                                    new MutablePropertyReference0Impl(dsl6) { // from class: com.unity3d.ads.core.domain.AndroidGetInitializationRequestPayload$invoke$2$11
                                                        @Override // p005kotlin.jvm.internal.MutablePropertyReference0Impl, p005kotlin.reflect.KProperty0
                                                        public Object get() {
                                                            return ((InitializationRequestKt.Dsl) this.receiver).getUadsInitBlob();
                                                        }

                                                        @Override // p005kotlin.jvm.internal.MutablePropertyReference0Impl, p005kotlin.reflect.KMutableProperty0
                                                        public void set(Object obj3) {
                                                            ((InitializationRequestKt.Dsl) this.receiver).setUadsInitBlob((ByteString) obj3);
                                                        }
                                                    }.set(byteStringUtf9);
                                                }
                                            }
                                            if (dsl6.getIsFirstInit()) {
                                                InstallReferrerDataSource installReferrerDataSource2 = this.installReferrerDataSource;
                                                anonymousClass1.L$0 = dsl7;
                                                anonymousClass1.L$1 = dsl6;
                                                anonymousClass1.L$2 = null;
                                                anonymousClass1.L$3 = null;
                                                anonymousClass1.label = 9;
                                                objInvoke2 = installReferrerDataSource2.invoke(anonymousClass1);
                                                if (objInvoke2 != coroutine_suspended) {
                                                    dsl9 = dsl7;
                                                    dsl10 = dsl6;
                                                    installReferrer = (InitializationRequestOuterClass.InstallReferrer) objInvoke2;
                                                    if (installReferrer != null) {
                                                        dsl10.setInstallReferrer(installReferrer);
                                                    }
                                                    dsl7 = dsl9;
                                                    dsl6 = dsl10;
                                                }
                                            }
                                            userIdentifier = UnityAds.getUserIdentifier();
                                            if (userIdentifier != null) {
                                                dsl6.setExternalUserIdentifier(userIdentifier);
                                            }
                                            if (this.sessionRepository.getNativeConfiguration().getFeatureFlags().getCollectGoogleAppId()) {
                                                dsl6.setGoogleAppId(googleAppId);
                                            }
                                            if (Intrinsics.areEqual(this.mediationTraitsMetadataReader.getBooleanTrait(MediationTraitsMetadataReader.REPORT_CAPABILITIES), Boxing.boxBoolean(true))) {
                                                QuickCapabilitiesKt.Dsl.Companion companion5 = QuickCapabilitiesKt.Dsl.INSTANCE;
                                                InitializationRequestOuterClass.QuickCapabilities.Builder builderNewBuilder5 = InitializationRequestOuterClass.QuickCapabilities.newBuilder();
                                                Intrinsics.checkNotNullExpressionValue(builderNewBuilder5, "newBuilder(...)");
                                                QuickCapabilitiesKt.Dsl dsl_create5 = companion5._create(builderNewBuilder5);
                                                dsl_create5.setAndroid(this.gatherQuickCapabilities.invoke());
                                                dsl6.setQuickCapabilities(dsl_create5._build());
                                            }
                                            String installSource2 = this.deviceInfoRepository.getInstallSource();
                                            if (installSource2.length() > 0) {
                                            }
                                            if (str7 != null) {
                                                dsl6.setInstallSource(str7);
                                            }
                                            tcfString = this.tcfRepository.getTcfString();
                                            if (tcfString != null) {
                                                dsl6.setTcf(ByteStringsKt.toByteStringUtf8(tcfString));
                                            }
                                            return dsl7._build();
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                return coroutine_suspended;
            case 2:
                dsl3 = (InitializationRequestKt.Dsl) anonymousClass1.L$2;
                dsl = (InitializationRequestKt.Dsl) anonymousClass1.L$1;
                dsl2 = (InitializationRequestKt.Dsl) anonymousClass1.L$0;
                ResultKt.throwOnFailure(objInvoke2);
                dsl3.setIdfi((String) objInvoke2);
                analyticsUserId = this.deviceInfoRepository.getAnalyticsUserId();
                if (analyticsUserId != null) {
                    dsl.setAnalyticsUserId(analyticsUserId);
                }
                dsl.setSessionId(this.sessionRepository.getSessionId());
                InitializationDeviceInfoKt.Dsl.Companion companion6 = InitializationDeviceInfoKt.Dsl.INSTANCE;
                InitializationRequestOuterClass.InitializationDeviceInfo.Builder builderNewBuilder6 = InitializationRequestOuterClass.InitializationDeviceInfo.newBuilder();
                Intrinsics.checkNotNullExpressionValue(builderNewBuilder6, "newBuilder(...)");
                InitializationDeviceInfoKt.Dsl dsl_create6 = companion6._create(builderNewBuilder6);
                dsl_create6.setBundleId(this.deviceInfoRepository.getAppName());
                dsl_create6.setDeviceModel(this.deviceInfoRepository.getModel());
                dsl_create6.setDeviceMake(this.deviceInfoRepository.getManufacturer());
                dsl_create6.setOsVersion(this.deviceInfoRepository.getOsVersion());
                dsl_create6.setTotalDiskSpace(this.deviceInfoRepository.getTotalDiskSpace());
                dsl_create6.setTotalRamMemory(this.deviceInfoRepository.getTotalRamMemory());
                dsl_create6.setCurrentUiTheme(this.deviceInfoRepository.getCurrentUiTheme());
                dsl_create6.setNetworkOperator(this.deviceInfoRepository.getNetworkOperator());
                dsl_create6.setBatteryLevel(this.deviceInfoRepository.getBatteryLevel());
                dsl_create6.setBatteryStatus(this.deviceInfoRepository.getBatteryStatus());
                dsl_create6.setSystemBootTime(this.deviceInfoRepository.getSystemBootTime());
                dsl_create6.setLanguage(this.deviceInfoRepository.getLanguage());
                dsl_create6.setLocalList(CollectionsKt.joinToString$default(this.deviceInfoRepository.getLocaleList(), FacebookConstants.PLACEMENT_IDS_SEPARATOR, null, null, 0, null, null, 62, null));
                dsl_create6.setConnectionType(this.deviceInfoRepository.getConnectionTypeStr());
                dsl_create6.setBundleVersion(this.deviceInfoRepository.getBundleVersion());
                dsl.setDeviceInfo(dsl_create6._build());
                DeviceInfoRepository deviceInfoRepository9 = this.deviceInfoRepository;
                anonymousClass1.L$0 = dsl2;
                anonymousClass1.L$1 = dsl;
                anonymousClass1.L$2 = null;
                anonymousClass1.label = 3;
                objInvoke2 = deviceInfoRepository9.getAuidByteString(anonymousClass1);
                if (objInvoke2 != coroutine_suspended) {
                    dsl4 = dsl;
                    dsl5 = dsl2;
                    byteString = (ByteString) objInvoke2;
                    if (byteString != null) {
                        dsl4.setAuid(byteString);
                    }
                    DeviceInfoRepository deviceInfoRepository10 = this.deviceInfoRepository;
                    anonymousClass1.L$0 = dsl5;
                    anonymousClass1.L$1 = dsl4;
                    anonymousClass1.label = 4;
                    objInvoke2 = deviceInfoRepository10.getAuidString(anonymousClass1);
                    if (objInvoke2 != coroutine_suspended) {
                        str = (String) objInvoke2;
                        str2 = str;
                        if (str2 != null) {
                            dsl4.setAuidString(str);
                        }
                        SessionRepository sessionRepository5 = this.sessionRepository;
                        anonymousClass1.L$0 = dsl5;
                        anonymousClass1.L$1 = dsl4;
                        anonymousClass1.label = 5;
                        objInvoke2 = sessionRepository5.getPrivacy(anonymousClass1);
                        if (objInvoke2 != coroutine_suspended) {
                            byteString2 = (ByteString) objInvoke2;
                            if (!byteString2.isEmpty()) {
                                dsl4.setPrivacy(byteString2);
                            }
                            SessionRepository sessionRepository6 = this.sessionRepository;
                            anonymousClass1.L$0 = dsl5;
                            anonymousClass1.L$1 = dsl4;
                            anonymousClass1.label = 6;
                            objInvoke2 = sessionRepository6.getGatewayCache(anonymousClass1);
                            if (objInvoke2 != coroutine_suspended) {
                                byteString3 = (ByteString) objInvoke2;
                                if (!byteString3.isEmpty()) {
                                    dsl4.setCache(byteString3);
                                }
                                legacyFlowUserConsent = this.legacyUserConsentRepository.getLegacyFlowUserConsent();
                                if (legacyFlowUserConsent != null) {
                                    dsl4.setLegacyFlowUserConsent(legacyFlowUserConsent);
                                }
                                unityInstallationId = this.sessionRepository.getUnityInstallationId();
                                if (unityInstallationId != null) {
                                    dsl4.setUnityInstallationId(ByteStringsKt.toByteStringUtf8(unityInstallationId));
                                }
                                unityMegaSessionId = this.sessionRepository.getUnityMegaSessionId();
                                if (unityMegaSessionId != null) {
                                    dsl4.setUnityMegaSessionId(ByteStringsKt.toByteStringUtf8(unityMegaSessionId));
                                }
                                DeviceInfoRepository deviceInfoRepository11 = this.deviceInfoRepository;
                                anonymousClass1.L$0 = dsl5;
                                anonymousClass1.L$1 = dsl4;
                                anonymousClass1.label = 7;
                                objInvoke2 = deviceInfoRepository11.getUnityBuildGuid(anonymousClass1);
                                if (objInvoke2 != coroutine_suspended) {
                                    InitializationRequestKt.Dsl dsl13 = dsl5;
                                    dsl6 = dsl4;
                                    dsl7 = dsl13;
                                    str3 = (String) objInvoke2;
                                    if (str3 != null) {
                                        z2 = true;
                                    } else {
                                        z2 = true;
                                    }
                                    if (z2) {
                                        objInvoke2 = null;
                                    }
                                    str4 = (String) objInvoke2;
                                    if (str4 != null) {
                                        dsl6.setUnityBuildGuid(str4);
                                    }
                                    initializationConfiguration = this.sessionRepository.getInitializationConfiguration();
                                    if (initializationConfiguration != null) {
                                        str5 = (String) mutableMap.remove("uads_init_blob");
                                        if (str5 != null) {
                                            new MutablePropertyReference0Impl(dsl6) { // from class: com.unity3d.ads.core.domain.AndroidGetInitializationRequestPayload$invoke$2$9$2
                                                @Override // p005kotlin.jvm.internal.MutablePropertyReference0Impl, p005kotlin.reflect.KProperty0
                                                public Object get() {
                                                    return ((InitializationRequestKt.Dsl) this.receiver).getUadsInitBlob();
                                                }

                                                @Override // p005kotlin.jvm.internal.MutablePropertyReference0Impl, p005kotlin.reflect.KMutableProperty0
                                                public void set(Object obj3) {
                                                    ((InitializationRequestKt.Dsl) this.receiver).setUadsInitBlob((ByteString) obj3);
                                                }
                                            }.set(byteStringUtf8);
                                        }
                                        dsl6.putAllExtras(dsl6.getExtrasMap(), mutableMap);
                                    }
                                    moduleInitParams = dsl6.getModuleInitParams();
                                    ModuleInitParamsDataSource moduleInitParamsDataSource3 = this.moduleInitParamsDataSource;
                                    anonymousClass1.L$0 = dsl7;
                                    anonymousClass1.L$1 = dsl6;
                                    anonymousClass1.L$2 = dsl6;
                                    anonymousClass1.L$3 = moduleInitParams;
                                    anonymousClass1.label = 8;
                                    objInvoke = moduleInitParamsDataSource3.invoke(anonymousClass1);
                                    if (objInvoke != coroutine_suspended) {
                                        dslList = moduleInitParams;
                                        objInvoke2 = objInvoke;
                                        dsl8 = dsl6;
                                        dsl8.addAllModuleInitParams(dslList, (Iterable) objInvoke2);
                                        if (!dsl6.hasUadsInitBlob()) {
                                            MediationInitBlobMetadataReader mediationInitBlobMetadataReader3 = this.mediationInitBlobMetadataReader;
                                            obj = mediationInitBlobMetadataReader3.getJsonStorage().get(mediationInitBlobMetadataReader3.getKey());
                                            if (obj == null) {
                                                obj = null;
                                            } else {
                                                if (obj != null) {
                                                    z3 = obj instanceof String;
                                                } else {
                                                    z3 = true;
                                                }
                                                if (!z3) {
                                                    obj = null;
                                                }
                                                if (obj == null) {
                                                    obj = null;
                                                }
                                            }
                                            str6 = (String) obj;
                                            if (str6 != null) {
                                                new MutablePropertyReference0Impl(dsl6) { // from class: com.unity3d.ads.core.domain.AndroidGetInitializationRequestPayload$invoke$2$11
                                                    @Override // p005kotlin.jvm.internal.MutablePropertyReference0Impl, p005kotlin.reflect.KProperty0
                                                    public Object get() {
                                                        return ((InitializationRequestKt.Dsl) this.receiver).getUadsInitBlob();
                                                    }

                                                    @Override // p005kotlin.jvm.internal.MutablePropertyReference0Impl, p005kotlin.reflect.KMutableProperty0
                                                    public void set(Object obj3) {
                                                        ((InitializationRequestKt.Dsl) this.receiver).setUadsInitBlob((ByteString) obj3);
                                                    }
                                                }.set(byteStringUtf9);
                                            }
                                        }
                                        if (dsl6.getIsFirstInit()) {
                                            InstallReferrerDataSource installReferrerDataSource3 = this.installReferrerDataSource;
                                            anonymousClass1.L$0 = dsl7;
                                            anonymousClass1.L$1 = dsl6;
                                            anonymousClass1.L$2 = null;
                                            anonymousClass1.L$3 = null;
                                            anonymousClass1.label = 9;
                                            objInvoke2 = installReferrerDataSource3.invoke(anonymousClass1);
                                            if (objInvoke2 != coroutine_suspended) {
                                                dsl9 = dsl7;
                                                dsl10 = dsl6;
                                                installReferrer = (InitializationRequestOuterClass.InstallReferrer) objInvoke2;
                                                if (installReferrer != null) {
                                                    dsl10.setInstallReferrer(installReferrer);
                                                }
                                                dsl7 = dsl9;
                                                dsl6 = dsl10;
                                            }
                                        }
                                        userIdentifier = UnityAds.getUserIdentifier();
                                        if (userIdentifier != null) {
                                            dsl6.setExternalUserIdentifier(userIdentifier);
                                        }
                                        if (this.sessionRepository.getNativeConfiguration().getFeatureFlags().getCollectGoogleAppId()) {
                                            dsl6.setGoogleAppId(googleAppId);
                                        }
                                        if (Intrinsics.areEqual(this.mediationTraitsMetadataReader.getBooleanTrait(MediationTraitsMetadataReader.REPORT_CAPABILITIES), Boxing.boxBoolean(true))) {
                                            QuickCapabilitiesKt.Dsl.Companion companion7 = QuickCapabilitiesKt.Dsl.INSTANCE;
                                            InitializationRequestOuterClass.QuickCapabilities.Builder builderNewBuilder7 = InitializationRequestOuterClass.QuickCapabilities.newBuilder();
                                            Intrinsics.checkNotNullExpressionValue(builderNewBuilder7, "newBuilder(...)");
                                            QuickCapabilitiesKt.Dsl dsl_create7 = companion7._create(builderNewBuilder7);
                                            dsl_create7.setAndroid(this.gatherQuickCapabilities.invoke());
                                            dsl6.setQuickCapabilities(dsl_create7._build());
                                        }
                                        String installSource3 = this.deviceInfoRepository.getInstallSource();
                                        if (installSource3.length() > 0) {
                                        }
                                        if (str7 != null) {
                                            dsl6.setInstallSource(str7);
                                        }
                                        tcfString = this.tcfRepository.getTcfString();
                                        if (tcfString != null) {
                                            dsl6.setTcf(ByteStringsKt.toByteStringUtf8(tcfString));
                                        }
                                        return dsl7._build();
                                    }
                                }
                            }
                        }
                    }
                }
                return coroutine_suspended;
            case 3:
                dsl4 = (InitializationRequestKt.Dsl) anonymousClass1.L$1;
                dsl5 = (InitializationRequestKt.Dsl) anonymousClass1.L$0;
                ResultKt.throwOnFailure(objInvoke2);
                byteString = (ByteString) objInvoke2;
                if (byteString != null) {
                    dsl4.setAuid(byteString);
                }
                DeviceInfoRepository deviceInfoRepository12 = this.deviceInfoRepository;
                anonymousClass1.L$0 = dsl5;
                anonymousClass1.L$1 = dsl4;
                anonymousClass1.label = 4;
                objInvoke2 = deviceInfoRepository12.getAuidString(anonymousClass1);
                if (objInvoke2 != coroutine_suspended) {
                    str = (String) objInvoke2;
                    str2 = str;
                    if (str2 != null) {
                        dsl4.setAuidString(str);
                    }
                    SessionRepository sessionRepository7 = this.sessionRepository;
                    anonymousClass1.L$0 = dsl5;
                    anonymousClass1.L$1 = dsl4;
                    anonymousClass1.label = 5;
                    objInvoke2 = sessionRepository7.getPrivacy(anonymousClass1);
                    if (objInvoke2 != coroutine_suspended) {
                        byteString2 = (ByteString) objInvoke2;
                        if (!byteString2.isEmpty()) {
                            dsl4.setPrivacy(byteString2);
                        }
                        SessionRepository sessionRepository8 = this.sessionRepository;
                        anonymousClass1.L$0 = dsl5;
                        anonymousClass1.L$1 = dsl4;
                        anonymousClass1.label = 6;
                        objInvoke2 = sessionRepository8.getGatewayCache(anonymousClass1);
                        if (objInvoke2 != coroutine_suspended) {
                            byteString3 = (ByteString) objInvoke2;
                            if (!byteString3.isEmpty()) {
                                dsl4.setCache(byteString3);
                            }
                            legacyFlowUserConsent = this.legacyUserConsentRepository.getLegacyFlowUserConsent();
                            if (legacyFlowUserConsent != null) {
                                dsl4.setLegacyFlowUserConsent(legacyFlowUserConsent);
                            }
                            unityInstallationId = this.sessionRepository.getUnityInstallationId();
                            if (unityInstallationId != null) {
                                dsl4.setUnityInstallationId(ByteStringsKt.toByteStringUtf8(unityInstallationId));
                            }
                            unityMegaSessionId = this.sessionRepository.getUnityMegaSessionId();
                            if (unityMegaSessionId != null) {
                                dsl4.setUnityMegaSessionId(ByteStringsKt.toByteStringUtf8(unityMegaSessionId));
                            }
                            DeviceInfoRepository deviceInfoRepository13 = this.deviceInfoRepository;
                            anonymousClass1.L$0 = dsl5;
                            anonymousClass1.L$1 = dsl4;
                            anonymousClass1.label = 7;
                            objInvoke2 = deviceInfoRepository13.getUnityBuildGuid(anonymousClass1);
                            if (objInvoke2 != coroutine_suspended) {
                                InitializationRequestKt.Dsl dsl14 = dsl5;
                                dsl6 = dsl4;
                                dsl7 = dsl14;
                                str3 = (String) objInvoke2;
                                if (str3 != null) {
                                    z2 = true;
                                } else {
                                    z2 = true;
                                }
                                if (z2) {
                                    objInvoke2 = null;
                                }
                                str4 = (String) objInvoke2;
                                if (str4 != null) {
                                    dsl6.setUnityBuildGuid(str4);
                                }
                                initializationConfiguration = this.sessionRepository.getInitializationConfiguration();
                                if (initializationConfiguration != null) {
                                    str5 = (String) mutableMap.remove("uads_init_blob");
                                    if (str5 != null) {
                                        new MutablePropertyReference0Impl(dsl6) { // from class: com.unity3d.ads.core.domain.AndroidGetInitializationRequestPayload$invoke$2$9$2
                                            @Override // p005kotlin.jvm.internal.MutablePropertyReference0Impl, p005kotlin.reflect.KProperty0
                                            public Object get() {
                                                return ((InitializationRequestKt.Dsl) this.receiver).getUadsInitBlob();
                                            }

                                            @Override // p005kotlin.jvm.internal.MutablePropertyReference0Impl, p005kotlin.reflect.KMutableProperty0
                                            public void set(Object obj3) {
                                                ((InitializationRequestKt.Dsl) this.receiver).setUadsInitBlob((ByteString) obj3);
                                            }
                                        }.set(byteStringUtf8);
                                    }
                                    dsl6.putAllExtras(dsl6.getExtrasMap(), mutableMap);
                                }
                                moduleInitParams = dsl6.getModuleInitParams();
                                ModuleInitParamsDataSource moduleInitParamsDataSource4 = this.moduleInitParamsDataSource;
                                anonymousClass1.L$0 = dsl7;
                                anonymousClass1.L$1 = dsl6;
                                anonymousClass1.L$2 = dsl6;
                                anonymousClass1.L$3 = moduleInitParams;
                                anonymousClass1.label = 8;
                                objInvoke = moduleInitParamsDataSource4.invoke(anonymousClass1);
                                if (objInvoke != coroutine_suspended) {
                                    dslList = moduleInitParams;
                                    objInvoke2 = objInvoke;
                                    dsl8 = dsl6;
                                    dsl8.addAllModuleInitParams(dslList, (Iterable) objInvoke2);
                                    if (!dsl6.hasUadsInitBlob()) {
                                        MediationInitBlobMetadataReader mediationInitBlobMetadataReader4 = this.mediationInitBlobMetadataReader;
                                        obj = mediationInitBlobMetadataReader4.getJsonStorage().get(mediationInitBlobMetadataReader4.getKey());
                                        if (obj == null) {
                                            obj = null;
                                        } else {
                                            if (obj != null) {
                                                z3 = obj instanceof String;
                                            } else {
                                                z3 = true;
                                            }
                                            if (!z3) {
                                                obj = null;
                                            }
                                            if (obj == null) {
                                                obj = null;
                                            }
                                        }
                                        str6 = (String) obj;
                                        if (str6 != null) {
                                            new MutablePropertyReference0Impl(dsl6) { // from class: com.unity3d.ads.core.domain.AndroidGetInitializationRequestPayload$invoke$2$11
                                                @Override // p005kotlin.jvm.internal.MutablePropertyReference0Impl, p005kotlin.reflect.KProperty0
                                                public Object get() {
                                                    return ((InitializationRequestKt.Dsl) this.receiver).getUadsInitBlob();
                                                }

                                                @Override // p005kotlin.jvm.internal.MutablePropertyReference0Impl, p005kotlin.reflect.KMutableProperty0
                                                public void set(Object obj3) {
                                                    ((InitializationRequestKt.Dsl) this.receiver).setUadsInitBlob((ByteString) obj3);
                                                }
                                            }.set(byteStringUtf9);
                                        }
                                    }
                                    if (dsl6.getIsFirstInit()) {
                                        InstallReferrerDataSource installReferrerDataSource4 = this.installReferrerDataSource;
                                        anonymousClass1.L$0 = dsl7;
                                        anonymousClass1.L$1 = dsl6;
                                        anonymousClass1.L$2 = null;
                                        anonymousClass1.L$3 = null;
                                        anonymousClass1.label = 9;
                                        objInvoke2 = installReferrerDataSource4.invoke(anonymousClass1);
                                        if (objInvoke2 != coroutine_suspended) {
                                            dsl9 = dsl7;
                                            dsl10 = dsl6;
                                            installReferrer = (InitializationRequestOuterClass.InstallReferrer) objInvoke2;
                                            if (installReferrer != null) {
                                                dsl10.setInstallReferrer(installReferrer);
                                            }
                                            dsl7 = dsl9;
                                            dsl6 = dsl10;
                                        }
                                    }
                                    userIdentifier = UnityAds.getUserIdentifier();
                                    if (userIdentifier != null) {
                                        dsl6.setExternalUserIdentifier(userIdentifier);
                                    }
                                    if (this.sessionRepository.getNativeConfiguration().getFeatureFlags().getCollectGoogleAppId()) {
                                        dsl6.setGoogleAppId(googleAppId);
                                    }
                                    if (Intrinsics.areEqual(this.mediationTraitsMetadataReader.getBooleanTrait(MediationTraitsMetadataReader.REPORT_CAPABILITIES), Boxing.boxBoolean(true))) {
                                        QuickCapabilitiesKt.Dsl.Companion companion8 = QuickCapabilitiesKt.Dsl.INSTANCE;
                                        InitializationRequestOuterClass.QuickCapabilities.Builder builderNewBuilder8 = InitializationRequestOuterClass.QuickCapabilities.newBuilder();
                                        Intrinsics.checkNotNullExpressionValue(builderNewBuilder8, "newBuilder(...)");
                                        QuickCapabilitiesKt.Dsl dsl_create8 = companion8._create(builderNewBuilder8);
                                        dsl_create8.setAndroid(this.gatherQuickCapabilities.invoke());
                                        dsl6.setQuickCapabilities(dsl_create8._build());
                                    }
                                    String installSource4 = this.deviceInfoRepository.getInstallSource();
                                    if (installSource4.length() > 0) {
                                    }
                                    if (str7 != null) {
                                        dsl6.setInstallSource(str7);
                                    }
                                    tcfString = this.tcfRepository.getTcfString();
                                    if (tcfString != null) {
                                        dsl6.setTcf(ByteStringsKt.toByteStringUtf8(tcfString));
                                    }
                                    return dsl7._build();
                                }
                            }
                        }
                    }
                }
                return coroutine_suspended;
            case 4:
                dsl4 = (InitializationRequestKt.Dsl) anonymousClass1.L$1;
                dsl5 = (InitializationRequestKt.Dsl) anonymousClass1.L$0;
                ResultKt.throwOnFailure(objInvoke2);
                str = (String) objInvoke2;
                str2 = str;
                if (str2 != null) {
                    dsl4.setAuidString(str);
                }
                SessionRepository sessionRepository9 = this.sessionRepository;
                anonymousClass1.L$0 = dsl5;
                anonymousClass1.L$1 = dsl4;
                anonymousClass1.label = 5;
                objInvoke2 = sessionRepository9.getPrivacy(anonymousClass1);
                if (objInvoke2 != coroutine_suspended) {
                    byteString2 = (ByteString) objInvoke2;
                    if (!byteString2.isEmpty()) {
                        dsl4.setPrivacy(byteString2);
                    }
                    SessionRepository sessionRepository10 = this.sessionRepository;
                    anonymousClass1.L$0 = dsl5;
                    anonymousClass1.L$1 = dsl4;
                    anonymousClass1.label = 6;
                    objInvoke2 = sessionRepository10.getGatewayCache(anonymousClass1);
                    if (objInvoke2 != coroutine_suspended) {
                        byteString3 = (ByteString) objInvoke2;
                        if (!byteString3.isEmpty()) {
                            dsl4.setCache(byteString3);
                        }
                        legacyFlowUserConsent = this.legacyUserConsentRepository.getLegacyFlowUserConsent();
                        if (legacyFlowUserConsent != null) {
                            dsl4.setLegacyFlowUserConsent(legacyFlowUserConsent);
                        }
                        unityInstallationId = this.sessionRepository.getUnityInstallationId();
                        if (unityInstallationId != null) {
                            dsl4.setUnityInstallationId(ByteStringsKt.toByteStringUtf8(unityInstallationId));
                        }
                        unityMegaSessionId = this.sessionRepository.getUnityMegaSessionId();
                        if (unityMegaSessionId != null) {
                            dsl4.setUnityMegaSessionId(ByteStringsKt.toByteStringUtf8(unityMegaSessionId));
                        }
                        DeviceInfoRepository deviceInfoRepository14 = this.deviceInfoRepository;
                        anonymousClass1.L$0 = dsl5;
                        anonymousClass1.L$1 = dsl4;
                        anonymousClass1.label = 7;
                        objInvoke2 = deviceInfoRepository14.getUnityBuildGuid(anonymousClass1);
                        if (objInvoke2 != coroutine_suspended) {
                            InitializationRequestKt.Dsl dsl15 = dsl5;
                            dsl6 = dsl4;
                            dsl7 = dsl15;
                            str3 = (String) objInvoke2;
                            if (str3 != null) {
                                z2 = true;
                            } else {
                                z2 = true;
                            }
                            if (z2) {
                                objInvoke2 = null;
                            }
                            str4 = (String) objInvoke2;
                            if (str4 != null) {
                                dsl6.setUnityBuildGuid(str4);
                            }
                            initializationConfiguration = this.sessionRepository.getInitializationConfiguration();
                            if (initializationConfiguration != null) {
                                str5 = (String) mutableMap.remove("uads_init_blob");
                                if (str5 != null) {
                                    new MutablePropertyReference0Impl(dsl6) { // from class: com.unity3d.ads.core.domain.AndroidGetInitializationRequestPayload$invoke$2$9$2
                                        @Override // p005kotlin.jvm.internal.MutablePropertyReference0Impl, p005kotlin.reflect.KProperty0
                                        public Object get() {
                                            return ((InitializationRequestKt.Dsl) this.receiver).getUadsInitBlob();
                                        }

                                        @Override // p005kotlin.jvm.internal.MutablePropertyReference0Impl, p005kotlin.reflect.KMutableProperty0
                                        public void set(Object obj3) {
                                            ((InitializationRequestKt.Dsl) this.receiver).setUadsInitBlob((ByteString) obj3);
                                        }
                                    }.set(byteStringUtf8);
                                }
                                dsl6.putAllExtras(dsl6.getExtrasMap(), mutableMap);
                            }
                            moduleInitParams = dsl6.getModuleInitParams();
                            ModuleInitParamsDataSource moduleInitParamsDataSource5 = this.moduleInitParamsDataSource;
                            anonymousClass1.L$0 = dsl7;
                            anonymousClass1.L$1 = dsl6;
                            anonymousClass1.L$2 = dsl6;
                            anonymousClass1.L$3 = moduleInitParams;
                            anonymousClass1.label = 8;
                            objInvoke = moduleInitParamsDataSource5.invoke(anonymousClass1);
                            if (objInvoke != coroutine_suspended) {
                                dslList = moduleInitParams;
                                objInvoke2 = objInvoke;
                                dsl8 = dsl6;
                                dsl8.addAllModuleInitParams(dslList, (Iterable) objInvoke2);
                                if (!dsl6.hasUadsInitBlob()) {
                                    MediationInitBlobMetadataReader mediationInitBlobMetadataReader5 = this.mediationInitBlobMetadataReader;
                                    obj = mediationInitBlobMetadataReader5.getJsonStorage().get(mediationInitBlobMetadataReader5.getKey());
                                    if (obj == null) {
                                        obj = null;
                                    } else {
                                        if (obj != null) {
                                            z3 = obj instanceof String;
                                        } else {
                                            z3 = true;
                                        }
                                        if (!z3) {
                                            obj = null;
                                        }
                                        if (obj == null) {
                                            obj = null;
                                        }
                                    }
                                    str6 = (String) obj;
                                    if (str6 != null) {
                                        new MutablePropertyReference0Impl(dsl6) { // from class: com.unity3d.ads.core.domain.AndroidGetInitializationRequestPayload$invoke$2$11
                                            @Override // p005kotlin.jvm.internal.MutablePropertyReference0Impl, p005kotlin.reflect.KProperty0
                                            public Object get() {
                                                return ((InitializationRequestKt.Dsl) this.receiver).getUadsInitBlob();
                                            }

                                            @Override // p005kotlin.jvm.internal.MutablePropertyReference0Impl, p005kotlin.reflect.KMutableProperty0
                                            public void set(Object obj3) {
                                                ((InitializationRequestKt.Dsl) this.receiver).setUadsInitBlob((ByteString) obj3);
                                            }
                                        }.set(byteStringUtf9);
                                    }
                                }
                                if (dsl6.getIsFirstInit()) {
                                    InstallReferrerDataSource installReferrerDataSource5 = this.installReferrerDataSource;
                                    anonymousClass1.L$0 = dsl7;
                                    anonymousClass1.L$1 = dsl6;
                                    anonymousClass1.L$2 = null;
                                    anonymousClass1.L$3 = null;
                                    anonymousClass1.label = 9;
                                    objInvoke2 = installReferrerDataSource5.invoke(anonymousClass1);
                                    if (objInvoke2 != coroutine_suspended) {
                                        dsl9 = dsl7;
                                        dsl10 = dsl6;
                                        installReferrer = (InitializationRequestOuterClass.InstallReferrer) objInvoke2;
                                        if (installReferrer != null) {
                                            dsl10.setInstallReferrer(installReferrer);
                                        }
                                        dsl7 = dsl9;
                                        dsl6 = dsl10;
                                    }
                                }
                                userIdentifier = UnityAds.getUserIdentifier();
                                if (userIdentifier != null) {
                                    dsl6.setExternalUserIdentifier(userIdentifier);
                                }
                                if (this.sessionRepository.getNativeConfiguration().getFeatureFlags().getCollectGoogleAppId()) {
                                    dsl6.setGoogleAppId(googleAppId);
                                }
                                if (Intrinsics.areEqual(this.mediationTraitsMetadataReader.getBooleanTrait(MediationTraitsMetadataReader.REPORT_CAPABILITIES), Boxing.boxBoolean(true))) {
                                    QuickCapabilitiesKt.Dsl.Companion companion9 = QuickCapabilitiesKt.Dsl.INSTANCE;
                                    InitializationRequestOuterClass.QuickCapabilities.Builder builderNewBuilder9 = InitializationRequestOuterClass.QuickCapabilities.newBuilder();
                                    Intrinsics.checkNotNullExpressionValue(builderNewBuilder9, "newBuilder(...)");
                                    QuickCapabilitiesKt.Dsl dsl_create9 = companion9._create(builderNewBuilder9);
                                    dsl_create9.setAndroid(this.gatherQuickCapabilities.invoke());
                                    dsl6.setQuickCapabilities(dsl_create9._build());
                                }
                                String installSource5 = this.deviceInfoRepository.getInstallSource();
                                if (installSource5.length() > 0) {
                                }
                                if (str7 != null) {
                                    dsl6.setInstallSource(str7);
                                }
                                tcfString = this.tcfRepository.getTcfString();
                                if (tcfString != null) {
                                    dsl6.setTcf(ByteStringsKt.toByteStringUtf8(tcfString));
                                }
                                return dsl7._build();
                            }
                        }
                    }
                }
                return coroutine_suspended;
            case 5:
                dsl4 = (InitializationRequestKt.Dsl) anonymousClass1.L$1;
                dsl5 = (InitializationRequestKt.Dsl) anonymousClass1.L$0;
                ResultKt.throwOnFailure(objInvoke2);
                byteString2 = (ByteString) objInvoke2;
                if (!byteString2.isEmpty()) {
                    dsl4.setPrivacy(byteString2);
                }
                SessionRepository sessionRepository11 = this.sessionRepository;
                anonymousClass1.L$0 = dsl5;
                anonymousClass1.L$1 = dsl4;
                anonymousClass1.label = 6;
                objInvoke2 = sessionRepository11.getGatewayCache(anonymousClass1);
                if (objInvoke2 != coroutine_suspended) {
                    byteString3 = (ByteString) objInvoke2;
                    if (!byteString3.isEmpty()) {
                        dsl4.setCache(byteString3);
                    }
                    legacyFlowUserConsent = this.legacyUserConsentRepository.getLegacyFlowUserConsent();
                    if (legacyFlowUserConsent != null) {
                        dsl4.setLegacyFlowUserConsent(legacyFlowUserConsent);
                    }
                    unityInstallationId = this.sessionRepository.getUnityInstallationId();
                    if (unityInstallationId != null) {
                        dsl4.setUnityInstallationId(ByteStringsKt.toByteStringUtf8(unityInstallationId));
                    }
                    unityMegaSessionId = this.sessionRepository.getUnityMegaSessionId();
                    if (unityMegaSessionId != null) {
                        dsl4.setUnityMegaSessionId(ByteStringsKt.toByteStringUtf8(unityMegaSessionId));
                    }
                    DeviceInfoRepository deviceInfoRepository15 = this.deviceInfoRepository;
                    anonymousClass1.L$0 = dsl5;
                    anonymousClass1.L$1 = dsl4;
                    anonymousClass1.label = 7;
                    objInvoke2 = deviceInfoRepository15.getUnityBuildGuid(anonymousClass1);
                    if (objInvoke2 != coroutine_suspended) {
                        InitializationRequestKt.Dsl dsl16 = dsl5;
                        dsl6 = dsl4;
                        dsl7 = dsl16;
                        str3 = (String) objInvoke2;
                        if (str3 != null) {
                            z2 = true;
                        } else {
                            z2 = true;
                        }
                        if (z2) {
                            objInvoke2 = null;
                        }
                        str4 = (String) objInvoke2;
                        if (str4 != null) {
                            dsl6.setUnityBuildGuid(str4);
                        }
                        initializationConfiguration = this.sessionRepository.getInitializationConfiguration();
                        if (initializationConfiguration != null) {
                            str5 = (String) mutableMap.remove("uads_init_blob");
                            if (str5 != null) {
                                new MutablePropertyReference0Impl(dsl6) { // from class: com.unity3d.ads.core.domain.AndroidGetInitializationRequestPayload$invoke$2$9$2
                                    @Override // p005kotlin.jvm.internal.MutablePropertyReference0Impl, p005kotlin.reflect.KProperty0
                                    public Object get() {
                                        return ((InitializationRequestKt.Dsl) this.receiver).getUadsInitBlob();
                                    }

                                    @Override // p005kotlin.jvm.internal.MutablePropertyReference0Impl, p005kotlin.reflect.KMutableProperty0
                                    public void set(Object obj3) {
                                        ((InitializationRequestKt.Dsl) this.receiver).setUadsInitBlob((ByteString) obj3);
                                    }
                                }.set(byteStringUtf8);
                            }
                            dsl6.putAllExtras(dsl6.getExtrasMap(), mutableMap);
                        }
                        moduleInitParams = dsl6.getModuleInitParams();
                        ModuleInitParamsDataSource moduleInitParamsDataSource6 = this.moduleInitParamsDataSource;
                        anonymousClass1.L$0 = dsl7;
                        anonymousClass1.L$1 = dsl6;
                        anonymousClass1.L$2 = dsl6;
                        anonymousClass1.L$3 = moduleInitParams;
                        anonymousClass1.label = 8;
                        objInvoke = moduleInitParamsDataSource6.invoke(anonymousClass1);
                        if (objInvoke != coroutine_suspended) {
                            dslList = moduleInitParams;
                            objInvoke2 = objInvoke;
                            dsl8 = dsl6;
                            dsl8.addAllModuleInitParams(dslList, (Iterable) objInvoke2);
                            if (!dsl6.hasUadsInitBlob()) {
                                MediationInitBlobMetadataReader mediationInitBlobMetadataReader6 = this.mediationInitBlobMetadataReader;
                                obj = mediationInitBlobMetadataReader6.getJsonStorage().get(mediationInitBlobMetadataReader6.getKey());
                                if (obj == null) {
                                    obj = null;
                                } else {
                                    if (obj != null) {
                                        z3 = obj instanceof String;
                                    } else {
                                        z3 = true;
                                    }
                                    if (!z3) {
                                        obj = null;
                                    }
                                    if (obj == null) {
                                        obj = null;
                                    }
                                }
                                str6 = (String) obj;
                                if (str6 != null) {
                                    new MutablePropertyReference0Impl(dsl6) { // from class: com.unity3d.ads.core.domain.AndroidGetInitializationRequestPayload$invoke$2$11
                                        @Override // p005kotlin.jvm.internal.MutablePropertyReference0Impl, p005kotlin.reflect.KProperty0
                                        public Object get() {
                                            return ((InitializationRequestKt.Dsl) this.receiver).getUadsInitBlob();
                                        }

                                        @Override // p005kotlin.jvm.internal.MutablePropertyReference0Impl, p005kotlin.reflect.KMutableProperty0
                                        public void set(Object obj3) {
                                            ((InitializationRequestKt.Dsl) this.receiver).setUadsInitBlob((ByteString) obj3);
                                        }
                                    }.set(byteStringUtf9);
                                }
                            }
                            if (dsl6.getIsFirstInit()) {
                                InstallReferrerDataSource installReferrerDataSource6 = this.installReferrerDataSource;
                                anonymousClass1.L$0 = dsl7;
                                anonymousClass1.L$1 = dsl6;
                                anonymousClass1.L$2 = null;
                                anonymousClass1.L$3 = null;
                                anonymousClass1.label = 9;
                                objInvoke2 = installReferrerDataSource6.invoke(anonymousClass1);
                                if (objInvoke2 != coroutine_suspended) {
                                    dsl9 = dsl7;
                                    dsl10 = dsl6;
                                    installReferrer = (InitializationRequestOuterClass.InstallReferrer) objInvoke2;
                                    if (installReferrer != null) {
                                        dsl10.setInstallReferrer(installReferrer);
                                    }
                                    dsl7 = dsl9;
                                    dsl6 = dsl10;
                                }
                            }
                            userIdentifier = UnityAds.getUserIdentifier();
                            if (userIdentifier != null) {
                                dsl6.setExternalUserIdentifier(userIdentifier);
                            }
                            if (this.sessionRepository.getNativeConfiguration().getFeatureFlags().getCollectGoogleAppId()) {
                                dsl6.setGoogleAppId(googleAppId);
                            }
                            if (Intrinsics.areEqual(this.mediationTraitsMetadataReader.getBooleanTrait(MediationTraitsMetadataReader.REPORT_CAPABILITIES), Boxing.boxBoolean(true))) {
                                QuickCapabilitiesKt.Dsl.Companion companion10 = QuickCapabilitiesKt.Dsl.INSTANCE;
                                InitializationRequestOuterClass.QuickCapabilities.Builder builderNewBuilder10 = InitializationRequestOuterClass.QuickCapabilities.newBuilder();
                                Intrinsics.checkNotNullExpressionValue(builderNewBuilder10, "newBuilder(...)");
                                QuickCapabilitiesKt.Dsl dsl_create10 = companion10._create(builderNewBuilder10);
                                dsl_create10.setAndroid(this.gatherQuickCapabilities.invoke());
                                dsl6.setQuickCapabilities(dsl_create10._build());
                            }
                            String installSource6 = this.deviceInfoRepository.getInstallSource();
                            if (installSource6.length() > 0) {
                            }
                            if (str7 != null) {
                                dsl6.setInstallSource(str7);
                            }
                            tcfString = this.tcfRepository.getTcfString();
                            if (tcfString != null) {
                                dsl6.setTcf(ByteStringsKt.toByteStringUtf8(tcfString));
                            }
                            return dsl7._build();
                        }
                    }
                }
                return coroutine_suspended;
            case 6:
                dsl4 = (InitializationRequestKt.Dsl) anonymousClass1.L$1;
                dsl5 = (InitializationRequestKt.Dsl) anonymousClass1.L$0;
                ResultKt.throwOnFailure(objInvoke2);
                byteString3 = (ByteString) objInvoke2;
                if (!byteString3.isEmpty()) {
                    dsl4.setCache(byteString3);
                }
                legacyFlowUserConsent = this.legacyUserConsentRepository.getLegacyFlowUserConsent();
                if (legacyFlowUserConsent != null) {
                    dsl4.setLegacyFlowUserConsent(legacyFlowUserConsent);
                }
                unityInstallationId = this.sessionRepository.getUnityInstallationId();
                if (unityInstallationId != null) {
                    dsl4.setUnityInstallationId(ByteStringsKt.toByteStringUtf8(unityInstallationId));
                }
                unityMegaSessionId = this.sessionRepository.getUnityMegaSessionId();
                if (unityMegaSessionId != null) {
                    dsl4.setUnityMegaSessionId(ByteStringsKt.toByteStringUtf8(unityMegaSessionId));
                }
                DeviceInfoRepository deviceInfoRepository16 = this.deviceInfoRepository;
                anonymousClass1.L$0 = dsl5;
                anonymousClass1.L$1 = dsl4;
                anonymousClass1.label = 7;
                objInvoke2 = deviceInfoRepository16.getUnityBuildGuid(anonymousClass1);
                if (objInvoke2 != coroutine_suspended) {
                    InitializationRequestKt.Dsl dsl17 = dsl5;
                    dsl6 = dsl4;
                    dsl7 = dsl17;
                    str3 = (String) objInvoke2;
                    if (str3 != null) {
                        z2 = true;
                    } else {
                        z2 = true;
                    }
                    if (z2) {
                        objInvoke2 = null;
                    }
                    str4 = (String) objInvoke2;
                    if (str4 != null) {
                        dsl6.setUnityBuildGuid(str4);
                    }
                    initializationConfiguration = this.sessionRepository.getInitializationConfiguration();
                    if (initializationConfiguration != null) {
                        str5 = (String) mutableMap.remove("uads_init_blob");
                        if (str5 != null) {
                            new MutablePropertyReference0Impl(dsl6) { // from class: com.unity3d.ads.core.domain.AndroidGetInitializationRequestPayload$invoke$2$9$2
                                @Override // p005kotlin.jvm.internal.MutablePropertyReference0Impl, p005kotlin.reflect.KProperty0
                                public Object get() {
                                    return ((InitializationRequestKt.Dsl) this.receiver).getUadsInitBlob();
                                }

                                @Override // p005kotlin.jvm.internal.MutablePropertyReference0Impl, p005kotlin.reflect.KMutableProperty0
                                public void set(Object obj3) {
                                    ((InitializationRequestKt.Dsl) this.receiver).setUadsInitBlob((ByteString) obj3);
                                }
                            }.set(byteStringUtf8);
                        }
                        dsl6.putAllExtras(dsl6.getExtrasMap(), mutableMap);
                    }
                    moduleInitParams = dsl6.getModuleInitParams();
                    ModuleInitParamsDataSource moduleInitParamsDataSource7 = this.moduleInitParamsDataSource;
                    anonymousClass1.L$0 = dsl7;
                    anonymousClass1.L$1 = dsl6;
                    anonymousClass1.L$2 = dsl6;
                    anonymousClass1.L$3 = moduleInitParams;
                    anonymousClass1.label = 8;
                    objInvoke = moduleInitParamsDataSource7.invoke(anonymousClass1);
                    if (objInvoke != coroutine_suspended) {
                        dslList = moduleInitParams;
                        objInvoke2 = objInvoke;
                        dsl8 = dsl6;
                        dsl8.addAllModuleInitParams(dslList, (Iterable) objInvoke2);
                        if (!dsl6.hasUadsInitBlob()) {
                            MediationInitBlobMetadataReader mediationInitBlobMetadataReader7 = this.mediationInitBlobMetadataReader;
                            obj = mediationInitBlobMetadataReader7.getJsonStorage().get(mediationInitBlobMetadataReader7.getKey());
                            if (obj == null) {
                                obj = null;
                            } else {
                                if (obj != null) {
                                    z3 = obj instanceof String;
                                } else {
                                    z3 = true;
                                }
                                if (!z3) {
                                    obj = null;
                                }
                                if (obj == null) {
                                    obj = null;
                                }
                            }
                            str6 = (String) obj;
                            if (str6 != null) {
                                new MutablePropertyReference0Impl(dsl6) { // from class: com.unity3d.ads.core.domain.AndroidGetInitializationRequestPayload$invoke$2$11
                                    @Override // p005kotlin.jvm.internal.MutablePropertyReference0Impl, p005kotlin.reflect.KProperty0
                                    public Object get() {
                                        return ((InitializationRequestKt.Dsl) this.receiver).getUadsInitBlob();
                                    }

                                    @Override // p005kotlin.jvm.internal.MutablePropertyReference0Impl, p005kotlin.reflect.KMutableProperty0
                                    public void set(Object obj3) {
                                        ((InitializationRequestKt.Dsl) this.receiver).setUadsInitBlob((ByteString) obj3);
                                    }
                                }.set(byteStringUtf9);
                            }
                        }
                        if (dsl6.getIsFirstInit()) {
                            InstallReferrerDataSource installReferrerDataSource7 = this.installReferrerDataSource;
                            anonymousClass1.L$0 = dsl7;
                            anonymousClass1.L$1 = dsl6;
                            anonymousClass1.L$2 = null;
                            anonymousClass1.L$3 = null;
                            anonymousClass1.label = 9;
                            objInvoke2 = installReferrerDataSource7.invoke(anonymousClass1);
                            if (objInvoke2 != coroutine_suspended) {
                                dsl9 = dsl7;
                                dsl10 = dsl6;
                                installReferrer = (InitializationRequestOuterClass.InstallReferrer) objInvoke2;
                                if (installReferrer != null) {
                                    dsl10.setInstallReferrer(installReferrer);
                                }
                                dsl7 = dsl9;
                                dsl6 = dsl10;
                            }
                        }
                        userIdentifier = UnityAds.getUserIdentifier();
                        if (userIdentifier != null) {
                            dsl6.setExternalUserIdentifier(userIdentifier);
                        }
                        if (this.sessionRepository.getNativeConfiguration().getFeatureFlags().getCollectGoogleAppId()) {
                            dsl6.setGoogleAppId(googleAppId);
                        }
                        if (Intrinsics.areEqual(this.mediationTraitsMetadataReader.getBooleanTrait(MediationTraitsMetadataReader.REPORT_CAPABILITIES), Boxing.boxBoolean(true))) {
                            QuickCapabilitiesKt.Dsl.Companion companion11 = QuickCapabilitiesKt.Dsl.INSTANCE;
                            InitializationRequestOuterClass.QuickCapabilities.Builder builderNewBuilder11 = InitializationRequestOuterClass.QuickCapabilities.newBuilder();
                            Intrinsics.checkNotNullExpressionValue(builderNewBuilder11, "newBuilder(...)");
                            QuickCapabilitiesKt.Dsl dsl_create11 = companion11._create(builderNewBuilder11);
                            dsl_create11.setAndroid(this.gatherQuickCapabilities.invoke());
                            dsl6.setQuickCapabilities(dsl_create11._build());
                        }
                        String installSource7 = this.deviceInfoRepository.getInstallSource();
                        if (installSource7.length() > 0) {
                        }
                        if (str7 != null) {
                            dsl6.setInstallSource(str7);
                        }
                        tcfString = this.tcfRepository.getTcfString();
                        if (tcfString != null) {
                            dsl6.setTcf(ByteStringsKt.toByteStringUtf8(tcfString));
                        }
                        return dsl7._build();
                    }
                }
                return coroutine_suspended;
            case 7:
                dsl4 = (InitializationRequestKt.Dsl) anonymousClass1.L$1;
                dsl5 = (InitializationRequestKt.Dsl) anonymousClass1.L$0;
                ResultKt.throwOnFailure(objInvoke2);
                InitializationRequestKt.Dsl dsl18 = dsl5;
                dsl6 = dsl4;
                dsl7 = dsl18;
                str3 = (String) objInvoke2;
                if (str3 != null) {
                    z2 = true;
                } else {
                    z2 = true;
                }
                if (z2) {
                    objInvoke2 = null;
                }
                str4 = (String) objInvoke2;
                if (str4 != null) {
                    dsl6.setUnityBuildGuid(str4);
                }
                initializationConfiguration = this.sessionRepository.getInitializationConfiguration();
                if (initializationConfiguration != null) {
                    str5 = (String) mutableMap.remove("uads_init_blob");
                    if (str5 != null) {
                        new MutablePropertyReference0Impl(dsl6) { // from class: com.unity3d.ads.core.domain.AndroidGetInitializationRequestPayload$invoke$2$9$2
                            @Override // p005kotlin.jvm.internal.MutablePropertyReference0Impl, p005kotlin.reflect.KProperty0
                            public Object get() {
                                return ((InitializationRequestKt.Dsl) this.receiver).getUadsInitBlob();
                            }

                            @Override // p005kotlin.jvm.internal.MutablePropertyReference0Impl, p005kotlin.reflect.KMutableProperty0
                            public void set(Object obj3) {
                                ((InitializationRequestKt.Dsl) this.receiver).setUadsInitBlob((ByteString) obj3);
                            }
                        }.set(byteStringUtf8);
                    }
                    dsl6.putAllExtras(dsl6.getExtrasMap(), mutableMap);
                }
                moduleInitParams = dsl6.getModuleInitParams();
                ModuleInitParamsDataSource moduleInitParamsDataSource8 = this.moduleInitParamsDataSource;
                anonymousClass1.L$0 = dsl7;
                anonymousClass1.L$1 = dsl6;
                anonymousClass1.L$2 = dsl6;
                anonymousClass1.L$3 = moduleInitParams;
                anonymousClass1.label = 8;
                objInvoke = moduleInitParamsDataSource8.invoke(anonymousClass1);
                if (objInvoke != coroutine_suspended) {
                    dslList = moduleInitParams;
                    objInvoke2 = objInvoke;
                    dsl8 = dsl6;
                    dsl8.addAllModuleInitParams(dslList, (Iterable) objInvoke2);
                    if (!dsl6.hasUadsInitBlob()) {
                        MediationInitBlobMetadataReader mediationInitBlobMetadataReader8 = this.mediationInitBlobMetadataReader;
                        obj = mediationInitBlobMetadataReader8.getJsonStorage().get(mediationInitBlobMetadataReader8.getKey());
                        if (obj == null) {
                            obj = null;
                        } else {
                            if (obj != null) {
                                z3 = obj instanceof String;
                            } else {
                                z3 = true;
                            }
                            if (!z3) {
                                obj = null;
                            }
                            if (obj == null) {
                                obj = null;
                            }
                        }
                        str6 = (String) obj;
                        if (str6 != null) {
                            new MutablePropertyReference0Impl(dsl6) { // from class: com.unity3d.ads.core.domain.AndroidGetInitializationRequestPayload$invoke$2$11
                                @Override // p005kotlin.jvm.internal.MutablePropertyReference0Impl, p005kotlin.reflect.KProperty0
                                public Object get() {
                                    return ((InitializationRequestKt.Dsl) this.receiver).getUadsInitBlob();
                                }

                                @Override // p005kotlin.jvm.internal.MutablePropertyReference0Impl, p005kotlin.reflect.KMutableProperty0
                                public void set(Object obj3) {
                                    ((InitializationRequestKt.Dsl) this.receiver).setUadsInitBlob((ByteString) obj3);
                                }
                            }.set(byteStringUtf9);
                        }
                    }
                    if (dsl6.getIsFirstInit()) {
                        InstallReferrerDataSource installReferrerDataSource8 = this.installReferrerDataSource;
                        anonymousClass1.L$0 = dsl7;
                        anonymousClass1.L$1 = dsl6;
                        anonymousClass1.L$2 = null;
                        anonymousClass1.L$3 = null;
                        anonymousClass1.label = 9;
                        objInvoke2 = installReferrerDataSource8.invoke(anonymousClass1);
                        if (objInvoke2 != coroutine_suspended) {
                            dsl9 = dsl7;
                            dsl10 = dsl6;
                            installReferrer = (InitializationRequestOuterClass.InstallReferrer) objInvoke2;
                            if (installReferrer != null) {
                                dsl10.setInstallReferrer(installReferrer);
                            }
                            dsl7 = dsl9;
                            dsl6 = dsl10;
                        }
                    }
                    userIdentifier = UnityAds.getUserIdentifier();
                    if (userIdentifier != null) {
                        dsl6.setExternalUserIdentifier(userIdentifier);
                    }
                    if (this.sessionRepository.getNativeConfiguration().getFeatureFlags().getCollectGoogleAppId()) {
                        dsl6.setGoogleAppId(googleAppId);
                    }
                    if (Intrinsics.areEqual(this.mediationTraitsMetadataReader.getBooleanTrait(MediationTraitsMetadataReader.REPORT_CAPABILITIES), Boxing.boxBoolean(true))) {
                        QuickCapabilitiesKt.Dsl.Companion companion12 = QuickCapabilitiesKt.Dsl.INSTANCE;
                        InitializationRequestOuterClass.QuickCapabilities.Builder builderNewBuilder12 = InitializationRequestOuterClass.QuickCapabilities.newBuilder();
                        Intrinsics.checkNotNullExpressionValue(builderNewBuilder12, "newBuilder(...)");
                        QuickCapabilitiesKt.Dsl dsl_create12 = companion12._create(builderNewBuilder12);
                        dsl_create12.setAndroid(this.gatherQuickCapabilities.invoke());
                        dsl6.setQuickCapabilities(dsl_create12._build());
                    }
                    String installSource8 = this.deviceInfoRepository.getInstallSource();
                    if (installSource8.length() > 0) {
                    }
                    if (str7 != null) {
                        dsl6.setInstallSource(str7);
                    }
                    tcfString = this.tcfRepository.getTcfString();
                    if (tcfString != null) {
                        dsl6.setTcf(ByteStringsKt.toByteStringUtf8(tcfString));
                    }
                    return dsl7._build();
                }
                return coroutine_suspended;
            case 8:
                DslList dslList2 = (DslList) anonymousClass1.L$3;
                InitializationRequestKt.Dsl dsl19 = (InitializationRequestKt.Dsl) anonymousClass1.L$2;
                InitializationRequestKt.Dsl dsl20 = (InitializationRequestKt.Dsl) anonymousClass1.L$1;
                InitializationRequestKt.Dsl dsl21 = (InitializationRequestKt.Dsl) anonymousClass1.L$0;
                ResultKt.throwOnFailure(objInvoke2);
                dslList = dslList2;
                dsl7 = dsl21;
                dsl8 = dsl19;
                dsl6 = dsl20;
                dsl8.addAllModuleInitParams(dslList, (Iterable) objInvoke2);
                if (!dsl6.hasUadsInitBlob()) {
                    MediationInitBlobMetadataReader mediationInitBlobMetadataReader9 = this.mediationInitBlobMetadataReader;
                    obj = mediationInitBlobMetadataReader9.getJsonStorage().get(mediationInitBlobMetadataReader9.getKey());
                    if (obj == null) {
                        obj = null;
                    } else {
                        if (obj != null) {
                            z3 = obj instanceof String;
                        } else {
                            z3 = true;
                        }
                        if (!z3) {
                            obj = null;
                        }
                        if (obj == null) {
                            obj = null;
                        }
                    }
                    str6 = (String) obj;
                    if (str6 != null) {
                        new MutablePropertyReference0Impl(dsl6) { // from class: com.unity3d.ads.core.domain.AndroidGetInitializationRequestPayload$invoke$2$11
                            @Override // p005kotlin.jvm.internal.MutablePropertyReference0Impl, p005kotlin.reflect.KProperty0
                            public Object get() {
                                return ((InitializationRequestKt.Dsl) this.receiver).getUadsInitBlob();
                            }

                            @Override // p005kotlin.jvm.internal.MutablePropertyReference0Impl, p005kotlin.reflect.KMutableProperty0
                            public void set(Object obj3) {
                                ((InitializationRequestKt.Dsl) this.receiver).setUadsInitBlob((ByteString) obj3);
                            }
                        }.set(byteStringUtf9);
                    }
                }
                if (dsl6.getIsFirstInit()) {
                    InstallReferrerDataSource installReferrerDataSource9 = this.installReferrerDataSource;
                    anonymousClass1.L$0 = dsl7;
                    anonymousClass1.L$1 = dsl6;
                    anonymousClass1.L$2 = null;
                    anonymousClass1.L$3 = null;
                    anonymousClass1.label = 9;
                    objInvoke2 = installReferrerDataSource9.invoke(anonymousClass1);
                    if (objInvoke2 != coroutine_suspended) {
                        dsl9 = dsl7;
                        dsl10 = dsl6;
                        installReferrer = (InitializationRequestOuterClass.InstallReferrer) objInvoke2;
                        if (installReferrer != null) {
                            dsl10.setInstallReferrer(installReferrer);
                        }
                        dsl7 = dsl9;
                        dsl6 = dsl10;
                    }
                    return coroutine_suspended;
                }
                userIdentifier = UnityAds.getUserIdentifier();
                if (userIdentifier != null) {
                    dsl6.setExternalUserIdentifier(userIdentifier);
                }
                if (this.sessionRepository.getNativeConfiguration().getFeatureFlags().getCollectGoogleAppId()) {
                    dsl6.setGoogleAppId(googleAppId);
                }
                if (Intrinsics.areEqual(this.mediationTraitsMetadataReader.getBooleanTrait(MediationTraitsMetadataReader.REPORT_CAPABILITIES), Boxing.boxBoolean(true))) {
                    QuickCapabilitiesKt.Dsl.Companion companion13 = QuickCapabilitiesKt.Dsl.INSTANCE;
                    InitializationRequestOuterClass.QuickCapabilities.Builder builderNewBuilder13 = InitializationRequestOuterClass.QuickCapabilities.newBuilder();
                    Intrinsics.checkNotNullExpressionValue(builderNewBuilder13, "newBuilder(...)");
                    QuickCapabilitiesKt.Dsl dsl_create13 = companion13._create(builderNewBuilder13);
                    dsl_create13.setAndroid(this.gatherQuickCapabilities.invoke());
                    dsl6.setQuickCapabilities(dsl_create13._build());
                }
                String installSource9 = this.deviceInfoRepository.getInstallSource();
                if (installSource9.length() > 0) {
                }
                if (str7 != null) {
                    dsl6.setInstallSource(str7);
                }
                tcfString = this.tcfRepository.getTcfString();
                if (tcfString != null) {
                    dsl6.setTcf(ByteStringsKt.toByteStringUtf8(tcfString));
                }
                return dsl7._build();
            case 9:
                dsl10 = (InitializationRequestKt.Dsl) anonymousClass1.L$1;
                dsl9 = (InitializationRequestKt.Dsl) anonymousClass1.L$0;
                ResultKt.throwOnFailure(objInvoke2);
                installReferrer = (InitializationRequestOuterClass.InstallReferrer) objInvoke2;
                if (installReferrer != null) {
                    dsl10.setInstallReferrer(installReferrer);
                }
                dsl7 = dsl9;
                dsl6 = dsl10;
                userIdentifier = UnityAds.getUserIdentifier();
                if (userIdentifier != null) {
                    dsl6.setExternalUserIdentifier(userIdentifier);
                }
                if (this.sessionRepository.getNativeConfiguration().getFeatureFlags().getCollectGoogleAppId()) {
                    dsl6.setGoogleAppId(googleAppId);
                }
                if (Intrinsics.areEqual(this.mediationTraitsMetadataReader.getBooleanTrait(MediationTraitsMetadataReader.REPORT_CAPABILITIES), Boxing.boxBoolean(true))) {
                    QuickCapabilitiesKt.Dsl.Companion companion14 = QuickCapabilitiesKt.Dsl.INSTANCE;
                    InitializationRequestOuterClass.QuickCapabilities.Builder builderNewBuilder14 = InitializationRequestOuterClass.QuickCapabilities.newBuilder();
                    Intrinsics.checkNotNullExpressionValue(builderNewBuilder14, "newBuilder(...)");
                    QuickCapabilitiesKt.Dsl dsl_create14 = companion14._create(builderNewBuilder14);
                    dsl_create14.setAndroid(this.gatherQuickCapabilities.invoke());
                    dsl6.setQuickCapabilities(dsl_create14._build());
                }
                String installSource10 = this.deviceInfoRepository.getInstallSource();
                if (installSource10.length() > 0) {
                }
                if (str7 != null) {
                    dsl6.setInstallSource(str7);
                }
                tcfString = this.tcfRepository.getTcfString();
                if (tcfString != null) {
                    dsl6.setTcf(ByteStringsKt.toByteStringUtf8(tcfString));
                }
                return dsl7._build();
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
