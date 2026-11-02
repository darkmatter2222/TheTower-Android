.class public final enum Lcom/ironsource/t8$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/t8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/t8$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/ironsource/t8$d;

.field public static final enum c:Lcom/ironsource/t8$d;

.field public static final enum d:Lcom/ironsource/t8$d;

.field public static final enum e:Lcom/ironsource/t8$d;

.field private static final synthetic f:[Lcom/ironsource/t8$d;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/ironsource/t8$d;

    const-string v1, "MODE_0"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/ironsource/t8$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/t8$d;->b:Lcom/ironsource/t8$d;

    .line 2
    new-instance v0, Lcom/ironsource/t8$d;

    const-string v1, "MODE_1"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/ironsource/t8$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/t8$d;->c:Lcom/ironsource/t8$d;

    .line 3
    new-instance v0, Lcom/ironsource/t8$d;

    const-string v1, "MODE_2"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/ironsource/t8$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/t8$d;->d:Lcom/ironsource/t8$d;

    .line 4
    new-instance v0, Lcom/ironsource/t8$d;

    const-string v1, "MODE_3"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/ironsource/t8$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/t8$d;->e:Lcom/ironsource/t8$d;

    .line 5
    invoke-static {}, Lcom/ironsource/t8$d;->a()[Lcom/ironsource/t8$d;

    move-result-object v0

    sput-object v0, Lcom/ironsource/t8$d;->f:[Lcom/ironsource/t8$d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/ironsource/t8$d;->a:I

    return-void
.end method

.method private static synthetic a()[Lcom/ironsource/t8$d;
    .locals 4

    .line 1
    sget-object v0, Lcom/ironsource/t8$d;->b:Lcom/ironsource/t8$d;

    sget-object v1, Lcom/ironsource/t8$d;->c:Lcom/ironsource/t8$d;

    sget-object v2, Lcom/ironsource/t8$d;->d:Lcom/ironsource/t8$d;

    sget-object v3, Lcom/ironsource/t8$d;->e:Lcom/ironsource/t8$d;

    filled-new-array {v0, v1, v2, v3}, [Lcom/ironsource/t8$d;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/t8$d;
    .locals 1

    .line 1
    const-class v0, Lcom/ironsource/t8$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/t8$d;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/t8$d;
    .locals 1

    .line 1
    sget-object v0, Lcom/ironsource/t8$d;->f:[Lcom/ironsource/t8$d;

    invoke-virtual {v0}, [Lcom/ironsource/t8$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/t8$d;

    return-object v0
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ironsource/t8$d;->a:I

    return v0
.end method
