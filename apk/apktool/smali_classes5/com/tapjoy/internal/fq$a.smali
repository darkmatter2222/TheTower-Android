.class public final enum Lcom/tapjoy/internal/fq$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/fq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tapjoy/internal/fq$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tapjoy/internal/fq$a;

.field public static final enum b:Lcom/tapjoy/internal/fq$a;

.field private static final synthetic d:[Lcom/tapjoy/internal/fq$a;


# instance fields
.field public c:B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 23
    new-instance v0, Lcom/tapjoy/internal/fq$a;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "SDK_ANDROID"

    invoke-direct {v0, v3, v1, v2}, Lcom/tapjoy/internal/fq$a;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/tapjoy/internal/fq$a;->a:Lcom/tapjoy/internal/fq$a;

    .line 24
    new-instance v1, Lcom/tapjoy/internal/fq$a;

    const/4 v2, 0x1

    const/16 v3, 0x31

    const-string v4, "RPC_ANALYTICS"

    invoke-direct {v1, v4, v2, v3}, Lcom/tapjoy/internal/fq$a;-><init>(Ljava/lang/String;IB)V

    sput-object v1, Lcom/tapjoy/internal/fq$a;->b:Lcom/tapjoy/internal/fq$a;

    .line 22
    filled-new-array {v0, v1}, [Lcom/tapjoy/internal/fq$a;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/fq$a;->d:[Lcom/tapjoy/internal/fq$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput-byte p3, p0, Lcom/tapjoy/internal/fq$a;->c:B

    return-void
.end method

.method public static a(B)Lcom/tapjoy/internal/fq$a;
    .locals 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 35
    invoke-static {}, Lcom/tapjoy/internal/fq$a;->values()[Lcom/tapjoy/internal/fq$a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 36
    iget-byte v4, v3, Lcom/tapjoy/internal/fq$a;->c:B

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tapjoy/internal/fq$a;
    .locals 1

    .line 22
    const-class v0, Lcom/tapjoy/internal/fq$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tapjoy/internal/fq$a;

    return-object p0
.end method

.method public static values()[Lcom/tapjoy/internal/fq$a;
    .locals 1

    .line 22
    sget-object v0, Lcom/tapjoy/internal/fq$a;->d:[Lcom/tapjoy/internal/fq$a;

    invoke-virtual {v0}, [Lcom/tapjoy/internal/fq$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tapjoy/internal/fq$a;

    return-object v0
.end method
