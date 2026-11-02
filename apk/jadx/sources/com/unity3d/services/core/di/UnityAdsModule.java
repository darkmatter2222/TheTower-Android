package com.unity3d.services.core.di;

import android.content.Context;
import androidx.datastore.core.DataMigration;
import androidx.datastore.core.DataStore;
import androidx.datastore.core.DataStoreFactory;
import com.unity3d.ads.core.data.datasource.AndroidByteStringDataSource;
import com.unity3d.ads.core.data.datasource.ByteStringDataSource;
import com.unity3d.ads.core.data.model.ByteStringSerializer;
import com.unity3d.ads.core.data.model.WebViewConfigurationStoreSerializer;
import com.unity3d.ads.core.data.repository.DiagnosticEventRepository;
import com.unity3d.ads.core.extensions.ContextExtensionsKt;
import com.unity3d.ads.datastore.ByteStringStoreOuterClass;
import com.unity3d.ads.datastore.WebviewConfigurationStore;
import com.unity3d.services.UnityAdsConstants;
import com.unity3d.services.core.device.Storage;
import com.unity3d.services.core.device.StorageManager;
import com.unity3d.services.core.domain.ISDKDispatchers;
import com.unity3d.services.core.domain.SDKDispatchers;
import com.unity3d.services.core.log.DeviceLog;
import com.unity3d.services.core.misc.JsonStorage;
import com.unity3d.services.core.properties.ClientProperties;
import gatewayprotocol.v1.AdOperationsConfigurationKt;
import gatewayprotocol.v1.DiagnosticEventsConfigurationKt;
import gatewayprotocol.v1.FeatureFlagsKt;
import gatewayprotocol.v1.NativeConfigurationKt;
import gatewayprotocol.v1.NativeConfigurationOuterClass;
import gatewayprotocol.v1.RequestPolicyKt;
import gatewayprotocol.v1.RequestRetryPolicyKt;
import gatewayprotocol.v1.RequestTimeoutPolicyKt;
import java.io.File;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt__JobKt;
import kotlinx.coroutines.SupervisorKt;
import p005kotlin.Metadata;
import p005kotlin.Unit;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.jvm.functions.Function0;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UnityAdsModule.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\u0004\u001a\u00020\u0005J\u0006\u0010\u0006\u001a\u00020\u0007J\u0006\u0010\b\u001a\u00020\u0007J\u0006\u0010\t\u001a\u00020\u0007J\u0006\u0010\n\u001a\u00020\u000bJ\u001e\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J\u001e\u0010\u0013\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J\u001e\u0010\u0014\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J\u001e\u0010\u0015\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J\u001e\u0010\u0016\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J\u001e\u0010\u0017\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J\u001e\u0010\u0018\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J\u001e\u0010\u0019\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J\u001e\u0010\u001a\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J\u001e\u0010\u001b\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J\u000e\u0010\u001c\u001a\u00020\u00122\u0006\u0010\u001d\u001a\u00020\u001eJ\u001c\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020!0 2\u0006\u0010\"\u001a\u00020\u00052\u0006\u0010#\u001a\u00020\u0007J\u001c\u0010$\u001a\b\u0012\u0004\u0012\u00020!0 2\u0006\u0010\"\u001a\u00020\u00052\u0006\u0010#\u001a\u00020\u0007J\u001c\u0010%\u001a\b\u0012\u0004\u0012\u00020!0 2\u0006\u0010\"\u001a\u00020\u00052\u0006\u0010#\u001a\u00020\u0007J\u001c\u0010&\u001a\b\u0012\u0004\u0012\u00020!0 2\u0006\u0010\"\u001a\u00020\u00052\u0006\u0010#\u001a\u00020\u0007J*\u0010'\u001a\b\u0012\u0004\u0012\u00020!0 2\u0006\u0010\"\u001a\u00020\u00052\u0006\u0010#\u001a\u00020\u00072\f\u0010(\u001a\b\u0012\u0004\u0012\u00020!0)J\u001c\u0010*\u001a\b\u0012\u0004\u0012\u00020!0 2\u0006\u0010\"\u001a\u00020\u00052\u0006\u0010#\u001a\u00020\u0007J\u001c\u0010+\u001a\b\u0012\u0004\u0012\u00020,0 2\u0006\u0010\"\u001a\u00020\u00052\u0006\u0010#\u001a\u00020\u0007J\u0006\u0010-\u001a\u00020.J\u0006\u0010/\u001a\u00020.J\u0006\u00100\u001a\u00020.J\u0006\u00101\u001a\u000202J\u0014\u00103\u001a\u0002042\f\u00105\u001a\b\u0012\u0004\u0012\u00020!0 J\u0014\u0010$\u001a\u0002042\f\u00105\u001a\b\u0012\u0004\u0012\u00020!0 J\u0014\u00106\u001a\u0002042\f\u00105\u001a\b\u0012\u0004\u0012\u00020!0 J\u0014\u00107\u001a\u0002042\f\u00105\u001a\b\u0012\u0004\u0012\u00020!0 J\u0014\u0010%\u001a\u0002042\f\u00105\u001a\b\u0012\u0004\u0012\u00020!0 J\u0014\u0010&\u001a\u0002042\f\u00105\u001a\b\u0012\u0004\u0012\u00020!0 J\u0014\u0010'\u001a\u0002042\f\u00105\u001a\b\u0012\u0004\u0012\u00020!0 J\u0014\u0010*\u001a\u0002042\f\u00105\u001a\b\u0012\u0004\u0012\u00020!0 J\u0010\u00108\u001a\u00020.2\u0006\u00109\u001a\u00020:H\u0002J\u0016\u0010;\u001a\u0002042\f\u00105\u001a\b\u0012\u0004\u0012\u00020!0 H\u0002J&\u0010<\u001a\b\u0012\u0004\u0012\u00020!0 2\u0006\u0010\"\u001a\u00020\u00052\u0006\u0010#\u001a\u00020\u00072\u0006\u0010=\u001a\u00020>H\u0002J\b\u0010?\u001a\u00020@H\u0002J\b\u0010A\u001a\u00020BH\u0002J\b\u0010C\u001a\u00020DH\u0002J\b\u0010E\u001a\u00020FH\u0002¨\u0006G"}, d2 = {"Lcom/unity3d/services/core/di/UnityAdsModule;", "", "<init>", "()V", "androidContext", "Landroid/content/Context;", "mainDispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "defaultDispatcher", "ioDispatcher", "sdkDispatchers", "Lcom/unity3d/services/core/domain/ISDKDispatchers;", "initCoroutineScope", "Lkotlinx/coroutines/CoroutineScope;", "dispatchers", "errorHandler", "Lkotlinx/coroutines/CoroutineExceptionHandler;", "parentJob", "Lkotlinx/coroutines/Job;", "loadCoroutineScope", "showCoroutineScope", "transactionCoroutineScope", "ilrdCoroutineScope", "lifecycleCoroutineScope", "getTokenCoroutineScope", "offerwallSignalsCoroutineScope", "coherenceCoroutineScope", "omidCoroutineScope", "publicApiJob", "diagnosticEventRepository", "Lcom/unity3d/ads/core/data/repository/DiagnosticEventRepository;", "gatewayDataStore", "Landroidx/datastore/core/DataStore;", "Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;", "context", "dispatcher", "privacyDataStore", "privacyFsmDataStore", "nativeConfigurationDataStore", "glInfoDataStore", "fetchGLInfo", "Landroidx/datastore/core/DataMigration;", "iapTransactionDataStore", "webViewConfigurationDataStore", "Lcom/unity3d/ads/datastore/WebviewConfigurationStore$WebViewConfigurationStore;", "publicJsonStorage", "Lcom/unity3d/services/core/misc/JsonStorage;", "privateJsonStorage", "memoryJsonStorage", "defaultNativeConfiguration", "Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;", "gatewayCacheDataStore", "Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;", "dataStore", "idfiDataStore", "auidDataStore", "provideJsonStorage", "storageType", "Lcom/unity3d/services/core/device/StorageManager$StorageType;", "provideByteStringDataSource", "provideByteStringDataStore", "dataStoreFile", "", "getDefaultAdOperations", "Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;", "getDefaultRequestPolicy", "Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;", "getDefaultRequestRetryPolicy", "Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;", "getDefaultRequestTimeoutPolicy", "Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class UnityAdsModule {
    private final NativeConfigurationOuterClass.AdOperationsConfiguration getDefaultAdOperations() {
        AdOperationsConfigurationKt.Dsl.Companion companion = AdOperationsConfigurationKt.Dsl.INSTANCE;
        NativeConfigurationOuterClass.AdOperationsConfiguration.Builder builderNewBuilder = NativeConfigurationOuterClass.AdOperationsConfiguration.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
        AdOperationsConfigurationKt.Dsl dsl_create = companion._create(builderNewBuilder);
        dsl_create.setLoadTimeoutMs(30000);
        dsl_create.setShowTimeoutMs(UnityAdsConstants.AdOperations.SHOW_TIMEOUT_MS);
        dsl_create.setGetTokenTimeoutMs(UnityAdsConstants.AdOperations.GET_TOKEN_TIMEOUT_MS);
        return dsl_create._build();
    }

    private final NativeConfigurationOuterClass.RequestPolicy getDefaultRequestPolicy() {
        RequestPolicyKt.Dsl.Companion companion = RequestPolicyKt.Dsl.INSTANCE;
        NativeConfigurationOuterClass.RequestPolicy.Builder builderNewBuilder = NativeConfigurationOuterClass.RequestPolicy.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
        RequestPolicyKt.Dsl dsl_create = companion._create(builderNewBuilder);
        dsl_create.setRetryPolicy(getDefaultRequestRetryPolicy());
        dsl_create.setTimeoutPolicy(getDefaultRequestTimeoutPolicy());
        return dsl_create._build();
    }

    private final NativeConfigurationOuterClass.RequestRetryPolicy getDefaultRequestRetryPolicy() {
        RequestRetryPolicyKt.Dsl.Companion companion = RequestRetryPolicyKt.Dsl.INSTANCE;
        NativeConfigurationOuterClass.RequestRetryPolicy.Builder builderNewBuilder = NativeConfigurationOuterClass.RequestRetryPolicy.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
        RequestRetryPolicyKt.Dsl dsl_create = companion._create(builderNewBuilder);
        dsl_create.setMaxDuration(UnityAdsConstants.RequestPolicy.RETRY_MAX_DURATION);
        dsl_create.setRetryWaitBase(500);
        dsl_create.setRetryJitterPct(0.1f);
        dsl_create.setShouldStoreLocally(false);
        dsl_create.setRetryMaxInterval(UnityAdsConstants.RequestPolicy.RETRY_MAX_INTERVAL);
        dsl_create.setRetryScalingFactor(2.0f);
        return dsl_create._build();
    }

    private final NativeConfigurationOuterClass.RequestTimeoutPolicy getDefaultRequestTimeoutPolicy() {
        RequestTimeoutPolicyKt.Dsl.Companion companion = RequestTimeoutPolicyKt.Dsl.INSTANCE;
        NativeConfigurationOuterClass.RequestTimeoutPolicy.Builder builderNewBuilder = NativeConfigurationOuterClass.RequestTimeoutPolicy.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
        RequestTimeoutPolicyKt.Dsl dsl_create = companion._create(builderNewBuilder);
        dsl_create.setConnectTimeoutMs(30000);
        dsl_create.setReadTimeoutMs(30000);
        dsl_create.setWriteTimeoutMs(30000);
        dsl_create.setOverallTimeoutMs(30000);
        return dsl_create._build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final File glInfoDataStore$lambda$2(Context context) {
        return ContextExtensionsKt.unityAdsDataStoreFile(context, ServiceProvider.DATA_STORE_GL_INFO);
    }

    private final ByteStringDataSource provideByteStringDataSource(DataStore<ByteStringStoreOuterClass.ByteStringStore> dataStore) {
        return new AndroidByteStringDataSource(dataStore);
    }

    private final DataStore<ByteStringStoreOuterClass.ByteStringStore> provideByteStringDataStore(final Context context, CoroutineDispatcher dispatcher, final String dataStoreFile) {
        return DataStoreFactory.create$default(DataStoreFactory.INSTANCE, new ByteStringSerializer(), null, null, CoroutineScopeKt.CoroutineScope(dispatcher.plus(SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null))), new Function0() { // from class: com.unity3d.services.core.di.UnityAdsModule$$ExternalSyntheticLambda1
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ContextExtensionsKt.unityAdsDataStoreFile(context, dataStoreFile);
            }
        }, 4, null);
    }

    private final JsonStorage provideJsonStorage(StorageManager.StorageType storageType) {
        if (!StorageManager.init(ClientProperties.getApplicationContext())) {
            throw new IllegalStateException("StorageManager failed to initialize".toString());
        }
        Storage storage = StorageManager.getStorage(storageType);
        Intrinsics.checkNotNullExpressionValue(storage, "getStorage(...)");
        return storage;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit publicApiJob$lambda$1$lambda$0(DiagnosticEventRepository diagnosticEventRepository, Throwable th) {
        try {
            diagnosticEventRepository.flush();
        } catch (Throwable th2) {
            DeviceLog.error("Failed to flush diagnostic events", th2);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final File webViewConfigurationDataStore$lambda$3(Context context) {
        return ContextExtensionsKt.unityAdsDataStoreFile(context, ServiceProvider.DATA_STORE_WEBVIEW_CONFIG);
    }

    public final Context androidContext() {
        Context applicationContext = ClientProperties.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
        return applicationContext;
    }

    public final ByteStringDataSource auidDataStore(DataStore<ByteStringStoreOuterClass.ByteStringStore> dataStore) {
        Intrinsics.checkNotNullParameter(dataStore, "dataStore");
        return provideByteStringDataSource(dataStore);
    }

    public final CoroutineScope coherenceCoroutineScope(ISDKDispatchers dispatchers, CoroutineExceptionHandler errorHandler, Job parentJob) {
        Intrinsics.checkNotNullParameter(dispatchers, "dispatchers");
        Intrinsics.checkNotNullParameter(errorHandler, "errorHandler");
        Intrinsics.checkNotNullParameter(parentJob, "parentJob");
        return CoroutineScopeKt.CoroutineScope(parentJob.plus(dispatchers.getIo()).plus(new CoroutineName(ServiceProvider.NAMED_COHERENCE_SCOPE)).plus(errorHandler));
    }

    public final CoroutineDispatcher defaultDispatcher() {
        return Dispatchers.getDefault();
    }

    public final NativeConfigurationOuterClass.NativeConfiguration defaultNativeConfiguration() {
        NativeConfigurationKt.Dsl.Companion companion = NativeConfigurationKt.Dsl.INSTANCE;
        NativeConfigurationOuterClass.NativeConfiguration.Builder builderNewBuilder = NativeConfigurationOuterClass.NativeConfiguration.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
        NativeConfigurationKt.Dsl dsl_create = companion._create(builderNewBuilder);
        dsl_create.setAdOperations(getDefaultAdOperations());
        dsl_create.setInitPolicy(getDefaultRequestPolicy());
        dsl_create.setAdPolicy(getDefaultRequestPolicy());
        dsl_create.setOtherPolicy(getDefaultRequestPolicy());
        dsl_create.setOperativeEventPolicy(getDefaultRequestPolicy());
        DiagnosticEventsConfigurationKt.Dsl.Companion companion2 = DiagnosticEventsConfigurationKt.Dsl.INSTANCE;
        NativeConfigurationOuterClass.DiagnosticEventsConfiguration.Builder builderNewBuilder2 = NativeConfigurationOuterClass.DiagnosticEventsConfiguration.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder2, "newBuilder(...)");
        DiagnosticEventsConfigurationKt.Dsl dsl_create2 = companion2._create(builderNewBuilder2);
        dsl_create2.setEnabled(true);
        dsl_create2.setMaxBatchSize(10);
        dsl_create2.setMaxBatchIntervalMs(30000);
        dsl_create2.setTtmEnabled(false);
        dsl_create.setDiagnosticEvents(dsl_create2._build());
        FeatureFlagsKt.Dsl.Companion companion3 = FeatureFlagsKt.Dsl.INSTANCE;
        NativeConfigurationOuterClass.FeatureFlags.Builder builderNewBuilder3 = NativeConfigurationOuterClass.FeatureFlags.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder3, "newBuilder(...)");
        FeatureFlagsKt.Dsl dsl_create3 = companion3._create(builderNewBuilder3);
        dsl_create3.setBoldSdkNextSessionEnabled(true);
        dsl_create.setFeatureFlags(dsl_create3._build());
        dsl_create.setMaxExtrasSizeKb(4);
        return dsl_create._build();
    }

    public final ByteStringDataSource gatewayCacheDataStore(DataStore<ByteStringStoreOuterClass.ByteStringStore> dataStore) {
        Intrinsics.checkNotNullParameter(dataStore, "dataStore");
        return provideByteStringDataSource(dataStore);
    }

    public final DataStore<ByteStringStoreOuterClass.ByteStringStore> gatewayDataStore(Context context, CoroutineDispatcher dispatcher) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        return provideByteStringDataStore(context, dispatcher, ServiceProvider.DATA_STORE_GATEWAY_CACHE);
    }

    public final CoroutineScope getTokenCoroutineScope(ISDKDispatchers dispatchers, CoroutineExceptionHandler errorHandler, Job parentJob) {
        Intrinsics.checkNotNullParameter(dispatchers, "dispatchers");
        Intrinsics.checkNotNullParameter(errorHandler, "errorHandler");
        Intrinsics.checkNotNullParameter(parentJob, "parentJob");
        return CoroutineScopeKt.CoroutineScope(parentJob.plus(dispatchers.getDefault()).plus(new CoroutineName(ServiceProvider.NAMED_GET_TOKEN_SCOPE)).plus(errorHandler));
    }

    public final DataStore<ByteStringStoreOuterClass.ByteStringStore> glInfoDataStore(final Context context, CoroutineDispatcher dispatcher, DataMigration<ByteStringStoreOuterClass.ByteStringStore> fetchGLInfo) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        Intrinsics.checkNotNullParameter(fetchGLInfo, "fetchGLInfo");
        return DataStoreFactory.create$default(DataStoreFactory.INSTANCE, new ByteStringSerializer(), null, CollectionsKt.listOf(fetchGLInfo), CoroutineScopeKt.CoroutineScope(dispatcher.plus(SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null))), new Function0() { // from class: com.unity3d.services.core.di.UnityAdsModule$$ExternalSyntheticLambda0
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return UnityAdsModule.glInfoDataStore$lambda$2(context);
            }
        }, 2, null);
    }

    public final ByteStringDataSource glInfoDataStore(DataStore<ByteStringStoreOuterClass.ByteStringStore> dataStore) {
        Intrinsics.checkNotNullParameter(dataStore, "dataStore");
        return provideByteStringDataSource(dataStore);
    }

    public final DataStore<ByteStringStoreOuterClass.ByteStringStore> iapTransactionDataStore(Context context, CoroutineDispatcher dispatcher) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        return provideByteStringDataStore(context, dispatcher, ServiceProvider.DATA_STORE_IAP_TRANSACTION);
    }

    public final ByteStringDataSource iapTransactionDataStore(DataStore<ByteStringStoreOuterClass.ByteStringStore> dataStore) {
        Intrinsics.checkNotNullParameter(dataStore, "dataStore");
        return provideByteStringDataSource(dataStore);
    }

    public final ByteStringDataSource idfiDataStore(DataStore<ByteStringStoreOuterClass.ByteStringStore> dataStore) {
        Intrinsics.checkNotNullParameter(dataStore, "dataStore");
        return provideByteStringDataSource(dataStore);
    }

    public final CoroutineScope ilrdCoroutineScope(ISDKDispatchers dispatchers, CoroutineExceptionHandler errorHandler, Job parentJob) {
        Intrinsics.checkNotNullParameter(dispatchers, "dispatchers");
        Intrinsics.checkNotNullParameter(errorHandler, "errorHandler");
        Intrinsics.checkNotNullParameter(parentJob, "parentJob");
        return CoroutineScopeKt.CoroutineScope(parentJob.plus(dispatchers.getDefault()).plus(new CoroutineName(ServiceProvider.NAMED_ILRD_SCOPE)).plus(errorHandler));
    }

    public final CoroutineScope initCoroutineScope(ISDKDispatchers dispatchers, CoroutineExceptionHandler errorHandler, Job parentJob) {
        Intrinsics.checkNotNullParameter(dispatchers, "dispatchers");
        Intrinsics.checkNotNullParameter(errorHandler, "errorHandler");
        Intrinsics.checkNotNullParameter(parentJob, "parentJob");
        return CoroutineScopeKt.CoroutineScope(parentJob.plus(dispatchers.getDefault()).plus(new CoroutineName(ServiceProvider.NAMED_INIT_SCOPE)).plus(errorHandler));
    }

    public final CoroutineDispatcher ioDispatcher() {
        return Dispatchers.getIO();
    }

    public final CoroutineScope lifecycleCoroutineScope(ISDKDispatchers dispatchers, CoroutineExceptionHandler errorHandler, Job parentJob) {
        Intrinsics.checkNotNullParameter(dispatchers, "dispatchers");
        Intrinsics.checkNotNullParameter(errorHandler, "errorHandler");
        Intrinsics.checkNotNullParameter(parentJob, "parentJob");
        return CoroutineScopeKt.CoroutineScope(parentJob.plus(dispatchers.getDefault()).plus(new CoroutineName(ServiceProvider.NAMED_LIFECYCLE_SCOPE)).plus(errorHandler));
    }

    public final CoroutineScope loadCoroutineScope(ISDKDispatchers dispatchers, CoroutineExceptionHandler errorHandler, Job parentJob) {
        Intrinsics.checkNotNullParameter(dispatchers, "dispatchers");
        Intrinsics.checkNotNullParameter(errorHandler, "errorHandler");
        Intrinsics.checkNotNullParameter(parentJob, "parentJob");
        return CoroutineScopeKt.CoroutineScope(parentJob.plus(dispatchers.getDefault()).plus(new CoroutineName(ServiceProvider.NAMED_LOAD_SCOPE)).plus(errorHandler));
    }

    public final CoroutineDispatcher mainDispatcher() {
        return Dispatchers.getMain();
    }

    public final JsonStorage memoryJsonStorage() {
        return provideJsonStorage(StorageManager.StorageType.MEMORY);
    }

    public final DataStore<ByteStringStoreOuterClass.ByteStringStore> nativeConfigurationDataStore(Context context, CoroutineDispatcher dispatcher) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        return provideByteStringDataStore(context, dispatcher, ServiceProvider.DATA_STORE_NATIVE_CONFIG);
    }

    public final ByteStringDataSource nativeConfigurationDataStore(DataStore<ByteStringStoreOuterClass.ByteStringStore> dataStore) {
        Intrinsics.checkNotNullParameter(dataStore, "dataStore");
        return provideByteStringDataSource(dataStore);
    }

    public final CoroutineScope offerwallSignalsCoroutineScope(ISDKDispatchers dispatchers, CoroutineExceptionHandler errorHandler, Job parentJob) {
        Intrinsics.checkNotNullParameter(dispatchers, "dispatchers");
        Intrinsics.checkNotNullParameter(errorHandler, "errorHandler");
        Intrinsics.checkNotNullParameter(parentJob, "parentJob");
        return CoroutineScopeKt.CoroutineScope(parentJob.plus(dispatchers.getDefault()).plus(new CoroutineName(ServiceProvider.NAMED_OFFERWALL_SCOPE)).plus(errorHandler));
    }

    public final CoroutineScope omidCoroutineScope(ISDKDispatchers dispatchers, CoroutineExceptionHandler errorHandler, Job parentJob) {
        Intrinsics.checkNotNullParameter(dispatchers, "dispatchers");
        Intrinsics.checkNotNullParameter(errorHandler, "errorHandler");
        Intrinsics.checkNotNullParameter(parentJob, "parentJob");
        return CoroutineScopeKt.CoroutineScope(parentJob.plus(dispatchers.getDefault()).plus(new CoroutineName(ServiceProvider.NAMED_OMID_SCOPE)).plus(errorHandler));
    }

    public final DataStore<ByteStringStoreOuterClass.ByteStringStore> privacyDataStore(Context context, CoroutineDispatcher dispatcher) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        return provideByteStringDataStore(context, dispatcher, ServiceProvider.DATA_STORE_PRIVACY);
    }

    public final ByteStringDataSource privacyDataStore(DataStore<ByteStringStoreOuterClass.ByteStringStore> dataStore) {
        Intrinsics.checkNotNullParameter(dataStore, "dataStore");
        return provideByteStringDataSource(dataStore);
    }

    public final DataStore<ByteStringStoreOuterClass.ByteStringStore> privacyFsmDataStore(Context context, CoroutineDispatcher dispatcher) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        return provideByteStringDataStore(context, dispatcher, ServiceProvider.DATA_STORE_PRIVACY_FSM);
    }

    public final ByteStringDataSource privacyFsmDataStore(DataStore<ByteStringStoreOuterClass.ByteStringStore> dataStore) {
        Intrinsics.checkNotNullParameter(dataStore, "dataStore");
        return provideByteStringDataSource(dataStore);
    }

    public final JsonStorage privateJsonStorage() {
        return provideJsonStorage(StorageManager.StorageType.PRIVATE);
    }

    public final Job publicApiJob(final DiagnosticEventRepository diagnosticEventRepository) {
        Intrinsics.checkNotNullParameter(diagnosticEventRepository, "diagnosticEventRepository");
        CompletableJob completableJobJob$default = JobKt__JobKt.Job$default((Job) null, 1, (Object) null);
        completableJobJob$default.invokeOnCompletion(new Function1() { // from class: com.unity3d.services.core.di.UnityAdsModule$$ExternalSyntheticLambda2
            @Override // p005kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return UnityAdsModule.publicApiJob$lambda$1$lambda$0(diagnosticEventRepository, (Throwable) obj);
            }
        });
        return completableJobJob$default;
    }

    public final JsonStorage publicJsonStorage() {
        return provideJsonStorage(StorageManager.StorageType.PUBLIC);
    }

    public final ISDKDispatchers sdkDispatchers() {
        return new SDKDispatchers();
    }

    public final CoroutineScope showCoroutineScope(ISDKDispatchers dispatchers, CoroutineExceptionHandler errorHandler, Job parentJob) {
        Intrinsics.checkNotNullParameter(dispatchers, "dispatchers");
        Intrinsics.checkNotNullParameter(errorHandler, "errorHandler");
        Intrinsics.checkNotNullParameter(parentJob, "parentJob");
        return CoroutineScopeKt.CoroutineScope(parentJob.plus(dispatchers.getDefault()).plus(new CoroutineName(ServiceProvider.NAMED_SHOW_SCOPE)).plus(errorHandler));
    }

    public final CoroutineScope transactionCoroutineScope(ISDKDispatchers dispatchers, CoroutineExceptionHandler errorHandler, Job parentJob) {
        Intrinsics.checkNotNullParameter(dispatchers, "dispatchers");
        Intrinsics.checkNotNullParameter(errorHandler, "errorHandler");
        Intrinsics.checkNotNullParameter(parentJob, "parentJob");
        return CoroutineScopeKt.CoroutineScope(parentJob.plus(dispatchers.getDefault()).plus(new CoroutineName(ServiceProvider.NAMED_TRANSACTION_SCOPE)).plus(errorHandler));
    }

    public final DataStore<WebviewConfigurationStore.WebViewConfigurationStore> webViewConfigurationDataStore(final Context context, CoroutineDispatcher dispatcher) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        return DataStoreFactory.create$default(DataStoreFactory.INSTANCE, new WebViewConfigurationStoreSerializer(), null, null, CoroutineScopeKt.CoroutineScope(dispatcher.plus(SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null))), new Function0() { // from class: com.unity3d.services.core.di.UnityAdsModule$$ExternalSyntheticLambda3
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return UnityAdsModule.webViewConfigurationDataStore$lambda$3(context);
            }
        }, 4, null);
    }
}
