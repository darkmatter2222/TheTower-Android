.class final enum Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "d"
.end annotation


# static fields
.field public static final enum b:Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$d;

.field public static final enum c:Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$d;

.field public static final enum d:Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$d;

.field private static final synthetic e:[Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$d;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$d;

    const/4 v1, 0x0

    const-string v2, "none"

    const-string v3, "NONE"

    invoke-direct {v0, v3, v1, v2}, Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$d;->b:Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$d;

    .line 2
    new-instance v0, Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$d;

    const/4 v1, 0x1

    const-string v2, "failover_cache"

    const-string v3, "FAILOVER_CACHE"

    invoke-direct {v0, v3, v1, v2}, Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$d;->c:Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$d;

    .line 3
    new-instance v0, Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$d;

    const/4 v1, 0x2

    const-string v2, "preloaded_ads_queue"

    const-string v3, "PRELOADED_ADS_QUEUE"

    invoke-direct {v0, v3, v1, v2}, Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$d;->d:Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$d;

    .line 4
    invoke-static {}, Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$d;->a()[Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$d;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$d;->e:[Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$d;->a:Ljava/lang/String;

    return-void
.end method

.method private static synthetic a()[Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$d;
    .locals 3

    .line 1
    sget-object v0, Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$d;->b:Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$d;

    sget-object v1, Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$d;->c:Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$d;

    sget-object v2, Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$d;->d:Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$d;

    filled-new-array {v0, v1, v2}, [Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$d;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$d;
    .locals 1

    .line 1
    const-class v0, Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$d;

    return-object p0
.end method

.method public static values()[Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$d;
    .locals 1

    .line 1
    sget-object v0, Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$d;->e:[Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$d;

    invoke-virtual {v0}, [Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$d;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$d;->a:Ljava/lang/String;

    return-object v0
.end method
