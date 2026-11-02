.class public final enum Lcom/applovin/impl/j8$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/j8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum a:Lcom/applovin/impl/j8$a;

.field public static final enum b:Lcom/applovin/impl/j8$a;

.field private static final synthetic c:[Lcom/applovin/impl/j8$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/applovin/impl/j8$a;

    const-string v1, "Progressive"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/j8$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/j8$a;->a:Lcom/applovin/impl/j8$a;

    new-instance v0, Lcom/applovin/impl/j8$a;

    const-string v1, "Streaming"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/j8$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/j8$a;->b:Lcom/applovin/impl/j8$a;

    .line 2
    invoke-static {}, Lcom/applovin/impl/j8$a;->a()[Lcom/applovin/impl/j8$a;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/j8$a;->c:[Lcom/applovin/impl/j8$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic a()[Lcom/applovin/impl/j8$a;
    .locals 2

    .line 1
    sget-object v0, Lcom/applovin/impl/j8$a;->a:Lcom/applovin/impl/j8$a;

    sget-object v1, Lcom/applovin/impl/j8$a;->b:Lcom/applovin/impl/j8$a;

    filled-new-array {v0, v1}, [Lcom/applovin/impl/j8$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/applovin/impl/j8$a;
    .locals 1

    .line 1
    const-class v0, Lcom/applovin/impl/j8$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/applovin/impl/j8$a;

    return-object p0
.end method

.method public static values()[Lcom/applovin/impl/j8$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/applovin/impl/j8$a;->c:[Lcom/applovin/impl/j8$a;

    invoke-virtual {v0}, [Lcom/applovin/impl/j8$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/applovin/impl/j8$a;

    return-object v0
.end method
