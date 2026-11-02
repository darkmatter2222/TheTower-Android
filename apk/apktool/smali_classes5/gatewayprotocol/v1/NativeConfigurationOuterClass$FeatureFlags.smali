.class public final Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NativeConfigurationOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlagsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/NativeConfigurationOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FeatureFlags"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;",
        "Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags$Builder;",
        ">;",
        "Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlagsOrBuilder;"
    }
.end annotation


# static fields
.field public static final APP_SHEET_BUG_CHECK_ENABLED_FIELD_NUMBER:I = 0x4

.field public static final BOLD_SDK_NEXT_SESSION_ENABLED_FIELD_NUMBER:I = 0x3

.field public static final COLLECT_ACCELEROMETER_FIELD_NUMBER:I = 0x16

.field public static final COLLECT_GOOGLE_APP_ID_FIELD_NUMBER:I = 0x12

.field public static final COLLECT_ILR_DATA_FIELD_NUMBER:I = 0x8

.field public static final COLLECT_LIFECYCLE_EVENTS_FIELD_NUMBER:I = 0xf

.field private static final DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;

.field public static final DISABLE_CUSTOM_SCHEME_FIELD_NUMBER:I = 0xa

.field public static final DISABLE_GRID_COLLECTION_FIELD_NUMBER:I = 0x9

.field public static final ENABLE_COHERENCE_LIBRARY_FIELD_NUMBER:I = 0x13

.field public static final ENABLE_DATA_LIBRARY_REQUEST_ATTRIBUTES_FIELD_NUMBER:I = 0x21

.field public static final ENABLE_DATA_LIBRARY_TOKEN_ATTRIBUTES_FIELD_NUMBER:I = 0x1f

.field public static final ENABLE_DATA_LIBRARY_WASM_DATA_FIELD_NUMBER:I = 0x20

.field public static final ENABLE_WEB_VIEW_PROBE_FIELD_NUMBER:I = 0x22

.field public static final ENSURE_CACHE_FOLDER_EXISTENCES_FIELD_NUMBER:I = 0xd

.field public static final FULLSCREEN_NAV_BAR_MODE_FIELD_NUMBER:I = 0x14

.field public static final MEASURE_BRIDGE_PERFORMANCE_FIELD_NUMBER:I = 0x18

.field public static final NATIVE_START_MODE_FIELD_NUMBER:I = 0x10

.field public static final OPENGL_GPU_ENABLED_FIELD_NUMBER:I = 0x1

.field public static final OPPORTUNITY_ID_PLACEMENT_VALIDATION_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRE_SHOW_WEBVIEW_STRATEGY_FIELD_NUMBER:I = 0x19

.field public static final RECOVER_FULLSCREEN_DISPLAY_ENABLED_FIELD_NUMBER:I = 0x1d

.field public static final RECOVER_FULLSCREEN_DISPLAY_MAX_BACKGROUND_AGE_MS_FIELD_NUMBER:I = 0x1e

.field public static final RECOVER_TERMINATED_WEBVIEWS_FIELD_NUMBER:I = 0x5

.field public static final RETRY_SHOW_WITH_CURRENT_ACTIVITY_FIELD_NUMBER:I = 0x1c

.field public static final SHOULD_ALLOW_FETCH_TO_ACCESS_CACHE_FIELD_NUMBER:I = 0x17

.field public static final SHOULD_HANDLE_WEBVIEW_CACHING_FIELD_NUMBER:I = 0x6

.field public static final SHOULD_INIT_ADQ_WITH_GAME_ID_FIELD_NUMBER:I = 0x15

.field public static final SHOULD_SEND_IAP_HISTORY_FIELD_NUMBER:I = 0x7

.field public static final USE_CURRENT_ACTIVITY_FOR_SHOW_FIELD_NUMBER:I = 0x1b

.field public static final USE_FILES_DIR_FIELD_NUMBER:I = 0xb

.field public static final USE_OPTIMISTIC_WEBVIEW_CACHE_FIELD_NUMBER:I = 0x11

.field public static final USE_TRY_CATCH_IN_DOWNLOAD_QUEUE_FIELD_NUMBER:I = 0xc

.field public static final WEBVIEW_LESS_LOAD_PARALLEL_ACTIVITY_LAUNCH_FIELD_NUMBER:I = 0xe

.field public static final WEBVIEW_POOL_SIZE_FIELD_NUMBER:I = 0x1a


# instance fields
.field private appSheetBugCheckEnabled_:Z

.field private boldSdkNextSessionEnabled_:Z

.field private collectAccelerometer_:Z

.field private collectGoogleAppId_:Z

.field private collectIlrData_:Z

.field private collectLifecycleEvents_:Z

.field private disableCustomScheme_:Z

.field private disableGridCollection_:Z

.field private enableCoherenceLibrary_:Z

.field private enableDataLibraryRequestAttributes_:Z

.field private enableDataLibraryTokenAttributes_:Z

.field private enableDataLibraryWasmData_:Z

.field private enableWebViewProbe_:Z

.field private ensureCacheFolderExistences_:Z

.field private fullscreenNavBarMode_:I

.field private measureBridgePerformance_:Z

.field private nativeStartMode_:I

.field private openglGpuEnabled_:Z

.field private opportunityIdPlacementValidation_:Z

.field private preShowWebviewStrategy_:I

.field private recoverFullscreenDisplayEnabled_:Z

.field private recoverFullscreenDisplayMaxBackgroundAgeMs_:I

.field private recoverTerminatedWebviews_:Z

.field private retryShowWithCurrentActivity_:Z

.field private shouldAllowFetchToAccessCache_:Z

.field private shouldHandleWebviewCaching_:Z

.field private shouldInitAdqWithGameId_:Z

.field private shouldSendIapHistory_:Z

.field private useCurrentActivityForShow_:Z

.field private useFilesDir_:Z

.field private useOptimisticWebviewCache_:Z

.field private useTryCatchInDownloadQueue_:Z

.field private webviewLessLoadParallelActivityLaunch_:Z

.field private webviewPoolSize_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12722
    new-instance v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;

    invoke-direct {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;-><init>()V

    .line 12725
    sput-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;

    .line 12726
    const-class v1, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9613
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$15400()Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;
    .locals 1

    .line 9608
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;

    return-object v0
.end method

.method static synthetic access$15500(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;Z)V
    .locals 0

    .line 9608
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->setOpenglGpuEnabled(Z)V

    return-void
.end method

.method static synthetic access$15600(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;)V
    .locals 0

    .line 9608
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->clearOpenglGpuEnabled()V

    return-void
.end method

.method static synthetic access$15700(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;Z)V
    .locals 0

    .line 9608
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->setOpportunityIdPlacementValidation(Z)V

    return-void
.end method

.method static synthetic access$15800(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;)V
    .locals 0

    .line 9608
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->clearOpportunityIdPlacementValidation()V

    return-void
.end method

.method static synthetic access$15900(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;Z)V
    .locals 0

    .line 9608
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->setBoldSdkNextSessionEnabled(Z)V

    return-void
.end method

.method static synthetic access$16000(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;)V
    .locals 0

    .line 9608
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->clearBoldSdkNextSessionEnabled()V

    return-void
.end method

.method static synthetic access$16100(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;Z)V
    .locals 0

    .line 9608
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->setAppSheetBugCheckEnabled(Z)V

    return-void
.end method

.method static synthetic access$16200(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;)V
    .locals 0

    .line 9608
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->clearAppSheetBugCheckEnabled()V

    return-void
.end method

.method static synthetic access$16300(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;Z)V
    .locals 0

    .line 9608
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->setRecoverTerminatedWebviews(Z)V

    return-void
.end method

.method static synthetic access$16400(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;)V
    .locals 0

    .line 9608
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->clearRecoverTerminatedWebviews()V

    return-void
.end method

.method static synthetic access$16500(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;Z)V
    .locals 0

    .line 9608
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->setShouldHandleWebviewCaching(Z)V

    return-void
.end method

.method static synthetic access$16600(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;)V
    .locals 0

    .line 9608
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->clearShouldHandleWebviewCaching()V

    return-void
.end method

.method static synthetic access$16700(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;Z)V
    .locals 0

    .line 9608
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->setShouldSendIapHistory(Z)V

    return-void
.end method

.method static synthetic access$16800(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;)V
    .locals 0

    .line 9608
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->clearShouldSendIapHistory()V

    return-void
.end method

.method static synthetic access$16900(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;Z)V
    .locals 0

    .line 9608
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->setCollectIlrData(Z)V

    return-void
.end method

.method static synthetic access$17000(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;)V
    .locals 0

    .line 9608
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->clearCollectIlrData()V

    return-void
.end method

.method static synthetic access$17100(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;Z)V
    .locals 0

    .line 9608
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->setDisableGridCollection(Z)V

    return-void
.end method

.method static synthetic access$17200(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;)V
    .locals 0

    .line 9608
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->clearDisableGridCollection()V

    return-void
.end method

.method static synthetic access$17300(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;Z)V
    .locals 0

    .line 9608
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->setDisableCustomScheme(Z)V

    return-void
.end method

.method static synthetic access$17400(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;)V
    .locals 0

    .line 9608
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->clearDisableCustomScheme()V

    return-void
.end method

.method static synthetic access$17500(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;Z)V
    .locals 0

    .line 9608
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->setUseFilesDir(Z)V

    return-void
.end method

.method static synthetic access$17600(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;)V
    .locals 0

    .line 9608
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->clearUseFilesDir()V

    return-void
.end method

.method static synthetic access$17700(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;Z)V
    .locals 0

    .line 9608
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->setUseTryCatchInDownloadQueue(Z)V

    return-void
.end method

.method static synthetic access$17800(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;)V
    .locals 0

    .line 9608
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->clearUseTryCatchInDownloadQueue()V

    return-void
.end method

.method static synthetic access$17900(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;Z)V
    .locals 0

    .line 9608
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->setEnsureCacheFolderExistences(Z)V

    return-void
.end method

.method static synthetic access$18000(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;)V
    .locals 0

    .line 9608
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->clearEnsureCacheFolderExistences()V

    return-void
.end method

.method static synthetic access$18100(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;Z)V
    .locals 0

    .line 9608
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->setWebviewLessLoadParallelActivityLaunch(Z)V

    return-void
.end method

.method static synthetic access$18200(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;)V
    .locals 0

    .line 9608
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->clearWebviewLessLoadParallelActivityLaunch()V

    return-void
.end method

.method static synthetic access$18300(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;Z)V
    .locals 0

    .line 9608
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->setCollectLifecycleEvents(Z)V

    return-void
.end method

.method static synthetic access$18400(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;)V
    .locals 0

    .line 9608
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->clearCollectLifecycleEvents()V

    return-void
.end method

.method static synthetic access$18500(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;I)V
    .locals 0

    .line 9608
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->setNativeStartModeValue(I)V

    return-void
.end method

.method static synthetic access$18600(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;)V
    .locals 0

    .line 9608
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->setNativeStartMode(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;)V

    return-void
.end method

.method static synthetic access$18700(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;)V
    .locals 0

    .line 9608
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->clearNativeStartMode()V

    return-void
.end method

.method static synthetic access$18800(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;Z)V
    .locals 0

    .line 9608
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->setUseOptimisticWebviewCache(Z)V

    return-void
.end method

.method static synthetic access$18900(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;)V
    .locals 0

    .line 9608
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->clearUseOptimisticWebviewCache()V

    return-void
.end method

.method static synthetic access$19000(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;Z)V
    .locals 0

    .line 9608
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->setCollectGoogleAppId(Z)V

    return-void
.end method

.method static synthetic access$19100(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;)V
    .locals 0

    .line 9608
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->clearCollectGoogleAppId()V

    return-void
.end method

.method static synthetic access$19200(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;Z)V
    .locals 0

    .line 9608
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->setEnableCoherenceLibrary(Z)V

    return-void
.end method

.method static synthetic access$19300(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;)V
    .locals 0

    .line 9608
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->clearEnableCoherenceLibrary()V

    return-void
.end method

.method static synthetic access$19400(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;I)V
    .locals 0

    .line 9608
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->setFullscreenNavBarModeValue(I)V

    return-void
.end method

.method static synthetic access$19500(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;)V
    .locals 0

    .line 9608
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->setFullscreenNavBarMode(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;)V

    return-void
.end method

.method static synthetic access$19600(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;)V
    .locals 0

    .line 9608
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->clearFullscreenNavBarMode()V

    return-void
.end method

.method static synthetic access$19700(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;Z)V
    .locals 0

    .line 9608
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->setShouldInitAdqWithGameId(Z)V

    return-void
.end method

.method static synthetic access$19800(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;)V
    .locals 0

    .line 9608
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->clearShouldInitAdqWithGameId()V

    return-void
.end method

.method static synthetic access$19900(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;Z)V
    .locals 0

    .line 9608
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->setCollectAccelerometer(Z)V

    return-void
.end method

.method static synthetic access$20000(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;)V
    .locals 0

    .line 9608
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->clearCollectAccelerometer()V

    return-void
.end method

.method static synthetic access$20100(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;Z)V
    .locals 0

    .line 9608
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->setShouldAllowFetchToAccessCache(Z)V

    return-void
.end method

.method static synthetic access$20200(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;)V
    .locals 0

    .line 9608
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->clearShouldAllowFetchToAccessCache()V

    return-void
.end method

.method static synthetic access$20300(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;Z)V
    .locals 0

    .line 9608
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->setMeasureBridgePerformance(Z)V

    return-void
.end method

.method static synthetic access$20400(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;)V
    .locals 0

    .line 9608
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->clearMeasureBridgePerformance()V

    return-void
.end method

.method static synthetic access$20500(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;I)V
    .locals 0

    .line 9608
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->setPreShowWebviewStrategyValue(I)V

    return-void
.end method

.method static synthetic access$20600(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;Lgatewayprotocol/v1/NativeConfigurationOuterClass$PreShowWebViewStrategy;)V
    .locals 0

    .line 9608
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->setPreShowWebviewStrategy(Lgatewayprotocol/v1/NativeConfigurationOuterClass$PreShowWebViewStrategy;)V

    return-void
.end method

.method static synthetic access$20700(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;)V
    .locals 0

    .line 9608
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->clearPreShowWebviewStrategy()V

    return-void
.end method

.method static synthetic access$20800(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;I)V
    .locals 0

    .line 9608
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->setWebviewPoolSize(I)V

    return-void
.end method

.method static synthetic access$20900(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;)V
    .locals 0

    .line 9608
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->clearWebviewPoolSize()V

    return-void
.end method

.method static synthetic access$21000(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;Z)V
    .locals 0

    .line 9608
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->setUseCurrentActivityForShow(Z)V

    return-void
.end method

.method static synthetic access$21100(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;)V
    .locals 0

    .line 9608
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->clearUseCurrentActivityForShow()V

    return-void
.end method

.method static synthetic access$21200(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;Z)V
    .locals 0

    .line 9608
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->setRetryShowWithCurrentActivity(Z)V

    return-void
.end method

.method static synthetic access$21300(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;)V
    .locals 0

    .line 9608
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->clearRetryShowWithCurrentActivity()V

    return-void
.end method

.method static synthetic access$21400(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;Z)V
    .locals 0

    .line 9608
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->setRecoverFullscreenDisplayEnabled(Z)V

    return-void
.end method

.method static synthetic access$21500(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;)V
    .locals 0

    .line 9608
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->clearRecoverFullscreenDisplayEnabled()V

    return-void
.end method

.method static synthetic access$21600(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;I)V
    .locals 0

    .line 9608
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->setRecoverFullscreenDisplayMaxBackgroundAgeMs(I)V

    return-void
.end method

.method static synthetic access$21700(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;)V
    .locals 0

    .line 9608
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->clearRecoverFullscreenDisplayMaxBackgroundAgeMs()V

    return-void
.end method

.method static synthetic access$21800(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;Z)V
    .locals 0

    .line 9608
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->setEnableDataLibraryTokenAttributes(Z)V

    return-void
.end method

.method static synthetic access$21900(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;)V
    .locals 0

    .line 9608
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->clearEnableDataLibraryTokenAttributes()V

    return-void
.end method

.method static synthetic access$22000(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;Z)V
    .locals 0

    .line 9608
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->setEnableDataLibraryWasmData(Z)V

    return-void
.end method

.method static synthetic access$22100(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;)V
    .locals 0

    .line 9608
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->clearEnableDataLibraryWasmData()V

    return-void
.end method

.method static synthetic access$22200(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;Z)V
    .locals 0

    .line 9608
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->setEnableDataLibraryRequestAttributes(Z)V

    return-void
.end method

.method static synthetic access$22300(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;)V
    .locals 0

    .line 9608
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->clearEnableDataLibraryRequestAttributes()V

    return-void
.end method

.method static synthetic access$22400(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;Z)V
    .locals 0

    .line 9608
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->setEnableWebViewProbe(Z)V

    return-void
.end method

.method static synthetic access$22500(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;)V
    .locals 0

    .line 9608
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->clearEnableWebViewProbe()V

    return-void
.end method

.method private clearAppSheetBugCheckEnabled()V
    .locals 1

    const/4 v0, 0x0

    .line 9764
    iput-boolean v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->appSheetBugCheckEnabled_:Z

    return-void
.end method

.method private clearBoldSdkNextSessionEnabled()V
    .locals 1

    const/4 v0, 0x0

    .line 9726
    iput-boolean v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->boldSdkNextSessionEnabled_:Z

    return-void
.end method

.method private clearCollectAccelerometer()V
    .locals 1

    const/4 v0, 0x0

    .line 10511
    iput-boolean v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->collectAccelerometer_:Z

    return-void
.end method

.method private clearCollectGoogleAppId()V
    .locals 1

    const/4 v0, 0x0

    .line 10323
    iput-boolean v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->collectGoogleAppId_:Z

    return-void
.end method

.method private clearCollectIlrData()V
    .locals 1

    const/4 v0, 0x0

    .line 9916
    iput-boolean v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->collectIlrData_:Z

    return-void
.end method

.method private clearCollectLifecycleEvents()V
    .locals 1

    const/4 v0, 0x0

    .line 10185
    iput-boolean v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->collectLifecycleEvents_:Z

    return-void
.end method

.method private clearDisableCustomScheme()V
    .locals 1

    const/4 v0, 0x0

    .line 9992
    iput-boolean v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->disableCustomScheme_:Z

    return-void
.end method

.method private clearDisableGridCollection()V
    .locals 1

    const/4 v0, 0x0

    .line 9954
    iput-boolean v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->disableGridCollection_:Z

    return-void
.end method

.method private clearEnableCoherenceLibrary()V
    .locals 1

    const/4 v0, 0x0

    .line 10367
    iput-boolean v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->enableCoherenceLibrary_:Z

    return-void
.end method

.method private clearEnableDataLibraryRequestAttributes()V
    .locals 1

    const/4 v0, 0x0

    .line 10988
    iput-boolean v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->enableDataLibraryRequestAttributes_:Z

    return-void
.end method

.method private clearEnableDataLibraryTokenAttributes()V
    .locals 1

    const/4 v0, 0x0

    .line 10900
    iput-boolean v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->enableDataLibraryTokenAttributes_:Z

    return-void
.end method

.method private clearEnableDataLibraryWasmData()V
    .locals 1

    const/4 v0, 0x0

    .line 10944
    iput-boolean v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->enableDataLibraryWasmData_:Z

    return-void
.end method

.method private clearEnableWebViewProbe()V
    .locals 1

    const/4 v0, 0x0

    .line 11032
    iput-boolean v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->enableWebViewProbe_:Z

    return-void
.end method

.method private clearEnsureCacheFolderExistences()V
    .locals 1

    const/4 v0, 0x0

    .line 10106
    iput-boolean v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->ensureCacheFolderExistences_:Z

    return-void
.end method

.method private clearFullscreenNavBarMode()V
    .locals 1

    const/4 v0, 0x0

    .line 10429
    iput v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->fullscreenNavBarMode_:I

    return-void
.end method

.method private clearMeasureBridgePerformance()V
    .locals 1

    const/4 v0, 0x0

    .line 10593
    iput-boolean v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->measureBridgePerformance_:Z

    return-void
.end method

.method private clearNativeStartMode()V
    .locals 1

    const/4 v0, 0x0

    .line 10247
    iput v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->nativeStartMode_:I

    return-void
.end method

.method private clearOpenglGpuEnabled()V
    .locals 1

    const/4 v0, 0x0

    .line 9650
    iput-boolean v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->openglGpuEnabled_:Z

    return-void
.end method

.method private clearOpportunityIdPlacementValidation()V
    .locals 1

    const/4 v0, 0x0

    .line 9688
    iput-boolean v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->opportunityIdPlacementValidation_:Z

    return-void
.end method

.method private clearPreShowWebviewStrategy()V
    .locals 1

    const/4 v0, 0x0

    .line 10660
    iput v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->preShowWebviewStrategy_:I

    return-void
.end method

.method private clearRecoverFullscreenDisplayEnabled()V
    .locals 1

    const/4 v0, 0x0

    .line 10821
    iput-boolean v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->recoverFullscreenDisplayEnabled_:Z

    return-void
.end method

.method private clearRecoverFullscreenDisplayMaxBackgroundAgeMs()V
    .locals 1

    const/4 v0, 0x0

    .line 10859
    iput v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->recoverFullscreenDisplayMaxBackgroundAgeMs_:I

    return-void
.end method

.method private clearRecoverTerminatedWebviews()V
    .locals 1

    const/4 v0, 0x0

    .line 9802
    iput-boolean v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->recoverTerminatedWebviews_:Z

    return-void
.end method

.method private clearRetryShowWithCurrentActivity()V
    .locals 1

    const/4 v0, 0x0

    .line 10783
    iput-boolean v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->retryShowWithCurrentActivity_:Z

    return-void
.end method

.method private clearShouldAllowFetchToAccessCache()V
    .locals 1

    const/4 v0, 0x0

    .line 10552
    iput-boolean v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->shouldAllowFetchToAccessCache_:Z

    return-void
.end method

.method private clearShouldHandleWebviewCaching()V
    .locals 1

    const/4 v0, 0x0

    .line 9840
    iput-boolean v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->shouldHandleWebviewCaching_:Z

    return-void
.end method

.method private clearShouldInitAdqWithGameId()V
    .locals 1

    const/4 v0, 0x0

    .line 10467
    iput-boolean v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->shouldInitAdqWithGameId_:Z

    return-void
.end method

.method private clearShouldSendIapHistory()V
    .locals 1

    const/4 v0, 0x0

    .line 9878
    iput-boolean v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->shouldSendIapHistory_:Z

    return-void
.end method

.method private clearUseCurrentActivityForShow()V
    .locals 1

    const/4 v0, 0x0

    .line 10742
    iput-boolean v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->useCurrentActivityForShow_:Z

    return-void
.end method

.method private clearUseFilesDir()V
    .locals 1

    const/4 v0, 0x0

    .line 10030
    iput-boolean v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->useFilesDir_:Z

    return-void
.end method

.method private clearUseOptimisticWebviewCache()V
    .locals 1

    const/4 v0, 0x0

    .line 10285
    iput-boolean v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->useOptimisticWebviewCache_:Z

    return-void
.end method

.method private clearUseTryCatchInDownloadQueue()V
    .locals 1

    const/4 v0, 0x0

    .line 10068
    iput-boolean v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->useTryCatchInDownloadQueue_:Z

    return-void
.end method

.method private clearWebviewLessLoadParallelActivityLaunch()V
    .locals 1

    const/4 v0, 0x0

    .line 10147
    iput-boolean v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->webviewLessLoadParallelActivityLaunch_:Z

    return-void
.end method

.method private clearWebviewPoolSize()V
    .locals 1

    const/4 v0, 0x0

    .line 10701
    iput v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->webviewPoolSize_:I

    return-void
.end method

.method public static getDefaultInstance()Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;
    .locals 1

    .line 12731
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;

    return-object v0
.end method

.method public static newBuilder()Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags$Builder;
    .locals 1

    .line 11112
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags$Builder;

    return-object v0
.end method

.method public static newBuilder(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags$Builder;
    .locals 1

    .line 11115
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;

    invoke-virtual {v0, p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11088
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;

    invoke-static {v0, p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11095
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;

    invoke-static {v0, p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11051
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11058
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11100
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11107
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11075
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11082
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11038
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11045
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;

    return-object p0
.end method

.method public static parseFrom([B)Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11063
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11070
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;",
            ">;"
        }
    .end annotation

    .line 12737
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAppSheetBugCheckEnabled(Z)V
    .locals 0

    .line 9753
    iput-boolean p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->appSheetBugCheckEnabled_:Z

    return-void
.end method

.method private setBoldSdkNextSessionEnabled(Z)V
    .locals 0

    .line 9715
    iput-boolean p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->boldSdkNextSessionEnabled_:Z

    return-void
.end method

.method private setCollectAccelerometer(Z)V
    .locals 0

    .line 10498
    iput-boolean p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->collectAccelerometer_:Z

    return-void
.end method

.method private setCollectGoogleAppId(Z)V
    .locals 0

    .line 10312
    iput-boolean p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->collectGoogleAppId_:Z

    return-void
.end method

.method private setCollectIlrData(Z)V
    .locals 0

    .line 9905
    iput-boolean p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->collectIlrData_:Z

    return-void
.end method

.method private setCollectLifecycleEvents(Z)V
    .locals 0

    .line 10174
    iput-boolean p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->collectLifecycleEvents_:Z

    return-void
.end method

.method private setDisableCustomScheme(Z)V
    .locals 0

    .line 9981
    iput-boolean p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->disableCustomScheme_:Z

    return-void
.end method

.method private setDisableGridCollection(Z)V
    .locals 0

    .line 9943
    iput-boolean p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->disableGridCollection_:Z

    return-void
.end method

.method private setEnableCoherenceLibrary(Z)V
    .locals 0

    .line 10354
    iput-boolean p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->enableCoherenceLibrary_:Z

    return-void
.end method

.method private setEnableDataLibraryRequestAttributes(Z)V
    .locals 0

    .line 10975
    iput-boolean p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->enableDataLibraryRequestAttributes_:Z

    return-void
.end method

.method private setEnableDataLibraryTokenAttributes(Z)V
    .locals 0

    .line 10888
    iput-boolean p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->enableDataLibraryTokenAttributes_:Z

    return-void
.end method

.method private setEnableDataLibraryWasmData(Z)V
    .locals 0

    .line 10931
    iput-boolean p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->enableDataLibraryWasmData_:Z

    return-void
.end method

.method private setEnableWebViewProbe(Z)V
    .locals 0

    .line 11019
    iput-boolean p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->enableWebViewProbe_:Z

    return-void
.end method

.method private setEnsureCacheFolderExistences(Z)V
    .locals 0

    .line 10095
    iput-boolean p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->ensureCacheFolderExistences_:Z

    return-void
.end method

.method private setFullscreenNavBarMode(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;)V
    .locals 0

    .line 10417
    invoke-virtual {p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;->getNumber()I

    move-result p1

    iput p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->fullscreenNavBarMode_:I

    return-void
.end method

.method private setFullscreenNavBarModeValue(I)V
    .locals 0

    .line 10406
    iput p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->fullscreenNavBarMode_:I

    return-void
.end method

.method private setMeasureBridgePerformance(Z)V
    .locals 0

    .line 10581
    iput-boolean p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->measureBridgePerformance_:Z

    return-void
.end method

.method private setNativeStartMode(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;)V
    .locals 0

    .line 10235
    invoke-virtual {p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;->getNumber()I

    move-result p1

    iput p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->nativeStartMode_:I

    return-void
.end method

.method private setNativeStartModeValue(I)V
    .locals 0

    .line 10224
    iput p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->nativeStartMode_:I

    return-void
.end method

.method private setOpenglGpuEnabled(Z)V
    .locals 0

    .line 9639
    iput-boolean p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->openglGpuEnabled_:Z

    return-void
.end method

.method private setOpportunityIdPlacementValidation(Z)V
    .locals 0

    .line 9677
    iput-boolean p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->opportunityIdPlacementValidation_:Z

    return-void
.end method

.method private setPreShowWebviewStrategy(Lgatewayprotocol/v1/NativeConfigurationOuterClass$PreShowWebViewStrategy;)V
    .locals 0

    .line 10647
    invoke-virtual {p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$PreShowWebViewStrategy;->getNumber()I

    move-result p1

    iput p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->preShowWebviewStrategy_:I

    return-void
.end method

.method private setPreShowWebviewStrategyValue(I)V
    .locals 0

    .line 10635
    iput p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->preShowWebviewStrategy_:I

    return-void
.end method

.method private setRecoverFullscreenDisplayEnabled(Z)V
    .locals 0

    .line 10810
    iput-boolean p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->recoverFullscreenDisplayEnabled_:Z

    return-void
.end method

.method private setRecoverFullscreenDisplayMaxBackgroundAgeMs(I)V
    .locals 0

    .line 10848
    iput p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->recoverFullscreenDisplayMaxBackgroundAgeMs_:I

    return-void
.end method

.method private setRecoverTerminatedWebviews(Z)V
    .locals 0

    .line 9791
    iput-boolean p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->recoverTerminatedWebviews_:Z

    return-void
.end method

.method private setRetryShowWithCurrentActivity(Z)V
    .locals 0

    .line 10771
    iput-boolean p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->retryShowWithCurrentActivity_:Z

    return-void
.end method

.method private setShouldAllowFetchToAccessCache(Z)V
    .locals 0

    .line 10540
    iput-boolean p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->shouldAllowFetchToAccessCache_:Z

    return-void
.end method

.method private setShouldHandleWebviewCaching(Z)V
    .locals 0

    .line 9829
    iput-boolean p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->shouldHandleWebviewCaching_:Z

    return-void
.end method

.method private setShouldInitAdqWithGameId(Z)V
    .locals 0

    .line 10456
    iput-boolean p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->shouldInitAdqWithGameId_:Z

    return-void
.end method

.method private setShouldSendIapHistory(Z)V
    .locals 0

    .line 9867
    iput-boolean p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->shouldSendIapHistory_:Z

    return-void
.end method

.method private setUseCurrentActivityForShow(Z)V
    .locals 0

    .line 10730
    iput-boolean p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->useCurrentActivityForShow_:Z

    return-void
.end method

.method private setUseFilesDir(Z)V
    .locals 0

    .line 10019
    iput-boolean p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->useFilesDir_:Z

    return-void
.end method

.method private setUseOptimisticWebviewCache(Z)V
    .locals 0

    .line 10274
    iput-boolean p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->useOptimisticWebviewCache_:Z

    return-void
.end method

.method private setUseTryCatchInDownloadQueue(Z)V
    .locals 0

    .line 10057
    iput-boolean p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->useTryCatchInDownloadQueue_:Z

    return-void
.end method

.method private setWebviewLessLoadParallelActivityLaunch(Z)V
    .locals 0

    .line 10135
    iput-boolean p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->webviewLessLoadParallelActivityLaunch_:Z

    return-void
.end method

.method private setWebviewPoolSize(I)V
    .locals 0

    .line 10689
    iput p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->webviewPoolSize_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 36

    .line 12637
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 12715
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_0
    return-object v1

    :pswitch_1
    const/4 v0, 0x1

    .line 12709
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 12694
    :pswitch_2
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_1

    .line 12696
    const-class v1, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;

    monitor-enter v1

    .line 12697
    :try_start_0
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_0

    .line 12699
    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v2, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;

    invoke-direct {v0, v2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 12702
    sput-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->PARSER:Lcom/google/protobuf/Parser;

    .line 12704
    :cond_0
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    return-object v0

    .line 12691
    :pswitch_3
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;

    return-object v0

    .line 12645
    :pswitch_4
    const-string v2, "openglGpuEnabled_"

    const-string v3, "opportunityIdPlacementValidation_"

    const-string v4, "boldSdkNextSessionEnabled_"

    const-string v5, "appSheetBugCheckEnabled_"

    const-string v6, "recoverTerminatedWebviews_"

    const-string v7, "shouldHandleWebviewCaching_"

    const-string v8, "shouldSendIapHistory_"

    const-string v9, "collectIlrData_"

    const-string v10, "disableGridCollection_"

    const-string v11, "disableCustomScheme_"

    const-string v12, "useFilesDir_"

    const-string v13, "useTryCatchInDownloadQueue_"

    const-string v14, "ensureCacheFolderExistences_"

    const-string v15, "webviewLessLoadParallelActivityLaunch_"

    const-string v16, "collectLifecycleEvents_"

    const-string v17, "nativeStartMode_"

    const-string v18, "useOptimisticWebviewCache_"

    const-string v19, "collectGoogleAppId_"

    const-string v20, "enableCoherenceLibrary_"

    const-string v21, "fullscreenNavBarMode_"

    const-string v22, "shouldInitAdqWithGameId_"

    const-string v23, "collectAccelerometer_"

    const-string v24, "shouldAllowFetchToAccessCache_"

    const-string v25, "measureBridgePerformance_"

    const-string v26, "preShowWebviewStrategy_"

    const-string v27, "webviewPoolSize_"

    const-string v28, "useCurrentActivityForShow_"

    const-string v29, "retryShowWithCurrentActivity_"

    const-string v30, "recoverFullscreenDisplayEnabled_"

    const-string v31, "recoverFullscreenDisplayMaxBackgroundAgeMs_"

    const-string v32, "enableDataLibraryTokenAttributes_"

    const-string v33, "enableDataLibraryWasmData_"

    const-string v34, "enableDataLibraryRequestAttributes_"

    const-string v35, "enableWebViewProbe_"

    filled-new-array/range {v2 .. v35}, [Ljava/lang/Object;

    move-result-object v0

    .line 12681
    const-string v1, "\u0000\"\u0000\u0000\u0001\"\"\u0000\u0000\u0000\u0001\u0007\u0002\u0007\u0003\u0007\u0004\u0007\u0005\u0007\u0006\u0007\u0007\u0007\u0008\u0007\t\u0007\n\u0007\u000b\u0007\u000c\u0007\r\u0007\u000e\u0007\u000f\u0007\u0010\u000c\u0011\u0007\u0012\u0007\u0013\u0007\u0014\u000c\u0015\u0007\u0016\u0007\u0017\u0007\u0018\u0007\u0019\u000c\u001a\u0004\u001b\u0007\u001c\u0007\u001d\u0007\u001e\u000b\u001f\u0007 \u0007!\u0007\"\u0007"

    .line 12687
    sget-object v2, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;

    invoke-static {v2, v1, v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 12642
    :pswitch_5
    new-instance v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags$Builder;

    invoke-direct {v0, v1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags$Builder;-><init>(Lgatewayprotocol/v1/NativeConfigurationOuterClass$1;)V

    return-object v0

    .line 12639
    :pswitch_6
    new-instance v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;

    invoke-direct {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;-><init>()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAppSheetBugCheckEnabled()Z
    .locals 1

    .line 9741
    iget-boolean v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->appSheetBugCheckEnabled_:Z

    return v0
.end method

.method public getBoldSdkNextSessionEnabled()Z
    .locals 1

    .line 9703
    iget-boolean v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->boldSdkNextSessionEnabled_:Z

    return v0
.end method

.method public getCollectAccelerometer()Z
    .locals 1

    .line 10484
    iget-boolean v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->collectAccelerometer_:Z

    return v0
.end method

.method public getCollectGoogleAppId()Z
    .locals 1

    .line 10300
    iget-boolean v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->collectGoogleAppId_:Z

    return v0
.end method

.method public getCollectIlrData()Z
    .locals 1

    .line 9893
    iget-boolean v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->collectIlrData_:Z

    return v0
.end method

.method public getCollectLifecycleEvents()Z
    .locals 1

    .line 10162
    iget-boolean v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->collectLifecycleEvents_:Z

    return v0
.end method

.method public getDisableCustomScheme()Z
    .locals 1

    .line 9969
    iget-boolean v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->disableCustomScheme_:Z

    return v0
.end method

.method public getDisableGridCollection()Z
    .locals 1

    .line 9931
    iget-boolean v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->disableGridCollection_:Z

    return v0
.end method

.method public getEnableCoherenceLibrary()Z
    .locals 1

    .line 10340
    iget-boolean v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->enableCoherenceLibrary_:Z

    return v0
.end method

.method public getEnableDataLibraryRequestAttributes()Z
    .locals 1

    .line 10961
    iget-boolean v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->enableDataLibraryRequestAttributes_:Z

    return v0
.end method

.method public getEnableDataLibraryTokenAttributes()Z
    .locals 1

    .line 10875
    iget-boolean v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->enableDataLibraryTokenAttributes_:Z

    return v0
.end method

.method public getEnableDataLibraryWasmData()Z
    .locals 1

    .line 10917
    iget-boolean v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->enableDataLibraryWasmData_:Z

    return v0
.end method

.method public getEnableWebViewProbe()Z
    .locals 1

    .line 11005
    iget-boolean v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->enableWebViewProbe_:Z

    return v0
.end method

.method public getEnsureCacheFolderExistences()Z
    .locals 1

    .line 10083
    iget-boolean v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->ensureCacheFolderExistences_:Z

    return v0
.end method

.method public getFullscreenNavBarMode()Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;
    .locals 1

    .line 10394
    iget v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->fullscreenNavBarMode_:I

    invoke-static {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;->forNumber(I)Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 10395
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;->UNRECOGNIZED:Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;

    :cond_0
    return-object v0
.end method

.method public getFullscreenNavBarModeValue()I
    .locals 1

    .line 10382
    iget v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->fullscreenNavBarMode_:I

    return v0
.end method

.method public getMeasureBridgePerformance()Z
    .locals 1

    .line 10568
    iget-boolean v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->measureBridgePerformance_:Z

    return v0
.end method

.method public getNativeStartMode()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;
    .locals 1

    .line 10212
    iget v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->nativeStartMode_:I

    invoke-static {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;->forNumber(I)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 10213
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;->UNRECOGNIZED:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;

    :cond_0
    return-object v0
.end method

.method public getNativeStartModeValue()I
    .locals 1

    .line 10200
    iget v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->nativeStartMode_:I

    return v0
.end method

.method public getOpenglGpuEnabled()Z
    .locals 1

    .line 9627
    iget-boolean v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->openglGpuEnabled_:Z

    return v0
.end method

.method public getOpportunityIdPlacementValidation()Z
    .locals 1

    .line 9665
    iget-boolean v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->opportunityIdPlacementValidation_:Z

    return v0
.end method

.method public getPreShowWebviewStrategy()Lgatewayprotocol/v1/NativeConfigurationOuterClass$PreShowWebViewStrategy;
    .locals 1

    .line 10622
    iget v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->preShowWebviewStrategy_:I

    invoke-static {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$PreShowWebViewStrategy;->forNumber(I)Lgatewayprotocol/v1/NativeConfigurationOuterClass$PreShowWebViewStrategy;

    move-result-object v0

    if-nez v0, :cond_0

    .line 10623
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$PreShowWebViewStrategy;->UNRECOGNIZED:Lgatewayprotocol/v1/NativeConfigurationOuterClass$PreShowWebViewStrategy;

    :cond_0
    return-object v0
.end method

.method public getPreShowWebviewStrategyValue()I
    .locals 1

    .line 10609
    iget v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->preShowWebviewStrategy_:I

    return v0
.end method

.method public getRecoverFullscreenDisplayEnabled()Z
    .locals 1

    .line 10798
    iget-boolean v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->recoverFullscreenDisplayEnabled_:Z

    return v0
.end method

.method public getRecoverFullscreenDisplayMaxBackgroundAgeMs()I
    .locals 1

    .line 10836
    iget v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->recoverFullscreenDisplayMaxBackgroundAgeMs_:I

    return v0
.end method

.method public getRecoverTerminatedWebviews()Z
    .locals 1

    .line 9779
    iget-boolean v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->recoverTerminatedWebviews_:Z

    return v0
.end method

.method public getRetryShowWithCurrentActivity()Z
    .locals 1

    .line 10758
    iget-boolean v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->retryShowWithCurrentActivity_:Z

    return v0
.end method

.method public getShouldAllowFetchToAccessCache()Z
    .locals 1

    .line 10527
    iget-boolean v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->shouldAllowFetchToAccessCache_:Z

    return v0
.end method

.method public getShouldHandleWebviewCaching()Z
    .locals 1

    .line 9817
    iget-boolean v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->shouldHandleWebviewCaching_:Z

    return v0
.end method

.method public getShouldInitAdqWithGameId()Z
    .locals 1

    .line 10444
    iget-boolean v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->shouldInitAdqWithGameId_:Z

    return v0
.end method

.method public getShouldSendIapHistory()Z
    .locals 1

    .line 9855
    iget-boolean v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->shouldSendIapHistory_:Z

    return v0
.end method

.method public getUseCurrentActivityForShow()Z
    .locals 1

    .line 10717
    iget-boolean v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->useCurrentActivityForShow_:Z

    return v0
.end method

.method public getUseFilesDir()Z
    .locals 1

    .line 10007
    iget-boolean v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->useFilesDir_:Z

    return v0
.end method

.method public getUseOptimisticWebviewCache()Z
    .locals 1

    .line 10262
    iget-boolean v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->useOptimisticWebviewCache_:Z

    return v0
.end method

.method public getUseTryCatchInDownloadQueue()Z
    .locals 1

    .line 10045
    iget-boolean v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->useTryCatchInDownloadQueue_:Z

    return v0
.end method

.method public getWebviewLessLoadParallelActivityLaunch()Z
    .locals 1

    .line 10122
    iget-boolean v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->webviewLessLoadParallelActivityLaunch_:Z

    return v0
.end method

.method public getWebviewPoolSize()I
    .locals 1

    .line 10676
    iget v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->webviewPoolSize_:I

    return v0
.end method
