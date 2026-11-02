.class final enum Lcom/applovin/impl/x$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation


# static fields
.field public static final enum a:Lcom/applovin/impl/x$a;

.field public static final enum b:Lcom/applovin/impl/x$a;

.field public static final enum c:Lcom/applovin/impl/x$a;

.field private static final synthetic d:[Lcom/applovin/impl/x$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/applovin/impl/x$a;

    const-string v1, "VIDEO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/x$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/x$a;->a:Lcom/applovin/impl/x$a;

    .line 2
    new-instance v0, Lcom/applovin/impl/x$a;

    const-string v1, "DISPLAY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/x$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/x$a;->b:Lcom/applovin/impl/x$a;

    .line 3
    new-instance v0, Lcom/applovin/impl/x$a;

    const-string v1, "INTERSTITIAL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/x$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/x$a;->c:Lcom/applovin/impl/x$a;

    .line 4
    invoke-static {}, Lcom/applovin/impl/x$a;->a()[Lcom/applovin/impl/x$a;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/x$a;->d:[Lcom/applovin/impl/x$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic a()[Lcom/applovin/impl/x$a;
    .locals 3

    .line 1
    sget-object v0, Lcom/applovin/impl/x$a;->a:Lcom/applovin/impl/x$a;

    sget-object v1, Lcom/applovin/impl/x$a;->b:Lcom/applovin/impl/x$a;

    sget-object v2, Lcom/applovin/impl/x$a;->c:Lcom/applovin/impl/x$a;

    filled-new-array {v0, v1, v2}, [Lcom/applovin/impl/x$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/applovin/impl/x$a;
    .locals 1

    .line 1
    const-class v0, Lcom/applovin/impl/x$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/applovin/impl/x$a;

    return-object p0
.end method

.method public static values()[Lcom/applovin/impl/x$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/applovin/impl/x$a;->d:[Lcom/applovin/impl/x$a;

    invoke-virtual {v0}, [Lcom/applovin/impl/x$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/applovin/impl/x$a;

    return-object v0
.end method
