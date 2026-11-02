.class public final enum Lcom/applovin/impl/h2$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/h2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation


# static fields
.field public static final enum a:Lcom/applovin/impl/h2$b;

.field public static final enum b:Lcom/applovin/impl/h2$b;

.field public static final enum c:Lcom/applovin/impl/h2$b;

.field public static final enum d:Lcom/applovin/impl/h2$b;

.field private static final synthetic e:[Lcom/applovin/impl/h2$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/applovin/impl/h2$b;

    const-string v1, "AD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/h2$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/h2$b;->a:Lcom/applovin/impl/h2$b;

    .line 2
    new-instance v0, Lcom/applovin/impl/h2$b;

    const-string v1, "MEDIATED_AD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/h2$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/h2$b;->b:Lcom/applovin/impl/h2$b;

    .line 3
    new-instance v0, Lcom/applovin/impl/h2$b;

    const-string v1, "ERROR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/h2$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/h2$b;->c:Lcom/applovin/impl/h2$b;

    .line 4
    new-instance v0, Lcom/applovin/impl/h2$b;

    const-string v1, "USER_SESSION"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/h2$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/h2$b;->d:Lcom/applovin/impl/h2$b;

    .line 5
    invoke-static {}, Lcom/applovin/impl/h2$b;->a()[Lcom/applovin/impl/h2$b;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/h2$b;->e:[Lcom/applovin/impl/h2$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic a()[Lcom/applovin/impl/h2$b;
    .locals 4

    .line 1
    sget-object v0, Lcom/applovin/impl/h2$b;->a:Lcom/applovin/impl/h2$b;

    sget-object v1, Lcom/applovin/impl/h2$b;->b:Lcom/applovin/impl/h2$b;

    sget-object v2, Lcom/applovin/impl/h2$b;->c:Lcom/applovin/impl/h2$b;

    sget-object v3, Lcom/applovin/impl/h2$b;->d:Lcom/applovin/impl/h2$b;

    filled-new-array {v0, v1, v2, v3}, [Lcom/applovin/impl/h2$b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/applovin/impl/h2$b;
    .locals 1

    .line 1
    const-class v0, Lcom/applovin/impl/h2$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/applovin/impl/h2$b;

    return-object p0
.end method

.method public static values()[Lcom/applovin/impl/h2$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/applovin/impl/h2$b;->e:[Lcom/applovin/impl/h2$b;

    invoke-virtual {v0}, [Lcom/applovin/impl/h2$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/applovin/impl/h2$b;

    return-object v0
.end method
