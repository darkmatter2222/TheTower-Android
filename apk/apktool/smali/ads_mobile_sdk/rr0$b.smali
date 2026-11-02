.class final enum Lads_mobile_sdk/rr0$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lads_mobile_sdk/rr0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lads_mobile_sdk/rr0$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lads_mobile_sdk/rr0$b;

.field public static final enum c:Lads_mobile_sdk/rr0$b;

.field public static final enum d:Lads_mobile_sdk/rr0$b;

.field public static final enum e:Lads_mobile_sdk/rr0$b;

.field private static final synthetic f:[Lads_mobile_sdk/rr0$b;


# instance fields
.field private final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lads_mobile_sdk/rr0$b;

    const-string v1, "SCALAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lads_mobile_sdk/rr0$b;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lads_mobile_sdk/rr0$b;->b:Lads_mobile_sdk/rr0$b;

    .line 2
    new-instance v0, Lads_mobile_sdk/rr0$b;

    const-string v1, "VECTOR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lads_mobile_sdk/rr0$b;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lads_mobile_sdk/rr0$b;->c:Lads_mobile_sdk/rr0$b;

    .line 3
    new-instance v0, Lads_mobile_sdk/rr0$b;

    const-string v1, "PACKED_VECTOR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v3}, Lads_mobile_sdk/rr0$b;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lads_mobile_sdk/rr0$b;->d:Lads_mobile_sdk/rr0$b;

    .line 4
    new-instance v0, Lads_mobile_sdk/rr0$b;

    const-string v1, "MAP"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Lads_mobile_sdk/rr0$b;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lads_mobile_sdk/rr0$b;->e:Lads_mobile_sdk/rr0$b;

    .line 5
    invoke-static {}, Lads_mobile_sdk/rr0$b;->d()[Lads_mobile_sdk/rr0$b;

    move-result-object v0

    sput-object v0, Lads_mobile_sdk/rr0$b;->f:[Lads_mobile_sdk/rr0$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 319
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 320
    iput-boolean p3, p0, Lads_mobile_sdk/rr0$b;->a:Z

    return-void
.end method

.method private static synthetic d()[Lads_mobile_sdk/rr0$b;
    .locals 4

    .line 311
    sget-object v0, Lads_mobile_sdk/rr0$b;->b:Lads_mobile_sdk/rr0$b;

    sget-object v1, Lads_mobile_sdk/rr0$b;->c:Lads_mobile_sdk/rr0$b;

    sget-object v2, Lads_mobile_sdk/rr0$b;->d:Lads_mobile_sdk/rr0$b;

    sget-object v3, Lads_mobile_sdk/rr0$b;->e:Lads_mobile_sdk/rr0$b;

    filled-new-array {v0, v1, v2, v3}, [Lads_mobile_sdk/rr0$b;

    move-result-object v0

    return-object v0
.end method

.method public static values()[Lads_mobile_sdk/rr0$b;
    .locals 1

    .line 1
    sget-object v0, Lads_mobile_sdk/rr0$b;->f:[Lads_mobile_sdk/rr0$b;

    invoke-virtual {v0}, [Lads_mobile_sdk/rr0$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lads_mobile_sdk/rr0$b;

    return-object v0
.end method
