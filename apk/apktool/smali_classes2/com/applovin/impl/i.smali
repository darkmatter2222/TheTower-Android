.class public final enum Lcom/applovin/impl/i;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lcom/applovin/impl/i;

.field public static final enum c:Lcom/applovin/impl/i;

.field public static final enum d:Lcom/applovin/impl/i;

.field public static final enum e:Lcom/applovin/impl/i;

.field public static final enum f:Lcom/applovin/impl/i;

.field public static final enum g:Lcom/applovin/impl/i;

.field private static final synthetic h:[Lcom/applovin/impl/i;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/applovin/impl/i;

    const/4 v1, 0x0

    const-string v2, "publisher_initiated"

    const-string v3, "PUBLISHER_INITIATED"

    invoke-direct {v0, v3, v1, v2}, Lcom/applovin/impl/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/applovin/impl/i;->b:Lcom/applovin/impl/i;

    .line 2
    new-instance v0, Lcom/applovin/impl/i;

    const/4 v1, 0x1

    const-string v2, "sequential_or_precache"

    const-string v3, "SEQUENTIAL_OR_PRECACHE"

    invoke-direct {v0, v3, v1, v2}, Lcom/applovin/impl/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/applovin/impl/i;->c:Lcom/applovin/impl/i;

    .line 3
    new-instance v0, Lcom/applovin/impl/i;

    const/4 v1, 0x2

    const-string v2, "refresh"

    const-string v3, "REFRESH"

    invoke-direct {v0, v3, v1, v2}, Lcom/applovin/impl/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/applovin/impl/i;->d:Lcom/applovin/impl/i;

    .line 4
    new-instance v0, Lcom/applovin/impl/i;

    const/4 v1, 0x3

    const-string v2, "exponential_retry"

    const-string v3, "EXPONENTIAL_RETRY"

    invoke-direct {v0, v3, v1, v2}, Lcom/applovin/impl/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/applovin/impl/i;->e:Lcom/applovin/impl/i;

    .line 5
    new-instance v0, Lcom/applovin/impl/i;

    const/4 v1, 0x4

    const-string v2, "expired"

    const-string v3, "EXPIRED"

    invoke-direct {v0, v3, v1, v2}, Lcom/applovin/impl/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/applovin/impl/i;->f:Lcom/applovin/impl/i;

    .line 6
    new-instance v0, Lcom/applovin/impl/i;

    const/4 v1, 0x5

    const-string v2, "native_ad_placer"

    const-string v3, "NATIVE_AD_PLACER"

    invoke-direct {v0, v3, v1, v2}, Lcom/applovin/impl/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/applovin/impl/i;->g:Lcom/applovin/impl/i;

    .line 7
    invoke-static {}, Lcom/applovin/impl/i;->a()[Lcom/applovin/impl/i;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/i;->h:[Lcom/applovin/impl/i;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/applovin/impl/i;->a:Ljava/lang/String;

    return-void
.end method

.method private static synthetic a()[Lcom/applovin/impl/i;
    .locals 6

    .line 1
    sget-object v0, Lcom/applovin/impl/i;->b:Lcom/applovin/impl/i;

    sget-object v1, Lcom/applovin/impl/i;->c:Lcom/applovin/impl/i;

    sget-object v2, Lcom/applovin/impl/i;->d:Lcom/applovin/impl/i;

    sget-object v3, Lcom/applovin/impl/i;->e:Lcom/applovin/impl/i;

    sget-object v4, Lcom/applovin/impl/i;->f:Lcom/applovin/impl/i;

    sget-object v5, Lcom/applovin/impl/i;->g:Lcom/applovin/impl/i;

    filled-new-array/range {v0 .. v5}, [Lcom/applovin/impl/i;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/applovin/impl/i;
    .locals 1

    .line 1
    const-class v0, Lcom/applovin/impl/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/applovin/impl/i;

    return-object p0
.end method

.method public static values()[Lcom/applovin/impl/i;
    .locals 1

    .line 1
    sget-object v0, Lcom/applovin/impl/i;->h:[Lcom/applovin/impl/i;

    invoke-virtual {v0}, [Lcom/applovin/impl/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/applovin/impl/i;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/i;->a:Ljava/lang/String;

    return-object v0
.end method
