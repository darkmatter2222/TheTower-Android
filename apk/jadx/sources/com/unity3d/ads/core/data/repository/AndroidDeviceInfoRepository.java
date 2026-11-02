package com.unity3d.ads.core.data.repository;

import com.google.protobuf.ByteString;
import com.ironsource.C3510b4;
import com.ironsource.R6;
import com.tapjoy.TapjoyConstants;
import com.unity3d.ads.core.data.datasource.DynamicDeviceInfoDataSource;
import com.unity3d.ads.core.data.datasource.PrivacyDeviceInfoDataSource;
import com.unity3d.ads.core.data.datasource.StaticDeviceInfoDataSource;
import com.unity3d.ads.core.data.datasource.VolumeSettingsChange;
import com.unity3d.ads.core.extensions.ProtobufExtensionsKt;
import gatewayprotocol.v1.AllowedPiiOuterClass;
import gatewayprotocol.v1.DynamicDeviceInfoOuterClass;
import gatewayprotocol.v1.PiiOuterClass;
import gatewayprotocol.v1.StaticDeviceInfoOuterClass;
import java.util.List;
import java.util.UUID;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import p005kotlin.Metadata;
import p005kotlin.ResultKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;
import p005kotlin.coroutines.jvm.internal.DebugMetadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AndroidDeviceInfoRepository.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0094\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0010 \n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u000f\n\u0002\u0010\u0006\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\r\b\u0000\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bJ\u000e\u0010\u0011\u001a\u00020\u0012H\u0096@¢\u0006\u0002\u0010\u0013J\b\u0010\u0014\u001a\u00020\u0012H\u0016J\b\u0010\u0019\u001a\u00020\u0016H\u0016J\u000e\u0010\u001e\u001a\u00020\u001fH\u0096@¢\u0006\u0002\u0010\u0013J\u0010\u0010 \u001a\u0004\u0018\u00010\u001fH\u0096@¢\u0006\u0002\u0010\u0013J\u0010\u0010!\u001a\u0004\u0018\u00010\"H\u0096@¢\u0006\u0002\u0010\u0013J\u0010\u0010#\u001a\u0004\u0018\u00010\u001fH\u0096@¢\u0006\u0002\u0010\u0013R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\rX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0015\u001a\u00020\u00168VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018R\u0014\u0010\u001a\u001a\u00020\u001b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001dR\u0016\u0010$\u001a\u0004\u0018\u00010\u001fX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b%\u0010&R\u001a\u0010'\u001a\b\u0012\u0004\u0012\u00020)0(X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b*\u0010+R\u0014\u0010,\u001a\u00020-8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b.\u0010/R\u0014\u00100\u001a\u0002018VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b2\u00103R\u0014\u00104\u001a\u00020\u001f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b5\u0010&R\u0014\u00106\u001a\u00020\u001f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b7\u0010&R\u0014\u00108\u001a\u00020-8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b9\u0010/R\u001a\u0010:\u001a\b\u0012\u0004\u0012\u00020\u001f0;8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b<\u0010=R\u0014\u0010>\u001a\u00020\u001f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b?\u0010&R\u0014\u0010@\u001a\u00020\u001f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bA\u0010&R\u0014\u0010B\u001a\u00020\u001f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bC\u0010&R\u0014\u0010D\u001a\u00020\u001f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bE\u0010&R\u0014\u0010F\u001a\u00020G8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bH\u0010IR\u0014\u0010J\u001a\u00020\u001f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bK\u0010&R\u0014\u0010L\u001a\u0002018VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bM\u00103R\u0014\u0010N\u001a\u0002018VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bO\u00103R\u0014\u0010P\u001a\u00020\u001f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bQ\u0010&R\u0014\u0010R\u001a\u00020\u001f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bS\u0010&R\u0014\u0010T\u001a\u00020\u001f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bU\u0010&R\u0014\u0010V\u001a\u00020W8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bX\u0010YR\u0014\u0010Z\u001a\u00020-8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b[\u0010/R\u0014\u0010\\\u001a\u00020]8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b^\u0010_R\u0014\u0010`\u001a\u00020W8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\ba\u0010YR\u0014\u0010b\u001a\u00020W8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bc\u0010YR\u0014\u0010d\u001a\u00020-8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\be\u0010/R\u0014\u0010f\u001a\u00020-8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bg\u0010/R\u0014\u0010h\u001a\u00020G8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bi\u0010I¨\u0006j"}, d2 = {"Lcom/unity3d/ads/core/data/repository/AndroidDeviceInfoRepository;", "Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;", "staticDeviceInfoDataSource", "Lcom/unity3d/ads/core/data/datasource/StaticDeviceInfoDataSource;", "dynamicDeviceInfoDataSource", "Lcom/unity3d/ads/core/data/datasource/DynamicDeviceInfoDataSource;", "privacyDeviceInfoDataSource", "Lcom/unity3d/ads/core/data/datasource/PrivacyDeviceInfoDataSource;", "sessionRepository", "Lcom/unity3d/ads/core/data/repository/SessionRepository;", "<init>", "(Lcom/unity3d/ads/core/data/datasource/StaticDeviceInfoDataSource;Lcom/unity3d/ads/core/data/datasource/DynamicDeviceInfoDataSource;Lcom/unity3d/ads/core/data/datasource/PrivacyDeviceInfoDataSource;Lcom/unity3d/ads/core/data/repository/SessionRepository;)V", "allowedPii", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;", "getAllowedPii", "()Lkotlinx/coroutines/flow/MutableStateFlow;", "staticDeviceInfo", "Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "cachedStaticDeviceInfo", "dynamicDeviceInfo", "Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;", "getDynamicDeviceInfo", "()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;", "dynamicDeviceInfoWithAccelerometer", "piiData", "Lgatewayprotocol/v1/PiiOuterClass$Pii;", "getPiiData", "()Lgatewayprotocol/v1/PiiOuterClass$Pii;", "getIdfi", "", "getAuidString", "getAuidByteString", "Lcom/google/protobuf/ByteString;", "getUnityBuildGuid", "analyticsUserId", "getAnalyticsUserId", "()Ljava/lang/String;", "volumeSettingsChange", "Lkotlinx/coroutines/flow/Flow;", "Lcom/unity3d/ads/core/data/datasource/VolumeSettingsChange;", "getVolumeSettingsChange", "()Lkotlinx/coroutines/flow/Flow;", "ringerMode", "", "getRingerMode", "()I", "systemBootTime", "", "getSystemBootTime", "()J", "orientation", "getOrientation", "connectionTypeStr", "getConnectionTypeStr", "currentUiTheme", "getCurrentUiTheme", "localeList", "", "getLocaleList", "()Ljava/util/List;", "appName", "getAppName", R6.B, "getModel", "manufacturer", "getManufacturer", "osVersion", "getOsVersion", "hasInternet", "", "getHasInternet", "()Z", "bundleVersion", "getBundleVersion", "totalDiskSpace", "getTotalDiskSpace", "totalRamMemory", "getTotalRamMemory", "installSource", "getInstallSource", "language", "getLanguage", "networkOperator", "getNetworkOperator", C3510b4.j.Y, "", "getBatteryLevel", "()D", "batteryStatus", "getBatteryStatus", "connectionType", "Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$ConnectionType;", "getConnectionType", "()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$ConnectionType;", TapjoyConstants.TJC_VOLUME, "getVolume", "maxVolume", "getMaxVolume", "screenWidth", "getScreenWidth", "screenHeight", "getScreenHeight", "limitedTracking", "getLimitedTracking", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidDeviceInfoRepository implements DeviceInfoRepository {
    private final MutableStateFlow<AllowedPiiOuterClass.AllowedPii> allowedPii;
    private final String analyticsUserId;
    private final DynamicDeviceInfoDataSource dynamicDeviceInfoDataSource;
    private final PrivacyDeviceInfoDataSource privacyDeviceInfoDataSource;
    private final SessionRepository sessionRepository;
    private final StaticDeviceInfoDataSource staticDeviceInfoDataSource;
    private final Flow<VolumeSettingsChange> volumeSettingsChange;

    /* JADX INFO: renamed from: com.unity3d.ads.core.data.repository.AndroidDeviceInfoRepository$getAuidByteString$1, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidDeviceInfoRepository.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.data.repository.AndroidDeviceInfoRepository", f = "AndroidDeviceInfoRepository.kt", i = {}, l = {42}, m = "getAuidByteString", n = {}, s = {})
    static final class AnonymousClass1 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AndroidDeviceInfoRepository.this.getAuidByteString(this);
        }
    }

    public AndroidDeviceInfoRepository(StaticDeviceInfoDataSource staticDeviceInfoDataSource, DynamicDeviceInfoDataSource dynamicDeviceInfoDataSource, PrivacyDeviceInfoDataSource privacyDeviceInfoDataSource, SessionRepository sessionRepository) {
        Intrinsics.checkNotNullParameter(staticDeviceInfoDataSource, "staticDeviceInfoDataSource");
        Intrinsics.checkNotNullParameter(dynamicDeviceInfoDataSource, "dynamicDeviceInfoDataSource");
        Intrinsics.checkNotNullParameter(privacyDeviceInfoDataSource, "privacyDeviceInfoDataSource");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        this.staticDeviceInfoDataSource = staticDeviceInfoDataSource;
        this.dynamicDeviceInfoDataSource = dynamicDeviceInfoDataSource;
        this.privacyDeviceInfoDataSource = privacyDeviceInfoDataSource;
        this.sessionRepository = sessionRepository;
        this.allowedPii = StateFlowKt.MutableStateFlow(AllowedPiiOuterClass.AllowedPii.getDefaultInstance());
        this.analyticsUserId = staticDeviceInfoDataSource.getAnalyticsUserId();
        this.volumeSettingsChange = dynamicDeviceInfoDataSource.getVolumeSettingsChange();
    }

    @Override // com.unity3d.ads.core.data.repository.DeviceInfoRepository
    public StaticDeviceInfoOuterClass.StaticDeviceInfo cachedStaticDeviceInfo() {
        return this.staticDeviceInfoDataSource.fetchCached();
    }

    @Override // com.unity3d.ads.core.data.repository.DeviceInfoRepository
    public DynamicDeviceInfoOuterClass.DynamicDeviceInfo dynamicDeviceInfoWithAccelerometer() {
        return this.dynamicDeviceInfoDataSource.fetch(true);
    }

    @Override // com.unity3d.ads.core.data.repository.DeviceInfoRepository
    public MutableStateFlow<AllowedPiiOuterClass.AllowedPii> getAllowedPii() {
        return this.allowedPii;
    }

    @Override // com.unity3d.ads.core.data.repository.DeviceInfoRepository
    public String getAnalyticsUserId() {
        return this.analyticsUserId;
    }

    @Override // com.unity3d.ads.core.data.repository.DeviceInfoRepository
    public String getAppName() {
        return this.staticDeviceInfoDataSource.getAppName();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.unity3d.ads.core.data.repository.DeviceInfoRepository
    public Object getAuidByteString(Continuation<? super ByteString> continuation) {
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
        Object auidString = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass1.label;
        if (i == 0) {
            ResultKt.throwOnFailure(auidString);
            anonymousClass1.label = 1;
            auidString = getAuidString(anonymousClass1);
            if (auidString == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(auidString);
        }
        String str = (String) auidString;
        if (str == null) {
            return null;
        }
        try {
            UUID uuidFromString = UUID.fromString(str);
            Intrinsics.checkNotNullExpressionValue(uuidFromString, "fromString(...)");
            return ProtobufExtensionsKt.toByteString(uuidFromString);
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // com.unity3d.ads.core.data.repository.DeviceInfoRepository
    public Object getAuidString(Continuation<? super String> continuation) {
        return this.staticDeviceInfoDataSource.getAuid(continuation);
    }

    @Override // com.unity3d.ads.core.data.repository.DeviceInfoRepository
    public double getBatteryLevel() {
        return this.dynamicDeviceInfoDataSource.getBatteryLevel();
    }

    @Override // com.unity3d.ads.core.data.repository.DeviceInfoRepository
    public int getBatteryStatus() {
        return this.dynamicDeviceInfoDataSource.getBatteryStatus();
    }

    @Override // com.unity3d.ads.core.data.repository.DeviceInfoRepository
    public String getBundleVersion() {
        return this.staticDeviceInfoDataSource.getBundleVersion();
    }

    @Override // com.unity3d.ads.core.data.repository.DeviceInfoRepository
    public DynamicDeviceInfoOuterClass.ConnectionType getConnectionType() {
        return this.dynamicDeviceInfoDataSource.getConnectionType();
    }

    @Override // com.unity3d.ads.core.data.repository.DeviceInfoRepository
    public String getConnectionTypeStr() {
        return this.dynamicDeviceInfoDataSource.getConnectionTypeStr();
    }

    @Override // com.unity3d.ads.core.data.repository.DeviceInfoRepository
    public int getCurrentUiTheme() {
        return this.dynamicDeviceInfoDataSource.getCurrentUiTheme();
    }

    @Override // com.unity3d.ads.core.data.repository.DeviceInfoRepository
    public DynamicDeviceInfoOuterClass.DynamicDeviceInfo getDynamicDeviceInfo() {
        return this.dynamicDeviceInfoDataSource.fetch(false);
    }

    @Override // com.unity3d.ads.core.data.repository.DeviceInfoRepository
    public boolean getHasInternet() {
        return this.dynamicDeviceInfoDataSource.hasInternet();
    }

    @Override // com.unity3d.ads.core.data.repository.DeviceInfoRepository
    public Object getIdfi(Continuation<? super String> continuation) {
        return this.staticDeviceInfoDataSource.getIdfi(continuation);
    }

    @Override // com.unity3d.ads.core.data.repository.DeviceInfoRepository
    public String getInstallSource() {
        return this.staticDeviceInfoDataSource.getInstallSource();
    }

    @Override // com.unity3d.ads.core.data.repository.DeviceInfoRepository
    public String getLanguage() {
        return this.dynamicDeviceInfoDataSource.getLanguage();
    }

    @Override // com.unity3d.ads.core.data.repository.DeviceInfoRepository
    public boolean getLimitedTracking() {
        return this.dynamicDeviceInfoDataSource.isLimitAdTrackingEnabled();
    }

    @Override // com.unity3d.ads.core.data.repository.DeviceInfoRepository
    public List<String> getLocaleList() {
        return this.dynamicDeviceInfoDataSource.getLocaleList();
    }

    @Override // com.unity3d.ads.core.data.repository.DeviceInfoRepository
    public String getManufacturer() {
        return this.staticDeviceInfoDataSource.getManufacturer();
    }

    @Override // com.unity3d.ads.core.data.repository.DeviceInfoRepository
    public double getMaxVolume() {
        return this.dynamicDeviceInfoDataSource.getMaxVolume();
    }

    @Override // com.unity3d.ads.core.data.repository.DeviceInfoRepository
    public String getModel() {
        return this.staticDeviceInfoDataSource.getModel();
    }

    @Override // com.unity3d.ads.core.data.repository.DeviceInfoRepository
    public String getNetworkOperator() {
        return this.dynamicDeviceInfoDataSource.getNetworkOperator();
    }

    @Override // com.unity3d.ads.core.data.repository.DeviceInfoRepository
    public String getOrientation() {
        return this.dynamicDeviceInfoDataSource.getOrientation();
    }

    @Override // com.unity3d.ads.core.data.repository.DeviceInfoRepository
    public String getOsVersion() {
        return this.staticDeviceInfoDataSource.getOsVersion();
    }

    @Override // com.unity3d.ads.core.data.repository.DeviceInfoRepository
    public PiiOuterClass.Pii getPiiData() {
        return this.privacyDeviceInfoDataSource.fetch(getAllowedPii().getValue());
    }

    @Override // com.unity3d.ads.core.data.repository.DeviceInfoRepository
    public int getRingerMode() {
        return this.dynamicDeviceInfoDataSource.getRingerMode();
    }

    @Override // com.unity3d.ads.core.data.repository.DeviceInfoRepository
    public int getScreenHeight() {
        return this.dynamicDeviceInfoDataSource.getScreenHeight();
    }

    @Override // com.unity3d.ads.core.data.repository.DeviceInfoRepository
    public int getScreenWidth() {
        return this.dynamicDeviceInfoDataSource.getScreenWidth();
    }

    @Override // com.unity3d.ads.core.data.repository.DeviceInfoRepository
    public long getSystemBootTime() {
        return this.staticDeviceInfoDataSource.getSystemBootTime();
    }

    @Override // com.unity3d.ads.core.data.repository.DeviceInfoRepository
    public long getTotalDiskSpace() {
        return this.staticDeviceInfoDataSource.getTotalDiskSpace();
    }

    @Override // com.unity3d.ads.core.data.repository.DeviceInfoRepository
    public long getTotalRamMemory() {
        return this.staticDeviceInfoDataSource.getTotalRamMemory();
    }

    @Override // com.unity3d.ads.core.data.repository.DeviceInfoRepository
    public Object getUnityBuildGuid(Continuation<? super String> continuation) {
        return this.staticDeviceInfoDataSource.getUnityBuildGuid(continuation);
    }

    @Override // com.unity3d.ads.core.data.repository.DeviceInfoRepository
    public double getVolume() {
        return this.dynamicDeviceInfoDataSource.getVolume();
    }

    @Override // com.unity3d.ads.core.data.repository.DeviceInfoRepository
    public Flow<VolumeSettingsChange> getVolumeSettingsChange() {
        return this.volumeSettingsChange;
    }

    @Override // com.unity3d.ads.core.data.repository.DeviceInfoRepository
    public Object staticDeviceInfo(Continuation<? super StaticDeviceInfoOuterClass.StaticDeviceInfo> continuation) {
        StaticDeviceInfoDataSource staticDeviceInfoDataSource = this.staticDeviceInfoDataSource;
        List<String> additionalStorePackagesList = this.sessionRepository.getNativeConfiguration().getAdditionalStorePackagesList();
        Intrinsics.checkNotNullExpressionValue(additionalStorePackagesList, "getAdditionalStorePackagesList(...)");
        return staticDeviceInfoDataSource.fetch(additionalStorePackagesList, continuation);
    }
}
