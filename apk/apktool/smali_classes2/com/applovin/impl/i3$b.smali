.class public final enum Lcom/applovin/impl/i3$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/i3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation


# static fields
.field public static final enum d:Lcom/applovin/impl/i3$b;

.field public static final enum e:Lcom/applovin/impl/i3$b;

.field public static final enum f:Lcom/applovin/impl/i3$b;

.field public static final enum g:Lcom/applovin/impl/i3$b;

.field public static final enum h:Lcom/applovin/impl/i3$b;

.field private static final synthetic i:[Lcom/applovin/impl/i3$b;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/applovin/impl/i3$b;

    const/high16 v4, -0x10000

    const-string v5, "This network does not support test mode."

    const-string v1, "NOT_SUPPORTED"

    const/4 v2, 0x0

    const-string v3, "Not Supported"

    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/i3$b;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/applovin/impl/i3$b;->d:Lcom/applovin/impl/i3$b;

    .line 6
    new-instance v1, Lcom/applovin/impl/i3$b;

    const/high16 v5, -0x10000

    const-string v6, "Please address all the integration issue(s) marked in red above."

    const-string v2, "INVALID_INTEGRATION"

    const/4 v3, 0x1

    const-string v4, "Invalid Integration"

    invoke-direct/range {v1 .. v6}, Lcom/applovin/impl/i3$b;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/applovin/impl/i3$b;->e:Lcom/applovin/impl/i3$b;

    .line 11
    new-instance v2, Lcom/applovin/impl/i3$b;

    const/high16 v6, -0x10000

    const-string v7, "Please configure this network in your MAX dashboard."

    const-string v3, "NOT_INITIALIZED"

    const/4 v4, 0x2

    const-string v5, "Not Initialized"

    invoke-direct/range {v2 .. v7}, Lcom/applovin/impl/i3$b;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/applovin/impl/i3$b;->f:Lcom/applovin/impl/i3$b;

    .line 16
    new-instance v3, Lcom/applovin/impl/i3$b;

    const v7, -0xffff01

    const-string v8, "Please re-launch the app to enable test ads."

    const-string v4, "DISABLED"

    const/4 v5, 0x3

    const-string v6, "Enable"

    invoke-direct/range {v3 .. v8}, Lcom/applovin/impl/i3$b;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/applovin/impl/i3$b;->g:Lcom/applovin/impl/i3$b;

    .line 21
    new-instance v4, Lcom/applovin/impl/i3$b;

    const v8, -0xffff01

    const-string v9, ""

    const-string v5, "READY"

    const/4 v6, 0x4

    const-string v7, ""

    invoke-direct/range {v4 .. v9}, Lcom/applovin/impl/i3$b;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/applovin/impl/i3$b;->h:Lcom/applovin/impl/i3$b;

    .line 22
    invoke-static {}, Lcom/applovin/impl/i3$b;->a()[Lcom/applovin/impl/i3$b;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/i3$b;->i:[Lcom/applovin/impl/i3$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/applovin/impl/i3$b;->a:Ljava/lang/String;

    .line 3
    iput p4, p0, Lcom/applovin/impl/i3$b;->b:I

    .line 4
    iput-object p5, p0, Lcom/applovin/impl/i3$b;->c:Ljava/lang/String;

    return-void
.end method

.method private static synthetic a()[Lcom/applovin/impl/i3$b;
    .locals 5

    .line 1
    sget-object v0, Lcom/applovin/impl/i3$b;->d:Lcom/applovin/impl/i3$b;

    sget-object v1, Lcom/applovin/impl/i3$b;->e:Lcom/applovin/impl/i3$b;

    sget-object v2, Lcom/applovin/impl/i3$b;->f:Lcom/applovin/impl/i3$b;

    sget-object v3, Lcom/applovin/impl/i3$b;->g:Lcom/applovin/impl/i3$b;

    sget-object v4, Lcom/applovin/impl/i3$b;->h:Lcom/applovin/impl/i3$b;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/applovin/impl/i3$b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/applovin/impl/i3$b;
    .locals 1

    .line 1
    const-class v0, Lcom/applovin/impl/i3$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/applovin/impl/i3$b;

    return-object p0
.end method

.method public static values()[Lcom/applovin/impl/i3$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/applovin/impl/i3$b;->i:[Lcom/applovin/impl/i3$b;

    invoke-virtual {v0}, [Lcom/applovin/impl/i3$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/applovin/impl/i3$b;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/i3$b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/i3$b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/applovin/impl/i3$b;->b:I

    return v0
.end method
