.class public final Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NativeConfigurationOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfigurationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/NativeConfigurationOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NativeConfiguration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;",
        "Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;",
        ">;",
        "Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfigurationOrBuilder;"
    }
.end annotation


# static fields
.field public static final ACCELEROMETER_COLLECTION_FIELD_NUMBER:I = 0x17

.field public static final ADDITIONAL_STORE_PACKAGES_FIELD_NUMBER:I = 0xa

.field public static final AD_OPERATIONS_FIELD_NUMBER:I = 0x6

.field public static final AD_POLICY_FIELD_NUMBER:I = 0x3

.field public static final CACHED_ASSETS_CONFIGURATION_FIELD_NUMBER:I = 0xb

.field public static final CACHED_WEBVIEW_FILES_CONFIGURATION_FIELD_NUMBER:I = 0xd

.field public static final DATA_LIBRARY_WASM_MODULE_FIELD_NUMBER:I = 0x19

.field public static final DEBUG_SETTINGS_FIELD_NUMBER:I = 0x10

.field private static final DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

.field public static final DEFAULT_SHOW_COMPLETION_STATE_FIELD_NUMBER:I = 0xe

.field public static final DIAGNOSTIC_EVENTS_FIELD_NUMBER:I = 0x1

.field public static final DOWNLOAD_POLICY_FIELD_NUMBER:I = 0xf

.field public static final ENABLE_IAP_EVENT_FIELD_NUMBER:I = 0x8

.field public static final ENABLE_OM_FIELD_NUMBER:I = 0x9

.field public static final FEATURE_FLAGS_FIELD_NUMBER:I = 0x7

.field public static final INIT_POLICY_FIELD_NUMBER:I = 0x2

.field public static final LEVEL_PLAY_APP_KEY_FIELD_NUMBER:I = 0x16

.field public static final MAX_EXTRAS_SIZE_KB_FIELD_NUMBER:I = 0x11

.field public static final MAX_RECEIPT_SIZE_MB_FIELD_NUMBER:I = 0x12

.field public static final MONITORING_IDS_FIELD_NUMBER:I = 0x15

.field public static final OBSERVABLE_ANDROID_ACTIVITIES_FIELD_NUMBER:I = 0xc

.field public static final OBSERVABLE_VIEW_CONTROLLERS_FIELD_NUMBER:I = 0x14

.field public static final OPERATIVE_EVENT_POLICY_FIELD_NUMBER:I = 0x4

.field public static final OPTIMISTIC_INIT_DELAY_MS_FIELD_NUMBER:I = 0x18

.field public static final OTHER_POLICY_FIELD_NUMBER:I = 0x5

.field public static final OVERWRITE_INTENT_FLAG_ACTIVITY_FIELD_NUMBER:I = 0x13

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private accelerometerCollection_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;

.field private adOperations_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

.field private adPolicy_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

.field private additionalStorePackages_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private cachedAssetsConfiguration_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;

.field private cachedWebviewFilesConfiguration_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;

.field private dataLibraryWasmModule_:Lcom/google/protobuf/ByteString;

.field private debugSettings_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings;

.field private defaultShowCompletionState_:I

.field private diagnosticEvents_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

.field private downloadPolicy_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

.field private enableIapEvent_:Z

.field private enableOm_:Z

.field private featureFlags_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;

.field private initPolicy_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

.field private levelPlayAppKey_:Ljava/lang/String;

.field private maxExtrasSizeKb_:I

.field private maxReceiptSizeMb_:I

.field private monitoringIdsMemoizedSerializedSize:I

.field private monitoringIds_:Lcom/google/protobuf/Internal$IntList;

.field private observableAndroidActivities_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private observableViewControllers_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private operativeEventPolicy_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

.field private optimisticInitDelayMs_:I

.field private otherPolicy_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

.field private overwriteIntentFlagActivity_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 9192
    new-instance v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-direct {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;-><init>()V

    .line 9195
    sput-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    .line 9196
    const-class v1, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5546
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, -0x1

    .line 6909
    iput v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->monitoringIdsMemoizedSerializedSize:I

    .line 5547
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->additionalStorePackages_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 5548
    invoke-static {}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->observableAndroidActivities_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 5549
    invoke-static {}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->observableViewControllers_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 5550
    invoke-static {}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->monitoringIds_:Lcom/google/protobuf/Internal$IntList;

    .line 5551
    const-string v0, ""

    iput-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->levelPlayAppKey_:Ljava/lang/String;

    .line 5552
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->dataLibraryWasmModule_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$10000(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;)V
    .locals 0

    .line 5541
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->clearFeatureFlags()V

    return-void
.end method

.method static synthetic access$10100(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;Z)V
    .locals 0

    .line 5541
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->setEnableIapEvent(Z)V

    return-void
.end method

.method static synthetic access$10200(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;)V
    .locals 0

    .line 5541
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->clearEnableIapEvent()V

    return-void
.end method

.method static synthetic access$10300(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;Z)V
    .locals 0

    .line 5541
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->setEnableOm(Z)V

    return-void
.end method

.method static synthetic access$10400(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;)V
    .locals 0

    .line 5541
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->clearEnableOm()V

    return-void
.end method

.method static synthetic access$10500(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;ILjava/lang/String;)V
    .locals 0

    .line 5541
    invoke-direct {p0, p1, p2}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->setAdditionalStorePackages(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$10600(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;Ljava/lang/String;)V
    .locals 0

    .line 5541
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->addAdditionalStorePackages(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10700(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;Ljava/lang/Iterable;)V
    .locals 0

    .line 5541
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->addAllAdditionalStorePackages(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$10800(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;)V
    .locals 0

    .line 5541
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->clearAdditionalStorePackages()V

    return-void
.end method

.method static synthetic access$10900(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 5541
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->addAdditionalStorePackagesBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$11000(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;)V
    .locals 0

    .line 5541
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->setCachedAssetsConfiguration(Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;)V

    return-void
.end method

.method static synthetic access$11100(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;)V
    .locals 0

    .line 5541
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->mergeCachedAssetsConfiguration(Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;)V

    return-void
.end method

.method static synthetic access$11200(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;)V
    .locals 0

    .line 5541
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->clearCachedAssetsConfiguration()V

    return-void
.end method

.method static synthetic access$11300(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;ILcom/google/protobuf/ByteString;)V
    .locals 0

    .line 5541
    invoke-direct {p0, p1, p2}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->setObservableAndroidActivities(ILcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$11400(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 5541
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->addObservableAndroidActivities(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$11500(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;Ljava/lang/Iterable;)V
    .locals 0

    .line 5541
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->addAllObservableAndroidActivities(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$11600(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;)V
    .locals 0

    .line 5541
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->clearObservableAndroidActivities()V

    return-void
.end method

.method static synthetic access$11700(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;)V
    .locals 0

    .line 5541
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->setCachedWebviewFilesConfiguration(Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;)V

    return-void
.end method

.method static synthetic access$11800(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;)V
    .locals 0

    .line 5541
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->mergeCachedWebviewFilesConfiguration(Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;)V

    return-void
.end method

.method static synthetic access$11900(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;)V
    .locals 0

    .line 5541
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->clearCachedWebviewFilesConfiguration()V

    return-void
.end method

.method static synthetic access$12000(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;I)V
    .locals 0

    .line 5541
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->setDefaultShowCompletionStateValue(I)V

    return-void
.end method

.method static synthetic access$12100(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;Lgatewayprotocol/v1/NativeConfigurationOuterClass$ShowCompletionState;)V
    .locals 0

    .line 5541
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->setDefaultShowCompletionState(Lgatewayprotocol/v1/NativeConfigurationOuterClass$ShowCompletionState;)V

    return-void
.end method

.method static synthetic access$12200(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;)V
    .locals 0

    .line 5541
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->clearDefaultShowCompletionState()V

    return-void
.end method

.method static synthetic access$12300(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .locals 0

    .line 5541
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->setDownloadPolicy(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;)V

    return-void
.end method

.method static synthetic access$12400(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .locals 0

    .line 5541
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->mergeDownloadPolicy(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;)V

    return-void
.end method

.method static synthetic access$12500(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;)V
    .locals 0

    .line 5541
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->clearDownloadPolicy()V

    return-void
.end method

.method static synthetic access$12600(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings;)V
    .locals 0

    .line 5541
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->setDebugSettings(Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings;)V

    return-void
.end method

.method static synthetic access$12700(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings;)V
    .locals 0

    .line 5541
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->mergeDebugSettings(Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings;)V

    return-void
.end method

.method static synthetic access$12800(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;)V
    .locals 0

    .line 5541
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->clearDebugSettings()V

    return-void
.end method

.method static synthetic access$12900(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;I)V
    .locals 0

    .line 5541
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->setMaxExtrasSizeKb(I)V

    return-void
.end method

.method static synthetic access$13000(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;)V
    .locals 0

    .line 5541
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->clearMaxExtrasSizeKb()V

    return-void
.end method

.method static synthetic access$13100(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;I)V
    .locals 0

    .line 5541
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->setMaxReceiptSizeMb(I)V

    return-void
.end method

.method static synthetic access$13200(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;)V
    .locals 0

    .line 5541
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->clearMaxReceiptSizeMb()V

    return-void
.end method

.method static synthetic access$13300(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;I)V
    .locals 0

    .line 5541
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->setOverwriteIntentFlagActivity(I)V

    return-void
.end method

.method static synthetic access$13400(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;)V
    .locals 0

    .line 5541
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->clearOverwriteIntentFlagActivity()V

    return-void
.end method

.method static synthetic access$13500(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;ILcom/google/protobuf/ByteString;)V
    .locals 0

    .line 5541
    invoke-direct {p0, p1, p2}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->setObservableViewControllers(ILcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$13600(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 5541
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->addObservableViewControllers(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$13700(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;Ljava/lang/Iterable;)V
    .locals 0

    .line 5541
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->addAllObservableViewControllers(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$13800(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;)V
    .locals 0

    .line 5541
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->clearObservableViewControllers()V

    return-void
.end method

.method static synthetic access$13900(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;II)V
    .locals 0

    .line 5541
    invoke-direct {p0, p1, p2}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->setMonitoringIds(II)V

    return-void
.end method

.method static synthetic access$14000(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;I)V
    .locals 0

    .line 5541
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->addMonitoringIds(I)V

    return-void
.end method

.method static synthetic access$14100(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;Ljava/lang/Iterable;)V
    .locals 0

    .line 5541
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->addAllMonitoringIds(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$14200(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;)V
    .locals 0

    .line 5541
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->clearMonitoringIds()V

    return-void
.end method

.method static synthetic access$14300(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;Ljava/lang/String;)V
    .locals 0

    .line 5541
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->setLevelPlayAppKey(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$14400(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;)V
    .locals 0

    .line 5541
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->clearLevelPlayAppKey()V

    return-void
.end method

.method static synthetic access$14500(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 5541
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->setLevelPlayAppKeyBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$14600(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;)V
    .locals 0

    .line 5541
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->setAccelerometerCollection(Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;)V

    return-void
.end method

.method static synthetic access$14700(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;)V
    .locals 0

    .line 5541
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->mergeAccelerometerCollection(Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;)V

    return-void
.end method

.method static synthetic access$14800(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;)V
    .locals 0

    .line 5541
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->clearAccelerometerCollection()V

    return-void
.end method

.method static synthetic access$14900(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;I)V
    .locals 0

    .line 5541
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->setOptimisticInitDelayMs(I)V

    return-void
.end method

.method static synthetic access$15000(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;)V
    .locals 0

    .line 5541
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->clearOptimisticInitDelayMs()V

    return-void
.end method

.method static synthetic access$15100(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 5541
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->setDataLibraryWasmModule(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$15200(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;)V
    .locals 0

    .line 5541
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->clearDataLibraryWasmModule()V

    return-void
.end method

.method static synthetic access$7900()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;
    .locals 1

    .line 5541
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    return-object v0
.end method

.method static synthetic access$8000(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;Lgatewayprotocol/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;)V
    .locals 0

    .line 5541
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->setDiagnosticEvents(Lgatewayprotocol/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;)V

    return-void
.end method

.method static synthetic access$8100(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;Lgatewayprotocol/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;)V
    .locals 0

    .line 5541
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->mergeDiagnosticEvents(Lgatewayprotocol/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;)V

    return-void
.end method

.method static synthetic access$8200(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;)V
    .locals 0

    .line 5541
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->clearDiagnosticEvents()V

    return-void
.end method

.method static synthetic access$8300(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .locals 0

    .line 5541
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->setInitPolicy(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;)V

    return-void
.end method

.method static synthetic access$8400(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .locals 0

    .line 5541
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->mergeInitPolicy(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;)V

    return-void
.end method

.method static synthetic access$8500(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;)V
    .locals 0

    .line 5541
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->clearInitPolicy()V

    return-void
.end method

.method static synthetic access$8600(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .locals 0

    .line 5541
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->setAdPolicy(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;)V

    return-void
.end method

.method static synthetic access$8700(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .locals 0

    .line 5541
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->mergeAdPolicy(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;)V

    return-void
.end method

.method static synthetic access$8800(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;)V
    .locals 0

    .line 5541
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->clearAdPolicy()V

    return-void
.end method

.method static synthetic access$8900(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .locals 0

    .line 5541
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->setOperativeEventPolicy(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;)V

    return-void
.end method

.method static synthetic access$9000(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .locals 0

    .line 5541
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->mergeOperativeEventPolicy(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;)V

    return-void
.end method

.method static synthetic access$9100(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;)V
    .locals 0

    .line 5541
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->clearOperativeEventPolicy()V

    return-void
.end method

.method static synthetic access$9200(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .locals 0

    .line 5541
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->setOtherPolicy(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;)V

    return-void
.end method

.method static synthetic access$9300(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .locals 0

    .line 5541
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->mergeOtherPolicy(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;)V

    return-void
.end method

.method static synthetic access$9400(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;)V
    .locals 0

    .line 5541
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->clearOtherPolicy()V

    return-void
.end method

.method static synthetic access$9500(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;)V
    .locals 0

    .line 5541
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->setAdOperations(Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;)V

    return-void
.end method

.method static synthetic access$9600(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;)V
    .locals 0

    .line 5541
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->mergeAdOperations(Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;)V

    return-void
.end method

.method static synthetic access$9700(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;)V
    .locals 0

    .line 5541
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->clearAdOperations()V

    return-void
.end method

.method static synthetic access$9800(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;)V
    .locals 0

    .line 5541
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->setFeatureFlags(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;)V

    return-void
.end method

.method static synthetic access$9900(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;)V
    .locals 0

    .line 5541
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->mergeFeatureFlags(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;)V

    return-void
.end method

.method private addAdditionalStorePackages(Ljava/lang/String;)V
    .locals 1

    .line 6179
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6180
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->ensureAdditionalStorePackagesIsMutable()V

    .line 6181
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->additionalStorePackages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addAdditionalStorePackagesBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 6217
    invoke-static {p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 6218
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->ensureAdditionalStorePackagesIsMutable()V

    .line 6219
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->additionalStorePackages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addAllAdditionalStorePackages(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 6193
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->ensureAdditionalStorePackagesIsMutable()V

    .line 6194
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->additionalStorePackages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllMonitoringIds(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 6953
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->ensureMonitoringIdsIsMutable()V

    .line 6954
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->monitoringIds_:Lcom/google/protobuf/Internal$IntList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllObservableAndroidActivities(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/ByteString;",
            ">;)V"
        }
    .end annotation

    .line 6379
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->ensureObservableAndroidActivitiesIsMutable()V

    .line 6380
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->observableAndroidActivities_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllObservableViewControllers(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/ByteString;",
            ">;)V"
        }
    .end annotation

    .line 6854
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->ensureObservableViewControllersIsMutable()V

    .line 6855
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->observableViewControllers_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addMonitoringIds(I)V
    .locals 1

    .line 6940
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->ensureMonitoringIdsIsMutable()V

    .line 6941
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->monitoringIds_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    return-void
.end method

.method private addObservableAndroidActivities(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 6364
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6365
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->ensureObservableAndroidActivitiesIsMutable()V

    .line 6366
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->observableAndroidActivities_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addObservableViewControllers(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 6840
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6841
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->ensureObservableViewControllersIsMutable()V

    .line 6842
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->observableViewControllers_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearAccelerometerCollection()V
    .locals 1

    const/4 v0, 0x0

    .line 7120
    iput-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->accelerometerCollection_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;

    .line 7121
    iget v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    return-void
.end method

.method private clearAdOperations()V
    .locals 1

    const/4 v0, 0x0

    .line 5947
    iput-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->adOperations_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    .line 5948
    iget v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    return-void
.end method

.method private clearAdPolicy()V
    .locals 1

    const/4 v0, 0x0

    .line 5749
    iput-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->adPolicy_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    .line 5750
    iget v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    return-void
.end method

.method private clearAdditionalStorePackages()V
    .locals 1

    .line 6205
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->additionalStorePackages_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearCachedAssetsConfiguration()V
    .locals 1

    const/4 v0, 0x0

    .line 6284
    iput-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->cachedAssetsConfiguration_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;

    .line 6285
    iget v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    return-void
.end method

.method private clearCachedWebviewFilesConfiguration()V
    .locals 1

    const/4 v0, 0x0

    .line 6457
    iput-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->cachedWebviewFilesConfiguration_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;

    .line 6458
    iget v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    return-void
.end method

.method private clearDataLibraryWasmModule()V
    .locals 1

    .line 7241
    iget v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    .line 7242
    invoke-static {}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->getDefaultInstance()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->getDataLibraryWasmModule()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->dataLibraryWasmModule_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearDebugSettings()V
    .locals 1

    const/4 v0, 0x0

    .line 6651
    iput-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->debugSettings_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings;

    .line 6652
    iget v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    return-void
.end method

.method private clearDefaultShowCompletionState()V
    .locals 1

    const/4 v0, 0x0

    .line 6520
    iput v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->defaultShowCompletionState_:I

    return-void
.end method

.method private clearDiagnosticEvents()V
    .locals 1

    const/4 v0, 0x0

    .line 5617
    iput-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->diagnosticEvents_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    .line 5618
    iget v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    return-void
.end method

.method private clearDownloadPolicy()V
    .locals 1

    const/4 v0, 0x0

    .line 6585
    iput-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->downloadPolicy_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    .line 6586
    iget v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    return-void
.end method

.method private clearEnableIapEvent()V
    .locals 1

    const/4 v0, 0x0

    .line 6052
    iput-boolean v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->enableIapEvent_:Z

    return-void
.end method

.method private clearEnableOm()V
    .locals 1

    const/4 v0, 0x0

    .line 6090
    iput-boolean v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->enableOm_:Z

    return-void
.end method

.method private clearFeatureFlags()V
    .locals 1

    const/4 v0, 0x0

    .line 6013
    iput-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->featureFlags_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;

    .line 6014
    iget v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    return-void
.end method

.method private clearInitPolicy()V
    .locals 1

    const/4 v0, 0x0

    .line 5683
    iput-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->initPolicy_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    .line 5684
    iget v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    return-void
.end method

.method private clearLevelPlayAppKey()V
    .locals 1

    .line 7034
    iget v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    .line 7035
    invoke-static {}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->getDefaultInstance()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->getLevelPlayAppKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->levelPlayAppKey_:Ljava/lang/String;

    return-void
.end method

.method private clearMaxExtrasSizeKb()V
    .locals 1

    const/4 v0, 0x0

    .line 6690
    iput v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->maxExtrasSizeKb_:I

    return-void
.end method

.method private clearMaxReceiptSizeMb()V
    .locals 1

    const/4 v0, 0x0

    .line 6728
    iput v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->maxReceiptSizeMb_:I

    return-void
.end method

.method private clearMonitoringIds()V
    .locals 1

    .line 6965
    invoke-static {}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->monitoringIds_:Lcom/google/protobuf/Internal$IntList;

    return-void
.end method

.method private clearObservableAndroidActivities()V
    .locals 1

    .line 6392
    invoke-static {}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->observableAndroidActivities_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearObservableViewControllers()V
    .locals 1

    .line 6866
    invoke-static {}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->observableViewControllers_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearOperativeEventPolicy()V
    .locals 1

    const/4 v0, 0x0

    .line 5815
    iput-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->operativeEventPolicy_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    .line 5816
    iget v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    return-void
.end method

.method private clearOptimisticInitDelayMs()V
    .locals 1

    .line 7178
    iget v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    const/4 v0, 0x0

    .line 7179
    iput v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->optimisticInitDelayMs_:I

    return-void
.end method

.method private clearOtherPolicy()V
    .locals 1

    const/4 v0, 0x0

    .line 5881
    iput-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->otherPolicy_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    .line 5882
    iget v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    return-void
.end method

.method private clearOverwriteIntentFlagActivity()V
    .locals 1

    const/4 v0, 0x0

    .line 6766
    iput v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->overwriteIntentFlagActivity_:I

    return-void
.end method

.method private ensureAdditionalStorePackagesIsMutable()V
    .locals 2

    .line 6148
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->additionalStorePackages_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 6149
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6151
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->additionalStorePackages_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureMonitoringIdsIsMutable()V
    .locals 2

    .line 6911
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->monitoringIds_:Lcom/google/protobuf/Internal$IntList;

    .line 6912
    invoke-interface {v0}, Lcom/google/protobuf/Internal$IntList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6914
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->monitoringIds_:Lcom/google/protobuf/Internal$IntList;

    :cond_0
    return-void
.end method

.method private ensureObservableAndroidActivitiesIsMutable()V
    .locals 2

    .line 6332
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->observableAndroidActivities_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 6333
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6335
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->observableAndroidActivities_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureObservableViewControllersIsMutable()V
    .locals 2

    .line 6810
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->observableViewControllers_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 6811
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6813
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->observableViewControllers_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;
    .locals 1

    .line 9201
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    return-object v0
.end method

.method private mergeAccelerometerCollection(Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;)V
    .locals 2

    .line 7102
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7103
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->accelerometerCollection_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;

    if-eqz v0, :cond_0

    .line 7104
    invoke-static {}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;->getDefaultInstance()Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 7105
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->accelerometerCollection_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;

    .line 7106
    invoke-static {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;->newBuilder(Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;

    iput-object p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->accelerometerCollection_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;

    goto :goto_0

    .line 7108
    :cond_0
    iput-object p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->accelerometerCollection_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;

    .line 7110
    :goto_0
    iget p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    return-void
.end method

.method private mergeAdOperations(Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;)V
    .locals 2

    .line 5930
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5931
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->adOperations_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    if-eqz v0, :cond_0

    .line 5932
    invoke-static {}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;->getDefaultInstance()Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5933
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->adOperations_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    .line 5934
    invoke-static {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;->newBuilder(Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    iput-object p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->adOperations_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    goto :goto_0

    .line 5936
    :cond_0
    iput-object p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->adOperations_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    .line 5938
    :goto_0
    iget p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    return-void
.end method

.method private mergeAdPolicy(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .locals 2

    .line 5732
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5733
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->adPolicy_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    if-eqz v0, :cond_0

    .line 5734
    invoke-static {}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;->getDefaultInstance()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5735
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->adPolicy_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    .line 5736
    invoke-static {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;->newBuilder(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    iput-object p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->adPolicy_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    goto :goto_0

    .line 5738
    :cond_0
    iput-object p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->adPolicy_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    .line 5740
    :goto_0
    iget p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    return-void
.end method

.method private mergeCachedAssetsConfiguration(Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;)V
    .locals 2

    .line 6267
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6268
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->cachedAssetsConfiguration_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;

    if-eqz v0, :cond_0

    .line 6269
    invoke-static {}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;->getDefaultInstance()Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6270
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->cachedAssetsConfiguration_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;

    .line 6271
    invoke-static {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;->newBuilder(Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;

    iput-object p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->cachedAssetsConfiguration_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;

    goto :goto_0

    .line 6273
    :cond_0
    iput-object p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->cachedAssetsConfiguration_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;

    .line 6275
    :goto_0
    iget p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    return-void
.end method

.method private mergeCachedWebviewFilesConfiguration(Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;)V
    .locals 2

    .line 6440
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6441
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->cachedWebviewFilesConfiguration_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;

    if-eqz v0, :cond_0

    .line 6442
    invoke-static {}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;->getDefaultInstance()Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6443
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->cachedWebviewFilesConfiguration_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;

    .line 6444
    invoke-static {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;->newBuilder(Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;

    iput-object p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->cachedWebviewFilesConfiguration_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;

    goto :goto_0

    .line 6446
    :cond_0
    iput-object p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->cachedWebviewFilesConfiguration_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;

    .line 6448
    :goto_0
    iget p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    return-void
.end method

.method private mergeDebugSettings(Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings;)V
    .locals 2

    .line 6634
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6635
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->debugSettings_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings;

    if-eqz v0, :cond_0

    .line 6636
    invoke-static {}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings;->getDefaultInstance()Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6637
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->debugSettings_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings;

    .line 6638
    invoke-static {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings;->newBuilder(Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings;

    iput-object p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->debugSettings_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings;

    goto :goto_0

    .line 6640
    :cond_0
    iput-object p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->debugSettings_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings;

    .line 6642
    :goto_0
    iget p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    return-void
.end method

.method private mergeDiagnosticEvents(Lgatewayprotocol/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;)V
    .locals 2

    .line 5600
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5601
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->diagnosticEvents_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    if-eqz v0, :cond_0

    .line 5602
    invoke-static {}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->getDefaultInstance()Lgatewayprotocol/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5603
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->diagnosticEvents_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    .line 5604
    invoke-static {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->newBuilder(Lgatewayprotocol/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    iput-object p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->diagnosticEvents_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    goto :goto_0

    .line 5606
    :cond_0
    iput-object p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->diagnosticEvents_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    .line 5608
    :goto_0
    iget p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    return-void
.end method

.method private mergeDownloadPolicy(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .locals 2

    .line 6568
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6569
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->downloadPolicy_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    if-eqz v0, :cond_0

    .line 6570
    invoke-static {}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;->getDefaultInstance()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6571
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->downloadPolicy_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    .line 6572
    invoke-static {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;->newBuilder(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    iput-object p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->downloadPolicy_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    goto :goto_0

    .line 6574
    :cond_0
    iput-object p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->downloadPolicy_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    .line 6576
    :goto_0
    iget p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    return-void
.end method

.method private mergeFeatureFlags(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;)V
    .locals 2

    .line 5996
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5997
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->featureFlags_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;

    if-eqz v0, :cond_0

    .line 5998
    invoke-static {}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->getDefaultInstance()Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5999
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->featureFlags_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;

    .line 6000
    invoke-static {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->newBuilder(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;

    iput-object p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->featureFlags_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;

    goto :goto_0

    .line 6002
    :cond_0
    iput-object p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->featureFlags_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;

    .line 6004
    :goto_0
    iget p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    return-void
.end method

.method private mergeInitPolicy(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .locals 2

    .line 5666
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5667
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->initPolicy_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    if-eqz v0, :cond_0

    .line 5668
    invoke-static {}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;->getDefaultInstance()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5669
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->initPolicy_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    .line 5670
    invoke-static {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;->newBuilder(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    iput-object p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->initPolicy_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    goto :goto_0

    .line 5672
    :cond_0
    iput-object p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->initPolicy_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    .line 5674
    :goto_0
    iget p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    return-void
.end method

.method private mergeOperativeEventPolicy(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .locals 2

    .line 5798
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5799
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->operativeEventPolicy_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    if-eqz v0, :cond_0

    .line 5800
    invoke-static {}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;->getDefaultInstance()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5801
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->operativeEventPolicy_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    .line 5802
    invoke-static {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;->newBuilder(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    iput-object p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->operativeEventPolicy_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    goto :goto_0

    .line 5804
    :cond_0
    iput-object p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->operativeEventPolicy_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    .line 5806
    :goto_0
    iget p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    return-void
.end method

.method private mergeOtherPolicy(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .locals 2

    .line 5864
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5865
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->otherPolicy_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    if-eqz v0, :cond_0

    .line 5866
    invoke-static {}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;->getDefaultInstance()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5867
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->otherPolicy_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    .line 5868
    invoke-static {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;->newBuilder(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    iput-object p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->otherPolicy_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    goto :goto_0

    .line 5870
    :cond_0
    iput-object p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->otherPolicy_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    .line 5872
    :goto_0
    iget p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;
    .locals 1

    .line 7322
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    return-object v0
.end method

.method public static newBuilder(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;
    .locals 1

    .line 7325
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-virtual {v0, p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7298
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-static {v0, p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7305
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-static {v0, p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7261
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7268
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7310
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7317
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7285
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7292
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7248
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7255
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    return-object p0
.end method

.method public static parseFrom([B)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7273
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7280
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;",
            ">;"
        }
    .end annotation

    .line 9207
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAccelerometerCollection(Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;)V
    .locals 0

    .line 7088
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7089
    iput-object p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->accelerometerCollection_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;

    .line 7090
    iget p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    return-void
.end method

.method private setAdOperations(Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;)V
    .locals 0

    .line 5917
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5918
    iput-object p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->adOperations_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    .line 5919
    iget p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    return-void
.end method

.method private setAdPolicy(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .locals 0

    .line 5719
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5720
    iput-object p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->adPolicy_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    .line 5721
    iget p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    return-void
.end method

.method private setAdditionalStorePackages(ILjava/lang/String;)V
    .locals 1

    .line 6165
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6166
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->ensureAdditionalStorePackagesIsMutable()V

    .line 6167
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->additionalStorePackages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setCachedAssetsConfiguration(Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;)V
    .locals 0

    .line 6254
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6255
    iput-object p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->cachedAssetsConfiguration_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;

    .line 6256
    iget p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    return-void
.end method

.method private setCachedWebviewFilesConfiguration(Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;)V
    .locals 0

    .line 6427
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6428
    iput-object p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->cachedWebviewFilesConfiguration_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;

    .line 6429
    iget p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    return-void
.end method

.method private setDataLibraryWasmModule(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 7226
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7227
    iget v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    .line 7228
    iput-object p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->dataLibraryWasmModule_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setDebugSettings(Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings;)V
    .locals 0

    .line 6621
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6622
    iput-object p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->debugSettings_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings;

    .line 6623
    iget p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    return-void
.end method

.method private setDefaultShowCompletionState(Lgatewayprotocol/v1/NativeConfigurationOuterClass$ShowCompletionState;)V
    .locals 0

    .line 6508
    invoke-virtual {p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$ShowCompletionState;->getNumber()I

    move-result p1

    iput p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->defaultShowCompletionState_:I

    return-void
.end method

.method private setDefaultShowCompletionStateValue(I)V
    .locals 0

    .line 6497
    iput p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->defaultShowCompletionState_:I

    return-void
.end method

.method private setDiagnosticEvents(Lgatewayprotocol/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;)V
    .locals 0

    .line 5587
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5588
    iput-object p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->diagnosticEvents_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    .line 5589
    iget p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    return-void
.end method

.method private setDownloadPolicy(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .locals 0

    .line 6555
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6556
    iput-object p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->downloadPolicy_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    .line 6557
    iget p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    return-void
.end method

.method private setEnableIapEvent(Z)V
    .locals 0

    .line 6041
    iput-boolean p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->enableIapEvent_:Z

    return-void
.end method

.method private setEnableOm(Z)V
    .locals 0

    .line 6079
    iput-boolean p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->enableOm_:Z

    return-void
.end method

.method private setFeatureFlags(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;)V
    .locals 0

    .line 5983
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5984
    iput-object p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->featureFlags_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;

    .line 5985
    iget p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    return-void
.end method

.method private setInitPolicy(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .locals 0

    .line 5653
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5654
    iput-object p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->initPolicy_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    .line 5655
    iget p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    return-void
.end method

.method private setLevelPlayAppKey(Ljava/lang/String;)V
    .locals 1

    .line 7021
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7022
    iget v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    .line 7023
    iput-object p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->levelPlayAppKey_:Ljava/lang/String;

    return-void
.end method

.method private setLevelPlayAppKeyBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 7048
    invoke-static {p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 7049
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->levelPlayAppKey_:Ljava/lang/String;

    .line 7050
    iget p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    return-void
.end method

.method private setMaxExtrasSizeKb(I)V
    .locals 0

    .line 6679
    iput p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->maxExtrasSizeKb_:I

    return-void
.end method

.method private setMaxReceiptSizeMb(I)V
    .locals 0

    .line 6717
    iput p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->maxReceiptSizeMb_:I

    return-void
.end method

.method private setMonitoringIds(II)V
    .locals 1

    .line 6928
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->ensureMonitoringIdsIsMutable()V

    .line 6929
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->monitoringIds_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$IntList;->setInt(II)I

    return-void
.end method

.method private setObservableAndroidActivities(ILcom/google/protobuf/ByteString;)V
    .locals 1

    .line 6350
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6351
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->ensureObservableAndroidActivitiesIsMutable()V

    .line 6352
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->observableAndroidActivities_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setObservableViewControllers(ILcom/google/protobuf/ByteString;)V
    .locals 1

    .line 6827
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6828
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->ensureObservableViewControllersIsMutable()V

    .line 6829
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->observableViewControllers_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setOperativeEventPolicy(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .locals 0

    .line 5785
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5786
    iput-object p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->operativeEventPolicy_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    .line 5787
    iget p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    return-void
.end method

.method private setOptimisticInitDelayMs(I)V
    .locals 1

    .line 7165
    iget v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    .line 7166
    iput p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->optimisticInitDelayMs_:I

    return-void
.end method

.method private setOtherPolicy(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .locals 0

    .line 5851
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5852
    iput-object p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->otherPolicy_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    .line 5853
    iget p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    return-void
.end method

.method private setOverwriteIntentFlagActivity(I)V
    .locals 0

    .line 6755
    iput p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->overwriteIntentFlagActivity_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 28

    .line 9115
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 9185
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_0
    return-object v1

    :pswitch_1
    const/4 v0, 0x1

    .line 9179
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 9164
    :pswitch_2
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_1

    .line 9166
    const-class v1, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    monitor-enter v1

    .line 9167
    :try_start_0
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_0

    .line 9169
    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v2, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-direct {v0, v2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 9172
    sput-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->PARSER:Lcom/google/protobuf/Parser;

    .line 9174
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

    .line 9161
    :pswitch_3
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    return-object v0

    .line 9123
    :pswitch_4
    const-string v2, "bitField0_"

    const-string v3, "diagnosticEvents_"

    const-string v4, "initPolicy_"

    const-string v5, "adPolicy_"

    const-string v6, "operativeEventPolicy_"

    const-string v7, "otherPolicy_"

    const-string v8, "adOperations_"

    const-string v9, "featureFlags_"

    const-string v10, "enableIapEvent_"

    const-string v11, "enableOm_"

    const-string v12, "additionalStorePackages_"

    const-string v13, "cachedAssetsConfiguration_"

    const-string v14, "observableAndroidActivities_"

    const-string v15, "cachedWebviewFilesConfiguration_"

    const-string v16, "defaultShowCompletionState_"

    const-string v17, "downloadPolicy_"

    const-string v18, "debugSettings_"

    const-string v19, "maxExtrasSizeKb_"

    const-string v20, "maxReceiptSizeMb_"

    const-string v21, "overwriteIntentFlagActivity_"

    const-string v22, "observableViewControllers_"

    const-string v23, "monitoringIds_"

    const-string v24, "levelPlayAppKey_"

    const-string v25, "accelerometerCollection_"

    const-string v26, "optimisticInitDelayMs_"

    const-string v27, "dataLibraryWasmModule_"

    filled-new-array/range {v2 .. v27}, [Ljava/lang/Object;

    move-result-object v0

    .line 9151
    const-string v1, "\u0000\u0019\u0000\u0001\u0001\u0019\u0019\u0000\u0004\u0000\u0001\u1009\u0000\u0002\u1009\u0001\u0003\u1009\u0002\u0004\u1009\u0003\u0005\u1009\u0004\u0006\u1009\u0005\u0007\u1009\u0006\u0008\u0007\t\u0007\n\u021a\u000b\u1009\u0007\u000c\u001c\r\u1009\u0008\u000e\u000c\u000f\u1009\t\u0010\u1009\n\u0011\u0004\u0012\u0004\u0013\u0004\u0014\u001c\u0015\'\u0016\u1208\u000b\u0017\u1009\u000c\u0018\u1004\r\u0019\u100a\u000e"

    .line 9157
    sget-object v2, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-static {v2, v1, v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 9120
    :pswitch_5
    new-instance v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-direct {v0, v1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;-><init>(Lgatewayprotocol/v1/NativeConfigurationOuterClass$1;)V

    return-object v0

    .line 9117
    :pswitch_6
    new-instance v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-direct {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;-><init>()V

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

.method public getAccelerometerCollection()Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;
    .locals 1

    .line 7077
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->accelerometerCollection_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;

    if-nez v0, :cond_0

    invoke-static {}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;->getDefaultInstance()Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getAdOperations()Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;
    .locals 1

    .line 5907
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->adOperations_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    if-nez v0, :cond_0

    invoke-static {}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;->getDefaultInstance()Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getAdPolicy()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;
    .locals 1

    .line 5709
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->adPolicy_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    if-nez v0, :cond_0

    invoke-static {}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;->getDefaultInstance()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getAdditionalStorePackages(I)Ljava/lang/String;
    .locals 1

    .line 6130
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->additionalStorePackages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getAdditionalStorePackagesBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6144
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->additionalStorePackages_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 6145
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 6144
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getAdditionalStorePackagesCount()I
    .locals 1

    .line 6117
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->additionalStorePackages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getAdditionalStorePackagesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6105
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->additionalStorePackages_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getCachedAssetsConfiguration()Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;
    .locals 1

    .line 6244
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->cachedAssetsConfiguration_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;

    if-nez v0, :cond_0

    invoke-static {}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;->getDefaultInstance()Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getCachedWebviewFilesConfiguration()Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;
    .locals 1

    .line 6417
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->cachedWebviewFilesConfiguration_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;

    if-nez v0, :cond_0

    invoke-static {}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;->getDefaultInstance()Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDataLibraryWasmModule()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7212
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->dataLibraryWasmModule_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDebugSettings()Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings;
    .locals 1

    .line 6611
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->debugSettings_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings;

    if-nez v0, :cond_0

    invoke-static {}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings;->getDefaultInstance()Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDefaultShowCompletionState()Lgatewayprotocol/v1/NativeConfigurationOuterClass$ShowCompletionState;
    .locals 1

    .line 6485
    iget v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->defaultShowCompletionState_:I

    invoke-static {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$ShowCompletionState;->forNumber(I)Lgatewayprotocol/v1/NativeConfigurationOuterClass$ShowCompletionState;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6486
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$ShowCompletionState;->UNRECOGNIZED:Lgatewayprotocol/v1/NativeConfigurationOuterClass$ShowCompletionState;

    :cond_0
    return-object v0
.end method

.method public getDefaultShowCompletionStateValue()I
    .locals 1

    .line 6473
    iget v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->defaultShowCompletionState_:I

    return v0
.end method

.method public getDiagnosticEvents()Lgatewayprotocol/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;
    .locals 1

    .line 5577
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->diagnosticEvents_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    if-nez v0, :cond_0

    invoke-static {}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->getDefaultInstance()Lgatewayprotocol/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDownloadPolicy()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;
    .locals 1

    .line 6545
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->downloadPolicy_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    if-nez v0, :cond_0

    invoke-static {}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;->getDefaultInstance()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getEnableIapEvent()Z
    .locals 1

    .line 6029
    iget-boolean v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->enableIapEvent_:Z

    return v0
.end method

.method public getEnableOm()Z
    .locals 1

    .line 6067
    iget-boolean v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->enableOm_:Z

    return v0
.end method

.method public getFeatureFlags()Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;
    .locals 1

    .line 5973
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->featureFlags_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;

    if-nez v0, :cond_0

    invoke-static {}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->getDefaultInstance()Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getInitPolicy()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;
    .locals 1

    .line 5643
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->initPolicy_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    if-nez v0, :cond_0

    invoke-static {}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;->getDefaultInstance()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLevelPlayAppKey()Ljava/lang/String;
    .locals 1

    .line 6994
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->levelPlayAppKey_:Ljava/lang/String;

    return-object v0
.end method

.method public getLevelPlayAppKeyBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7008
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->levelPlayAppKey_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMaxExtrasSizeKb()I
    .locals 1

    .line 6667
    iget v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->maxExtrasSizeKb_:I

    return v0
.end method

.method public getMaxReceiptSizeMb()I
    .locals 1

    .line 6705
    iget v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->maxReceiptSizeMb_:I

    return v0
.end method

.method public getMonitoringIds(I)I
    .locals 1

    .line 6907
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->monitoringIds_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getMonitoringIdsCount()I
    .locals 1

    .line 6894
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->monitoringIds_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$IntList;->size()I

    move-result v0

    return v0
.end method

.method public getMonitoringIdsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 6882
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->monitoringIds_:Lcom/google/protobuf/Internal$IntList;

    return-object v0
.end method

.method public getObservableAndroidActivities(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6329
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->observableAndroidActivities_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method public getObservableAndroidActivitiesCount()I
    .locals 1

    .line 6315
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->observableAndroidActivities_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getObservableAndroidActivitiesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .line 6302
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->observableAndroidActivities_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getObservableViewControllers(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6807
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->observableViewControllers_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method public getObservableViewControllersCount()I
    .locals 1

    .line 6794
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->observableViewControllers_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getObservableViewControllersList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .line 6782
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->observableViewControllers_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getOperativeEventPolicy()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;
    .locals 1

    .line 5775
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->operativeEventPolicy_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    if-nez v0, :cond_0

    invoke-static {}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;->getDefaultInstance()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getOptimisticInitDelayMs()I
    .locals 1

    .line 7152
    iget v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->optimisticInitDelayMs_:I

    return v0
.end method

.method public getOtherPolicy()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;
    .locals 1

    .line 5841
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->otherPolicy_:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    if-nez v0, :cond_0

    invoke-static {}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;->getDefaultInstance()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getOverwriteIntentFlagActivity()I
    .locals 1

    .line 6743
    iget v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->overwriteIntentFlagActivity_:I

    return v0
.end method

.method public hasAccelerometerCollection()Z
    .locals 1

    .line 7065
    iget v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasAdOperations()Z
    .locals 1

    .line 5896
    iget v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasAdPolicy()Z
    .locals 1

    .line 5698
    iget v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasCachedAssetsConfiguration()Z
    .locals 1

    .line 6233
    iget v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasCachedWebviewFilesConfiguration()Z
    .locals 1

    .line 6406
    iget v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasDataLibraryWasmModule()Z
    .locals 1

    .line 7197
    iget v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasDebugSettings()Z
    .locals 1

    .line 6600
    iget v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasDiagnosticEvents()Z
    .locals 2

    .line 5566
    iget v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasDownloadPolicy()Z
    .locals 1

    .line 6534
    iget v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasFeatureFlags()Z
    .locals 1

    .line 5962
    iget v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasInitPolicy()Z
    .locals 1

    .line 5632
    iget v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasLevelPlayAppKey()Z
    .locals 1

    .line 6981
    iget v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasOperativeEventPolicy()Z
    .locals 1

    .line 5764
    iget v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasOptimisticInitDelayMs()Z
    .locals 1

    .line 7138
    iget v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasOtherPolicy()Z
    .locals 1

    .line 5830
    iget v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
