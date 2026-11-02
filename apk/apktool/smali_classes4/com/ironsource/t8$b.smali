.class public final enum Lcom/ironsource/t8$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/t8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/t8$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ironsource/t8$b;

.field public static final enum b:Lcom/ironsource/t8$b;

.field public static final enum c:Lcom/ironsource/t8$b;

.field public static final enum d:Lcom/ironsource/t8$b;

.field public static final enum e:Lcom/ironsource/t8$b;

.field private static final synthetic f:[Lcom/ironsource/t8$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/ironsource/t8$b;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ironsource/t8$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/t8$b;->a:Lcom/ironsource/t8$b;

    .line 2
    new-instance v0, Lcom/ironsource/t8$b;

    const-string v1, "Loading"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ironsource/t8$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/t8$b;->b:Lcom/ironsource/t8$b;

    .line 3
    new-instance v0, Lcom/ironsource/t8$b;

    const-string v1, "Loaded"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/ironsource/t8$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/t8$b;->c:Lcom/ironsource/t8$b;

    .line 4
    new-instance v0, Lcom/ironsource/t8$b;

    const-string v1, "Ready"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/ironsource/t8$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/t8$b;->d:Lcom/ironsource/t8$b;

    .line 5
    new-instance v0, Lcom/ironsource/t8$b;

    const-string v1, "Failed"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/ironsource/t8$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/t8$b;->e:Lcom/ironsource/t8$b;

    .line 6
    invoke-static {}, Lcom/ironsource/t8$b;->a()[Lcom/ironsource/t8$b;

    move-result-object v0

    sput-object v0, Lcom/ironsource/t8$b;->f:[Lcom/ironsource/t8$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic a()[Lcom/ironsource/t8$b;
    .locals 5

    .line 1
    sget-object v0, Lcom/ironsource/t8$b;->a:Lcom/ironsource/t8$b;

    sget-object v1, Lcom/ironsource/t8$b;->b:Lcom/ironsource/t8$b;

    sget-object v2, Lcom/ironsource/t8$b;->c:Lcom/ironsource/t8$b;

    sget-object v3, Lcom/ironsource/t8$b;->d:Lcom/ironsource/t8$b;

    sget-object v4, Lcom/ironsource/t8$b;->e:Lcom/ironsource/t8$b;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/ironsource/t8$b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/t8$b;
    .locals 1

    .line 1
    const-class v0, Lcom/ironsource/t8$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/t8$b;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/t8$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/ironsource/t8$b;->f:[Lcom/ironsource/t8$b;

    invoke-virtual {v0}, [Lcom/ironsource/t8$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/t8$b;

    return-object v0
.end method
