.class final Lads_mobile_sdk/i83$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lads_mobile_sdk/i83;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lads_mobile_sdk/du$j;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lads_mobile_sdk/i83;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lads_mobile_sdk/du$j;


# direct methods
.method private constructor <init>(Lads_mobile_sdk/du;)V
    .locals 2

    .line 727
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 728
    instance-of v0, p1, Lads_mobile_sdk/i83;

    if-eqz v0, :cond_0

    .line 729
    check-cast p1, Lads_mobile_sdk/i83;

    .line 730
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Lads_mobile_sdk/i83;->d()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lads_mobile_sdk/i83$c;->a:Ljava/util/ArrayDeque;

    .line 731
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 732
    invoke-static {p1}, Lads_mobile_sdk/i83;->-$$Nest$fgetg(Lads_mobile_sdk/i83;)Lads_mobile_sdk/du;

    move-result-object p1

    invoke-direct {p0, p1}, Lads_mobile_sdk/i83$c;->a(Lads_mobile_sdk/du;)Lads_mobile_sdk/du$j;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/i83$c;->b:Lads_mobile_sdk/du$j;

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 734
    iput-object v0, p0, Lads_mobile_sdk/i83$c;->a:Ljava/util/ArrayDeque;

    .line 735
    check-cast p1, Lads_mobile_sdk/du$j;

    iput-object p1, p0, Lads_mobile_sdk/i83$c;->b:Lads_mobile_sdk/du$j;

    return-void
.end method

.method synthetic constructor <init>(Lads_mobile_sdk/du;Lads_mobile_sdk/i83-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lads_mobile_sdk/i83$c;-><init>(Lads_mobile_sdk/du;)V

    return-void
.end method

.method private a(Lads_mobile_sdk/du;)Lads_mobile_sdk/du$j;
    .locals 1

    .line 741
    :goto_0
    instance-of v0, p1, Lads_mobile_sdk/i83;

    if-eqz v0, :cond_0

    .line 742
    check-cast p1, Lads_mobile_sdk/i83;

    .line 743
    iget-object v0, p0, Lads_mobile_sdk/i83$c;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 744
    invoke-static {p1}, Lads_mobile_sdk/i83;->-$$Nest$fgetg(Lads_mobile_sdk/i83;)Lads_mobile_sdk/du;

    move-result-object p1

    goto :goto_0

    .line 746
    :cond_0
    check-cast p1, Lads_mobile_sdk/du$j;

    return-object p1
.end method

.method private b()Lads_mobile_sdk/du$j;
    .locals 2

    .line 756
    :cond_0
    iget-object v0, p0, Lads_mobile_sdk/i83$c;->a:Ljava/util/ArrayDeque;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 759
    :cond_1
    iget-object v0, p0, Lads_mobile_sdk/i83$c;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/i83;

    invoke-static {v0}, Lads_mobile_sdk/i83;->-$$Nest$fgeth(Lads_mobile_sdk/i83;)Lads_mobile_sdk/du;

    move-result-object v0

    invoke-direct {p0, v0}, Lads_mobile_sdk/i83$c;->a(Lads_mobile_sdk/du;)Lads_mobile_sdk/du$j;

    move-result-object v0

    .line 760
    invoke-virtual {v0}, Lads_mobile_sdk/du;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public c()Lads_mobile_sdk/du$j;
    .locals 2

    .line 779
    iget-object v0, p0, Lads_mobile_sdk/i83$c;->b:Lads_mobile_sdk/du$j;

    if-eqz v0, :cond_0

    .line 783
    invoke-direct {p0}, Lads_mobile_sdk/i83$c;->b()Lads_mobile_sdk/du$j;

    move-result-object v1

    iput-object v1, p0, Lads_mobile_sdk/i83$c;->b:Lads_mobile_sdk/du$j;

    return-object v0

    .line 784
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    .line 769
    iget-object v0, p0, Lads_mobile_sdk/i83$c;->b:Lads_mobile_sdk/du$j;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 723
    invoke-virtual {p0}, Lads_mobile_sdk/i83$c;->c()Lads_mobile_sdk/du$j;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
