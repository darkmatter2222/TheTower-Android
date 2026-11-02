package com.unity3d.services.core.di;

import android.content.Context;
import androidx.datastore.core.DataMigration;
import androidx.datastore.core.DataStore;
import com.android.billingclient.api.BillingClient;
import com.ironsource.InterfaceC3669k1;
import com.unity3d.ads.adplayer.AdPlayerScope;
import com.unity3d.ads.adplayer.AndroidWebViewContainer;
import com.unity3d.ads.adplayer.DisplayRecovererFactory;
import com.unity3d.ads.adplayer.DisplayRecovererKt;
import com.unity3d.ads.adplayer.probe.AndroidWebViewProbe;
import com.unity3d.ads.adplayer.probe.WebViewProbe;
import com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool;
import com.unity3d.ads.adplayer.webviewpool.PoolEntry;
import com.unity3d.ads.adplayer.webviewpool.PooledWebViewContainerFactory;
import com.unity3d.ads.adplayer.webviewpool.WebViewPool;
import com.unity3d.ads.core.configuration.AndroidManifestIntPropertyReader;
import com.unity3d.ads.core.configuration.AndroidManifestStringPropertyReader;
import com.unity3d.ads.core.configuration.GameServerIdReader;
import com.unity3d.ads.core.configuration.MediationInitBlobMetadataReader;
import com.unity3d.ads.core.configuration.MediationTraitsMetadataReader;
import com.unity3d.ads.core.data.datasource.AdQualityVersionDataSource;
import com.unity3d.ads.core.data.datasource.AnalyticsDataSource;
import com.unity3d.ads.core.data.datasource.AndroidAdQualityVersionDataSource;
import com.unity3d.ads.core.data.datasource.AndroidAnalyticsDataSource;
import com.unity3d.ads.core.data.datasource.AndroidAppSetIdDataSource;
import com.unity3d.ads.core.data.datasource.AndroidCurrentActivityDataSource;
import com.unity3d.ads.core.data.datasource.AndroidDeveloperConsentDataSource;
import com.unity3d.ads.core.data.datasource.AndroidDynamicDeviceInfoDataSource;
import com.unity3d.ads.core.data.datasource.AndroidFIdDataSource;
import com.unity3d.ads.core.data.datasource.AndroidFIdExistenceDataSource;
import com.unity3d.ads.core.data.datasource.AndroidGoogleAppIdDataSource;
import com.unity3d.ads.core.data.datasource.AndroidInstallReferrerDataSource;
import com.unity3d.ads.core.data.datasource.AndroidLegacyConfigStoreDataSource;
import com.unity3d.ads.core.data.datasource.AndroidLegacyUserConsentDataSource;
import com.unity3d.ads.core.data.datasource.AndroidLifecycleDataSource;
import com.unity3d.ads.core.data.datasource.AndroidLocalCacheDataSource;
import com.unity3d.ads.core.data.datasource.AndroidMediationDataSource;
import com.unity3d.ads.core.data.datasource.AndroidModuleInitParamsDataSource;
import com.unity3d.ads.core.data.datasource.AndroidPrivacyDeviceInfoDataSource;
import com.unity3d.ads.core.data.datasource.AndroidRemoteCacheDataSource;
import com.unity3d.ads.core.data.datasource.AndroidStaticDeviceInfoDataSource;
import com.unity3d.ads.core.data.datasource.AndroidStoreDataSource;
import com.unity3d.ads.core.data.datasource.AndroidTcfDataSource;
import com.unity3d.ads.core.data.datasource.AndroidUnityBootConfigDataSource;
import com.unity3d.ads.core.data.datasource.AndroidUnityInfoDataSource;
import com.unity3d.ads.core.data.datasource.AppForegroundDurationObserver;
import com.unity3d.ads.core.data.datasource.ByteStringDataSource;
import com.unity3d.ads.core.data.datasource.CacheDataSource;
import com.unity3d.ads.core.data.datasource.CachedFIdDataSource;
import com.unity3d.ads.core.data.datasource.CurrentActivityDataSource;
import com.unity3d.ads.core.data.datasource.DeveloperConsentDataSource;
import com.unity3d.ads.core.data.datasource.DynamicDeviceInfoDataSource;
import com.unity3d.ads.core.data.datasource.FIdDataSource;
import com.unity3d.ads.core.data.datasource.FIdExistenceDataSource;
import com.unity3d.ads.core.data.datasource.FetchGLInfoDataMigration;
import com.unity3d.ads.core.data.datasource.ForegroundDurationReader;
import com.unity3d.ads.core.data.datasource.GoogleAppIdDataSource;
import com.unity3d.ads.core.data.datasource.InstallReferrerDataSource;
import com.unity3d.ads.core.data.datasource.LegacyUserConsentDataSource;
import com.unity3d.ads.core.data.datasource.LifecycleDataSource;
import com.unity3d.ads.core.data.datasource.MaxAdRevenueListener;
import com.unity3d.ads.core.data.datasource.MediationDataSource;
import com.unity3d.ads.core.data.datasource.ModuleInitParamsDataSource;
import com.unity3d.ads.core.data.datasource.PrivacyDeviceInfoDataSource;
import com.unity3d.ads.core.data.datasource.StaticDeviceInfoDataSource;
import com.unity3d.ads.core.data.datasource.StoreDataSource;
import com.unity3d.ads.core.data.datasource.TcfDataSource;
import com.unity3d.ads.core.data.datasource.UnityBootConfigDataSource;
import com.unity3d.ads.core.data.datasource.UniversalRequestDataSource;
import com.unity3d.ads.core.data.datasource.UniversalRequestDataStoreProvider;
import com.unity3d.ads.core.data.datasource.WebviewConfigurationDataSource;
import com.unity3d.ads.core.data.manager.AndroidOfferwallManager;
import com.unity3d.ads.core.data.manager.AndroidOmidManager;
import com.unity3d.ads.core.data.manager.AndroidOptimisticInitializationManager;
import com.unity3d.ads.core.data.manager.AndroidSDKPropertiesManager;
import com.unity3d.ads.core.data.manager.AndroidStorageManager;
import com.unity3d.ads.core.data.manager.OfferwallManager;
import com.unity3d.ads.core.data.manager.OmidManager;
import com.unity3d.ads.core.data.manager.OptimisticInitializationManager;
import com.unity3d.ads.core.data.manager.SDKPropertiesManager;
import com.unity3d.ads.core.data.manager.StorageManager;
import com.unity3d.ads.core.data.manager.TransactionEventManager;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.data.model.GatewayUrl;
import com.unity3d.ads.core.data.model.OperationType;
import com.unity3d.ads.core.data.repository.AccelerometerRepository;
import com.unity3d.ads.core.data.repository.AdRepository;
import com.unity3d.ads.core.data.repository.AdRevenueRepository;
import com.unity3d.ads.core.data.repository.AndroidAdRepository;
import com.unity3d.ads.core.data.repository.AndroidAdRevenueRepository;
import com.unity3d.ads.core.data.repository.AndroidCacheRepository;
import com.unity3d.ads.core.data.repository.AndroidCampaignRepository;
import com.unity3d.ads.core.data.repository.AndroidDeveloperConsentRepository;
import com.unity3d.ads.core.data.repository.AndroidDeviceInfoRepository;
import com.unity3d.ads.core.data.repository.AndroidDiagnosticEventRepository;
import com.unity3d.ads.core.data.repository.AndroidLegacyUserConsentRepository;
import com.unity3d.ads.core.data.repository.AndroidMediationRepository;
import com.unity3d.ads.core.data.repository.AndroidOpenMeasurementRepository;
import com.unity3d.ads.core.data.repository.AndroidSessionRepository;
import com.unity3d.ads.core.data.repository.AndroidTcfRepository;
import com.unity3d.ads.core.data.repository.AndroidTransactionEventRepository;
import com.unity3d.ads.core.data.repository.CacheRepository;
import com.unity3d.ads.core.data.repository.CampaignRepository;
import com.unity3d.ads.core.data.repository.DeveloperConsentRepository;
import com.unity3d.ads.core.data.repository.DeviceInfoRepository;
import com.unity3d.ads.core.data.repository.DiagnosticEventRepository;
import com.unity3d.ads.core.data.repository.FocusRepository;
import com.unity3d.ads.core.data.repository.LegacyUserConsentRepository;
import com.unity3d.ads.core.data.repository.MediationRepository;
import com.unity3d.ads.core.data.repository.OpenMeasurementRepository;
import com.unity3d.ads.core.data.repository.OperativeEventRepository;
import com.unity3d.ads.core.data.repository.OrientationRepository;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.data.repository.TcfRepository;
import com.unity3d.ads.core.data.repository.TransactionEventRepository;
import com.unity3d.ads.core.domain.AdRefresh;
import com.unity3d.ads.core.domain.AndroidAdRefresh;
import com.unity3d.ads.core.domain.AndroidBuildHeaderBiddingToken;
import com.unity3d.ads.core.domain.AndroidCacheAssets;
import com.unity3d.ads.core.domain.AndroidCacheWebViewAssets;
import com.unity3d.ads.core.domain.AndroidDeliverModuleConfigs;
import com.unity3d.ads.core.domain.AndroidExecuteAdViewerRequest;
import com.unity3d.ads.core.domain.AndroidGenerateByteStringId;
import com.unity3d.ads.core.domain.AndroidGetAdDataRefreshRequest;
import com.unity3d.ads.core.domain.AndroidGetAdPlayerConfigRequest;
import com.unity3d.ads.core.domain.AndroidGetAdPlayerContext;
import com.unity3d.ads.core.domain.AndroidGetAdRequest;
import com.unity3d.ads.core.domain.AndroidGetAdRequestPolicy;
import com.unity3d.ads.core.domain.AndroidGetAdViewerRequest;
import com.unity3d.ads.core.domain.AndroidGetClientInfo;
import com.unity3d.ads.core.domain.AndroidGetInitModuleListeners;
import com.unity3d.ads.core.domain.AndroidGetInitializationCompletedRequest;
import com.unity3d.ads.core.domain.AndroidGetInitializationData;
import com.unity3d.ads.core.domain.AndroidGetInitializationRequest;
import com.unity3d.ads.core.domain.AndroidGetInitializationRequestPayload;
import com.unity3d.ads.core.domain.AndroidGetIsAdActivity;
import com.unity3d.ads.core.domain.AndroidGetIsModulesInitEnabled;
import com.unity3d.ads.core.domain.AndroidGetLifecycleFlow;
import com.unity3d.ads.core.domain.AndroidGetLimitedSessionToken;
import com.unity3d.ads.core.domain.AndroidGetOpenGLRendererInfo;
import com.unity3d.ads.core.domain.AndroidGetSafeguardedInitializationPolicy;
import com.unity3d.ads.core.domain.AndroidGetSharedDataTimestamps;
import com.unity3d.ads.core.domain.AndroidGetUniversalRequestCommonAttributes;
import com.unity3d.ads.core.domain.AndroidGetUniversalRequestForPayLoad;
import com.unity3d.ads.core.domain.AndroidGetUniversalRequestSharedData;
import com.unity3d.ads.core.domain.AndroidGetWebViewContainerUseCase;
import com.unity3d.ads.core.domain.AndroidHandleFocusCounters;
import com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse;
import com.unity3d.ads.core.domain.AndroidHandleGatewayInitializationResponse;
import com.unity3d.ads.core.domain.AndroidHandleGatewayUniversalResponse;
import com.unity3d.ads.core.domain.AndroidHandleOpenUrl;
import com.unity3d.ads.core.domain.AndroidHttpClientProvider;
import com.unity3d.ads.core.domain.AndroidInitializeBoldSDK;
import com.unity3d.ads.core.domain.AndroidIntentCreation;
import com.unity3d.ads.core.domain.AndroidLoad;
import com.unity3d.ads.core.domain.AndroidRefresh;
import com.unity3d.ads.core.domain.AndroidRemoveUrlQuery;
import com.unity3d.ads.core.domain.AndroidScreenshotUploader;
import com.unity3d.ads.core.domain.AndroidSendAdViewerRequest;
import com.unity3d.ads.core.domain.AndroidSendDiagnosticEvent;
import com.unity3d.ads.core.domain.AndroidSendWebViewClientErrorDiagnostics;
import com.unity3d.ads.core.domain.AndroidShouldUseFastInit;
import com.unity3d.ads.core.domain.AndroidShouldUseLazyStaticDeviceInfo;
import com.unity3d.ads.core.domain.AndroidShow;
import com.unity3d.ads.core.domain.AndroidTestDataInfo;
import com.unity3d.ads.core.domain.AndroidTriggerInitializationCompletedRequest;
import com.unity3d.ads.core.domain.AndroidViewCapturer;
import com.unity3d.ads.core.domain.AndroidWarmNonInitSignals;
import com.unity3d.ads.core.domain.AwaitInitialization;
import com.unity3d.ads.core.domain.BuildHeaderBiddingToken;
import com.unity3d.ads.core.domain.CacheAssets;
import com.unity3d.ads.core.domain.CacheFile;
import com.unity3d.ads.core.domain.CacheWebViewAssets;
import com.unity3d.ads.core.domain.CheckForGameIdAndTestModeChanges;
import com.unity3d.ads.core.domain.CleanAssets;
import com.unity3d.ads.core.domain.CleanUpWhenOpportunityExpires;
import com.unity3d.ads.core.domain.CommonAwaitInitialization;
import com.unity3d.ads.core.domain.CommonCacheFile;
import com.unity3d.ads.core.domain.CommonCheckForGameIdAndTestModeChanges;
import com.unity3d.ads.core.domain.CommonCleanAssets;
import com.unity3d.ads.core.domain.CommonCreateFile;
import com.unity3d.ads.core.domain.CommonGetAdObject;
import com.unity3d.ads.core.domain.CommonGetAdPlayer;
import com.unity3d.ads.core.domain.CommonGetCacheDirectory;
import com.unity3d.ads.core.domain.CommonGetFileExtensionFromUrl;
import com.unity3d.ads.core.domain.CommonGetGameId;
import com.unity3d.ads.core.domain.CommonGetHeaderBiddingToken;
import com.unity3d.ads.core.domain.CommonGetInitializationState;
import com.unity3d.ads.core.domain.CommonGetIsFileCache;
import com.unity3d.ads.core.domain.CommonGetWebViewBridgeUseCase;
import com.unity3d.ads.core.domain.CommonInitAwaitingGetHeaderBiddingToken;
import com.unity3d.ads.core.domain.CommonMediationInfoConverter;
import com.unity3d.ads.core.domain.CommonMediationProviderParser;
import com.unity3d.ads.core.domain.CommonSafeCallbackInvoke;
import com.unity3d.ads.core.domain.CommonSetGameId;
import com.unity3d.ads.core.domain.CommonSetInitializationState;
import com.unity3d.ads.core.domain.CommonShouldAllowInitialization;
import com.unity3d.ads.core.domain.CommonTokenNumberProvider;
import com.unity3d.ads.core.domain.CommonValidateGameId;
import com.unity3d.ads.core.domain.CreateFile;
import com.unity3d.ads.core.domain.DeliverModuleConfigs;
import com.unity3d.ads.core.domain.ExecuteAdViewerRequest;
import com.unity3d.ads.core.domain.GetAdDataRefreshRequest;
import com.unity3d.ads.core.domain.GetAdObject;
import com.unity3d.ads.core.domain.GetAdPlayer;
import com.unity3d.ads.core.domain.GetAdPlayerConfigRequest;
import com.unity3d.ads.core.domain.GetAdRequest;
import com.unity3d.ads.core.domain.GetAdViewerRequest;
import com.unity3d.ads.core.domain.GetAssetFileName;
import com.unity3d.ads.core.domain.GetAsyncHeaderBiddingToken;
import com.unity3d.ads.core.domain.GetByteStringId;
import com.unity3d.ads.core.domain.GetCacheDirectory;
import com.unity3d.ads.core.domain.GetCachedAsset;
import com.unity3d.ads.core.domain.GetClientInfo;
import com.unity3d.ads.core.domain.GetFileExtensionFromUrl;
import com.unity3d.ads.core.domain.GetGameId;
import com.unity3d.ads.core.domain.GetHeaderBiddingToken;
import com.unity3d.ads.core.domain.GetInitModuleListeners;
import com.unity3d.ads.core.domain.GetInitRequestPolicy;
import com.unity3d.ads.core.domain.GetInitializationCompletedRequest;
import com.unity3d.ads.core.domain.GetInitializationData;
import com.unity3d.ads.core.domain.GetInitializationRequest;
import com.unity3d.ads.core.domain.GetInitializationRequestPayload;
import com.unity3d.ads.core.domain.GetInitializationState;
import com.unity3d.ads.core.domain.GetIsFileCache;
import com.unity3d.ads.core.domain.GetIsModulesInitEnabled;
import com.unity3d.ads.core.domain.GetLatestWebViewConfiguration;
import com.unity3d.ads.core.domain.GetLimitedSessionToken;
import com.unity3d.ads.core.domain.GetOpenGLRendererInfo;
import com.unity3d.ads.core.domain.GetOperativeEventRequestPolicy;
import com.unity3d.ads.core.domain.GetOtherRequestPolicy;
import com.unity3d.ads.core.domain.GetPrivacyUpdateRequest;
import com.unity3d.ads.core.domain.GetRequestPolicy;
import com.unity3d.ads.core.domain.GetSafeguardedInitializationPolicy;
import com.unity3d.ads.core.domain.GetSharedDataTimestamps;
import com.unity3d.ads.core.domain.GetUniversalRequestCommonAttributes;
import com.unity3d.ads.core.domain.GetUniversalRequestForPayLoad;
import com.unity3d.ads.core.domain.GetUniversalRequestSharedData;
import com.unity3d.ads.core.domain.GetWebViewBridgeUseCase;
import com.unity3d.ads.core.domain.HandleDebugSettings;
import com.unity3d.ads.core.domain.HandleGatewayAdResponse;
import com.unity3d.ads.core.domain.HandleGatewayInitializationResponse;
import com.unity3d.ads.core.domain.HandleGatewayUniversalResponse;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import com.unity3d.ads.core.domain.HandleOpenUrl;
import com.unity3d.ads.core.domain.HttpClientProvider;
import com.unity3d.ads.core.domain.InitializeBoldSDK;
import com.unity3d.ads.core.domain.IntentCreation;
import com.unity3d.ads.core.domain.IsCronetFallbackAvailable;
import com.unity3d.ads.core.domain.LegacyLoadUseCase;
import com.unity3d.ads.core.domain.LegacyShowUseCase;
import com.unity3d.ads.core.domain.Load;
import com.unity3d.ads.core.domain.MediationInfoConverter;
import com.unity3d.ads.core.domain.MediationProviderParser;
import com.unity3d.ads.core.domain.Refresh;
import com.unity3d.ads.core.domain.RemoveUrlQuery;
import com.unity3d.ads.core.domain.SafeCallbackInvoke;
import com.unity3d.ads.core.domain.SendAdViewerRequest;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import com.unity3d.ads.core.domain.SendPrivacyUpdateRequest;
import com.unity3d.ads.core.domain.SendWebViewClientErrorDiagnostics;
import com.unity3d.ads.core.domain.SetGameId;
import com.unity3d.ads.core.domain.SetInitializationState;
import com.unity3d.ads.core.domain.ShouldAllowInitialization;
import com.unity3d.ads.core.domain.ShouldUseFastInit;
import com.unity3d.ads.core.domain.ShouldUseLazyStaticDeviceInfo;
import com.unity3d.ads.core.domain.Show;
import com.unity3d.ads.core.domain.TokenNumberProvider;
import com.unity3d.ads.core.domain.TriggerInitializationCompletedRequest;
import com.unity3d.ads.core.domain.TriggerInitializeListener;
import com.unity3d.ads.core.domain.ValidateExtrasSize;
import com.unity3d.ads.core.domain.ValidateGameId;
import com.unity3d.ads.core.domain.WarmNonInitSignals;
import com.unity3d.ads.core.domain.WebViewScreenCapture;
import com.unity3d.ads.core.domain.adload.AndroidWebViewLessLoadStrategy;
import com.unity3d.ads.core.domain.adload.DisabledPreShowStrategy;
import com.unity3d.ads.core.domain.adload.EagerPreloadOnLoadStrategy;
import com.unity3d.ads.core.domain.adload.PoolAcquireAtShowStrategy;
import com.unity3d.ads.core.domain.adload.PoolPreloadOnLoadStrategy;
import com.unity3d.ads.core.domain.adload.PreShowWebViewStrategy;
import com.unity3d.ads.core.domain.adload.WebViewLessLoadStrategy;
import com.unity3d.ads.core.domain.adquality.AndroidInitializeAdQuality;
import com.unity3d.ads.core.domain.adquality.AndroidUpdateAdQualitySessionToken;
import com.unity3d.ads.core.domain.adquality.InitializeAdQuality;
import com.unity3d.ads.core.domain.adquality.UpdateAdQualitySessionToken;
import com.unity3d.ads.core.domain.attribution.AndroidAttribution;
import com.unity3d.ads.core.domain.billing.CommonProductDetailsFetcher;
import com.unity3d.ads.core.domain.billing.IsBillingClientAvailable;
import com.unity3d.ads.core.domain.billing.ProductDetailsFetcher;
import com.unity3d.ads.core.domain.billing.ProductDetailsFetcherWithFallback;
import com.unity3d.ads.core.domain.capability.AndroidGatherQuickCapabilities;
import com.unity3d.ads.core.domain.capability.CapabilitiesChecker;
import com.unity3d.ads.core.domain.capability.ClassPresenceCapabilitiesChecker;
import com.unity3d.ads.core.domain.capability.GatherQuickCapabilities;
import com.unity3d.ads.core.domain.capability.WorkManagerCapabilitiesChecker;
import com.unity3d.ads.core.domain.coherence.AndroidCoherenceLibraryManager;
import com.unity3d.ads.core.domain.coherence.CoherenceLibraryManager;
import com.unity3d.ads.core.domain.events.AdRevenueObserver;
import com.unity3d.ads.core.domain.events.AndroidGetAdRevenueEventData;
import com.unity3d.ads.core.domain.events.AndroidGetTransactionData;
import com.unity3d.ads.core.domain.events.AndroidHandleGatewayEventResponse;
import com.unity3d.ads.core.domain.events.CommonGetTransactionRequest;
import com.unity3d.ads.core.domain.events.CommonUniversalRequestTtlValidator;
import com.unity3d.ads.core.domain.events.DiagnosticEventObserver;
import com.unity3d.ads.core.domain.events.EventObservers;
import com.unity3d.ads.core.domain.events.GetAdRevenueEventData;
import com.unity3d.ads.core.domain.events.GetDiagnosticEventBatchRequest;
import com.unity3d.ads.core.domain.events.GetDiagnosticEventRequest;
import com.unity3d.ads.core.domain.events.GetOperativeEventApi;
import com.unity3d.ads.core.domain.events.GetOperativeEventRequest;
import com.unity3d.ads.core.domain.events.GetTransactionData;
import com.unity3d.ads.core.domain.events.GetTransactionRequest;
import com.unity3d.ads.core.domain.events.HandleAdRevenueEvent;
import com.unity3d.ads.core.domain.events.HandleGatewayEventResponse;
import com.unity3d.ads.core.domain.events.LifecycleEventObserver;
import com.unity3d.ads.core.domain.events.MaxAdRevenueCommunicatorProxyFactory;
import com.unity3d.ads.core.domain.events.MaxAdRevenueObserver;
import com.unity3d.ads.core.domain.events.OperativeEventObserver;
import com.unity3d.ads.core.domain.events.TransactionEventObserver;
import com.unity3d.ads.core.domain.events.UniversalRequestEventSender;
import com.unity3d.ads.core.domain.events.UniversalRequestTtlValidator;
import com.unity3d.ads.core.domain.offerwall.GetIsOfferwallAdReady;
import com.unity3d.ads.core.domain.offerwall.LoadOfferwallAd;
import com.unity3d.ads.core.domain.om.AndroidInitializeOMSDK;
import com.unity3d.ads.core.domain.om.AndroidOmFinishSession;
import com.unity3d.ads.core.domain.om.AndroidOmImpressionOccurred;
import com.unity3d.ads.core.domain.om.AndroidOmInteraction;
import com.unity3d.ads.core.domain.om.AndroidOmStartSession;
import com.unity3d.ads.core.domain.om.CommonGetOmData;
import com.unity3d.ads.core.domain.om.CommonIsOMActivated;
import com.unity3d.ads.core.domain.om.GetOmData;
import com.unity3d.ads.core.domain.om.InitializeOMSDK;
import com.unity3d.ads.core.domain.om.IsOMActivated;
import com.unity3d.ads.core.domain.om.OmFinishSession;
import com.unity3d.ads.core.domain.om.OmImpressionOccurred;
import com.unity3d.ads.core.domain.privacy.DeveloperConsentFlattenerRulesUseCase;
import com.unity3d.ads.core.domain.privacy.FlattenerRulesUseCase;
import com.unity3d.ads.core.domain.privacy.LegacyUserConsentFlattenerRulesUseCase;
import com.unity3d.ads.core.domain.work.BackgroundWorker;
import com.unity3d.ads.core.domain.work.DiagnosticEventRequestWorkModifier;
import com.unity3d.ads.core.domain.work.DownloadPriorityQueue;
import com.unity3d.ads.core.log.Logger;
import com.unity3d.ads.core.log.UnityLogger;
import com.unity3d.ads.core.utils.CommonCoroutineTimer;
import com.unity3d.ads.core.utils.CoroutineTimer;
import com.unity3d.ads.gatewayclient.AndroidRequestUrlFactory;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import com.unity3d.ads.gatewayclient.GatewayClient;
import com.unity3d.ads.gatewayclient.RequestUrlFactory;
import com.unity3d.services.SDKErrorHandler;
import com.unity3d.services.ads.offerwall.OfferwallAdapterBridge;
import com.unity3d.services.core.device.VolumeChange;
import com.unity3d.services.core.device.VolumeChangeContentObserver;
import com.unity3d.services.core.domain.ISDKDispatchers;
import com.unity3d.services.core.fid.Constants;
import com.unity3d.services.core.misc.JsonStorage;
import com.unity3d.services.core.network.core.CronetEngineBuilderFactory;
import com.unity3d.services.core.network.core.HttpClient;
import com.unity3d.services.core.network.domain.CleanupDirectory;
import com.unity3d.services.core.properties.ClientProperties;
import com.unity3d.services.core.reflection.AppLovinCommunicatorBridge;
import com.unity3d.services.store.StoreMonitor;
import com.unity3d.services.store.core.GatewayStoreExceptionHandler;
import com.unity3d.services.store.core.StoreExceptionHandler;
import com.unity3d.services.store.gpbl.bridges.billingclient.BillingClientAdapter;
import com.unity3d.services.store.gpbl.bridges.billingclient.BillingClientAdapterFactory;
import gatewayprotocol.v1.NativeConfigurationOuterClass;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.SupervisorKt;
import p005kotlin.LazyKt;
import p005kotlin.Metadata;
import p005kotlin.Unit;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.CoroutineContext;
import p005kotlin.jvm.functions.Function0;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.Reflection;

/* JADX INFO: compiled from: ServiceProvider.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0016\n\u0002\u0010\b\n\u0002\b\u000e\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\b\u00105\u001a\u000204H\u0016J\b\u00106\u001a\u000204H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010'\u001a\u00020\u001cX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020\u001cX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020+X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020+X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00100\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00101\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00102\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00103\u001a\u000204X\u0082\u0004¢\u0006\u0002\n\u0000¨\u00067"}, d2 = {"Lcom/unity3d/services/core/di/ServiceProvider;", "Lcom/unity3d/services/core/di/IServiceProvider;", "<init>", "()V", "NAMED_SDK", "", "NAMED_INIT_SCOPE", "NAMED_LOAD_SCOPE", "NAMED_SHOW_SCOPE", "NAMED_GET_TOKEN_SCOPE", "NAMED_TRANSACTION_SCOPE", "NAMED_ILRD_SCOPE", "NAMED_LIFECYCLE_SCOPE", "NAMED_OMID_SCOPE", "NAMED_OPTIMISTIC_SCOPE", "NAMED_DEVICE_INFO_SCOPE", "NAMED_INIT_REQ", "NAMED_OPERATIVE_REQ", "NAMED_OTHER_REQ", "NAMED_AD_REQ", "NAMED_PUBLIC_JOB", "NAMED_LOCAL", "NAMED_REMOTE", "NAMED_OFFERWALL_SCOPE", "NAMED_COHERENCE_SCOPE", "LEGACY_PRIVACY_RULES", "DEV_CONSENT_PRIVACY_RULES", "DEFAULT_WEBVIEW_POOL_SIZE", "", "DATA_STORE_GATEWAY_CACHE", "DATA_STORE_PRIVACY", "DATA_STORE_PRIVACY_FSM", "DATA_STORE_NATIVE_CONFIG", "DATA_STORE_IAP_TRANSACTION", "DATA_STORE_UNIVERSAL_REQUEST", "DATA_STORE_GL_INFO", "DATA_STORE_WEBVIEW_CONFIG", "PREF_GL_INFO", "GATEWAY_HOST", "GATEWAY_PORT", "CDN_CREATIVES_HOST", "CDN_CREATIVES_PORT", "HTTP_CACHE_DISK_SIZE", "", "HTTP_CLIENT_FETCH_TIMEOUT", "MAIN_DISPATCHER", "DEFAULT_DISPATCHER", "IO_DISPATCHER", "UNIVERSAL_EVENT_SENDER", "DIAGNOSTICS_EVENT_SENDER", "OPERATIVE_EVENT_SENDER", "serviceRegistry", "Lcom/unity3d/services/core/di/IServicesRegistry;", "getRegistry", "initialize", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ServiceProvider implements IServiceProvider {
    public static final String CDN_CREATIVES_HOST = "cdn-creatives-cf-prd.acquire.unity3dusercontent.com";
    public static final int CDN_CREATIVES_PORT = 443;
    public static final String DATA_STORE_GATEWAY_CACHE = "gateway_cache.pb";
    public static final String DATA_STORE_GL_INFO = "glinfo.pb";
    public static final String DATA_STORE_IAP_TRANSACTION = "iap_transaction.pb";
    public static final String DATA_STORE_NATIVE_CONFIG = "native_configuration.pb";
    public static final String DATA_STORE_PRIVACY = "privacy.pb";
    public static final String DATA_STORE_PRIVACY_FSM = "privacy_fsm.pb";
    public static final String DATA_STORE_UNIVERSAL_REQUEST = "universal_request.pb";
    public static final String DATA_STORE_WEBVIEW_CONFIG = "webview_config.pb";
    public static final String DEFAULT_DISPATCHER = "default_dispatcher";
    public static final int DEFAULT_WEBVIEW_POOL_SIZE = 2;
    public static final String DEV_CONSENT_PRIVACY_RULES = "dev_consent_privacy_rules";
    public static final String DIAGNOSTICS_EVENT_SENDER = "diagnostics";
    public static final String GATEWAY_HOST = "gateway.unityads.unity3d.com";
    public static final int GATEWAY_PORT = 443;
    public static final long HTTP_CACHE_DISK_SIZE = 20971520;
    public static final long HTTP_CLIENT_FETCH_TIMEOUT = 500;
    public static final ServiceProvider INSTANCE;
    public static final String IO_DISPATCHER = "io_dispatcher";
    public static final String LEGACY_PRIVACY_RULES = "legacy_privacy_rules";
    public static final String MAIN_DISPATCHER = "main_dispatcher";
    public static final String NAMED_AD_REQ = "ad_req";
    public static final String NAMED_COHERENCE_SCOPE = "coherence_scope";
    public static final String NAMED_DEVICE_INFO_SCOPE = "device_info_scope";
    public static final String NAMED_GET_TOKEN_SCOPE = "get_token_scope";
    public static final String NAMED_ILRD_SCOPE = "ilrd_scope";
    public static final String NAMED_INIT_REQ = "init_req";
    public static final String NAMED_INIT_SCOPE = "init_scope";
    public static final String NAMED_LIFECYCLE_SCOPE = "lifecycle_scope";
    public static final String NAMED_LOAD_SCOPE = "load_scope";
    public static final String NAMED_LOCAL = "local";
    public static final String NAMED_OFFERWALL_SCOPE = "offerwall_scope";
    public static final String NAMED_OMID_SCOPE = "omid_scope";
    public static final String NAMED_OPERATIVE_REQ = "op_event_req";
    public static final String NAMED_OPTIMISTIC_SCOPE = "optimistic_scope";
    public static final String NAMED_OTHER_REQ = "other_req";
    public static final String NAMED_PUBLIC_JOB = "public_job";
    public static final String NAMED_REMOTE = "remote";
    public static final String NAMED_SDK = "sdk";
    public static final String NAMED_SHOW_SCOPE = "show_scope";
    public static final String NAMED_TRANSACTION_SCOPE = "transaction_scope";
    public static final String OPERATIVE_EVENT_SENDER = "operative";
    public static final String PREF_GL_INFO = "glinfo";
    public static final String UNIVERSAL_EVENT_SENDER = "universal";
    private static final IServicesRegistry serviceRegistry;

    /* JADX INFO: compiled from: ServiceProvider.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[NativeConfigurationOuterClass.PreShowWebViewStrategy.values().length];
            try {
                iArr[NativeConfigurationOuterClass.PreShowWebViewStrategy.PRE_SHOW_WEB_VIEW_STRATEGY_EAGER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[NativeConfigurationOuterClass.PreShowWebViewStrategy.PRE_SHOW_WEB_VIEW_STRATEGY_POOL_ACQUIRE_AT_SHOW.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[NativeConfigurationOuterClass.PreShowWebViewStrategy.PRE_SHOW_WEB_VIEW_STRATEGY_POOL_PRELOAD_ON_LOAD.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    static {
        ServiceProvider serviceProvider = new ServiceProvider();
        INSTANCE = serviceProvider;
        serviceRegistry = serviceProvider.initialize();
    }

    private ServiceProvider() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initialize$lambda$246(final ServicesRegistry registry) {
        Intrinsics.checkNotNullParameter(registry, "$this$registry");
        final UnityAdsModule unityAdsModule = new UnityAdsModule();
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Context.class)), ServiceFactoryKt.factoryOf(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda179
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ClientProperties.getApplicationContext();
            }
        }));
        registry.updateService(new ServiceKey(MAIN_DISPATCHER, Reflection.getOrCreateKotlinClass(CoroutineDispatcher.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda16
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return unityAdsModule.mainDispatcher();
            }
        }));
        registry.updateService(new ServiceKey(DEFAULT_DISPATCHER, Reflection.getOrCreateKotlinClass(CoroutineDispatcher.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda75
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return unityAdsModule.defaultDispatcher();
            }
        }));
        registry.updateService(new ServiceKey(IO_DISPATCHER, Reflection.getOrCreateKotlinClass(CoroutineDispatcher.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda87
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return unityAdsModule.ioDispatcher();
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ISDKDispatchers.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda100
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return unityAdsModule.sdkDispatchers();
            }
        }));
        registry.updateService(new ServiceKey(NAMED_INIT_SCOPE, Reflection.getOrCreateKotlinClass(CoroutineScope.class)), ServiceFactoryKt.factoryOf(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda113
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$5(unityAdsModule, registry);
            }
        }));
        registry.updateService(new ServiceKey(NAMED_LOAD_SCOPE, Reflection.getOrCreateKotlinClass(CoroutineScope.class)), ServiceFactoryKt.factoryOf(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda125
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$6(unityAdsModule, registry);
            }
        }));
        registry.updateService(new ServiceKey(NAMED_SHOW_SCOPE, Reflection.getOrCreateKotlinClass(CoroutineScope.class)), ServiceFactoryKt.factoryOf(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda137
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$7(unityAdsModule, registry);
            }
        }));
        registry.updateService(new ServiceKey(NAMED_TRANSACTION_SCOPE, Reflection.getOrCreateKotlinClass(CoroutineScope.class)), ServiceFactoryKt.factoryOf(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda149
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$8(unityAdsModule, registry);
            }
        }));
        registry.updateService(new ServiceKey(NAMED_ILRD_SCOPE, Reflection.getOrCreateKotlinClass(CoroutineScope.class)), ServiceFactoryKt.factoryOf(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda161
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$9(unityAdsModule, registry);
            }
        }));
        registry.updateService(new ServiceKey(NAMED_LIFECYCLE_SCOPE, Reflection.getOrCreateKotlinClass(CoroutineScope.class)), ServiceFactoryKt.factoryOf(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda55
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$10(unityAdsModule, registry);
            }
        }));
        registry.updateService(new ServiceKey(NAMED_GET_TOKEN_SCOPE, Reflection.getOrCreateKotlinClass(CoroutineScope.class)), ServiceFactoryKt.factoryOf(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda163
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$11(unityAdsModule, registry);
            }
        }));
        registry.updateService(new ServiceKey(NAMED_OFFERWALL_SCOPE, Reflection.getOrCreateKotlinClass(CoroutineScope.class)), ServiceFactoryKt.factoryOf(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda175
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$12(unityAdsModule, registry);
            }
        }));
        registry.updateService(new ServiceKey(NAMED_COHERENCE_SCOPE, Reflection.getOrCreateKotlinClass(CoroutineScope.class)), ServiceFactoryKt.factoryOf(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda187
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$13(unityAdsModule, registry);
            }
        }));
        registry.updateService(new ServiceKey(NAMED_OMID_SCOPE, Reflection.getOrCreateKotlinClass(CoroutineScope.class)), ServiceFactoryKt.factoryOf(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda199
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$14(unityAdsModule, registry);
            }
        }));
        registry.updateService(new ServiceKey(NAMED_PUBLIC_JOB, Reflection.getOrCreateKotlinClass(Job.class)), ServiceFactoryKt.factoryOf(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda211
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$15(unityAdsModule, registry);
            }
        }));
        registry.updateService(new ServiceKey(DATA_STORE_GATEWAY_CACHE, Reflection.getOrCreateKotlinClass(ByteStringDataSource.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda224
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$16(registry);
            }
        }));
        registry.updateService(new ServiceKey(DATA_STORE_PRIVACY, Reflection.getOrCreateKotlinClass(DataStore.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda236
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$17(unityAdsModule, registry);
            }
        }));
        registry.updateService(new ServiceKey(DATA_STORE_PRIVACY, Reflection.getOrCreateKotlinClass(ByteStringDataSource.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda3
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$18(unityAdsModule, registry);
            }
        }));
        registry.updateService(new ServiceKey(DATA_STORE_PRIVACY_FSM, Reflection.getOrCreateKotlinClass(DataStore.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda15
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$19(unityAdsModule, registry);
            }
        }));
        registry.updateService(new ServiceKey(DATA_STORE_PRIVACY_FSM, Reflection.getOrCreateKotlinClass(ByteStringDataSource.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda28
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$20(unityAdsModule, registry);
            }
        }));
        registry.updateService(new ServiceKey(DATA_STORE_NATIVE_CONFIG, Reflection.getOrCreateKotlinClass(DataStore.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda40
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$21(unityAdsModule, registry);
            }
        }));
        registry.updateService(new ServiceKey(DATA_STORE_NATIVE_CONFIG, Reflection.getOrCreateKotlinClass(ByteStringDataSource.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda52
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$22(unityAdsModule, registry);
            }
        }));
        registry.updateService(new ServiceKey(DATA_STORE_GL_INFO, Reflection.getOrCreateKotlinClass(DataStore.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda64
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$23(unityAdsModule, registry);
            }
        }));
        registry.updateService(new ServiceKey(DATA_STORE_GL_INFO, Reflection.getOrCreateKotlinClass(ByteStringDataSource.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda69
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$24(unityAdsModule, registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(UniversalRequestDataStoreProvider.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda70
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$25(registry);
            }
        }));
        registry.updateService(new ServiceKey(DATA_STORE_IAP_TRANSACTION, Reflection.getOrCreateKotlinClass(DataStore.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda71
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$26(unityAdsModule, registry);
            }
        }));
        registry.updateService(new ServiceKey(DATA_STORE_IAP_TRANSACTION, Reflection.getOrCreateKotlinClass(ByteStringDataSource.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda72
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$27(unityAdsModule, registry);
            }
        }));
        registry.updateService(new ServiceKey(DATA_STORE_WEBVIEW_CONFIG, Reflection.getOrCreateKotlinClass(DataStore.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda73
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$28(unityAdsModule, registry);
            }
        }));
        registry.updateService(new ServiceKey("PUBLIC", Reflection.getOrCreateKotlinClass(JsonStorage.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda74
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return unityAdsModule.publicJsonStorage();
            }
        }));
        registry.updateService(new ServiceKey("PRIVATE", Reflection.getOrCreateKotlinClass(JsonStorage.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda76
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return unityAdsModule.privateJsonStorage();
            }
        }));
        registry.updateService(new ServiceKey("MEMORY", Reflection.getOrCreateKotlinClass(JsonStorage.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda78
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return unityAdsModule.memoryJsonStorage();
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(NativeConfigurationOuterClass.NativeConfiguration.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda79
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return unityAdsModule.defaultNativeConfiguration();
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(CronetEngineBuilderFactory.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda80
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$33();
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(IsCronetFallbackAvailable.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda81
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$34();
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(HttpClientProvider.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda82
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$35(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(HttpClient.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda83
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$36(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(MediationTraitsMetadataReader.class)), ServiceFactoryKt.factoryOf(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda84
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$37(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GatherQuickCapabilities.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda85
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$38(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(TcfDataSource.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda86
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$39();
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(TcfRepository.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda89
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$40(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AndroidManifestIntPropertyReader.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda90
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$41(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AndroidManifestStringPropertyReader.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda91
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$42(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GatewayUrl.class)), LazyKt.lazy(new Function0<GatewayUrl>() { // from class: com.unity3d.services.core.di.ServiceProvider$initialize$1$44
            @Override // p005kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ GatewayUrl invoke() {
                return GatewayUrl.m2751boximpl(m2923invokeBZg6m_U());
            }

            /* JADX INFO: renamed from: invoke-BZg6m_U, reason: not valid java name */
            public final String m2923invokeBZg6m_U() {
                return ServiceProviderKt.provideGatewayUrl((AndroidManifestStringPropertyReader) registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AndroidManifestStringPropertyReader.class))));
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AndroidTestDataInfo.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda92
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$43(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GameServerIdReader.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda93
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$44(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(StoreDataSource.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda94
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$45(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AnalyticsDataSource.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda95
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$46();
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(DeveloperConsentDataSource.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda96
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$47(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(DynamicDeviceInfoDataSource.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda97
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$48(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(LegacyUserConsentDataSource.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda98
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$49(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(LifecycleDataSource.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda101
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$50();
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(CurrentActivityDataSource.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda102
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$51(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ForegroundDurationReader.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda103
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$53(registry);
            }
        }));
        registry.updateService(new ServiceKey("local", Reflection.getOrCreateKotlinClass(CacheDataSource.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda104
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$54(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(CreateFile.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda105
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$55();
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetFileExtensionFromUrl.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda106
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$56(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(RemoveUrlQuery.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda107
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$57();
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(MediationDataSource.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda108
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$58(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(PrivacyDeviceInfoDataSource.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda109
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$59(registry);
            }
        }));
        registry.updateService(new ServiceKey(NAMED_REMOTE, Reflection.getOrCreateKotlinClass(CacheDataSource.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda112
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$60(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(StaticDeviceInfoDataSource.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda114
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$61(registry);
            }
        }));
        registry.updateService(new ServiceKey(PREF_GL_INFO, Reflection.getOrCreateKotlinClass(DataMigration.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda115
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$62(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(UniversalRequestDataSource.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda116
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$63(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(WebviewConfigurationDataSource.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda117
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$64(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(OmidManager.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda118
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$65();
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SDKPropertiesManager.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda119
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$66();
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(StorageManager.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda120
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$67();
            }
        }));
        registry.updateService(new ServiceKey(NAMED_OPTIMISTIC_SCOPE, Reflection.getOrCreateKotlinClass(CoroutineScope.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda121
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$68(registry);
            }
        }));
        registry.updateService(new ServiceKey(NAMED_DEVICE_INFO_SCOPE, Reflection.getOrCreateKotlinClass(CoroutineScope.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda123
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$69(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(WarmNonInitSignals.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda124
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$70(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(OptimisticInitializationManager.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda126
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$71(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(BillingClientAdapter.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda127
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$72(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ProductDetailsFetcher.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda128
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$73(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(TransactionEventManager.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda129
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$74(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AdRepository.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda130
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$75();
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(CacheRepository.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda131
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$76(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetCacheDirectory.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda132
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$77();
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetAssetFileName.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda134
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$78();
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(CampaignRepository.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda135
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$79(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(DeveloperConsentRepository.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda136
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$80(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(DeviceInfoRepository.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda138
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$81(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(DiagnosticEventRepository.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda139
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$82(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(LegacyUserConsentRepository.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda140
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$83(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(MediationProviderParser.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda141
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$84();
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(MediationInfoConverter.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda142
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$85(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(MediationRepository.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda143
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$86(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(OpenMeasurementRepository.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda145
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$87(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda146
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$88(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(TransactionEventRepository.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda147
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$89();
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AdRevenueRepository.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda148
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$90();
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(OperativeEventRepository.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda150
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$91();
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ExecuteAdViewerRequest.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda151
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$92(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetByteStringId.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda152
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$93();
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AndroidScreenshotUploader.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda153
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$94(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(WebViewScreenCapture.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda154
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$95(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(IntentCreation.class)), ServiceFactoryKt.factoryOf(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda156
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$96();
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(HandleOpenUrl.class)), ServiceFactoryKt.factoryOf(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda157
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$97(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Refresh.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda158
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$98(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SendAdViewerRequest.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda159
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$99(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(CacheAssets.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda160
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$100(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AdRefresh.class)), ServiceFactoryKt.factoryOf(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda190
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$101(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SendDiagnosticEvent.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda201
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$102(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SendWebViewClientErrorDiagnostics.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda212
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$103(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Show.class)), ServiceFactoryKt.factoryOf(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda223
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$104(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(CacheFile.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda234
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$105(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(CleanAssets.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda245
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$106(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetAdObject.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda11
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$107(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetHeaderBiddingToken.class)), ServiceFactoryKt.factoryOf(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda22
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$108(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(BuildHeaderBiddingToken.class)), ServiceFactoryKt.factoryOf(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda33
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$109(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(TokenNumberProvider.class)), ServiceFactoryKt.factoryOf(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda44
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$110(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetInitializationData.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda66
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$111(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(MediationInitBlobMetadataReader.class)), ServiceFactoryKt.factoryOf(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda77
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$112(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetInitializationRequestPayload.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda88
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$113(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetInitializationState.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda99
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$114(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetIsFileCache.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda110
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$115(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SetInitializationState.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda122
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$116(registry);
            }
        }));
        registry.updateService(new ServiceKey(NAMED_AD_REQ, Reflection.getOrCreateKotlinClass(GetRequestPolicy.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda133
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$117(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetAdDataRefreshRequest.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda144
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$118(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetAdViewerRequest.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda155
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$119(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetAdPlayerConfigRequest.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda162
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$120(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AndroidGetAdPlayerContext.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda164
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$121(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetAdRequest.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda165
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$122(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetClientInfo.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda166
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$123(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetInitializationCompletedRequest.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda167
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$124(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetInitializationRequest.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda169
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$125(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetLimitedSessionToken.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda170
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$126(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetOpenGLRendererInfo.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda171
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$127(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetSharedDataTimestamps.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda172
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$128(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetUniversalRequestCommonAttributes.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda173
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$129(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetUniversalRequestForPayLoad.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda174
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$130(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetUniversalRequestSharedData.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda176
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$131(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetCachedAsset.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda177
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$132(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetWebViewBridgeUseCase.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda178
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$133(registry);
            }
        }));
        registry.updateService(new ServiceKey(NAMED_INIT_REQ, Reflection.getOrCreateKotlinClass(GetRequestPolicy.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda180
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$134(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetLatestWebViewConfiguration.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda181
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$135(registry);
            }
        }));
        registry.updateService(new ServiceKey(NAMED_OPERATIVE_REQ, Reflection.getOrCreateKotlinClass(GetRequestPolicy.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda182
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$136(registry);
            }
        }));
        registry.updateService(new ServiceKey(NAMED_OTHER_REQ, Reflection.getOrCreateKotlinClass(GetRequestPolicy.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda183
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$137(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetPrivacyUpdateRequest.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda184
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$138(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetInitModuleListeners.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda185
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$139(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetIsModulesInitEnabled.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda186
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$140(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(DeliverModuleConfigs.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda188
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$141(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(HandleGatewayInitializationResponse.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda189
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$142(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(UpdateAdQualitySessionToken.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda191
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$143(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(HandleGatewayUniversalResponse.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda192
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$144(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(WebViewProbe.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda193
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$145(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(InitializeBoldSDK.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda194
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$146(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(LegacyShowUseCase.class)), ServiceFactoryKt.factoryOf(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda195
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$147(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SendPrivacyUpdateRequest.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda196
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$148(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(TriggerInitializationCompletedRequest.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda197
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$149(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(TriggerInitializeListener.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda198
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$150(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(DiagnosticEventObserver.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda200
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$151(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(EventObservers.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda202
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$152(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetTransactionData.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda203
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$153(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetTransactionRequest.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda204
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$154(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetAdRevenueEventData.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda205
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$155();
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(HandleAdRevenueEvent.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda206
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$156(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetDiagnosticEventBatchRequest.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda207
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$157();
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetDiagnosticEventRequest.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda208
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$158(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetOperativeEventApi.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda209
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$159(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetOperativeEventRequest.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda210
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$160(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(HandleGatewayEventResponse.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda213
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$161();
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(OperativeEventObserver.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda214
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$162(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(TransactionEventObserver.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda215
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$163(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AdRevenueObserver.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda216
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$164(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(LifecycleEventObserver.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda217
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$165(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AppLovinCommunicatorBridge.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda218
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$166(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(MaxAdRevenueCommunicatorProxyFactory.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda219
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$167(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(MaxAdRevenueListener.class)), ServiceFactoryKt.factoryOf(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda220
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$168(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(MaxAdRevenueObserver.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda221
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$169(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(UniversalRequestTtlValidator.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda222
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$170();
            }
        }));
        registry.updateService(new ServiceKey("universal", Reflection.getOrCreateKotlinClass(UniversalRequestEventSender.class)), ServiceFactoryKt.factoryOf(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda225
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$171(registry);
            }
        }));
        registry.updateService(new ServiceKey(DIAGNOSTICS_EVENT_SENDER, Reflection.getOrCreateKotlinClass(UniversalRequestEventSender.class)), ServiceFactoryKt.factoryOf(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda226
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$172(registry);
            }
        }));
        registry.updateService(new ServiceKey(OPERATIVE_EVENT_SENDER, Reflection.getOrCreateKotlinClass(UniversalRequestEventSender.class)), ServiceFactoryKt.factoryOf(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda227
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$173(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(OmFinishSession.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda228
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$174(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(OmImpressionOccurred.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda229
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$175(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AndroidOmInteraction.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda230
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$176(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetOmData.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda231
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$177(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(IsOMActivated.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda232
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$178(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(InitializeOMSDK.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda233
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$179(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(InitializeAdQuality.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda235
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$180(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(CoherenceLibraryManager.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda237
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$181(registry);
            }
        }));
        registry.updateService(new ServiceKey(DEV_CONSENT_PRIVACY_RULES, Reflection.getOrCreateKotlinClass(FlattenerRulesUseCase.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda238
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$182();
            }
        }));
        registry.updateService(new ServiceKey(LEGACY_PRIVACY_RULES, Reflection.getOrCreateKotlinClass(FlattenerRulesUseCase.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda239
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$183();
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(BackgroundWorker.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda240
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$184(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(DiagnosticEventRequestWorkModifier.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda241
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$185(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GatewayClient.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda242
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$186(registry);
            }
        }));
        registry.updateService(new ServiceKey("sdk", Reflection.getOrCreateKotlinClass(CoroutineExceptionHandler.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda243
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$187(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(VolumeChange.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda244
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$188();
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(StoreMonitor.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda1
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$189(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(StoreExceptionHandler.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda2
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$190();
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AndroidAttribution.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda4
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$191(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AdPlayerScope.class)), ServiceFactoryKt.factoryOf(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda5
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$192(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AndroidGetWebViewContainerUseCase.class)), ServiceFactoryKt.factoryOf(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda6
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$193(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Load.class)), ServiceFactoryKt.factoryOf(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda7
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$194(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AwaitInitialization.class)), ServiceFactoryKt.factoryOf(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda8
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$195(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetAsyncHeaderBiddingToken.class)), ServiceFactoryKt.factoryOf(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda9
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$196(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(DisplayRecovererFactory.class)), ServiceFactoryKt.factoryOf(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda10
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$197(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetAdPlayer.class)), ServiceFactoryKt.factoryOf(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda12
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$198(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(CacheWebViewAssets.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda13
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$199(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(HandleGatewayAdResponse.class)), ServiceFactoryKt.factoryOf(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda14
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$200(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(HandleInvocationsFromAdViewer.class)), ServiceFactoryKt.factoryOf(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda17
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$201();
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(LegacyLoadUseCase.class)), ServiceFactoryKt.factoryOf(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda18
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$202(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(WebViewLessLoadStrategy.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda19
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$203(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(WebViewPool.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda20
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$204(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(PooledWebViewContainerFactory.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda21
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$206(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(PreShowWebViewStrategy.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda23
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$207(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SafeCallbackInvoke.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda24
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$208(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(CoroutineTimer.class)), ServiceFactoryKt.factoryOf(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda25
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$209(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SetGameId.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda26
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$210(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetGameId.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda27
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$211(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ValidateGameId.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda29
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$212(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ValidateExtrasSize.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda30
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$213(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ShouldUseLazyStaticDeviceInfo.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda31
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$214(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ShouldUseFastInit.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda32
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$215(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ShouldAllowInitialization.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda34
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$216(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(CheckForGameIdAndTestModeChanges.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda35
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$217(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(DownloadPriorityQueue.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda36
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$218(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(CleanupDirectory.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda37
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$219(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(FocusRepository.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda38
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$220(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AndroidGetIsAdActivity.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda39
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$221(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AndroidGetLifecycleFlow.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda41
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$222(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AndroidHandleFocusCounters.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda42
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$223(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(OfferwallAdapterBridge.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda43
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$224(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(OfferwallManager.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda45
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$225(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(LoadOfferwallAd.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda46
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$226(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetIsOfferwallAdReady.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda47
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$227(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(FIdDataSource.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda48
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$228(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(FIdExistenceDataSource.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda49
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$229();
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AdQualityVersionDataSource.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda50
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$230(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(CleanUpWhenOpportunityExpires.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda51
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$231(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(OrientationRepository.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda53
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$232(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AccelerometerRepository.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda54
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$233(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AndroidAppSetIdDataSource.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda56
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$234(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AndroidUnityInfoDataSource.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda57
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$236();
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(InstallReferrerDataSource.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda58
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$237(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GoogleAppIdDataSource.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda59
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$238(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ModuleInitParamsDataSource.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda60
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$239(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(HandleDebugSettings.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda61
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$240();
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Logger.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda62
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$241(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(IsBillingClientAvailable.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda63
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$242();
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(UnityBootConfigDataSource.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda65
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$243(registry);
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetSafeguardedInitializationPolicy.class)), LazyKt.lazy(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda67
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$244();
            }
        }));
        registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(RequestUrlFactory.class)), ServiceFactoryKt.factoryOf(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda68
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ServiceProvider.initialize$lambda$246$lambda$245(registry);
            }
        }));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CoroutineScope initialize$lambda$246$lambda$10(UnityAdsModule unityAdsModule, ServicesRegistry servicesRegistry) {
        return unityAdsModule.lifecycleCoroutineScope((ISDKDispatchers) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ISDKDispatchers.class))), (CoroutineExceptionHandler) servicesRegistry.resolveService(new ServiceKey("sdk", Reflection.getOrCreateKotlinClass(CoroutineExceptionHandler.class))), (Job) servicesRegistry.resolveService(new ServiceKey(NAMED_PUBLIC_JOB, Reflection.getOrCreateKotlinClass(Job.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CacheAssets initialize$lambda$246$lambda$100(ServicesRegistry servicesRegistry) {
        return new AndroidCacheAssets((CoroutineScope) servicesRegistry.resolveService(new ServiceKey(NAMED_LOAD_SCOPE, Reflection.getOrCreateKotlinClass(CoroutineScope.class))), (CacheFile) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(CacheFile.class))), (SendDiagnosticEvent) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SendDiagnosticEvent.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AdRefresh initialize$lambda$246$lambda$101(ServicesRegistry servicesRegistry) {
        return new AndroidAdRefresh((AdRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AdRepository.class))), (CacheAssets) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(CacheAssets.class))), (Refresh) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Refresh.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SendDiagnosticEvent initialize$lambda$246$lambda$102(ServicesRegistry servicesRegistry) {
        return new AndroidSendDiagnosticEvent((DiagnosticEventRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(DiagnosticEventRepository.class))), (GetDiagnosticEventRequest) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetDiagnosticEventRequest.class))), (LifecycleDataSource) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(LifecycleDataSource.class))), (MediationRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(MediationRepository.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SendWebViewClientErrorDiagnostics initialize$lambda$246$lambda$103(ServicesRegistry servicesRegistry) {
        return new AndroidSendWebViewClientErrorDiagnostics((SendDiagnosticEvent) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SendDiagnosticEvent.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Show initialize$lambda$246$lambda$104(ServicesRegistry servicesRegistry) {
        return new AndroidShow((Context) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Context.class))), (AdRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AdRepository.class))), (GameServerIdReader) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GameServerIdReader.class))), (SendDiagnosticEvent) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SendDiagnosticEvent.class))), (ValidateExtrasSize) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ValidateExtrasSize.class))), (HandleGatewayAdResponse) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(HandleGatewayAdResponse.class))), (PreShowWebViewStrategy) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(PreShowWebViewStrategy.class))), (AccelerometerRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AccelerometerRepository.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CacheFile initialize$lambda$246$lambda$105(ServicesRegistry servicesRegistry) {
        return new CommonCacheFile((CacheRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(CacheRepository.class))), (SendDiagnosticEvent) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SendDiagnosticEvent.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CleanAssets initialize$lambda$246$lambda$106(ServicesRegistry servicesRegistry) {
        return new CommonCleanAssets((CacheRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(CacheRepository.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GetAdObject initialize$lambda$246$lambda$107(ServicesRegistry servicesRegistry) {
        return new CommonGetAdObject((AdRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AdRepository.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GetHeaderBiddingToken initialize$lambda$246$lambda$108(ServicesRegistry servicesRegistry) {
        return new CommonGetHeaderBiddingToken((BuildHeaderBiddingToken) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(BuildHeaderBiddingToken.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final BuildHeaderBiddingToken initialize$lambda$246$lambda$109(ServicesRegistry servicesRegistry) {
        return new AndroidBuildHeaderBiddingToken((GetByteStringId) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetByteStringId.class))), (GetClientInfo) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetClientInfo.class))), (GetSharedDataTimestamps) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetSharedDataTimestamps.class))), (GetLimitedSessionToken) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetLimitedSessionToken.class))), (GetInitializationData) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetInitializationData.class))), (GetInitializationState) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetInitializationState.class))), (AwaitInitialization) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AwaitInitialization.class))), (DeviceInfoRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(DeviceInfoRepository.class))), (SessionRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))), (CampaignRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(CampaignRepository.class))), (TcfRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(TcfRepository.class))), (AndroidTestDataInfo) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AndroidTestDataInfo.class))), (OfferwallManager) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(OfferwallManager.class))), (MediationInfoConverter) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(MediationInfoConverter.class))), (MediationTraitsMetadataReader) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(MediationTraitsMetadataReader.class))), (WarmNonInitSignals) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(WarmNonInitSignals.class))), (ShouldUseFastInit) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ShouldUseFastInit.class))), (CoroutineScope) servicesRegistry.resolveService(new ServiceKey(NAMED_DEVICE_INFO_SCOPE, Reflection.getOrCreateKotlinClass(CoroutineScope.class))), (CoherenceLibraryManager) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(CoherenceLibraryManager.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CoroutineScope initialize$lambda$246$lambda$11(UnityAdsModule unityAdsModule, ServicesRegistry servicesRegistry) {
        return unityAdsModule.getTokenCoroutineScope((ISDKDispatchers) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ISDKDispatchers.class))), (CoroutineExceptionHandler) servicesRegistry.resolveService(new ServiceKey("sdk", Reflection.getOrCreateKotlinClass(CoroutineExceptionHandler.class))), (Job) servicesRegistry.resolveService(new ServiceKey(NAMED_PUBLIC_JOB, Reflection.getOrCreateKotlinClass(Job.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final TokenNumberProvider initialize$lambda$246$lambda$110(ServicesRegistry servicesRegistry) {
        return new CommonTokenNumberProvider((SessionRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GetInitializationData initialize$lambda$246$lambda$111(ServicesRegistry servicesRegistry) {
        return new AndroidGetInitializationData((GetInitializationRequestPayload) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetInitializationRequestPayload.class))), (GetUniversalRequestSharedData) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetUniversalRequestSharedData.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MediationInitBlobMetadataReader initialize$lambda$246$lambda$112(ServicesRegistry servicesRegistry) {
        return new MediationInitBlobMetadataReader((JsonStorage) servicesRegistry.resolveService(new ServiceKey("MEMORY", Reflection.getOrCreateKotlinClass(JsonStorage.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GetInitializationRequestPayload initialize$lambda$246$lambda$113(ServicesRegistry servicesRegistry) {
        return new AndroidGetInitializationRequestPayload((GetClientInfo) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetClientInfo.class))), (SessionRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))), (DeviceInfoRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(DeviceInfoRepository.class))), (LegacyUserConsentRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(LegacyUserConsentRepository.class))), (MediationInitBlobMetadataReader) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(MediationInitBlobMetadataReader.class))), (InstallReferrerDataSource) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(InstallReferrerDataSource.class))), (GoogleAppIdDataSource) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GoogleAppIdDataSource.class))), (ModuleInitParamsDataSource) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ModuleInitParamsDataSource.class))), (MediationTraitsMetadataReader) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(MediationTraitsMetadataReader.class))), (GatherQuickCapabilities) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GatherQuickCapabilities.class))), (TcfRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(TcfRepository.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GetInitializationState initialize$lambda$246$lambda$114(ServicesRegistry servicesRegistry) {
        return new CommonGetInitializationState((SessionRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))), (SDKPropertiesManager) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SDKPropertiesManager.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GetIsFileCache initialize$lambda$246$lambda$115(ServicesRegistry servicesRegistry) {
        return new CommonGetIsFileCache((CacheRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(CacheRepository.class))), (SessionRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))), (SendDiagnosticEvent) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SendDiagnosticEvent.class))), (GetAssetFileName) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetAssetFileName.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SetInitializationState initialize$lambda$246$lambda$116(ServicesRegistry servicesRegistry) {
        return new CommonSetInitializationState((SessionRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))), (SDKPropertiesManager) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SDKPropertiesManager.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GetRequestPolicy initialize$lambda$246$lambda$117(ServicesRegistry servicesRegistry) {
        return new AndroidGetAdRequestPolicy((SessionRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GetAdDataRefreshRequest initialize$lambda$246$lambda$118(ServicesRegistry servicesRegistry) {
        return new AndroidGetAdDataRefreshRequest((GetUniversalRequestForPayLoad) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetUniversalRequestForPayLoad.class))), (SessionRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))), (DeviceInfoRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(DeviceInfoRepository.class))), (CampaignRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(CampaignRepository.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GetAdViewerRequest initialize$lambda$246$lambda$119(ServicesRegistry servicesRegistry) {
        return new AndroidGetAdViewerRequest((GetUniversalRequestForPayLoad) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetUniversalRequestForPayLoad.class))), (SessionRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))), (DeviceInfoRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(DeviceInfoRepository.class))), (CampaignRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(CampaignRepository.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CoroutineScope initialize$lambda$246$lambda$12(UnityAdsModule unityAdsModule, ServicesRegistry servicesRegistry) {
        return unityAdsModule.offerwallSignalsCoroutineScope((ISDKDispatchers) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ISDKDispatchers.class))), (CoroutineExceptionHandler) servicesRegistry.resolveService(new ServiceKey("sdk", Reflection.getOrCreateKotlinClass(CoroutineExceptionHandler.class))), (Job) servicesRegistry.resolveService(new ServiceKey(NAMED_PUBLIC_JOB, Reflection.getOrCreateKotlinClass(Job.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GetAdPlayerConfigRequest initialize$lambda$246$lambda$120(ServicesRegistry servicesRegistry) {
        return new AndroidGetAdPlayerConfigRequest((GetUniversalRequestForPayLoad) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetUniversalRequestForPayLoad.class))), (MediationInfoConverter) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(MediationInfoConverter.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AndroidGetAdPlayerContext initialize$lambda$246$lambda$121(ServicesRegistry servicesRegistry) {
        return new AndroidGetAdPlayerContext((DeviceInfoRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(DeviceInfoRepository.class))), (SessionRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GetAdRequest initialize$lambda$246$lambda$122(ServicesRegistry servicesRegistry) {
        return new AndroidGetAdRequest((GetUniversalRequestForPayLoad) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetUniversalRequestForPayLoad.class))), (SessionRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))), (DeviceInfoRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(DeviceInfoRepository.class))), (CampaignRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(CampaignRepository.class))), (WebviewConfigurationDataSource) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(WebviewConfigurationDataSource.class))), (TcfRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(TcfRepository.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GetClientInfo initialize$lambda$246$lambda$123(ServicesRegistry servicesRegistry) {
        return new AndroidGetClientInfo((SessionRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))), (MediationRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(MediationRepository.class))), (OmidManager) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(OmidManager.class))), (OfferwallManager) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(OfferwallManager.class))), (FIdExistenceDataSource) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(FIdExistenceDataSource.class))), (AdQualityVersionDataSource) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AdQualityVersionDataSource.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GetInitializationCompletedRequest initialize$lambda$246$lambda$124(ServicesRegistry servicesRegistry) {
        return new AndroidGetInitializationCompletedRequest((GetUniversalRequestForPayLoad) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetUniversalRequestForPayLoad.class))), (DeviceInfoRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(DeviceInfoRepository.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GetInitializationRequest initialize$lambda$246$lambda$125(ServicesRegistry servicesRegistry) {
        return new AndroidGetInitializationRequest((GetInitializationRequestPayload) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetInitializationRequestPayload.class))), (GetUniversalRequestForPayLoad) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetUniversalRequestForPayLoad.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GetLimitedSessionToken initialize$lambda$246$lambda$126(ServicesRegistry servicesRegistry) {
        return new AndroidGetLimitedSessionToken((DeviceInfoRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(DeviceInfoRepository.class))), (SessionRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))), (MediationRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(MediationRepository.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GetOpenGLRendererInfo initialize$lambda$246$lambda$127(ServicesRegistry servicesRegistry) {
        return new AndroidGetOpenGLRendererInfo((SessionRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GetSharedDataTimestamps initialize$lambda$246$lambda$128(ServicesRegistry servicesRegistry) {
        return new AndroidGetSharedDataTimestamps((ForegroundDurationReader) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ForegroundDurationReader.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GetUniversalRequestCommonAttributes initialize$lambda$246$lambda$129(ServicesRegistry servicesRegistry) {
        return new AndroidGetUniversalRequestCommonAttributes((SessionRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))), (CoherenceLibraryManager) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(CoherenceLibraryManager.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CoroutineScope initialize$lambda$246$lambda$13(UnityAdsModule unityAdsModule, ServicesRegistry servicesRegistry) {
        return unityAdsModule.coherenceCoroutineScope((ISDKDispatchers) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ISDKDispatchers.class))), (CoroutineExceptionHandler) servicesRegistry.resolveService(new ServiceKey("sdk", Reflection.getOrCreateKotlinClass(CoroutineExceptionHandler.class))), (Job) servicesRegistry.resolveService(new ServiceKey(NAMED_PUBLIC_JOB, Reflection.getOrCreateKotlinClass(Job.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GetUniversalRequestForPayLoad initialize$lambda$246$lambda$130(ServicesRegistry servicesRegistry) {
        return new AndroidGetUniversalRequestForPayLoad((GetUniversalRequestSharedData) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetUniversalRequestSharedData.class))), (GetUniversalRequestCommonAttributes) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetUniversalRequestCommonAttributes.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GetUniversalRequestSharedData initialize$lambda$246$lambda$131(ServicesRegistry servicesRegistry) {
        return new AndroidGetUniversalRequestSharedData((GetSharedDataTimestamps) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetSharedDataTimestamps.class))), (SessionRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))), (DeviceInfoRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(DeviceInfoRepository.class))), (GetLimitedSessionToken) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetLimitedSessionToken.class))), (DeveloperConsentRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(DeveloperConsentRepository.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GetCachedAsset initialize$lambda$246$lambda$132(ServicesRegistry servicesRegistry) {
        return new GetCachedAsset((CacheRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(CacheRepository.class))), (SessionRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))), (Context) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Context.class))), (CacheWebViewAssets) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(CacheWebViewAssets.class))), (GetAssetFileName) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetAssetFileName.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GetWebViewBridgeUseCase initialize$lambda$246$lambda$133(ServicesRegistry servicesRegistry) {
        return new CommonGetWebViewBridgeUseCase((CoroutineDispatcher) servicesRegistry.resolveService(new ServiceKey(DEFAULT_DISPATCHER, Reflection.getOrCreateKotlinClass(CoroutineDispatcher.class))), (SendDiagnosticEvent) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SendDiagnosticEvent.class))), (Logger) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Logger.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GetRequestPolicy initialize$lambda$246$lambda$134(ServicesRegistry servicesRegistry) {
        return new GetInitRequestPolicy((SessionRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GetLatestWebViewConfiguration initialize$lambda$246$lambda$135(ServicesRegistry servicesRegistry) {
        return new GetLatestWebViewConfiguration((WebviewConfigurationDataSource) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(WebviewConfigurationDataSource.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GetRequestPolicy initialize$lambda$246$lambda$136(ServicesRegistry servicesRegistry) {
        return new GetOperativeEventRequestPolicy((SessionRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GetRequestPolicy initialize$lambda$246$lambda$137(ServicesRegistry servicesRegistry) {
        return new GetOtherRequestPolicy((SessionRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GetPrivacyUpdateRequest initialize$lambda$246$lambda$138(ServicesRegistry servicesRegistry) {
        return new GetPrivacyUpdateRequest((GetUniversalRequestForPayLoad) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetUniversalRequestForPayLoad.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GetInitModuleListeners initialize$lambda$246$lambda$139(ServicesRegistry servicesRegistry) {
        return new AndroidGetInitModuleListeners((SendDiagnosticEvent) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SendDiagnosticEvent.class))), (Logger) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Logger.class))), null, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CoroutineScope initialize$lambda$246$lambda$14(UnityAdsModule unityAdsModule, ServicesRegistry servicesRegistry) {
        return unityAdsModule.omidCoroutineScope((ISDKDispatchers) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ISDKDispatchers.class))), (CoroutineExceptionHandler) servicesRegistry.resolveService(new ServiceKey("sdk", Reflection.getOrCreateKotlinClass(CoroutineExceptionHandler.class))), (Job) servicesRegistry.resolveService(new ServiceKey(NAMED_PUBLIC_JOB, Reflection.getOrCreateKotlinClass(Job.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GetIsModulesInitEnabled initialize$lambda$246$lambda$140(ServicesRegistry servicesRegistry) {
        return new AndroidGetIsModulesInitEnabled((SessionRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DeliverModuleConfigs initialize$lambda$246$lambda$141(ServicesRegistry servicesRegistry) {
        return new AndroidDeliverModuleConfigs((GetInitModuleListeners) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetInitModuleListeners.class))), (SessionRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))), (SendDiagnosticEvent) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SendDiagnosticEvent.class))), (CoroutineScope) servicesRegistry.resolveService(new ServiceKey(NAMED_INIT_SCOPE, Reflection.getOrCreateKotlinClass(CoroutineScope.class))), (CoroutineDispatcher) servicesRegistry.resolveService(new ServiceKey(IO_DISPATCHER, Reflection.getOrCreateKotlinClass(CoroutineDispatcher.class))), (GetIsModulesInitEnabled) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetIsModulesInitEnabled.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final HandleGatewayInitializationResponse initialize$lambda$246$lambda$142(ServicesRegistry servicesRegistry) {
        return new AndroidHandleGatewayInitializationResponse((TransactionEventManager) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(TransactionEventManager.class))), (AdRevenueObserver) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AdRevenueObserver.class))), (MaxAdRevenueObserver) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(MaxAdRevenueObserver.class))), (LifecycleEventObserver) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(LifecycleEventObserver.class))), (TriggerInitializationCompletedRequest) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(TriggerInitializationCompletedRequest.class))), (SessionRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))), (CoroutineScope) servicesRegistry.resolveService(new ServiceKey(NAMED_INIT_SCOPE, Reflection.getOrCreateKotlinClass(CoroutineScope.class))), (HandleDebugSettings) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(HandleDebugSettings.class))), (GetSafeguardedInitializationPolicy) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetSafeguardedInitializationPolicy.class))), (NativeConfigurationOuterClass.NativeConfiguration) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(NativeConfigurationOuterClass.NativeConfiguration.class))), (InitializeAdQuality) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(InitializeAdQuality.class))), (DeliverModuleConfigs) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(DeliverModuleConfigs.class))), (CoherenceLibraryManager) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(CoherenceLibraryManager.class))), (CoroutineScope) servicesRegistry.resolveService(new ServiceKey(NAMED_COHERENCE_SCOPE, Reflection.getOrCreateKotlinClass(CoroutineScope.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final UpdateAdQualitySessionToken initialize$lambda$246$lambda$143(ServicesRegistry servicesRegistry) {
        return new AndroidUpdateAdQualitySessionToken((Logger) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Logger.class))), (AdQualityVersionDataSource) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AdQualityVersionDataSource.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final HandleGatewayUniversalResponse initialize$lambda$246$lambda$144(ServicesRegistry servicesRegistry) {
        return new AndroidHandleGatewayUniversalResponse((SessionRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))), (DeviceInfoRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(DeviceInfoRepository.class))), (AndroidAppSetIdDataSource) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AndroidAppSetIdDataSource.class))), (UpdateAdQualitySessionToken) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(UpdateAdQualitySessionToken.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final WebViewProbe initialize$lambda$246$lambda$145(ServicesRegistry servicesRegistry) {
        return new AndroidWebViewProbe((Context) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Context.class))), (SendDiagnosticEvent) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SendDiagnosticEvent.class))), (CoroutineScope) servicesRegistry.resolveService(new ServiceKey(NAMED_INIT_SCOPE, Reflection.getOrCreateKotlinClass(CoroutineScope.class))), (CoroutineDispatcher) servicesRegistry.resolveService(new ServiceKey(MAIN_DISPATCHER, Reflection.getOrCreateKotlinClass(CoroutineDispatcher.class))), (CoroutineDispatcher) servicesRegistry.resolveService(new ServiceKey(IO_DISPATCHER, Reflection.getOrCreateKotlinClass(CoroutineDispatcher.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final InitializeBoldSDK initialize$lambda$246$lambda$146(ServicesRegistry servicesRegistry) {
        return new AndroidInitializeBoldSDK((CoroutineDispatcher) servicesRegistry.resolveService(new ServiceKey(DEFAULT_DISPATCHER, Reflection.getOrCreateKotlinClass(CoroutineDispatcher.class))), (InitializeOMSDK) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(InitializeOMSDK.class))), (GetInitializationRequest) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetInitializationRequest.class))), (GetRequestPolicy) servicesRegistry.resolveService(new ServiceKey(NAMED_INIT_REQ, Reflection.getOrCreateKotlinClass(GetRequestPolicy.class))), (CleanAssets) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(CleanAssets.class))), (HandleGatewayInitializationResponse) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(HandleGatewayInitializationResponse.class))), (DeliverModuleConfigs) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(DeliverModuleConfigs.class))), (GatewayClient) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GatewayClient.class))), (SessionRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))), (EventObservers) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(EventObservers.class))), (TriggerInitializeListener) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(TriggerInitializeListener.class))), (SendDiagnosticEvent) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SendDiagnosticEvent.class))), (DiagnosticEventRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(DiagnosticEventRepository.class))), (StorageManager) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(StorageManager.class))), (SDKPropertiesManager) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SDKPropertiesManager.class))), (GetGameId) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetGameId.class))), (Logger) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Logger.class))), (AndroidHandleFocusCounters) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AndroidHandleFocusCounters.class))), (OptimisticInitializationManager) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(OptimisticInitializationManager.class))), (GetIsModulesInitEnabled) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetIsModulesInitEnabled.class))), (WebViewProbe) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(WebViewProbe.class))), (StaticDeviceInfoDataSource) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(StaticDeviceInfoDataSource.class))), (CoroutineScope) servicesRegistry.resolveService(new ServiceKey(NAMED_DEVICE_INFO_SCOPE, Reflection.getOrCreateKotlinClass(CoroutineScope.class))), (WarmNonInitSignals) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(WarmNonInitSignals.class))), (ShouldUseFastInit) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ShouldUseFastInit.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LegacyShowUseCase initialize$lambda$246$lambda$147(ServicesRegistry servicesRegistry) {
        return new LegacyShowUseCase((Show) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Show.class))), (AdRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AdRepository.class))), (SendDiagnosticEvent) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SendDiagnosticEvent.class))), (GetOperativeEventApi) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetOperativeEventApi.class))), (GetInitializationState) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetInitializationState.class))), (SessionRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))), (SafeCallbackInvoke) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SafeCallbackInvoke.class))), (Logger) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Logger.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SendPrivacyUpdateRequest initialize$lambda$246$lambda$148(ServicesRegistry servicesRegistry) {
        return new SendPrivacyUpdateRequest((GetPrivacyUpdateRequest) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetPrivacyUpdateRequest.class))), (GetRequestPolicy) servicesRegistry.resolveService(new ServiceKey(NAMED_OTHER_REQ, Reflection.getOrCreateKotlinClass(GetRequestPolicy.class))), (GatewayClient) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GatewayClient.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final TriggerInitializationCompletedRequest initialize$lambda$246$lambda$149(ServicesRegistry servicesRegistry) {
        return new AndroidTriggerInitializationCompletedRequest((GetInitializationCompletedRequest) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetInitializationCompletedRequest.class))), (GetRequestPolicy) servicesRegistry.resolveService(new ServiceKey(NAMED_INIT_REQ, Reflection.getOrCreateKotlinClass(GetRequestPolicy.class))), (GatewayClient) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GatewayClient.class))), (SendDiagnosticEvent) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SendDiagnosticEvent.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Job initialize$lambda$246$lambda$15(UnityAdsModule unityAdsModule, ServicesRegistry servicesRegistry) {
        return unityAdsModule.publicApiJob((DiagnosticEventRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(DiagnosticEventRepository.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final TriggerInitializeListener initialize$lambda$246$lambda$150(ServicesRegistry servicesRegistry) {
        return new TriggerInitializeListener((CoroutineDispatcher) servicesRegistry.resolveService(new ServiceKey(MAIN_DISPATCHER, Reflection.getOrCreateKotlinClass(CoroutineDispatcher.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DiagnosticEventObserver initialize$lambda$246$lambda$151(ServicesRegistry servicesRegistry) {
        return new DiagnosticEventObserver((GetUniversalRequestForPayLoad) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetUniversalRequestForPayLoad.class))), (GetDiagnosticEventBatchRequest) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetDiagnosticEventBatchRequest.class))), (CoroutineDispatcher) servicesRegistry.resolveService(new ServiceKey(DEFAULT_DISPATCHER, Reflection.getOrCreateKotlinClass(CoroutineDispatcher.class))), (DiagnosticEventRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(DiagnosticEventRepository.class))), (UniversalRequestDataSource) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(UniversalRequestDataSource.class))), (BackgroundWorker) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(BackgroundWorker.class))), (UniversalRequestEventSender) servicesRegistry.resolveService(new ServiceKey(DIAGNOSTICS_EVENT_SENDER, Reflection.getOrCreateKotlinClass(UniversalRequestEventSender.class))), (GetRequestPolicy) servicesRegistry.resolveService(new ServiceKey(NAMED_OTHER_REQ, Reflection.getOrCreateKotlinClass(GetRequestPolicy.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final EventObservers initialize$lambda$246$lambda$152(ServicesRegistry servicesRegistry) {
        return new EventObservers((OperativeEventObserver) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(OperativeEventObserver.class))), (DiagnosticEventObserver) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(DiagnosticEventObserver.class))), (TransactionEventObserver) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(TransactionEventObserver.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GetTransactionData initialize$lambda$246$lambda$153(ServicesRegistry servicesRegistry) {
        return new AndroidGetTransactionData((GetByteStringId) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetByteStringId.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GetTransactionRequest initialize$lambda$246$lambda$154(ServicesRegistry servicesRegistry) {
        return new CommonGetTransactionRequest((DeviceInfoRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(DeviceInfoRepository.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GetAdRevenueEventData initialize$lambda$246$lambda$155() {
        return new AndroidGetAdRevenueEventData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final HandleAdRevenueEvent initialize$lambda$246$lambda$156(ServicesRegistry servicesRegistry) {
        return new HandleAdRevenueEvent((AdRevenueRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AdRevenueRepository.class))), (DeviceInfoRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(DeviceInfoRepository.class))), (GetAdRevenueEventData) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetAdRevenueEventData.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GetDiagnosticEventBatchRequest initialize$lambda$246$lambda$157() {
        return new GetDiagnosticEventBatchRequest();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GetDiagnosticEventRequest initialize$lambda$246$lambda$158(ServicesRegistry servicesRegistry) {
        return new GetDiagnosticEventRequest((GetSharedDataTimestamps) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetSharedDataTimestamps.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GetOperativeEventApi initialize$lambda$246$lambda$159(ServicesRegistry servicesRegistry) {
        return new GetOperativeEventApi((OperativeEventRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(OperativeEventRepository.class))), (GetOperativeEventRequest) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetOperativeEventRequest.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ByteStringDataSource initialize$lambda$246$lambda$16(ServicesRegistry servicesRegistry) {
        return new AndroidLegacyConfigStoreDataSource((StorageManager) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(StorageManager.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GetOperativeEventRequest initialize$lambda$246$lambda$160(ServicesRegistry servicesRegistry) {
        return new GetOperativeEventRequest((GetByteStringId) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetByteStringId.class))), (DeviceInfoRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(DeviceInfoRepository.class))), (SessionRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))), (CampaignRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(CampaignRepository.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final HandleGatewayEventResponse initialize$lambda$246$lambda$161() {
        return new AndroidHandleGatewayEventResponse();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final OperativeEventObserver initialize$lambda$246$lambda$162(ServicesRegistry servicesRegistry) {
        return new OperativeEventObserver((GetUniversalRequestForPayLoad) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetUniversalRequestForPayLoad.class))), (CoroutineDispatcher) servicesRegistry.resolveService(new ServiceKey(DEFAULT_DISPATCHER, Reflection.getOrCreateKotlinClass(CoroutineDispatcher.class))), (OperativeEventRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(OperativeEventRepository.class))), (UniversalRequestDataSource) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(UniversalRequestDataSource.class))), (BackgroundWorker) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(BackgroundWorker.class))), (UniversalRequestEventSender) servicesRegistry.resolveService(new ServiceKey(OPERATIVE_EVENT_SENDER, Reflection.getOrCreateKotlinClass(UniversalRequestEventSender.class))), (GetRequestPolicy) servicesRegistry.resolveService(new ServiceKey(NAMED_OPERATIVE_REQ, Reflection.getOrCreateKotlinClass(GetRequestPolicy.class))), (SendDiagnosticEvent) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SendDiagnosticEvent.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final TransactionEventObserver initialize$lambda$246$lambda$163(ServicesRegistry servicesRegistry) {
        return new TransactionEventObserver((GetUniversalRequestForPayLoad) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetUniversalRequestForPayLoad.class))), (CoroutineScope) servicesRegistry.resolveService(new ServiceKey(NAMED_TRANSACTION_SCOPE, Reflection.getOrCreateKotlinClass(CoroutineScope.class))), (TransactionEventRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(TransactionEventRepository.class))), (GatewayClient) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GatewayClient.class))), (GetRequestPolicy) servicesRegistry.resolveService(new ServiceKey(NAMED_OTHER_REQ, Reflection.getOrCreateKotlinClass(GetRequestPolicy.class))), (ByteStringDataSource) servicesRegistry.resolveService(new ServiceKey(DATA_STORE_IAP_TRANSACTION, Reflection.getOrCreateKotlinClass(ByteStringDataSource.class))), (SendDiagnosticEvent) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SendDiagnosticEvent.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AdRevenueObserver initialize$lambda$246$lambda$164(ServicesRegistry servicesRegistry) {
        return new AdRevenueObserver((GetUniversalRequestForPayLoad) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetUniversalRequestForPayLoad.class))), (CoroutineScope) servicesRegistry.resolveService(new ServiceKey(NAMED_ILRD_SCOPE, Reflection.getOrCreateKotlinClass(CoroutineScope.class))), (AdRevenueRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AdRevenueRepository.class))), (GatewayClient) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GatewayClient.class))), (GetRequestPolicy) servicesRegistry.resolveService(new ServiceKey(NAMED_OTHER_REQ, Reflection.getOrCreateKotlinClass(GetRequestPolicy.class))), (Logger) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Logger.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LifecycleEventObserver initialize$lambda$246$lambda$165(ServicesRegistry servicesRegistry) {
        return new LifecycleEventObserver((GetUniversalRequestForPayLoad) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetUniversalRequestForPayLoad.class))), (CoroutineScope) servicesRegistry.resolveService(new ServiceKey(NAMED_LIFECYCLE_SCOPE, Reflection.getOrCreateKotlinClass(CoroutineScope.class))), (LifecycleDataSource) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(LifecycleDataSource.class))), (DeviceInfoRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(DeviceInfoRepository.class))), (GatewayClient) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GatewayClient.class))), (GetRequestPolicy) servicesRegistry.resolveService(new ServiceKey(NAMED_OTHER_REQ, Reflection.getOrCreateKotlinClass(GetRequestPolicy.class))), (GetByteStringId) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetByteStringId.class))), (Logger) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Logger.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AppLovinCommunicatorBridge initialize$lambda$246$lambda$166(ServicesRegistry servicesRegistry) {
        return new AppLovinCommunicatorBridge((Context) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Context.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MaxAdRevenueCommunicatorProxyFactory initialize$lambda$246$lambda$167(ServicesRegistry servicesRegistry) {
        return new MaxAdRevenueCommunicatorProxyFactory((Logger) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Logger.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MaxAdRevenueListener initialize$lambda$246$lambda$168(ServicesRegistry servicesRegistry) {
        return new MaxAdRevenueListener((HandleAdRevenueEvent) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(HandleAdRevenueEvent.class))), (CoroutineScope) servicesRegistry.resolveService(new ServiceKey(NAMED_ILRD_SCOPE, Reflection.getOrCreateKotlinClass(CoroutineScope.class))), (Logger) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Logger.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MaxAdRevenueObserver initialize$lambda$246$lambda$169(ServicesRegistry servicesRegistry) {
        return new MaxAdRevenueObserver((SessionRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))), (Logger) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Logger.class))), (AppLovinCommunicatorBridge) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AppLovinCommunicatorBridge.class))), (MaxAdRevenueListener) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(MaxAdRevenueListener.class))), (MaxAdRevenueCommunicatorProxyFactory) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(MaxAdRevenueCommunicatorProxyFactory.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DataStore initialize$lambda$246$lambda$17(UnityAdsModule unityAdsModule, ServicesRegistry servicesRegistry) {
        return unityAdsModule.privacyDataStore((Context) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Context.class))), (CoroutineDispatcher) servicesRegistry.resolveService(new ServiceKey(IO_DISPATCHER, Reflection.getOrCreateKotlinClass(CoroutineDispatcher.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final UniversalRequestTtlValidator initialize$lambda$246$lambda$170() {
        return new CommonUniversalRequestTtlValidator();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final UniversalRequestEventSender initialize$lambda$246$lambda$171(ServicesRegistry servicesRegistry) {
        return new UniversalRequestEventSender((GatewayClient) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GatewayClient.class))), (HandleGatewayEventResponse) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(HandleGatewayEventResponse.class))), (UniversalRequestTtlValidator) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(UniversalRequestTtlValidator.class))), null, 8, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final UniversalRequestEventSender initialize$lambda$246$lambda$172(ServicesRegistry servicesRegistry) {
        return new UniversalRequestEventSender((GatewayClient) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GatewayClient.class))), (HandleGatewayEventResponse) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(HandleGatewayEventResponse.class))), (UniversalRequestTtlValidator) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(UniversalRequestTtlValidator.class))), OperationType.DIAGNOSTIC_EVENT);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final UniversalRequestEventSender initialize$lambda$246$lambda$173(ServicesRegistry servicesRegistry) {
        return new UniversalRequestEventSender((GatewayClient) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GatewayClient.class))), (HandleGatewayEventResponse) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(HandleGatewayEventResponse.class))), (UniversalRequestTtlValidator) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(UniversalRequestTtlValidator.class))), OperationType.OPERATIVE_EVENT);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final OmFinishSession initialize$lambda$246$lambda$174(ServicesRegistry servicesRegistry) {
        return new AndroidOmFinishSession((OpenMeasurementRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(OpenMeasurementRepository.class))), (SendDiagnosticEvent) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SendDiagnosticEvent.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final OmImpressionOccurred initialize$lambda$246$lambda$175(ServicesRegistry servicesRegistry) {
        return new AndroidOmImpressionOccurred((OpenMeasurementRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(OpenMeasurementRepository.class))), (SendDiagnosticEvent) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SendDiagnosticEvent.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AndroidOmInteraction initialize$lambda$246$lambda$176(ServicesRegistry servicesRegistry) {
        return new AndroidOmStartSession((OpenMeasurementRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(OpenMeasurementRepository.class))), (SendDiagnosticEvent) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SendDiagnosticEvent.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GetOmData initialize$lambda$246$lambda$177(ServicesRegistry servicesRegistry) {
        return new CommonGetOmData((OpenMeasurementRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(OpenMeasurementRepository.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IsOMActivated initialize$lambda$246$lambda$178(ServicesRegistry servicesRegistry) {
        return new CommonIsOMActivated((OpenMeasurementRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(OpenMeasurementRepository.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final InitializeOMSDK initialize$lambda$246$lambda$179(ServicesRegistry servicesRegistry) {
        return new AndroidInitializeOMSDK((Context) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Context.class))), (SendDiagnosticEvent) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SendDiagnosticEvent.class))), (SessionRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))), (OpenMeasurementRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(OpenMeasurementRepository.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ByteStringDataSource initialize$lambda$246$lambda$18(UnityAdsModule unityAdsModule, ServicesRegistry servicesRegistry) {
        return unityAdsModule.privacyDataStore((DataStore) servicesRegistry.resolveService(new ServiceKey(DATA_STORE_PRIVACY, Reflection.getOrCreateKotlinClass(DataStore.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final InitializeAdQuality initialize$lambda$246$lambda$180(ServicesRegistry servicesRegistry) {
        return new AndroidInitializeAdQuality((Context) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Context.class))), (SendDiagnosticEvent) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SendDiagnosticEvent.class))), (Logger) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Logger.class))), (GetGameId) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetGameId.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CoherenceLibraryManager initialize$lambda$246$lambda$181(ServicesRegistry servicesRegistry) {
        return new AndroidCoherenceLibraryManager((Context) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Context.class))), (Logger) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Logger.class))), (SendDiagnosticEvent) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SendDiagnosticEvent.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final FlattenerRulesUseCase initialize$lambda$246$lambda$182() {
        return new DeveloperConsentFlattenerRulesUseCase();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final FlattenerRulesUseCase initialize$lambda$246$lambda$183() {
        return new LegacyUserConsentFlattenerRulesUseCase();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final BackgroundWorker initialize$lambda$246$lambda$184(ServicesRegistry servicesRegistry) {
        return new BackgroundWorker((Context) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Context.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DiagnosticEventRequestWorkModifier initialize$lambda$246$lambda$185(ServicesRegistry servicesRegistry) {
        return new DiagnosticEventRequestWorkModifier((SessionRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GatewayClient initialize$lambda$246$lambda$186(ServicesRegistry servicesRegistry) {
        return new CommonGatewayClient((HttpClientProvider) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(HttpClientProvider.class))), (HandleGatewayUniversalResponse) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(HandleGatewayUniversalResponse.class))), (SendDiagnosticEvent) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SendDiagnosticEvent.class))), (SessionRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))), (RequestUrlFactory) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(RequestUrlFactory.class))), (Logger) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Logger.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CoroutineExceptionHandler initialize$lambda$246$lambda$187(ServicesRegistry servicesRegistry) {
        return new SDKErrorHandler((CoroutineDispatcher) servicesRegistry.resolveService(new ServiceKey(DEFAULT_DISPATCHER, Reflection.getOrCreateKotlinClass(CoroutineDispatcher.class))), (SendDiagnosticEvent) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SendDiagnosticEvent.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final VolumeChange initialize$lambda$246$lambda$188() {
        return new VolumeChangeContentObserver();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final StoreMonitor initialize$lambda$246$lambda$189(ServicesRegistry servicesRegistry) {
        return new StoreMonitor((StoreExceptionHandler) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(StoreExceptionHandler.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DataStore initialize$lambda$246$lambda$19(UnityAdsModule unityAdsModule, ServicesRegistry servicesRegistry) {
        return unityAdsModule.privacyFsmDataStore((Context) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Context.class))), (CoroutineDispatcher) servicesRegistry.resolveService(new ServiceKey(IO_DISPATCHER, Reflection.getOrCreateKotlinClass(CoroutineDispatcher.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final StoreExceptionHandler initialize$lambda$246$lambda$190() {
        return new GatewayStoreExceptionHandler();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AndroidAttribution initialize$lambda$246$lambda$191(ServicesRegistry servicesRegistry) {
        return new AndroidAttribution((Context) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Context.class))), (ISDKDispatchers) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ISDKDispatchers.class))), (SessionRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AdPlayerScope initialize$lambda$246$lambda$192(ServicesRegistry servicesRegistry) {
        return new AdPlayerScope((CoroutineDispatcher) servicesRegistry.resolveService(new ServiceKey(DEFAULT_DISPATCHER, Reflection.getOrCreateKotlinClass(CoroutineDispatcher.class))), (CoroutineExceptionHandler) servicesRegistry.resolveService(new ServiceKey("sdk", Reflection.getOrCreateKotlinClass(CoroutineExceptionHandler.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AndroidGetWebViewContainerUseCase initialize$lambda$246$lambda$193(ServicesRegistry servicesRegistry) {
        return new AndroidGetWebViewContainerUseCase((Context) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Context.class))), (GetCachedAsset) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetCachedAsset.class))), (SendWebViewClientErrorDiagnostics) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SendWebViewClientErrorDiagnostics.class))), (CoroutineDispatcher) servicesRegistry.resolveService(new ServiceKey(MAIN_DISPATCHER, Reflection.getOrCreateKotlinClass(CoroutineDispatcher.class))), (CoroutineDispatcher) servicesRegistry.resolveService(new ServiceKey(DEFAULT_DISPATCHER, Reflection.getOrCreateKotlinClass(CoroutineDispatcher.class))), (SendDiagnosticEvent) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SendDiagnosticEvent.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Load initialize$lambda$246$lambda$194(ServicesRegistry servicesRegistry) {
        return new AndroidLoad((CoroutineDispatcher) servicesRegistry.resolveService(new ServiceKey(DEFAULT_DISPATCHER, Reflection.getOrCreateKotlinClass(CoroutineDispatcher.class))), (GetAdRequest) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetAdRequest.class))), (GetAdPlayerConfigRequest) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetAdPlayerConfigRequest.class))), (GetRequestPolicy) servicesRegistry.resolveService(new ServiceKey(NAMED_AD_REQ, Reflection.getOrCreateKotlinClass(GetRequestPolicy.class))), (HandleGatewayAdResponse) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(HandleGatewayAdResponse.class))), (SessionRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))), (GatewayClient) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GatewayClient.class))), (AdRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AdRepository.class))), (SendDiagnosticEvent) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SendDiagnosticEvent.class))), (ValidateExtrasSize) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ValidateExtrasSize.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AwaitInitialization initialize$lambda$246$lambda$195(ServicesRegistry servicesRegistry) {
        return new CommonAwaitInitialization((SessionRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GetAsyncHeaderBiddingToken initialize$lambda$246$lambda$196(ServicesRegistry servicesRegistry) {
        return new CommonInitAwaitingGetHeaderBiddingToken((GetHeaderBiddingToken) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetHeaderBiddingToken.class))), (SendDiagnosticEvent) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SendDiagnosticEvent.class))), (GetInitializationState) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetInitializationState.class))), (SessionRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))), (SafeCallbackInvoke) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SafeCallbackInvoke.class))), (Logger) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Logger.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DisplayRecovererFactory initialize$lambda$246$lambda$197(ServicesRegistry servicesRegistry) {
        return DisplayRecovererKt.displayRecovererFactory((SessionRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))), (FocusRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(FocusRepository.class))), (SendDiagnosticEvent) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SendDiagnosticEvent.class))), (Context) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Context.class))), (OrientationRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(OrientationRepository.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GetAdPlayer initialize$lambda$246$lambda$198(ServicesRegistry servicesRegistry) {
        return new CommonGetAdPlayer((DeviceInfoRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(DeviceInfoRepository.class))), (SessionRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))), (SendDiagnosticEvent) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SendDiagnosticEvent.class))), (CoroutineDispatcher) servicesRegistry.resolveService(new ServiceKey(DEFAULT_DISPATCHER, Reflection.getOrCreateKotlinClass(CoroutineDispatcher.class))), (OpenMeasurementRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(OpenMeasurementRepository.class))), (OfferwallManager) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(OfferwallManager.class))), (AdRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AdRepository.class))), (LifecycleDataSource) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(LifecycleDataSource.class))), (OrientationRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(OrientationRepository.class))), (Context) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Context.class))), (DisplayRecovererFactory) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(DisplayRecovererFactory.class))), (CurrentActivityDataSource) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(CurrentActivityDataSource.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CacheWebViewAssets initialize$lambda$246$lambda$199(ServicesRegistry servicesRegistry) {
        return new AndroidCacheWebViewAssets((CacheRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(CacheRepository.class))), (SessionRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ByteStringDataSource initialize$lambda$246$lambda$20(UnityAdsModule unityAdsModule, ServicesRegistry servicesRegistry) {
        return unityAdsModule.privacyFsmDataStore((DataStore) servicesRegistry.resolveService(new ServiceKey(DATA_STORE_PRIVACY_FSM, Reflection.getOrCreateKotlinClass(DataStore.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final HandleGatewayAdResponse initialize$lambda$246$lambda$200(ServicesRegistry servicesRegistry) {
        return new AndroidHandleGatewayAdResponse((AdRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AdRepository.class))), (AndroidGetWebViewContainerUseCase) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AndroidGetWebViewContainerUseCase.class))), (GetWebViewBridgeUseCase) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetWebViewBridgeUseCase.class))), (DeviceInfoRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(DeviceInfoRepository.class))), (HandleInvocationsFromAdViewer) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(HandleInvocationsFromAdViewer.class))), (CampaignRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(CampaignRepository.class))), (SendDiagnosticEvent) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SendDiagnosticEvent.class))), (GetOperativeEventApi) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetOperativeEventApi.class))), (GetLatestWebViewConfiguration) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetLatestWebViewConfiguration.class))), (AdPlayerScope) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AdPlayerScope.class))), (GetAdPlayer) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetAdPlayer.class))), (CacheWebViewAssets) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(CacheWebViewAssets.class))), (WebViewLessLoadStrategy) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(WebViewLessLoadStrategy.class))), (SessionRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))), (PreShowWebViewStrategy) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(PreShowWebViewStrategy.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final HandleInvocationsFromAdViewer initialize$lambda$246$lambda$201() {
        return new HandleInvocationsFromAdViewer();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LegacyLoadUseCase initialize$lambda$246$lambda$202(ServicesRegistry servicesRegistry) {
        return new LegacyLoadUseCase((Load) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Load.class))), (SendDiagnosticEvent) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SendDiagnosticEvent.class))), (GetInitializationState) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetInitializationState.class))), (AwaitInitialization) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AwaitInitialization.class))), (SessionRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))), (AdRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AdRepository.class))), (SafeCallbackInvoke) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SafeCallbackInvoke.class))), (CleanUpWhenOpportunityExpires) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(CleanUpWhenOpportunityExpires.class))), (Logger) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Logger.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final WebViewLessLoadStrategy initialize$lambda$246$lambda$203(ServicesRegistry servicesRegistry) {
        return new AndroidWebViewLessLoadStrategy((AdRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AdRepository.class))), (CampaignRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(CampaignRepository.class))), (CacheAssets) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(CacheAssets.class))), (AdRefresh) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AdRefresh.class))), (SessionRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final WebViewPool initialize$lambda$246$lambda$204(ServicesRegistry servicesRegistry) {
        return new AndroidWebViewPool((Context) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Context.class))), (CoroutineDispatcher) servicesRegistry.resolveService(new ServiceKey(MAIN_DISPATCHER, Reflection.getOrCreateKotlinClass(CoroutineDispatcher.class))), (GetCachedAsset) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetCachedAsset.class))), (SendDiagnosticEvent) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SendDiagnosticEvent.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final PooledWebViewContainerFactory initialize$lambda$246$lambda$206(final ServicesRegistry servicesRegistry) {
        return new PooledWebViewContainerFactory() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda168
            @Override // com.unity3d.ads.adplayer.webviewpool.PooledWebViewContainerFactory
            public final AndroidWebViewContainer create(PoolEntry poolEntry, CoroutineScope coroutineScope, AdObject adObject) {
                return ServiceProvider.initialize$lambda$246$lambda$206$lambda$205(servicesRegistry, poolEntry, coroutineScope, adObject);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AndroidWebViewContainer initialize$lambda$246$lambda$206$lambda$205(ServicesRegistry servicesRegistry, PoolEntry entry, CoroutineScope adPlayerScope, AdObject adObject) {
        Intrinsics.checkNotNullParameter(entry, "entry");
        Intrinsics.checkNotNullParameter(adPlayerScope, "adPlayerScope");
        Intrinsics.checkNotNullParameter(adObject, "adObject");
        return new AndroidWebViewContainer(entry.getWebView(), entry.getClient(), (SendWebViewClientErrorDiagnostics) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SendWebViewClientErrorDiagnostics.class))), (CoroutineDispatcher) servicesRegistry.resolveService(new ServiceKey(MAIN_DISPATCHER, Reflection.getOrCreateKotlinClass(CoroutineDispatcher.class))), (CoroutineDispatcher) servicesRegistry.resolveService(new ServiceKey(DEFAULT_DISPATCHER, Reflection.getOrCreateKotlinClass(CoroutineDispatcher.class))), adPlayerScope, (Context) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Context.class))), adObject, (SendDiagnosticEvent) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SendDiagnosticEvent.class))), false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final PreShowWebViewStrategy initialize$lambda$246$lambda$207(ServicesRegistry servicesRegistry) {
        NativeConfigurationOuterClass.FeatureFlags featureFlags = ((SessionRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class)))).getNativeConfiguration().getFeatureFlags();
        int webviewPoolSize = featureFlags.getWebviewPoolSize();
        if (webviewPoolSize <= 0) {
            webviewPoolSize = 2;
        }
        NativeConfigurationOuterClass.PreShowWebViewStrategy preShowWebviewStrategy = featureFlags.getPreShowWebviewStrategy();
        int i = preShowWebviewStrategy == null ? -1 : WhenMappings.$EnumSwitchMapping$0[preShowWebviewStrategy.ordinal()];
        if (i == 1) {
            return new EagerPreloadOnLoadStrategy((AndroidGetWebViewContainerUseCase) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AndroidGetWebViewContainerUseCase.class))), (SendDiagnosticEvent) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SendDiagnosticEvent.class))), (Logger) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Logger.class))));
        }
        if (i != 2) {
            return i != 3 ? new DisabledPreShowStrategy((AndroidGetWebViewContainerUseCase) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AndroidGetWebViewContainerUseCase.class)))) : new PoolPreloadOnLoadStrategy((WebViewPool) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(WebViewPool.class))), webviewPoolSize, (PooledWebViewContainerFactory) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(PooledWebViewContainerFactory.class))));
        }
        return new PoolAcquireAtShowStrategy((WebViewPool) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(WebViewPool.class))), webviewPoolSize, (PooledWebViewContainerFactory) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(PooledWebViewContainerFactory.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SafeCallbackInvoke initialize$lambda$246$lambda$208(ServicesRegistry servicesRegistry) {
        return new CommonSafeCallbackInvoke((CoroutineDispatcher) servicesRegistry.resolveService(new ServiceKey(MAIN_DISPATCHER, Reflection.getOrCreateKotlinClass(CoroutineDispatcher.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CoroutineTimer initialize$lambda$246$lambda$209(ServicesRegistry servicesRegistry) {
        return new CommonCoroutineTimer((CoroutineDispatcher) servicesRegistry.resolveService(new ServiceKey(DEFAULT_DISPATCHER, Reflection.getOrCreateKotlinClass(CoroutineDispatcher.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DataStore initialize$lambda$246$lambda$21(UnityAdsModule unityAdsModule, ServicesRegistry servicesRegistry) {
        return unityAdsModule.nativeConfigurationDataStore((Context) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Context.class))), (CoroutineDispatcher) servicesRegistry.resolveService(new ServiceKey(IO_DISPATCHER, Reflection.getOrCreateKotlinClass(CoroutineDispatcher.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SetGameId initialize$lambda$246$lambda$210(ServicesRegistry servicesRegistry) {
        return new CommonSetGameId((SessionRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GetGameId initialize$lambda$246$lambda$211(ServicesRegistry servicesRegistry) {
        return new CommonGetGameId((SessionRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ValidateGameId initialize$lambda$246$lambda$212(ServicesRegistry servicesRegistry) {
        return new CommonValidateGameId((GetGameId) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetGameId.class))), (SetGameId) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SetGameId.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ValidateExtrasSize initialize$lambda$246$lambda$213(ServicesRegistry servicesRegistry) {
        return new ValidateExtrasSize((SessionRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))), (SendDiagnosticEvent) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SendDiagnosticEvent.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ShouldUseLazyStaticDeviceInfo initialize$lambda$246$lambda$214(ServicesRegistry servicesRegistry) {
        return new AndroidShouldUseLazyStaticDeviceInfo((MediationTraitsMetadataReader) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(MediationTraitsMetadataReader.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ShouldUseFastInit initialize$lambda$246$lambda$215(ServicesRegistry servicesRegistry) {
        return new AndroidShouldUseFastInit((MediationTraitsMetadataReader) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(MediationTraitsMetadataReader.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ShouldAllowInitialization initialize$lambda$246$lambda$216(ServicesRegistry servicesRegistry) {
        return new CommonShouldAllowInitialization((CheckForGameIdAndTestModeChanges) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(CheckForGameIdAndTestModeChanges.class))), (GetInitializationState) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetInitializationState.class))), (SetInitializationState) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SetInitializationState.class))), (ValidateGameId) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ValidateGameId.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CheckForGameIdAndTestModeChanges initialize$lambda$246$lambda$217(ServicesRegistry servicesRegistry) {
        return new CommonCheckForGameIdAndTestModeChanges((GetGameId) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetGameId.class))), (SendDiagnosticEvent) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SendDiagnosticEvent.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DownloadPriorityQueue initialize$lambda$246$lambda$218(ServicesRegistry servicesRegistry) {
        return new DownloadPriorityQueue((SessionRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CleanupDirectory initialize$lambda$246$lambda$219(ServicesRegistry servicesRegistry) {
        return new CleanupDirectory((Logger) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Logger.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ByteStringDataSource initialize$lambda$246$lambda$22(UnityAdsModule unityAdsModule, ServicesRegistry servicesRegistry) {
        return unityAdsModule.nativeConfigurationDataStore((DataStore) servicesRegistry.resolveService(new ServiceKey(DATA_STORE_NATIVE_CONFIG, Reflection.getOrCreateKotlinClass(DataStore.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final FocusRepository initialize$lambda$246$lambda$220(ServicesRegistry servicesRegistry) {
        return new FocusRepository((AndroidGetLifecycleFlow) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AndroidGetLifecycleFlow.class))), (CoroutineDispatcher) servicesRegistry.resolveService(new ServiceKey(DEFAULT_DISPATCHER, Reflection.getOrCreateKotlinClass(CoroutineDispatcher.class))), (Logger) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Logger.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AndroidGetIsAdActivity initialize$lambda$246$lambda$221(ServicesRegistry servicesRegistry) {
        return new AndroidGetIsAdActivity((SessionRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AndroidGetLifecycleFlow initialize$lambda$246$lambda$222(ServicesRegistry servicesRegistry) {
        return new AndroidGetLifecycleFlow((Context) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Context.class))), (Logger) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Logger.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AndroidHandleFocusCounters initialize$lambda$246$lambda$223(ServicesRegistry servicesRegistry) {
        return new AndroidHandleFocusCounters((SessionRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))), (FocusRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(FocusRepository.class))), (AndroidGetIsAdActivity) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AndroidGetIsAdActivity.class))), (CoroutineDispatcher) servicesRegistry.resolveService(new ServiceKey(DEFAULT_DISPATCHER, Reflection.getOrCreateKotlinClass(CoroutineDispatcher.class))), (Logger) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Logger.class))), null, 32, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final OfferwallAdapterBridge initialize$lambda$246$lambda$224(ServicesRegistry servicesRegistry) {
        return new OfferwallAdapterBridge((CoroutineScope) servicesRegistry.resolveService(new ServiceKey(NAMED_OFFERWALL_SCOPE, Reflection.getOrCreateKotlinClass(CoroutineScope.class))), null, 2, 0 == true ? 1 : 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final OfferwallManager initialize$lambda$246$lambda$225(ServicesRegistry servicesRegistry) {
        return new AndroidOfferwallManager((OfferwallAdapterBridge) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(OfferwallAdapterBridge.class))), (Logger) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Logger.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LoadOfferwallAd initialize$lambda$246$lambda$226(ServicesRegistry servicesRegistry) {
        return new LoadOfferwallAd((OfferwallManager) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(OfferwallManager.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GetIsOfferwallAdReady initialize$lambda$246$lambda$227(ServicesRegistry servicesRegistry) {
        return new GetIsOfferwallAdReady((OfferwallManager) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(OfferwallManager.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final FIdDataSource initialize$lambda$246$lambda$228(ServicesRegistry servicesRegistry) {
        return new CachedFIdDataSource((CoroutineDispatcher) servicesRegistry.resolveService(new ServiceKey(IO_DISPATCHER, Reflection.getOrCreateKotlinClass(CoroutineDispatcher.class))), new AndroidFIdDataSource((Context) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Context.class)))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final FIdExistenceDataSource initialize$lambda$246$lambda$229() {
        return new AndroidFIdExistenceDataSource(Constants.FID_CLASS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DataStore initialize$lambda$246$lambda$23(UnityAdsModule unityAdsModule, ServicesRegistry servicesRegistry) {
        return unityAdsModule.glInfoDataStore((Context) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Context.class))), (CoroutineDispatcher) servicesRegistry.resolveService(new ServiceKey(IO_DISPATCHER, Reflection.getOrCreateKotlinClass(CoroutineDispatcher.class))), (DataMigration) servicesRegistry.resolveService(new ServiceKey(PREF_GL_INFO, Reflection.getOrCreateKotlinClass(DataMigration.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AdQualityVersionDataSource initialize$lambda$246$lambda$230(ServicesRegistry servicesRegistry) {
        return new AndroidAdQualityVersionDataSource((Logger) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Logger.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CleanUpWhenOpportunityExpires initialize$lambda$246$lambda$231(ServicesRegistry servicesRegistry) {
        return new CleanUpWhenOpportunityExpires((CoroutineDispatcher) servicesRegistry.resolveService(new ServiceKey(DEFAULT_DISPATCHER, Reflection.getOrCreateKotlinClass(CoroutineDispatcher.class))), (Logger) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Logger.class))), (PreShowWebViewStrategy) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(PreShowWebViewStrategy.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final OrientationRepository initialize$lambda$246$lambda$232(ServicesRegistry servicesRegistry) {
        return new OrientationRepository((AndroidGetLifecycleFlow) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AndroidGetLifecycleFlow.class))), (CoroutineDispatcher) servicesRegistry.resolveService(new ServiceKey(DEFAULT_DISPATCHER, Reflection.getOrCreateKotlinClass(CoroutineDispatcher.class))), (Logger) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Logger.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AccelerometerRepository initialize$lambda$246$lambda$233(ServicesRegistry servicesRegistry) {
        return new AccelerometerRepository((Context) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Context.class))), (SessionRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))), (Logger) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Logger.class))), null, 8, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AndroidAppSetIdDataSource initialize$lambda$246$lambda$234(ServicesRegistry servicesRegistry) {
        return new AndroidAppSetIdDataSource((Context) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Context.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AndroidUnityInfoDataSource initialize$lambda$246$lambda$236() {
        return new AndroidUnityInfoDataSource(new Function0() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda111
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ClientProperties.getApplicationContext();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final InstallReferrerDataSource initialize$lambda$246$lambda$237(ServicesRegistry servicesRegistry) {
        return new AndroidInstallReferrerDataSource((Context) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Context.class))), (SendDiagnosticEvent) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SendDiagnosticEvent.class))), (CoroutineScope) servicesRegistry.resolveService(new ServiceKey(NAMED_INIT_SCOPE, Reflection.getOrCreateKotlinClass(CoroutineScope.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GoogleAppIdDataSource initialize$lambda$246$lambda$238(ServicesRegistry servicesRegistry) {
        return new AndroidGoogleAppIdDataSource((Context) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Context.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ModuleInitParamsDataSource initialize$lambda$246$lambda$239(ServicesRegistry servicesRegistry) {
        return new AndroidModuleInitParamsDataSource((GetInitModuleListeners) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetInitModuleListeners.class))), (SendDiagnosticEvent) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SendDiagnosticEvent.class))), (CoroutineDispatcher) servicesRegistry.resolveService(new ServiceKey(IO_DISPATCHER, Reflection.getOrCreateKotlinClass(CoroutineDispatcher.class))), (GetIsModulesInitEnabled) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetIsModulesInitEnabled.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ByteStringDataSource initialize$lambda$246$lambda$24(UnityAdsModule unityAdsModule, ServicesRegistry servicesRegistry) {
        return unityAdsModule.glInfoDataStore((DataStore) servicesRegistry.resolveService(new ServiceKey(DATA_STORE_GL_INFO, Reflection.getOrCreateKotlinClass(DataStore.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final HandleDebugSettings initialize$lambda$246$lambda$240() {
        return new HandleDebugSettings();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Logger initialize$lambda$246$lambda$241(ServicesRegistry servicesRegistry) {
        return new UnityLogger((SessionRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))), (CreateFile) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(CreateFile.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IsBillingClientAvailable initialize$lambda$246$lambda$242() {
        return new IsBillingClientAvailable();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final UnityBootConfigDataSource initialize$lambda$246$lambda$243(ServicesRegistry servicesRegistry) {
        return new AndroidUnityBootConfigDataSource((Context) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Context.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GetSafeguardedInitializationPolicy initialize$lambda$246$lambda$244() {
        return new AndroidGetSafeguardedInitializationPolicy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final RequestUrlFactory initialize$lambda$246$lambda$245(ServicesRegistry servicesRegistry) {
        return new AndroidRequestUrlFactory((SessionRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final UniversalRequestDataStoreProvider initialize$lambda$246$lambda$25(ServicesRegistry servicesRegistry) {
        return new UniversalRequestDataStoreProvider((Context) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Context.class))), (CoroutineDispatcher) servicesRegistry.resolveService(new ServiceKey(IO_DISPATCHER, Reflection.getOrCreateKotlinClass(CoroutineDispatcher.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DataStore initialize$lambda$246$lambda$26(UnityAdsModule unityAdsModule, ServicesRegistry servicesRegistry) {
        return unityAdsModule.iapTransactionDataStore((Context) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Context.class))), (CoroutineDispatcher) servicesRegistry.resolveService(new ServiceKey(IO_DISPATCHER, Reflection.getOrCreateKotlinClass(CoroutineDispatcher.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ByteStringDataSource initialize$lambda$246$lambda$27(UnityAdsModule unityAdsModule, ServicesRegistry servicesRegistry) {
        return unityAdsModule.iapTransactionDataStore((DataStore) servicesRegistry.resolveService(new ServiceKey(DATA_STORE_IAP_TRANSACTION, Reflection.getOrCreateKotlinClass(DataStore.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DataStore initialize$lambda$246$lambda$28(UnityAdsModule unityAdsModule, ServicesRegistry servicesRegistry) {
        return unityAdsModule.webViewConfigurationDataStore((Context) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Context.class))), (CoroutineDispatcher) servicesRegistry.resolveService(new ServiceKey(IO_DISPATCHER, Reflection.getOrCreateKotlinClass(CoroutineDispatcher.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CronetEngineBuilderFactory initialize$lambda$246$lambda$33() {
        return new CronetEngineBuilderFactory();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final IsCronetFallbackAvailable initialize$lambda$246$lambda$34() {
        return new IsCronetFallbackAvailable(null, 1, 0 == true ? 1 : 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final HttpClientProvider initialize$lambda$246$lambda$35(ServicesRegistry servicesRegistry) {
        return new AndroidHttpClientProvider((ISDKDispatchers) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ISDKDispatchers.class))), (SendDiagnosticEvent) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SendDiagnosticEvent.class))), (Context) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Context.class))), (CronetEngineBuilderFactory) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(CronetEngineBuilderFactory.class))), (MediationTraitsMetadataReader) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(MediationTraitsMetadataReader.class))), (IsCronetFallbackAvailable) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(IsCronetFallbackAvailable.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final HttpClient initialize$lambda$246$lambda$36(ServicesRegistry servicesRegistry) {
        return (HttpClient) BuildersKt__BuildersKt.runBlocking$default(null, new ServiceProvider$initialize$1$37$1(servicesRegistry, null), 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MediationTraitsMetadataReader initialize$lambda$246$lambda$37(ServicesRegistry servicesRegistry) {
        return new MediationTraitsMetadataReader((JsonStorage) servicesRegistry.resolveService(new ServiceKey("MEMORY", Reflection.getOrCreateKotlinClass(JsonStorage.class))), (SessionRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final GatherQuickCapabilities initialize$lambda$246$lambda$38(ServicesRegistry servicesRegistry) {
        return new AndroidGatherQuickCapabilities(CollectionsKt.listOf((Object[]) new CapabilitiesChecker[]{new WorkManagerCapabilitiesChecker((Context) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Context.class))), null, 2, 0 == true ? 1 : 0), new ClassPresenceCapabilitiesChecker(0 == true ? 1 : 0, 1, 0 == true ? 1 : 0)}));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final TcfDataSource initialize$lambda$246$lambda$39() {
        return new AndroidTcfDataSource();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final TcfRepository initialize$lambda$246$lambda$40(ServicesRegistry servicesRegistry) {
        return new AndroidTcfRepository((TcfDataSource) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(TcfDataSource.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AndroidManifestIntPropertyReader initialize$lambda$246$lambda$41(ServicesRegistry servicesRegistry) {
        return new AndroidManifestIntPropertyReader((Context) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Context.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AndroidManifestStringPropertyReader initialize$lambda$246$lambda$42(ServicesRegistry servicesRegistry) {
        return new AndroidManifestStringPropertyReader((Context) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Context.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AndroidTestDataInfo initialize$lambda$246$lambda$43(ServicesRegistry servicesRegistry) {
        return new AndroidTestDataInfo((AndroidManifestIntPropertyReader) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AndroidManifestIntPropertyReader.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GameServerIdReader initialize$lambda$246$lambda$44(ServicesRegistry servicesRegistry) {
        return new GameServerIdReader((JsonStorage) servicesRegistry.resolveService(new ServiceKey("PUBLIC", Reflection.getOrCreateKotlinClass(JsonStorage.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final StoreDataSource initialize$lambda$246$lambda$45(ServicesRegistry servicesRegistry) {
        return new AndroidStoreDataSource((Context) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Context.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AnalyticsDataSource initialize$lambda$246$lambda$46() {
        return new AndroidAnalyticsDataSource();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DeveloperConsentDataSource initialize$lambda$246$lambda$47(ServicesRegistry servicesRegistry) {
        return new AndroidDeveloperConsentDataSource((FlattenerRulesUseCase) servicesRegistry.resolveService(new ServiceKey(DEV_CONSENT_PRIVACY_RULES, Reflection.getOrCreateKotlinClass(FlattenerRulesUseCase.class))), (JsonStorage) servicesRegistry.resolveService(new ServiceKey("PUBLIC", Reflection.getOrCreateKotlinClass(JsonStorage.class))), (SessionRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DynamicDeviceInfoDataSource initialize$lambda$246$lambda$48(ServicesRegistry servicesRegistry) {
        return new AndroidDynamicDeviceInfoDataSource((Context) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Context.class))), (LifecycleDataSource) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(LifecycleDataSource.class))), (Logger) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Logger.class))), (AccelerometerRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AccelerometerRepository.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LegacyUserConsentDataSource initialize$lambda$246$lambda$49(ServicesRegistry servicesRegistry) {
        return new AndroidLegacyUserConsentDataSource((FlattenerRulesUseCase) servicesRegistry.resolveService(new ServiceKey(LEGACY_PRIVACY_RULES, Reflection.getOrCreateKotlinClass(FlattenerRulesUseCase.class))), (JsonStorage) servicesRegistry.resolveService(new ServiceKey("PRIVATE", Reflection.getOrCreateKotlinClass(JsonStorage.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CoroutineScope initialize$lambda$246$lambda$5(UnityAdsModule unityAdsModule, ServicesRegistry servicesRegistry) {
        return unityAdsModule.initCoroutineScope((ISDKDispatchers) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ISDKDispatchers.class))), (CoroutineExceptionHandler) servicesRegistry.resolveService(new ServiceKey("sdk", Reflection.getOrCreateKotlinClass(CoroutineExceptionHandler.class))), (Job) servicesRegistry.resolveService(new ServiceKey(NAMED_PUBLIC_JOB, Reflection.getOrCreateKotlinClass(Job.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LifecycleDataSource initialize$lambda$246$lambda$50() {
        return new AndroidLifecycleDataSource();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CurrentActivityDataSource initialize$lambda$246$lambda$51(ServicesRegistry servicesRegistry) {
        return new AndroidCurrentActivityDataSource((Context) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Context.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ForegroundDurationReader initialize$lambda$246$lambda$53(ServicesRegistry servicesRegistry) {
        AppForegroundDurationObserver appForegroundDurationObserver = new AppForegroundDurationObserver((LifecycleDataSource) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(LifecycleDataSource.class))), (CoroutineDispatcher) servicesRegistry.resolveService(new ServiceKey(DEFAULT_DISPATCHER, Reflection.getOrCreateKotlinClass(CoroutineDispatcher.class))), null, null, 12, null);
        appForegroundDurationObserver.invoke();
        return appForegroundDurationObserver;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CacheDataSource initialize$lambda$246$lambda$54(ServicesRegistry servicesRegistry) {
        return new AndroidLocalCacheDataSource((CreateFile) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(CreateFile.class))), (GetFileExtensionFromUrl) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetFileExtensionFromUrl.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CreateFile initialize$lambda$246$lambda$55() {
        return new CommonCreateFile();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GetFileExtensionFromUrl initialize$lambda$246$lambda$56(ServicesRegistry servicesRegistry) {
        return new CommonGetFileExtensionFromUrl((RemoveUrlQuery) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(RemoveUrlQuery.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final RemoveUrlQuery initialize$lambda$246$lambda$57() {
        return new AndroidRemoveUrlQuery();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MediationDataSource initialize$lambda$246$lambda$58(ServicesRegistry servicesRegistry) {
        return new AndroidMediationDataSource((JsonStorage) servicesRegistry.resolveService(new ServiceKey("MEMORY", Reflection.getOrCreateKotlinClass(JsonStorage.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final PrivacyDeviceInfoDataSource initialize$lambda$246$lambda$59(ServicesRegistry servicesRegistry) {
        return new AndroidPrivacyDeviceInfoDataSource((Context) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Context.class))), (FIdDataSource) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(FIdDataSource.class))), (AndroidAppSetIdDataSource) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AndroidAppSetIdDataSource.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CoroutineScope initialize$lambda$246$lambda$6(UnityAdsModule unityAdsModule, ServicesRegistry servicesRegistry) {
        return unityAdsModule.loadCoroutineScope((ISDKDispatchers) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ISDKDispatchers.class))), (CoroutineExceptionHandler) servicesRegistry.resolveService(new ServiceKey("sdk", Reflection.getOrCreateKotlinClass(CoroutineExceptionHandler.class))), (Job) servicesRegistry.resolveService(new ServiceKey(NAMED_PUBLIC_JOB, Reflection.getOrCreateKotlinClass(Job.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CacheDataSource initialize$lambda$246$lambda$60(ServicesRegistry servicesRegistry) {
        return new AndroidRemoteCacheDataSource((CoroutineDispatcher) servicesRegistry.resolveService(new ServiceKey(IO_DISPATCHER, Reflection.getOrCreateKotlinClass(CoroutineDispatcher.class))), (CreateFile) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(CreateFile.class))), (GetFileExtensionFromUrl) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetFileExtensionFromUrl.class))), (HttpClientProvider) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(HttpClientProvider.class))), (SessionRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final StaticDeviceInfoDataSource initialize$lambda$246$lambda$61(ServicesRegistry servicesRegistry) {
        return new AndroidStaticDeviceInfoDataSource((Context) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Context.class))), (ByteStringDataSource) servicesRegistry.resolveService(new ServiceKey(DATA_STORE_GL_INFO, Reflection.getOrCreateKotlinClass(ByteStringDataSource.class))), (AnalyticsDataSource) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AnalyticsDataSource.class))), (StoreDataSource) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(StoreDataSource.class))), (UnityBootConfigDataSource) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(UnityBootConfigDataSource.class))), (Logger) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Logger.class))), (ShouldUseLazyStaticDeviceInfo) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ShouldUseLazyStaticDeviceInfo.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DataMigration initialize$lambda$246$lambda$62(ServicesRegistry servicesRegistry) {
        return new FetchGLInfoDataMigration((GetOpenGLRendererInfo) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetOpenGLRendererInfo.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final UniversalRequestDataSource initialize$lambda$246$lambda$63(ServicesRegistry servicesRegistry) {
        return new UniversalRequestDataSource((UniversalRequestDataStoreProvider) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(UniversalRequestDataStoreProvider.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final WebviewConfigurationDataSource initialize$lambda$246$lambda$64(ServicesRegistry servicesRegistry) {
        return new WebviewConfigurationDataSource((DataStore) servicesRegistry.resolveService(new ServiceKey(DATA_STORE_WEBVIEW_CONFIG, Reflection.getOrCreateKotlinClass(DataStore.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final OmidManager initialize$lambda$246$lambda$65() {
        return new AndroidOmidManager();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SDKPropertiesManager initialize$lambda$246$lambda$66() {
        return new AndroidSDKPropertiesManager();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final StorageManager initialize$lambda$246$lambda$67() {
        return new AndroidStorageManager();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CoroutineScope initialize$lambda$246$lambda$68(ServicesRegistry servicesRegistry) {
        return CoroutineScopeKt.CoroutineScope(((CoroutineDispatcher) servicesRegistry.resolveService(new ServiceKey(DEFAULT_DISPATCHER, Reflection.getOrCreateKotlinClass(CoroutineDispatcher.class)))).plus(SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null)).plus(new CoroutineName(NAMED_OPTIMISTIC_SCOPE)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CoroutineScope initialize$lambda$246$lambda$69(ServicesRegistry servicesRegistry) {
        return CoroutineScopeKt.CoroutineScope(((CoroutineDispatcher) servicesRegistry.resolveService(new ServiceKey(DEFAULT_DISPATCHER, Reflection.getOrCreateKotlinClass(CoroutineDispatcher.class)))).plus(SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null)).plus(new CoroutineName(NAMED_DEVICE_INFO_SCOPE)).plus((CoroutineContext) servicesRegistry.resolveService(new ServiceKey("sdk", Reflection.getOrCreateKotlinClass(CoroutineExceptionHandler.class)))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CoroutineScope initialize$lambda$246$lambda$7(UnityAdsModule unityAdsModule, ServicesRegistry servicesRegistry) {
        return unityAdsModule.showCoroutineScope((ISDKDispatchers) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ISDKDispatchers.class))), (CoroutineExceptionHandler) servicesRegistry.resolveService(new ServiceKey("sdk", Reflection.getOrCreateKotlinClass(CoroutineExceptionHandler.class))), (Job) servicesRegistry.resolveService(new ServiceKey(NAMED_PUBLIC_JOB, Reflection.getOrCreateKotlinClass(Job.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final WarmNonInitSignals initialize$lambda$246$lambda$70(ServicesRegistry servicesRegistry) {
        return new AndroidWarmNonInitSignals((CoroutineScope) servicesRegistry.resolveService(new ServiceKey(NAMED_DEVICE_INFO_SCOPE, Reflection.getOrCreateKotlinClass(CoroutineScope.class))), (CoroutineDispatcher) servicesRegistry.resolveService(new ServiceKey(IO_DISPATCHER, Reflection.getOrCreateKotlinClass(CoroutineDispatcher.class))), (PrivacyDeviceInfoDataSource) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(PrivacyDeviceInfoDataSource.class))), (SendDiagnosticEvent) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SendDiagnosticEvent.class))), (Logger) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Logger.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final OptimisticInitializationManager initialize$lambda$246$lambda$71(ServicesRegistry servicesRegistry) {
        return new AndroidOptimisticInitializationManager((SessionRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))), (TriggerInitializeListener) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(TriggerInitializeListener.class))), (SendDiagnosticEvent) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SendDiagnosticEvent.class))), (CoroutineScope) servicesRegistry.resolveService(new ServiceKey(NAMED_OPTIMISTIC_SCOPE, Reflection.getOrCreateKotlinClass(CoroutineScope.class))), (StaticDeviceInfoDataSource) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(StaticDeviceInfoDataSource.class))), (Logger) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Logger.class))), (CoroutineDispatcher) servicesRegistry.resolveService(new ServiceKey(IO_DISPATCHER, Reflection.getOrCreateKotlinClass(CoroutineDispatcher.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final BillingClientAdapter initialize$lambda$246$lambda$72(ServicesRegistry servicesRegistry) {
        return new BillingClientAdapterFactory().createBillingClientAdapter((Context) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Context.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ProductDetailsFetcher initialize$lambda$246$lambda$73(ServicesRegistry servicesRegistry) {
        return new ProductDetailsFetcherWithFallback(new CommonProductDetailsFetcher((BillingClientAdapter) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(BillingClientAdapter.class))), BillingClient.ProductType.INAPP), new CommonProductDetailsFetcher((BillingClientAdapter) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(BillingClientAdapter.class))), BillingClient.ProductType.SUBS));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final TransactionEventManager initialize$lambda$246$lambda$74(ServicesRegistry servicesRegistry) {
        return new TransactionEventManager((CoroutineScope) servicesRegistry.resolveService(new ServiceKey(NAMED_TRANSACTION_SCOPE, Reflection.getOrCreateKotlinClass(CoroutineScope.class))), (BillingClientAdapter) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(BillingClientAdapter.class))), (GetTransactionData) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetTransactionData.class))), (GetTransactionRequest) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetTransactionRequest.class))), (TransactionEventRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(TransactionEventRepository.class))), (ByteStringDataSource) servicesRegistry.resolveService(new ServiceKey(DATA_STORE_IAP_TRANSACTION, Reflection.getOrCreateKotlinClass(ByteStringDataSource.class))), (IsBillingClientAvailable) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(IsBillingClientAvailable.class))), (SessionRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))), (ProductDetailsFetcher) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ProductDetailsFetcher.class))), (Logger) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Logger.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AdRepository initialize$lambda$246$lambda$75() {
        return new AndroidAdRepository();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CacheRepository initialize$lambda$246$lambda$76(ServicesRegistry servicesRegistry) {
        return new AndroidCacheRepository((CoroutineDispatcher) servicesRegistry.resolveService(new ServiceKey(IO_DISPATCHER, Reflection.getOrCreateKotlinClass(CoroutineDispatcher.class))), (GetCacheDirectory) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetCacheDirectory.class))), (CacheDataSource) servicesRegistry.resolveService(new ServiceKey("local", Reflection.getOrCreateKotlinClass(CacheDataSource.class))), (CacheDataSource) servicesRegistry.resolveService(new ServiceKey(NAMED_REMOTE, Reflection.getOrCreateKotlinClass(CacheDataSource.class))), (Context) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Context.class))), (SessionRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))), (CleanupDirectory) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(CleanupDirectory.class))), (DownloadPriorityQueue) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(DownloadPriorityQueue.class))), (CreateFile) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(CreateFile.class))), (SendDiagnosticEvent) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SendDiagnosticEvent.class))), (GetAssetFileName) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetAssetFileName.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GetCacheDirectory initialize$lambda$246$lambda$77() {
        return new CommonGetCacheDirectory();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GetAssetFileName initialize$lambda$246$lambda$78() {
        return new GetAssetFileName();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CampaignRepository initialize$lambda$246$lambda$79(ServicesRegistry servicesRegistry) {
        return new AndroidCampaignRepository((GetSharedDataTimestamps) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetSharedDataTimestamps.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CoroutineScope initialize$lambda$246$lambda$8(UnityAdsModule unityAdsModule, ServicesRegistry servicesRegistry) {
        return unityAdsModule.transactionCoroutineScope((ISDKDispatchers) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ISDKDispatchers.class))), (CoroutineExceptionHandler) servicesRegistry.resolveService(new ServiceKey("sdk", Reflection.getOrCreateKotlinClass(CoroutineExceptionHandler.class))), (Job) servicesRegistry.resolveService(new ServiceKey(NAMED_PUBLIC_JOB, Reflection.getOrCreateKotlinClass(Job.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DeveloperConsentRepository initialize$lambda$246$lambda$80(ServicesRegistry servicesRegistry) {
        return new AndroidDeveloperConsentRepository((DeveloperConsentDataSource) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(DeveloperConsentDataSource.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DeviceInfoRepository initialize$lambda$246$lambda$81(ServicesRegistry servicesRegistry) {
        return new AndroidDeviceInfoRepository((StaticDeviceInfoDataSource) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(StaticDeviceInfoDataSource.class))), (DynamicDeviceInfoDataSource) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(DynamicDeviceInfoDataSource.class))), (PrivacyDeviceInfoDataSource) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(PrivacyDeviceInfoDataSource.class))), (SessionRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DiagnosticEventRepository initialize$lambda$246$lambda$82(ServicesRegistry servicesRegistry) {
        return new AndroidDiagnosticEventRepository((CoroutineTimer) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(CoroutineTimer.class))), (GetDiagnosticEventRequest) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetDiagnosticEventRequest.class))), (CoroutineDispatcher) servicesRegistry.resolveService(new ServiceKey(DEFAULT_DISPATCHER, Reflection.getOrCreateKotlinClass(CoroutineDispatcher.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LegacyUserConsentRepository initialize$lambda$246$lambda$83(ServicesRegistry servicesRegistry) {
        return new AndroidLegacyUserConsentRepository((LegacyUserConsentDataSource) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(LegacyUserConsentDataSource.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MediationProviderParser initialize$lambda$246$lambda$84() {
        return new CommonMediationProviderParser();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MediationInfoConverter initialize$lambda$246$lambda$85(ServicesRegistry servicesRegistry) {
        return new CommonMediationInfoConverter((MediationProviderParser) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(MediationProviderParser.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MediationRepository initialize$lambda$246$lambda$86(ServicesRegistry servicesRegistry) {
        return new AndroidMediationRepository((MediationDataSource) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(MediationDataSource.class))), (MediationProviderParser) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(MediationProviderParser.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final OpenMeasurementRepository initialize$lambda$246$lambda$87(ServicesRegistry servicesRegistry) {
        return new AndroidOpenMeasurementRepository((CoroutineDispatcher) servicesRegistry.resolveService(new ServiceKey(MAIN_DISPATCHER, Reflection.getOrCreateKotlinClass(CoroutineDispatcher.class))), (OmidManager) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(OmidManager.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SessionRepository initialize$lambda$246$lambda$88(ServicesRegistry servicesRegistry) {
        return new AndroidSessionRepository((ByteStringDataSource) servicesRegistry.resolveService(new ServiceKey(DATA_STORE_GATEWAY_CACHE, Reflection.getOrCreateKotlinClass(ByteStringDataSource.class))), (ByteStringDataSource) servicesRegistry.resolveService(new ServiceKey(DATA_STORE_PRIVACY, Reflection.getOrCreateKotlinClass(ByteStringDataSource.class))), (ByteStringDataSource) servicesRegistry.resolveService(new ServiceKey(DATA_STORE_PRIVACY_FSM, Reflection.getOrCreateKotlinClass(ByteStringDataSource.class))), (ByteStringDataSource) servicesRegistry.resolveService(new ServiceKey(DATA_STORE_NATIVE_CONFIG, Reflection.getOrCreateKotlinClass(ByteStringDataSource.class))), (AndroidUnityInfoDataSource) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AndroidUnityInfoDataSource.class))), (NativeConfigurationOuterClass.NativeConfiguration) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(NativeConfigurationOuterClass.NativeConfiguration.class))), (CoroutineDispatcher) servicesRegistry.resolveService(new ServiceKey(IO_DISPATCHER, Reflection.getOrCreateKotlinClass(CoroutineDispatcher.class))), (SendDiagnosticEvent) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SendDiagnosticEvent.class))), ((GatewayUrl) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GatewayUrl.class)))).m2757unboximpl(), null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final TransactionEventRepository initialize$lambda$246$lambda$89() {
        return new AndroidTransactionEventRepository();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CoroutineScope initialize$lambda$246$lambda$9(UnityAdsModule unityAdsModule, ServicesRegistry servicesRegistry) {
        return unityAdsModule.ilrdCoroutineScope((ISDKDispatchers) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ISDKDispatchers.class))), (CoroutineExceptionHandler) servicesRegistry.resolveService(new ServiceKey("sdk", Reflection.getOrCreateKotlinClass(CoroutineExceptionHandler.class))), (Job) servicesRegistry.resolveService(new ServiceKey(NAMED_PUBLIC_JOB, Reflection.getOrCreateKotlinClass(Job.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AdRevenueRepository initialize$lambda$246$lambda$90() {
        return new AndroidAdRevenueRepository();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final OperativeEventRepository initialize$lambda$246$lambda$91() {
        return new OperativeEventRepository();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ExecuteAdViewerRequest initialize$lambda$246$lambda$92(ServicesRegistry servicesRegistry) {
        return new AndroidExecuteAdViewerRequest((CoroutineDispatcher) servicesRegistry.resolveService(new ServiceKey(IO_DISPATCHER, Reflection.getOrCreateKotlinClass(CoroutineDispatcher.class))), (HttpClientProvider) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(HttpClientProvider.class))), (GetCachedAsset) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetCachedAsset.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GetByteStringId initialize$lambda$246$lambda$93() {
        return new AndroidGenerateByteStringId();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AndroidScreenshotUploader initialize$lambda$246$lambda$94(ServicesRegistry servicesRegistry) {
        return new AndroidScreenshotUploader((CoroutineDispatcher) servicesRegistry.resolveService(new ServiceKey(IO_DISPATCHER, Reflection.getOrCreateKotlinClass(CoroutineDispatcher.class))), (HttpClientProvider) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(HttpClientProvider.class))), (SessionRepository) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))), (Logger) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Logger.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final WebViewScreenCapture initialize$lambda$246$lambda$95(ServicesRegistry servicesRegistry) {
        DefaultConstructorMarker defaultConstructorMarker = null;
        return new WebViewScreenCapture((CoroutineDispatcher) servicesRegistry.resolveService(new ServiceKey(IO_DISPATCHER, Reflection.getOrCreateKotlinClass(CoroutineDispatcher.class))), (CoroutineDispatcher) servicesRegistry.resolveService(new ServiceKey(MAIN_DISPATCHER, Reflection.getOrCreateKotlinClass(CoroutineDispatcher.class))), new AndroidViewCapturer((CoroutineDispatcher) servicesRegistry.resolveService(new ServiceKey(MAIN_DISPATCHER, Reflection.getOrCreateKotlinClass(CoroutineDispatcher.class))), (CurrentActivityDataSource) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(CurrentActivityDataSource.class))), 0, 4, defaultConstructorMarker), (AndroidScreenshotUploader) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AndroidScreenshotUploader.class))), 0L, null, null, InterfaceC3669k1.d.b.j, defaultConstructorMarker);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IntentCreation initialize$lambda$246$lambda$96() {
        return new AndroidIntentCreation();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final HandleOpenUrl initialize$lambda$246$lambda$97(ServicesRegistry servicesRegistry) {
        return new AndroidHandleOpenUrl((Context) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Context.class))), (IntentCreation) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(IntentCreation.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Refresh initialize$lambda$246$lambda$98(ServicesRegistry servicesRegistry) {
        return new AndroidRefresh((CoroutineDispatcher) servicesRegistry.resolveService(new ServiceKey(DEFAULT_DISPATCHER, Reflection.getOrCreateKotlinClass(CoroutineDispatcher.class))), (GetAdDataRefreshRequest) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetAdDataRefreshRequest.class))), (GetRequestPolicy) servicesRegistry.resolveService(new ServiceKey(NAMED_AD_REQ, Reflection.getOrCreateKotlinClass(GetRequestPolicy.class))), (GatewayClient) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GatewayClient.class))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SendAdViewerRequest initialize$lambda$246$lambda$99(ServicesRegistry servicesRegistry) {
        return new AndroidSendAdViewerRequest((CoroutineDispatcher) servicesRegistry.resolveService(new ServiceKey(DEFAULT_DISPATCHER, Reflection.getOrCreateKotlinClass(CoroutineDispatcher.class))), (GetAdViewerRequest) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetAdViewerRequest.class))), (GetRequestPolicy) servicesRegistry.resolveService(new ServiceKey(NAMED_AD_REQ, Reflection.getOrCreateKotlinClass(GetRequestPolicy.class))), (GatewayClient) servicesRegistry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GatewayClient.class))));
    }

    @Override // com.unity3d.services.core.di.IServiceProvider
    public IServicesRegistry getRegistry() {
        return serviceRegistry;
    }

    @Override // com.unity3d.services.core.di.IServiceProvider
    public IServicesRegistry initialize() {
        return ServicesRegistryKt.registry(new Function1() { // from class: com.unity3d.services.core.di.ServiceProvider$$ExternalSyntheticLambda0
            @Override // p005kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ServiceProvider.initialize$lambda$246((ServicesRegistry) obj);
            }
        });
    }
}
