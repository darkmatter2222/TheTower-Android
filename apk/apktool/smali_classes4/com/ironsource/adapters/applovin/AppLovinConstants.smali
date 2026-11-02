.class public final Lcom/ironsource/adapters/applovin/AppLovinConstants;
.super Ljava/lang/Object;
.source "AppLovinConstants.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adapters/applovin/AppLovinConstants$Logs;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0016B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000eX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000eX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000eX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u000eX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u000eX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u000eX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u000eX\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/ironsource/adapters/applovin/AppLovinConstants;",
        "",
        "<init>",
        "()V",
        "ADAPTER_VERSION",
        "",
        "ZONE_ID_KEY",
        "SDK_KEY",
        "BANNER_SIZE_BANNER",
        "BANNER_SIZE_LARGE",
        "BANNER_SIZE_RECTANGLE",
        "BANNER_SIZE_SMART",
        "BANNER_SIZE_CUSTOM",
        "BANNER_WIDTH",
        "",
        "BANNER_HEIGHT",
        "RECTANGLE_WIDTH",
        "RECTANGLE_HEIGHT",
        "LARGE_WIDTH",
        "LARGE_HEIGHT",
        "CUSTOM_BANNER_MIN_HEIGHT",
        "CUSTOM_BANNER_MAX_HEIGHT",
        "Logs",
        "applovinadapter_release"
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
.field public static final ADAPTER_VERSION:Ljava/lang/String; = "5.9.0"

.field public static final BANNER_HEIGHT:I = 0x32

.field public static final BANNER_SIZE_BANNER:Ljava/lang/String; = "BANNER"

.field public static final BANNER_SIZE_CUSTOM:Ljava/lang/String; = "CUSTOM"

.field public static final BANNER_SIZE_LARGE:Ljava/lang/String; = "LARGE"

.field public static final BANNER_SIZE_RECTANGLE:Ljava/lang/String; = "RECTANGLE"

.field public static final BANNER_SIZE_SMART:Ljava/lang/String; = "SMART"

.field public static final BANNER_WIDTH:I = 0x140

.field public static final CUSTOM_BANNER_MAX_HEIGHT:I = 0x3c

.field public static final CUSTOM_BANNER_MIN_HEIGHT:I = 0x28

.field public static final INSTANCE:Lcom/ironsource/adapters/applovin/AppLovinConstants;

.field public static final LARGE_HEIGHT:I = 0x5a

.field public static final LARGE_WIDTH:I = 0x2d8

.field public static final RECTANGLE_HEIGHT:I = 0xfa

.field public static final RECTANGLE_WIDTH:I = 0x12c

.field public static final SDK_KEY:Ljava/lang/String; = "sdkKey"

.field public static final ZONE_ID_KEY:Ljava/lang/String; = "zoneId"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ironsource/adapters/applovin/AppLovinConstants;

    invoke-direct {v0}, Lcom/ironsource/adapters/applovin/AppLovinConstants;-><init>()V

    sput-object v0, Lcom/ironsource/adapters/applovin/AppLovinConstants;->INSTANCE:Lcom/ironsource/adapters/applovin/AppLovinConstants;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
