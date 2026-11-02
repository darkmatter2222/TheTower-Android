.class public final enum Lcom/applovin/impl/sdk/SessionTracker$e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/sdk/SessionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation


# static fields
.field public static final enum b:Lcom/applovin/impl/sdk/SessionTracker$e;

.field public static final enum c:Lcom/applovin/impl/sdk/SessionTracker$e;

.field public static final enum d:Lcom/applovin/impl/sdk/SessionTracker$e;

.field private static final synthetic e:[Lcom/applovin/impl/sdk/SessionTracker$e;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/applovin/impl/sdk/SessionTracker$e;

    const/4 v1, 0x0

    const-string v2, "started"

    const-string v3, "STARTED"

    invoke-direct {v0, v3, v1, v2}, Lcom/applovin/impl/sdk/SessionTracker$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/applovin/impl/sdk/SessionTracker$e;->b:Lcom/applovin/impl/sdk/SessionTracker$e;

    .line 6
    new-instance v0, Lcom/applovin/impl/sdk/SessionTracker$e;

    const/4 v1, 0x1

    const-string v2, "paused"

    const-string v3, "PAUSED"

    invoke-direct {v0, v3, v1, v2}, Lcom/applovin/impl/sdk/SessionTracker$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/applovin/impl/sdk/SessionTracker$e;->c:Lcom/applovin/impl/sdk/SessionTracker$e;

    .line 11
    new-instance v0, Lcom/applovin/impl/sdk/SessionTracker$e;

    const/4 v1, 0x2

    const-string v2, "resumed"

    const-string v3, "RESUMED"

    invoke-direct {v0, v3, v1, v2}, Lcom/applovin/impl/sdk/SessionTracker$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/applovin/impl/sdk/SessionTracker$e;->d:Lcom/applovin/impl/sdk/SessionTracker$e;

    .line 12
    invoke-static {}, Lcom/applovin/impl/sdk/SessionTracker$e;->a()[Lcom/applovin/impl/sdk/SessionTracker$e;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/SessionTracker$e;->e:[Lcom/applovin/impl/sdk/SessionTracker$e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/applovin/impl/sdk/SessionTracker$e;->a:Ljava/lang/String;

    return-void
.end method

.method private static synthetic a()[Lcom/applovin/impl/sdk/SessionTracker$e;
    .locals 3

    .line 1
    sget-object v0, Lcom/applovin/impl/sdk/SessionTracker$e;->b:Lcom/applovin/impl/sdk/SessionTracker$e;

    sget-object v1, Lcom/applovin/impl/sdk/SessionTracker$e;->c:Lcom/applovin/impl/sdk/SessionTracker$e;

    sget-object v2, Lcom/applovin/impl/sdk/SessionTracker$e;->d:Lcom/applovin/impl/sdk/SessionTracker$e;

    filled-new-array {v0, v1, v2}, [Lcom/applovin/impl/sdk/SessionTracker$e;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/applovin/impl/sdk/SessionTracker$e;
    .locals 1

    .line 1
    const-class v0, Lcom/applovin/impl/sdk/SessionTracker$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/applovin/impl/sdk/SessionTracker$e;

    return-object p0
.end method

.method public static values()[Lcom/applovin/impl/sdk/SessionTracker$e;
    .locals 1

    .line 1
    sget-object v0, Lcom/applovin/impl/sdk/SessionTracker$e;->e:[Lcom/applovin/impl/sdk/SessionTracker$e;

    invoke-virtual {v0}, [Lcom/applovin/impl/sdk/SessionTracker$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/applovin/impl/sdk/SessionTracker$e;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/sdk/SessionTracker$e;->a:Ljava/lang/String;

    return-object v0
.end method
