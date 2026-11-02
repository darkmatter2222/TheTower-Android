.class Lads_mobile_sdk/du$a;
.super Lads_mobile_sdk/du$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lads_mobile_sdk/du;->f()Lads_mobile_sdk/du$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private a:I

.field private final b:I

.field final synthetic c:Lads_mobile_sdk/du;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/du;)V
    .locals 1

    .line 208
    iput-object p1, p0, Lads_mobile_sdk/du$a;->c:Lads_mobile_sdk/du;

    invoke-direct {p0}, Lads_mobile_sdk/du$c;-><init>()V

    const/4 v0, 0x0

    .line 209
    iput v0, p0, Lads_mobile_sdk/du$a;->a:I

    .line 210
    invoke-virtual {p1}, Lads_mobile_sdk/du;->size()I

    move-result p1

    iput p1, p0, Lads_mobile_sdk/du$a;->b:I

    return-void
.end method


# virtual methods
.method public a()B
    .locals 2

    .line 219
    iget v0, p0, Lads_mobile_sdk/du$a;->a:I

    .line 220
    iget v1, p0, Lads_mobile_sdk/du$a;->b:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 223
    iput v1, p0, Lads_mobile_sdk/du$a;->a:I

    .line 224
    iget-object v1, p0, Lads_mobile_sdk/du$a;->c:Lads_mobile_sdk/du;

    invoke-virtual {v1, v0}, Lads_mobile_sdk/du;->d(I)B

    move-result v0

    return v0

    .line 225
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    .line 214
    iget v0, p0, Lads_mobile_sdk/du$a;->a:I

    iget v1, p0, Lads_mobile_sdk/du$a;->b:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
