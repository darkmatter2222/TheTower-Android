.class public final enum Lads_mobile_sdk/vz0$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lads_mobile_sdk/vz0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lads_mobile_sdk/vz0$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lads_mobile_sdk/vz0$d;

.field public static final enum b:Lads_mobile_sdk/vz0$d;

.field public static final enum c:Lads_mobile_sdk/vz0$d;

.field public static final enum d:Lads_mobile_sdk/vz0$d;

.field public static final enum e:Lads_mobile_sdk/vz0$d;

.field public static final enum f:Lads_mobile_sdk/vz0$d;

.field public static final enum g:Lads_mobile_sdk/vz0$d;

.field private static final synthetic h:[Lads_mobile_sdk/vz0$d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lads_mobile_sdk/vz0$d;

    const-string v1, "GET_MEMOIZED_IS_INITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lads_mobile_sdk/vz0$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lads_mobile_sdk/vz0$d;->a:Lads_mobile_sdk/vz0$d;

    .line 2
    new-instance v0, Lads_mobile_sdk/vz0$d;

    const-string v1, "SET_MEMOIZED_IS_INITIALIZED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lads_mobile_sdk/vz0$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lads_mobile_sdk/vz0$d;->b:Lads_mobile_sdk/vz0$d;

    .line 5
    new-instance v0, Lads_mobile_sdk/vz0$d;

    const-string v1, "BUILD_MESSAGE_INFO"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lads_mobile_sdk/vz0$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lads_mobile_sdk/vz0$d;->c:Lads_mobile_sdk/vz0$d;

    .line 6
    new-instance v0, Lads_mobile_sdk/vz0$d;

    const-string v1, "NEW_MUTABLE_INSTANCE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lads_mobile_sdk/vz0$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lads_mobile_sdk/vz0$d;->d:Lads_mobile_sdk/vz0$d;

    .line 7
    new-instance v0, Lads_mobile_sdk/vz0$d;

    const-string v1, "NEW_BUILDER"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lads_mobile_sdk/vz0$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lads_mobile_sdk/vz0$d;->e:Lads_mobile_sdk/vz0$d;

    .line 8
    new-instance v0, Lads_mobile_sdk/vz0$d;

    const-string v1, "GET_DEFAULT_INSTANCE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lads_mobile_sdk/vz0$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lads_mobile_sdk/vz0$d;->f:Lads_mobile_sdk/vz0$d;

    .line 9
    new-instance v0, Lads_mobile_sdk/vz0$d;

    const-string v1, "GET_PARSER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lads_mobile_sdk/vz0$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lads_mobile_sdk/vz0$d;->g:Lads_mobile_sdk/vz0$d;

    .line 10
    invoke-static {}, Lads_mobile_sdk/vz0$d;->d()[Lads_mobile_sdk/vz0$d;

    move-result-object v0

    sput-object v0, Lads_mobile_sdk/vz0$d;->h:[Lads_mobile_sdk/vz0$d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 263
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic d()[Lads_mobile_sdk/vz0$d;
    .locals 7

    .line 263
    sget-object v0, Lads_mobile_sdk/vz0$d;->a:Lads_mobile_sdk/vz0$d;

    sget-object v1, Lads_mobile_sdk/vz0$d;->b:Lads_mobile_sdk/vz0$d;

    sget-object v2, Lads_mobile_sdk/vz0$d;->c:Lads_mobile_sdk/vz0$d;

    sget-object v3, Lads_mobile_sdk/vz0$d;->d:Lads_mobile_sdk/vz0$d;

    sget-object v4, Lads_mobile_sdk/vz0$d;->e:Lads_mobile_sdk/vz0$d;

    sget-object v5, Lads_mobile_sdk/vz0$d;->f:Lads_mobile_sdk/vz0$d;

    sget-object v6, Lads_mobile_sdk/vz0$d;->g:Lads_mobile_sdk/vz0$d;

    filled-new-array/range {v0 .. v6}, [Lads_mobile_sdk/vz0$d;

    move-result-object v0

    return-object v0
.end method

.method public static values()[Lads_mobile_sdk/vz0$d;
    .locals 1

    .line 1
    sget-object v0, Lads_mobile_sdk/vz0$d;->h:[Lads_mobile_sdk/vz0$d;

    invoke-virtual {v0}, [Lads_mobile_sdk/vz0$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lads_mobile_sdk/vz0$d;

    return-object v0
.end method
