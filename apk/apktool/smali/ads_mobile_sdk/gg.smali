.class public final Lads_mobile_sdk/gg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/yh1$b;


# static fields
.field public static final a:Lads_mobile_sdk/gg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lads_mobile_sdk/gg;

    invoke-direct {v0}, Lads_mobile_sdk/gg;-><init>()V

    sput-object v0, Lads_mobile_sdk/gg;->a:Lads_mobile_sdk/gg;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8985
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
    sget-object p1, Lads_mobile_sdk/hg;->f:Lads_mobile_sdk/hg;

    goto :goto_0

    .line 3
    :cond_1
    sget-object p1, Lads_mobile_sdk/hg;->e:Lads_mobile_sdk/hg;

    goto :goto_0

    .line 4
    :cond_2
    sget-object p1, Lads_mobile_sdk/hg;->d:Lads_mobile_sdk/hg;

    goto :goto_0

    .line 5
    :cond_3
    sget-object p1, Lads_mobile_sdk/hg;->c:Lads_mobile_sdk/hg;

    goto :goto_0

    .line 6
    :cond_4
    sget-object p1, Lads_mobile_sdk/hg;->b:Lads_mobile_sdk/hg;

    :goto_0
    if-eqz p1, :cond_5

    return v0

    :cond_5
    const/4 p1, 0x0

    return p1
.end method
