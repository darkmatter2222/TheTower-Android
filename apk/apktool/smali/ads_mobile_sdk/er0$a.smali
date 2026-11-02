.class final enum Lads_mobile_sdk/er0$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lads_mobile_sdk/er0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lads_mobile_sdk/er0$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lads_mobile_sdk/er0$a;

.field public static final enum b:Lads_mobile_sdk/er0$a;

.field private static final synthetic c:[Lads_mobile_sdk/er0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lads_mobile_sdk/er0$a;

    const-string v1, "EAGER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lads_mobile_sdk/er0$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lads_mobile_sdk/er0$a;->a:Lads_mobile_sdk/er0$a;

    .line 4
    new-instance v0, Lads_mobile_sdk/er0$a;

    const-string v1, "LAZY_VERIFY_ON_ACCESS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lads_mobile_sdk/er0$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lads_mobile_sdk/er0$a;->b:Lads_mobile_sdk/er0$a;

    .line 5
    invoke-static {}, Lads_mobile_sdk/er0$a;->d()[Lads_mobile_sdk/er0$a;

    move-result-object v0

    sput-object v0, Lads_mobile_sdk/er0$a;->c:[Lads_mobile_sdk/er0$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic d()[Lads_mobile_sdk/er0$a;
    .locals 2

    .line 55
    sget-object v0, Lads_mobile_sdk/er0$a;->a:Lads_mobile_sdk/er0$a;

    sget-object v1, Lads_mobile_sdk/er0$a;->b:Lads_mobile_sdk/er0$a;

    filled-new-array {v0, v1}, [Lads_mobile_sdk/er0$a;

    move-result-object v0

    return-object v0
.end method

.method public static values()[Lads_mobile_sdk/er0$a;
    .locals 1

    .line 1
    sget-object v0, Lads_mobile_sdk/er0$a;->c:[Lads_mobile_sdk/er0$a;

    invoke-virtual {v0}, [Lads_mobile_sdk/er0$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lads_mobile_sdk/er0$a;

    return-object v0
.end method
