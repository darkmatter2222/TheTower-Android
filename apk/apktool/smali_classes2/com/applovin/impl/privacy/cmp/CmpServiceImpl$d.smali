.class final enum Lcom/applovin/impl/privacy/cmp/CmpServiceImpl$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/privacy/cmp/CmpServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "d"
.end annotation


# static fields
.field public static final enum a:Lcom/applovin/impl/privacy/cmp/CmpServiceImpl$d;

.field public static final enum b:Lcom/applovin/impl/privacy/cmp/CmpServiceImpl$d;

.field public static final enum c:Lcom/applovin/impl/privacy/cmp/CmpServiceImpl$d;

.field private static final synthetic d:[Lcom/applovin/impl/privacy/cmp/CmpServiceImpl$d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/applovin/impl/privacy/cmp/CmpServiceImpl$d;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/privacy/cmp/CmpServiceImpl$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/privacy/cmp/CmpServiceImpl$d;->a:Lcom/applovin/impl/privacy/cmp/CmpServiceImpl$d;

    .line 2
    new-instance v0, Lcom/applovin/impl/privacy/cmp/CmpServiceImpl$d;

    const-string v1, "LOADING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/privacy/cmp/CmpServiceImpl$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/privacy/cmp/CmpServiceImpl$d;->b:Lcom/applovin/impl/privacy/cmp/CmpServiceImpl$d;

    .line 3
    new-instance v0, Lcom/applovin/impl/privacy/cmp/CmpServiceImpl$d;

    const-string v1, "COMPLETED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/privacy/cmp/CmpServiceImpl$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/privacy/cmp/CmpServiceImpl$d;->c:Lcom/applovin/impl/privacy/cmp/CmpServiceImpl$d;

    .line 4
    invoke-static {}, Lcom/applovin/impl/privacy/cmp/CmpServiceImpl$d;->a()[Lcom/applovin/impl/privacy/cmp/CmpServiceImpl$d;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/privacy/cmp/CmpServiceImpl$d;->d:[Lcom/applovin/impl/privacy/cmp/CmpServiceImpl$d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic a()[Lcom/applovin/impl/privacy/cmp/CmpServiceImpl$d;
    .locals 3

    .line 1
    sget-object v0, Lcom/applovin/impl/privacy/cmp/CmpServiceImpl$d;->a:Lcom/applovin/impl/privacy/cmp/CmpServiceImpl$d;

    sget-object v1, Lcom/applovin/impl/privacy/cmp/CmpServiceImpl$d;->b:Lcom/applovin/impl/privacy/cmp/CmpServiceImpl$d;

    sget-object v2, Lcom/applovin/impl/privacy/cmp/CmpServiceImpl$d;->c:Lcom/applovin/impl/privacy/cmp/CmpServiceImpl$d;

    filled-new-array {v0, v1, v2}, [Lcom/applovin/impl/privacy/cmp/CmpServiceImpl$d;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/applovin/impl/privacy/cmp/CmpServiceImpl$d;
    .locals 1

    .line 1
    const-class v0, Lcom/applovin/impl/privacy/cmp/CmpServiceImpl$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/applovin/impl/privacy/cmp/CmpServiceImpl$d;

    return-object p0
.end method

.method public static values()[Lcom/applovin/impl/privacy/cmp/CmpServiceImpl$d;
    .locals 1

    .line 1
    sget-object v0, Lcom/applovin/impl/privacy/cmp/CmpServiceImpl$d;->d:[Lcom/applovin/impl/privacy/cmp/CmpServiceImpl$d;

    invoke-virtual {v0}, [Lcom/applovin/impl/privacy/cmp/CmpServiceImpl$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/applovin/impl/privacy/cmp/CmpServiceImpl$d;

    return-object v0
.end method
