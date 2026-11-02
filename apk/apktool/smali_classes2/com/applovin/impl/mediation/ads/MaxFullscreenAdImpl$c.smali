.class public final enum Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation


# static fields
.field public static final enum a:Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c;

.field public static final enum b:Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c;

.field public static final enum c:Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c;

.field public static final enum d:Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c;

.field public static final enum e:Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c;

.field private static final synthetic f:[Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c;->a:Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c;

    .line 6
    new-instance v0, Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c;

    const-string v1, "LOADING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c;->b:Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c;

    .line 11
    new-instance v0, Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c;

    const-string v1, "READY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c;->c:Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c;

    .line 16
    new-instance v0, Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c;

    const-string v1, "SHOWING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c;->d:Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c;

    .line 21
    new-instance v0, Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c;

    const-string v1, "DESTROYED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c;->e:Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c;

    .line 22
    invoke-static {}, Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c;->a()[Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c;->f:[Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic a()[Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c;
    .locals 5

    .line 1
    sget-object v0, Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c;->a:Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c;

    sget-object v1, Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c;->b:Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c;

    sget-object v2, Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c;->c:Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c;

    sget-object v3, Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c;->d:Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c;

    sget-object v4, Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c;->e:Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c;
    .locals 1

    .line 1
    const-class v0, Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c;

    return-object p0
.end method

.method public static values()[Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c;
    .locals 1

    .line 1
    sget-object v0, Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c;->f:[Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c;

    invoke-virtual {v0}, [Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c;

    return-object v0
.end method
