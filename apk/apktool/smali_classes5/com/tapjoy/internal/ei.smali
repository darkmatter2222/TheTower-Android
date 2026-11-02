.class public final enum Lcom/tapjoy/internal/ei;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tapjoy/internal/ei;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tapjoy/internal/ei;

.field public static final enum b:Lcom/tapjoy/internal/ei;

.field public static final enum c:Lcom/tapjoy/internal/ei;

.field public static final enum d:Lcom/tapjoy/internal/ei;

.field private static final synthetic f:[Lcom/tapjoy/internal/ei;


# instance fields
.field final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 22
    new-instance v0, Lcom/tapjoy/internal/ei;

    const-string v1, "VARINT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/tapjoy/internal/ei;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tapjoy/internal/ei;->a:Lcom/tapjoy/internal/ei;

    new-instance v1, Lcom/tapjoy/internal/ei;

    const-string v2, "FIXED64"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/tapjoy/internal/ei;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tapjoy/internal/ei;->b:Lcom/tapjoy/internal/ei;

    new-instance v2, Lcom/tapjoy/internal/ei;

    const-string v3, "LENGTH_DELIMITED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/tapjoy/internal/ei;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/tapjoy/internal/ei;->c:Lcom/tapjoy/internal/ei;

    new-instance v3, Lcom/tapjoy/internal/ei;

    const/4 v4, 0x3

    const/4 v5, 0x5

    const-string v6, "FIXED32"

    invoke-direct {v3, v6, v4, v5}, Lcom/tapjoy/internal/ei;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/tapjoy/internal/ei;->d:Lcom/tapjoy/internal/ei;

    .line 21
    filled-new-array {v0, v1, v2, v3}, [Lcom/tapjoy/internal/ei;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/ei;->f:[Lcom/tapjoy/internal/ei;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput p3, p0, Lcom/tapjoy/internal/ei;->e:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tapjoy/internal/ei;
    .locals 1

    .line 21
    const-class v0, Lcom/tapjoy/internal/ei;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tapjoy/internal/ei;

    return-object p0
.end method

.method public static values()[Lcom/tapjoy/internal/ei;
    .locals 1

    .line 21
    sget-object v0, Lcom/tapjoy/internal/ei;->f:[Lcom/tapjoy/internal/ei;

    invoke-virtual {v0}, [Lcom/tapjoy/internal/ei;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tapjoy/internal/ei;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/tapjoy/internal/el;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tapjoy/internal/el<",
            "*>;"
        }
    .end annotation

    .line 46
    sget-object v0, Lcom/tapjoy/internal/ei$1;->a:[I

    invoke-virtual {p0}, Lcom/tapjoy/internal/ei;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 54
    sget-object v0, Lcom/tapjoy/internal/el;->q:Lcom/tapjoy/internal/el;

    return-object v0

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 52
    :cond_1
    sget-object v0, Lcom/tapjoy/internal/el;->l:Lcom/tapjoy/internal/el;

    return-object v0

    .line 50
    :cond_2
    sget-object v0, Lcom/tapjoy/internal/el;->g:Lcom/tapjoy/internal/el;

    return-object v0

    .line 48
    :cond_3
    sget-object v0, Lcom/tapjoy/internal/el;->j:Lcom/tapjoy/internal/el;

    return-object v0
.end method
