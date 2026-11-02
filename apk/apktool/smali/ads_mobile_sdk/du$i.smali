.class final enum Lads_mobile_sdk/du$i;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lads_mobile_sdk/du;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lads_mobile_sdk/du$i;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lads_mobile_sdk/du$i;

.field public static final enum b:Lads_mobile_sdk/du$i;

.field public static final enum c:Lads_mobile_sdk/du$i;

.field public static final enum d:Lads_mobile_sdk/du$i;

.field private static final synthetic e:[Lads_mobile_sdk/du$i;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lads_mobile_sdk/du$i;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lads_mobile_sdk/du$i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lads_mobile_sdk/du$i;->a:Lads_mobile_sdk/du$i;

    .line 3
    new-instance v0, Lads_mobile_sdk/du$i;

    const-string v1, "DUAL_STATE_BYTE_STRING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lads_mobile_sdk/du$i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lads_mobile_sdk/du$i;->b:Lads_mobile_sdk/du$i;

    .line 6
    new-instance v0, Lads_mobile_sdk/du$i;

    const-string v1, "DEFERRED_DECODING_AND_CACHE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lads_mobile_sdk/du$i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lads_mobile_sdk/du$i;->c:Lads_mobile_sdk/du$i;

    .line 9
    new-instance v0, Lads_mobile_sdk/du$i;

    const-string v1, "DEFERRED_DECODING_AND_NO_CACHE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lads_mobile_sdk/du$i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lads_mobile_sdk/du$i;->d:Lads_mobile_sdk/du$i;

    .line 10
    invoke-static {}, Lads_mobile_sdk/du$i;->d()[Lads_mobile_sdk/du$i;

    move-result-object v0

    sput-object v0, Lads_mobile_sdk/du$i;->e:[Lads_mobile_sdk/du$i;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic d()[Lads_mobile_sdk/du$i;
    .locals 4

    .line 85
    sget-object v0, Lads_mobile_sdk/du$i;->a:Lads_mobile_sdk/du$i;

    sget-object v1, Lads_mobile_sdk/du$i;->b:Lads_mobile_sdk/du$i;

    sget-object v2, Lads_mobile_sdk/du$i;->c:Lads_mobile_sdk/du$i;

    sget-object v3, Lads_mobile_sdk/du$i;->d:Lads_mobile_sdk/du$i;

    filled-new-array {v0, v1, v2, v3}, [Lads_mobile_sdk/du$i;

    move-result-object v0

    return-object v0
.end method

.method public static values()[Lads_mobile_sdk/du$i;
    .locals 1

    .line 1
    sget-object v0, Lads_mobile_sdk/du$i;->e:[Lads_mobile_sdk/du$i;

    invoke-virtual {v0}, [Lads_mobile_sdk/du$i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lads_mobile_sdk/du$i;

    return-object v0
.end method
