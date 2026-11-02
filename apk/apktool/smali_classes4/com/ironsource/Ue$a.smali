.class public final enum Lcom/ironsource/Ue$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/Ue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/Ue$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/ironsource/Ue$a;

.field public static final enum c:Lcom/ironsource/Ue$a;

.field public static final enum d:Lcom/ironsource/Ue$a;

.field private static final synthetic e:[Lcom/ironsource/Ue$a;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/ironsource/Ue$a;

    const/4 v1, 0x0

    const-string v2, "0"

    const-string v3, "NOT_SET"

    invoke-direct {v0, v3, v1, v2}, Lcom/ironsource/Ue$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ironsource/Ue$a;->b:Lcom/ironsource/Ue$a;

    .line 2
    new-instance v0, Lcom/ironsource/Ue$a;

    const/4 v1, 0x1

    const-string v2, "1"

    const-string v3, "CACHE"

    invoke-direct {v0, v3, v1, v2}, Lcom/ironsource/Ue$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ironsource/Ue$a;->c:Lcom/ironsource/Ue$a;

    .line 3
    new-instance v0, Lcom/ironsource/Ue$a;

    const/4 v1, 0x2

    const-string v2, "2"

    const-string v3, "SERVER"

    invoke-direct {v0, v3, v1, v2}, Lcom/ironsource/Ue$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ironsource/Ue$a;->d:Lcom/ironsource/Ue$a;

    .line 4
    invoke-static {}, Lcom/ironsource/Ue$a;->a()[Lcom/ironsource/Ue$a;

    move-result-object v0

    sput-object v0, Lcom/ironsource/Ue$a;->e:[Lcom/ironsource/Ue$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/ironsource/Ue$a;->a:Ljava/lang/String;

    return-void
.end method

.method private static synthetic a()[Lcom/ironsource/Ue$a;
    .locals 3

    .line 1
    sget-object v0, Lcom/ironsource/Ue$a;->b:Lcom/ironsource/Ue$a;

    sget-object v1, Lcom/ironsource/Ue$a;->c:Lcom/ironsource/Ue$a;

    sget-object v2, Lcom/ironsource/Ue$a;->d:Lcom/ironsource/Ue$a;

    filled-new-array {v0, v1, v2}, [Lcom/ironsource/Ue$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/Ue$a;
    .locals 1

    .line 1
    const-class v0, Lcom/ironsource/Ue$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/Ue$a;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/Ue$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/ironsource/Ue$a;->e:[Lcom/ironsource/Ue$a;

    invoke-virtual {v0}, [Lcom/ironsource/Ue$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/Ue$a;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ue$a;->a:Ljava/lang/String;

    return-object v0
.end method
