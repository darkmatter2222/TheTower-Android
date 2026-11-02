.class public final Lcom/ironsource/adapters/unityads/UnityAdsConstants$Logs;
.super Ljava/lang/Object;
.source "UnityAdsConstants.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adapters/unityads/UnityAdsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Logs"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0010\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/ironsource/adapters/unityads/UnityAdsConstants$Logs;",
        "",
        "<init>",
        "()V",
        "SOURCE_ID",
        "",
        "ZONE_ID",
        "MISSING_PARAM",
        "NETWORK_ADAPTER_IS_NULL",
        "INIT_FAILED",
        "SDK_INIT_FAILED",
        "META_DATA_SET",
        "CCPA",
        "COPPA",
        "CONSENT",
        "FAILED_TO_LOAD",
        "FAILED_TO_SHOW",
        "AD_NOT_AVAILABLE",
        "UNSUPPORTED_BANNER_SIZE",
        "TOKEN",
        "TOKEN_FAILURE",
        "unityadsadapter_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final AD_NOT_AVAILABLE:Ljava/lang/String; = "Ad is not available"

.field public static final CCPA:Ljava/lang/String; = "ccpa = %s"

.field public static final CONSENT:Ljava/lang/String; = "consent = %s"

.field public static final COPPA:Ljava/lang/String; = "coppa = %s"

.field public static final FAILED_TO_LOAD:Ljava/lang/String; = "Failed to load, errorCode = %s, errorMessage = %s"

.field public static final FAILED_TO_SHOW:Ljava/lang/String; = "Failed to show, errorCode = %s, errorMessage = %s"

.field public static final INIT_FAILED:Ljava/lang/String; = "init failed, errorCode = %s, errorMessage = %s"

.field public static final INSTANCE:Lcom/ironsource/adapters/unityads/UnityAdsConstants$Logs;

.field public static final META_DATA_SET:Ljava/lang/String; = "key = %s, value = %s"

.field public static final MISSING_PARAM:Ljava/lang/String; = "Missing params - %s"

.field public static final NETWORK_ADAPTER_IS_NULL:Ljava/lang/String; = "Network adapter is null"

.field public static final SDK_INIT_FAILED:Ljava/lang/String; = "UnityAds SDK init failed"

.field public static final SOURCE_ID:Ljava/lang/String; = "sourceId = %s"

.field public static final TOKEN:Ljava/lang/String; = "token = %s"

.field public static final TOKEN_FAILURE:Ljava/lang/String; = "failed to receive token - UnityAds"

.field public static final UNSUPPORTED_BANNER_SIZE:Ljava/lang/String; = "Banner size is not supported"

.field public static final ZONE_ID:Ljava/lang/String; = "zoneId = %s"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ironsource/adapters/unityads/UnityAdsConstants$Logs;

    invoke-direct {v0}, Lcom/ironsource/adapters/unityads/UnityAdsConstants$Logs;-><init>()V

    sput-object v0, Lcom/ironsource/adapters/unityads/UnityAdsConstants$Logs;->INSTANCE:Lcom/ironsource/adapters/unityads/UnityAdsConstants$Logs;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
