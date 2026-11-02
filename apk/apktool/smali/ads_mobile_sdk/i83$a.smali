.class Lads_mobile_sdk/i83$a;
.super Lads_mobile_sdk/du$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lads_mobile_sdk/i83;->f()Lads_mobile_sdk/du$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final a:Lads_mobile_sdk/i83$c;

.field b:Lads_mobile_sdk/du$g;

.field final synthetic c:Lads_mobile_sdk/i83;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/i83;)V
    .locals 2

    .line 279
    iput-object p1, p0, Lads_mobile_sdk/i83$a;->c:Lads_mobile_sdk/i83;

    invoke-direct {p0}, Lads_mobile_sdk/du$c;-><init>()V

    .line 280
    new-instance v0, Lads_mobile_sdk/i83$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lads_mobile_sdk/i83$c;-><init>(Lads_mobile_sdk/du;Lads_mobile_sdk/i83-IA;)V

    iput-object v0, p0, Lads_mobile_sdk/i83$a;->a:Lads_mobile_sdk/i83$c;

    .line 281
    invoke-direct {p0}, Lads_mobile_sdk/i83$a;->c()Lads_mobile_sdk/du$g;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/i83$a;->b:Lads_mobile_sdk/du$g;

    return-void
.end method

.method private c()Lads_mobile_sdk/du$g;
    .locals 1

    .line 289
    iget-object v0, p0, Lads_mobile_sdk/i83$a;->a:Lads_mobile_sdk/i83$c;

    invoke-virtual {v0}, Lads_mobile_sdk/i83$c;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lads_mobile_sdk/i83$a;->a:Lads_mobile_sdk/i83$c;

    invoke-virtual {v0}, Lads_mobile_sdk/i83$c;->c()Lads_mobile_sdk/du$j;

    move-result-object v0

    invoke-virtual {v0}, Lads_mobile_sdk/du;->f()Lads_mobile_sdk/du$g;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public a()B
    .locals 2

    .line 299
    iget-object v0, p0, Lads_mobile_sdk/i83$a;->b:Lads_mobile_sdk/du$g;

    if-eqz v0, :cond_1

    .line 302
    invoke-interface {v0}, Lads_mobile_sdk/du$g;->a()B

    move-result v0

    .line 303
    iget-object v1, p0, Lads_mobile_sdk/i83$a;->b:Lads_mobile_sdk/du$g;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 304
    invoke-direct {p0}, Lads_mobile_sdk/i83$a;->c()Lads_mobile_sdk/du$g;

    move-result-object v1

    iput-object v1, p0, Lads_mobile_sdk/i83$a;->b:Lads_mobile_sdk/du$g;

    :cond_0
    return v0

    .line 305
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    .line 294
    iget-object v0, p0, Lads_mobile_sdk/i83$a;->b:Lads_mobile_sdk/du$g;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
