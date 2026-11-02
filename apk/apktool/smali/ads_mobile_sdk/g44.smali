.class public final Lads_mobile_sdk/g44;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/c44;

.field public final b:Lads_mobile_sdk/z34;

.field public final c:Lads_mobile_sdk/u34;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/a34;Lads_mobile_sdk/c44;Lads_mobile_sdk/u34;)V
    .locals 2

    const/16 p1, 0x9

    .line 1
    new-array p1, p1, [I

    fill-array-data p1, :array_0

    const/4 v0, 0x7

    aget v0, p1, v0

    const/16 v1, 0x8

    aget p1, p1, v1

    rem-int/2addr v0, p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lads_mobile_sdk/g44;->a:Lads_mobile_sdk/c44;

    iput-object p3, p0, Lads_mobile_sdk/g44;->c:Lads_mobile_sdk/u34;

    new-instance p1, Lads_mobile_sdk/z34;

    invoke-direct {p1}, Lads_mobile_sdk/z34;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/g44;->b:Lads_mobile_sdk/z34;

    return-void

    :array_0
    .array-data 4
        0x14802f5d
        0x11f00713
        0x1082153a
        0x41781205
        0x520c34a4
        0x5c1eaca7
        0x102809e2
        0x331c4250
        0x1b1493c2
    .end array-data
.end method


# virtual methods
.method public final a()Ljava/util/Optional;
    .locals 9

    .line 1
    :try_start_0
    iget-object v0, p0, Lads_mobile_sdk/g44;->b:Lads_mobile_sdk/z34;

    iget-object v0, v0, Lads_mobile_sdk/z34;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/w34;

    iget-wide v1, v0, Lads_mobile_sdk/w34;->a:J

    iget-wide v3, v0, Lads_mobile_sdk/w34;->b:J

    iget-wide v5, v0, Lads_mobile_sdk/w34;->c:J

    iget-object v0, p0, Lads_mobile_sdk/g44;->a:Lads_mobile_sdk/c44;

    iget v7, v0, Lads_mobile_sdk/c44;->b:I

    int-to-long v7, v7

    cmp-long v7, v7, v3

    if-gez v7, :cond_0

    sget-object v0, Lads_mobile_sdk/wu2;->H:Lads_mobile_sdk/wu2;

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v7, p0, Lads_mobile_sdk/g44;->c:Lads_mobile_sdk/u34;

    invoke-virtual {v7, v1, v2}, Lads_mobile_sdk/u34;->a(J)V

    const-wide/16 v1, 0x0

    cmp-long v1, v5, v1

    if-nez v1, :cond_1

    :goto_0
    iget v1, v0, Lads_mobile_sdk/c44;->b:I

    int-to-long v1, v1

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    invoke-virtual {v0}, Lads_mobile_sdk/c44;->a()Lads_mobile_sdk/l44;
    :try_end_0
    .catch Lads_mobile_sdk/y34; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lads_mobile_sdk/a44; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lads_mobile_sdk/s34; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lads_mobile_sdk/t34; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0

    :cond_2
    :try_start_1
    new-instance v0, Lads_mobile_sdk/y34;

    invoke-direct {v0}, Lads_mobile_sdk/y34;-><init>()V

    throw v0
    :try_end_1
    .catch Lads_mobile_sdk/y34; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lads_mobile_sdk/a44; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lads_mobile_sdk/s34; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lads_mobile_sdk/t34; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "CEiv6BFfPnitUE+D"

    invoke-static {v2}, Lads_mobile_sdk/n34;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    sget-object v0, Lads_mobile_sdk/wu2;->H:Lads_mobile_sdk/wu2;

    :goto_2
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0

    :catch_3
    sget-object v0, Lads_mobile_sdk/wu2;->x:Lads_mobile_sdk/wu2;

    goto :goto_2
.end method
