.class public final enum Lcom/applovin/impl/z4$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/z4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum b:Lcom/applovin/impl/z4$a;

.field public static final enum c:Lcom/applovin/impl/z4$a;

.field public static final enum d:Lcom/applovin/impl/z4$a;

.field private static final synthetic e:[Lcom/applovin/impl/z4$a;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/applovin/impl/z4$a;

    const/4 v1, -0x1

    const-string v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/applovin/impl/z4$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/applovin/impl/z4$a;->b:Lcom/applovin/impl/z4$a;

    .line 2
    new-instance v0, Lcom/applovin/impl/z4$a;

    const-string v1, "DEFAULT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/applovin/impl/z4$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/applovin/impl/z4$a;->c:Lcom/applovin/impl/z4$a;

    .line 3
    new-instance v0, Lcom/applovin/impl/z4$a;

    const-string v1, "V2"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/applovin/impl/z4$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/applovin/impl/z4$a;->d:Lcom/applovin/impl/z4$a;

    .line 4
    invoke-static {}, Lcom/applovin/impl/z4$a;->a()[Lcom/applovin/impl/z4$a;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/z4$a;->e:[Lcom/applovin/impl/z4$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/applovin/impl/z4$a;->a:I

    return-void
.end method

.method public static a(I)Lcom/applovin/impl/z4$a;
    .locals 1

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Lcom/applovin/impl/z4$a;->c:Lcom/applovin/impl/z4$a;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 6
    sget-object p0, Lcom/applovin/impl/z4$a;->d:Lcom/applovin/impl/z4$a;

    return-object p0

    .line 10
    :cond_1
    sget-object p0, Lcom/applovin/impl/z4$a;->c:Lcom/applovin/impl/z4$a;

    return-object p0
.end method

.method private static synthetic a()[Lcom/applovin/impl/z4$a;
    .locals 3

    .line 1
    sget-object v0, Lcom/applovin/impl/z4$a;->b:Lcom/applovin/impl/z4$a;

    sget-object v1, Lcom/applovin/impl/z4$a;->c:Lcom/applovin/impl/z4$a;

    sget-object v2, Lcom/applovin/impl/z4$a;->d:Lcom/applovin/impl/z4$a;

    filled-new-array {v0, v1, v2}, [Lcom/applovin/impl/z4$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/applovin/impl/z4$a;
    .locals 1

    .line 1
    const-class v0, Lcom/applovin/impl/z4$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/applovin/impl/z4$a;

    return-object p0
.end method

.method public static values()[Lcom/applovin/impl/z4$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/applovin/impl/z4$a;->e:[Lcom/applovin/impl/z4$a;

    invoke-virtual {v0}, [Lcom/applovin/impl/z4$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/applovin/impl/z4$a;

    return-object v0
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/applovin/impl/z4$a;->a:I

    return v0
.end method
