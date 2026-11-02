.class public final Lads_mobile_sdk/uh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/yh1$b;


# static fields
.field public static final a:Lads_mobile_sdk/uh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lads_mobile_sdk/uh;

    invoke-direct {v0}, Lads_mobile_sdk/uh;-><init>()V

    sput-object v0, Lads_mobile_sdk/uh;->a:Lads_mobile_sdk/uh;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Lads_mobile_sdk/vh;->f:Lads_mobile_sdk/vh;

    goto :goto_0

    .line 3
    :cond_1
    sget-object p1, Lads_mobile_sdk/vh;->e:Lads_mobile_sdk/vh;

    goto :goto_0

    .line 4
    :cond_2
    sget-object p1, Lads_mobile_sdk/vh;->d:Lads_mobile_sdk/vh;

    goto :goto_0

    .line 5
    :cond_3
    sget-object p1, Lads_mobile_sdk/vh;->c:Lads_mobile_sdk/vh;

    goto :goto_0

    .line 6
    :cond_4
    sget-object p1, Lads_mobile_sdk/vh;->b:Lads_mobile_sdk/vh;

    :goto_0
    if-eqz p1, :cond_5

    return v0

    :cond_5
    const/4 p1, 0x0

    return p1
.end method
