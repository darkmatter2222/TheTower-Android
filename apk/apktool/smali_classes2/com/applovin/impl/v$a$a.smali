.class public final enum Lcom/applovin/impl/v$a$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/v$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum b:Lcom/applovin/impl/v$a$a;

.field public static final enum c:Lcom/applovin/impl/v$a$a;

.field public static final enum d:Lcom/applovin/impl/v$a$a;

.field private static final synthetic e:[Lcom/applovin/impl/v$a$a;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/applovin/impl/v$a$a;

    const/4 v1, 0x0

    const-string v2, "dnt_not_set"

    const-string v3, "NOT_SET"

    invoke-direct {v0, v3, v1, v2}, Lcom/applovin/impl/v$a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/applovin/impl/v$a$a;->b:Lcom/applovin/impl/v$a$a;

    .line 2
    new-instance v0, Lcom/applovin/impl/v$a$a;

    const/4 v1, 0x1

    const-string v2, "dnt_on"

    const-string v3, "ON"

    invoke-direct {v0, v3, v1, v2}, Lcom/applovin/impl/v$a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/applovin/impl/v$a$a;->c:Lcom/applovin/impl/v$a$a;

    .line 3
    new-instance v0, Lcom/applovin/impl/v$a$a;

    const/4 v1, 0x2

    const-string v2, "dnt_off"

    const-string v3, "OFF"

    invoke-direct {v0, v3, v1, v2}, Lcom/applovin/impl/v$a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/applovin/impl/v$a$a;->d:Lcom/applovin/impl/v$a$a;

    .line 4
    invoke-static {}, Lcom/applovin/impl/v$a$a;->a()[Lcom/applovin/impl/v$a$a;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/v$a$a;->e:[Lcom/applovin/impl/v$a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/applovin/impl/v$a$a;->a:Ljava/lang/String;

    return-void
.end method

.method private static synthetic a()[Lcom/applovin/impl/v$a$a;
    .locals 3

    .line 1
    sget-object v0, Lcom/applovin/impl/v$a$a;->b:Lcom/applovin/impl/v$a$a;

    sget-object v1, Lcom/applovin/impl/v$a$a;->c:Lcom/applovin/impl/v$a$a;

    sget-object v2, Lcom/applovin/impl/v$a$a;->d:Lcom/applovin/impl/v$a$a;

    filled-new-array {v0, v1, v2}, [Lcom/applovin/impl/v$a$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/applovin/impl/v$a$a;
    .locals 1

    .line 1
    const-class v0, Lcom/applovin/impl/v$a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/applovin/impl/v$a$a;

    return-object p0
.end method

.method public static values()[Lcom/applovin/impl/v$a$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/applovin/impl/v$a$a;->e:[Lcom/applovin/impl/v$a$a;

    invoke-virtual {v0}, [Lcom/applovin/impl/v$a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/applovin/impl/v$a$a;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/v$a$a;->a:Ljava/lang/String;

    return-object v0
.end method
