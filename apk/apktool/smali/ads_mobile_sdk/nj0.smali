.class public final Lads_mobile_sdk/nj0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lads_mobile_sdk/vh1;

.field public b:Lads_mobile_sdk/vh1;

.field public c:Lads_mobile_sdk/vh1;

.field public d:Lads_mobile_sdk/dw2;

.field public e:Lads_mobile_sdk/vh1;

.field public f:Lads_mobile_sdk/dw2;

.field public g:Lads_mobile_sdk/dw2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Long;Lads_mobile_sdk/zw3;Lads_mobile_sdk/e01;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual/range {p0 .. p6}, Lads_mobile_sdk/nj0;->a(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Long;Lads_mobile_sdk/zw3;Lads_mobile_sdk/e01;Lkotlinx/coroutines/CoroutineScope;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Long;Lads_mobile_sdk/zw3;Lads_mobile_sdk/e01;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 7

    .line 2
    invoke-static {p1}, Lads_mobile_sdk/vh1;->a(Ljava/lang/Object;)Lads_mobile_sdk/vh1;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/nj0;->a:Lads_mobile_sdk/vh1;

    .line 3
    invoke-static {p6}, Lads_mobile_sdk/vh1;->a(Ljava/lang/Object;)Lads_mobile_sdk/vh1;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/nj0;->b:Lads_mobile_sdk/vh1;

    .line 4
    invoke-static {p2}, Lads_mobile_sdk/vh1;->a(Ljava/lang/Object;)Lads_mobile_sdk/vh1;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/nj0;->c:Lads_mobile_sdk/vh1;

    .line 5
    sget-object p1, Lads_mobile_sdk/zx;->a:Lads_mobile_sdk/ay;

    sget-object p2, Lads_mobile_sdk/do0;->c:Ljava/lang/Object;

    .line 6
    instance-of p2, p1, Lads_mobile_sdk/do0;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    new-instance p2, Lads_mobile_sdk/do0;

    invoke-direct {p2, p1}, Lads_mobile_sdk/do0;-><init>(Lads_mobile_sdk/dw2;)V

    move-object p1, p2

    .line 12
    :goto_0
    iput-object p1, p0, Lads_mobile_sdk/nj0;->d:Lads_mobile_sdk/dw2;

    .line 13
    invoke-static {p3}, Lads_mobile_sdk/vh1;->a(Ljava/lang/Object;)Lads_mobile_sdk/vh1;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/nj0;->e:Lads_mobile_sdk/vh1;

    .line 14
    invoke-static {p4}, Lads_mobile_sdk/vh1;->a(Ljava/lang/Object;)Lads_mobile_sdk/vh1;

    move-result-object p1

    .line 15
    iget-object p2, p0, Lads_mobile_sdk/nj0;->a:Lads_mobile_sdk/vh1;

    iget-object p3, p0, Lads_mobile_sdk/nj0;->c:Lads_mobile_sdk/vh1;

    iget-object p4, p0, Lads_mobile_sdk/nj0;->e:Lads_mobile_sdk/vh1;

    .line 16
    new-instance p6, Lads_mobile_sdk/mc2;

    invoke-direct {p6, p2, p3, p4, p1}, Lads_mobile_sdk/mc2;-><init>(Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;)V

    .line 17
    instance-of p1, p6, Lads_mobile_sdk/do0;

    if-eqz p1, :cond_1

    goto :goto_1

    .line 22
    :cond_1
    new-instance p1, Lads_mobile_sdk/do0;

    invoke-direct {p1, p6}, Lads_mobile_sdk/do0;-><init>(Lads_mobile_sdk/dw2;)V

    move-object p6, p1

    .line 23
    :goto_1
    iput-object p6, p0, Lads_mobile_sdk/nj0;->f:Lads_mobile_sdk/dw2;

    .line 24
    invoke-static {p5}, Lads_mobile_sdk/vh1;->a(Ljava/lang/Object;)Lads_mobile_sdk/vh1;

    move-result-object p1

    .line 25
    iget-object p2, p0, Lads_mobile_sdk/nj0;->b:Lads_mobile_sdk/vh1;

    .line 26
    new-instance p3, Lads_mobile_sdk/ww3;

    invoke-direct {p3, p2, p1}, Lads_mobile_sdk/ww3;-><init>(Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;)V

    .line 27
    instance-of p1, p3, Lads_mobile_sdk/do0;

    if-eqz p1, :cond_2

    move-object v6, p3

    goto :goto_2

    .line 32
    :cond_2
    new-instance p1, Lads_mobile_sdk/do0;

    invoke-direct {p1, p3}, Lads_mobile_sdk/do0;-><init>(Lads_mobile_sdk/dw2;)V

    move-object v6, p1

    .line 33
    :goto_2
    iget-object v1, p0, Lads_mobile_sdk/nj0;->a:Lads_mobile_sdk/vh1;

    iget-object v2, p0, Lads_mobile_sdk/nj0;->b:Lads_mobile_sdk/vh1;

    iget-object v3, p0, Lads_mobile_sdk/nj0;->c:Lads_mobile_sdk/vh1;

    iget-object v4, p0, Lads_mobile_sdk/nj0;->d:Lads_mobile_sdk/dw2;

    iget-object v5, p0, Lads_mobile_sdk/nj0;->f:Lads_mobile_sdk/dw2;

    .line 34
    new-instance v0, Lads_mobile_sdk/bc2;

    invoke-direct/range {v0 .. v6}, Lads_mobile_sdk/bc2;-><init>(Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;)V

    .line 35
    instance-of p1, v0, Lads_mobile_sdk/do0;

    if-eqz p1, :cond_3

    goto :goto_3

    .line 40
    :cond_3
    new-instance p1, Lads_mobile_sdk/do0;

    invoke-direct {p1, v0}, Lads_mobile_sdk/do0;-><init>(Lads_mobile_sdk/dw2;)V

    move-object v0, p1

    .line 41
    :goto_3
    iput-object v0, p0, Lads_mobile_sdk/nj0;->g:Lads_mobile_sdk/dw2;

    return-void
.end method
