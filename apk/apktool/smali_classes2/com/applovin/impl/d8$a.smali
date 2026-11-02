.class public final enum Lcom/applovin/impl/d8$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/d8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum a:Lcom/applovin/impl/d8$a;

.field public static final enum b:Lcom/applovin/impl/d8$a;

.field public static final enum c:Lcom/applovin/impl/d8$a;

.field public static final enum d:Lcom/applovin/impl/d8$a;

.field private static final synthetic e:[Lcom/applovin/impl/d8$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/applovin/impl/d8$a;

    const-string v1, "UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/d8$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/d8$a;->a:Lcom/applovin/impl/d8$a;

    .line 6
    new-instance v0, Lcom/applovin/impl/d8$a;

    const-string v1, "STATIC"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/d8$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/d8$a;->b:Lcom/applovin/impl/d8$a;

    .line 13
    new-instance v0, Lcom/applovin/impl/d8$a;

    const-string v1, "IFRAME"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/d8$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/d8$a;->c:Lcom/applovin/impl/d8$a;

    .line 19
    new-instance v0, Lcom/applovin/impl/d8$a;

    const-string v1, "HTML"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/d8$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/d8$a;->d:Lcom/applovin/impl/d8$a;

    .line 20
    invoke-static {}, Lcom/applovin/impl/d8$a;->a()[Lcom/applovin/impl/d8$a;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/d8$a;->e:[Lcom/applovin/impl/d8$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic a()[Lcom/applovin/impl/d8$a;
    .locals 4

    .line 1
    sget-object v0, Lcom/applovin/impl/d8$a;->a:Lcom/applovin/impl/d8$a;

    sget-object v1, Lcom/applovin/impl/d8$a;->b:Lcom/applovin/impl/d8$a;

    sget-object v2, Lcom/applovin/impl/d8$a;->c:Lcom/applovin/impl/d8$a;

    sget-object v3, Lcom/applovin/impl/d8$a;->d:Lcom/applovin/impl/d8$a;

    filled-new-array {v0, v1, v2, v3}, [Lcom/applovin/impl/d8$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/applovin/impl/d8$a;
    .locals 1

    .line 1
    const-class v0, Lcom/applovin/impl/d8$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/applovin/impl/d8$a;

    return-object p0
.end method

.method public static values()[Lcom/applovin/impl/d8$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/applovin/impl/d8$a;->e:[Lcom/applovin/impl/d8$a;

    invoke-virtual {v0}, [Lcom/applovin/impl/d8$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/applovin/impl/d8$a;

    return-object v0
.end method
