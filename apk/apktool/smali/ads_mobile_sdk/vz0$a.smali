.class public abstract Lads_mobile_sdk/vz0$a;
.super Lads_mobile_sdk/f$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lads_mobile_sdk/vz0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageT:",
        "Lads_mobile_sdk/vz0<",
        "TMessageT;TBuilderT;>;BuilderT:",
        "Lads_mobile_sdk/vz0$a<",
        "TMessageT;TBuilderT;>;>",
        "Lads_mobile_sdk/f$a<",
        "TMessageT;TBuilderT;>;"
    }
.end annotation


# instance fields
.field private final a:Lads_mobile_sdk/vz0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageT;"
        }
    .end annotation
.end field

.field protected b:Lads_mobile_sdk/vz0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lads_mobile_sdk/vz0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageT;)V"
        }
    .end annotation

    .line 481
    invoke-direct {p0}, Lads_mobile_sdk/f$a;-><init>()V

    .line 482
    iput-object p1, p0, Lads_mobile_sdk/vz0$a;->a:Lads_mobile_sdk/vz0;

    .line 483
    invoke-virtual {p1}, Lads_mobile_sdk/vz0;->p()Z

    move-result p1

    if-nez p1, :cond_0

    .line 488
    invoke-direct {p0}, Lads_mobile_sdk/vz0$a;->g()Lads_mobile_sdk/vz0;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    return-void

    .line 489
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Default instance must be immutable."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a(Lads_mobile_sdk/vz0;Lads_mobile_sdk/vz0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageT:",
            "Lads_mobile_sdk/vz0<",
            "**>;>(TMessageT;TMessageT;)V"
        }
    .end annotation

    .line 1040
    invoke-static {}, Lads_mobile_sdk/aw2;->a()Lads_mobile_sdk/aw2;

    move-result-object v0

    invoke-virtual {v0, p0}, Lads_mobile_sdk/aw2;->a(Lads_mobile_sdk/vz0;)Lads_mobile_sdk/la3;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lads_mobile_sdk/la3;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private g()Lads_mobile_sdk/vz0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageT;"
        }
    .end annotation

    .line 492
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->a:Lads_mobile_sdk/vz0;

    invoke-virtual {v0}, Lads_mobile_sdk/vz0;->t()Lads_mobile_sdk/vz0;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a()Lads_mobile_sdk/tw1;
    .locals 1

    .line 472
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->c()Lads_mobile_sdk/vz0;

    move-result-object v0

    return-object v0
.end method

.method public a(Lads_mobile_sdk/vz0;)Lads_mobile_sdk/vz0$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageT;)TBuilderT;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1031
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->f()Lads_mobile_sdk/vz0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1032
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(MessageLite) can only merge messages of the same type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1035
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->f()Lads_mobile_sdk/vz0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lads_mobile_sdk/vz0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p0

    .line 1038
    :cond_2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 1039
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    invoke-static {v0, p1}, Lads_mobile_sdk/vz0$a;->a(Lads_mobile_sdk/vz0;Lads_mobile_sdk/vz0;)V

    return-object p0
.end method

.method public final b()Lads_mobile_sdk/vz0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageT;"
        }
    .end annotation

    .line 545
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->c()Lads_mobile_sdk/vz0;

    move-result-object v0

    .line 546
    invoke-virtual {v0}, Lads_mobile_sdk/vz0;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 547
    :cond_0
    invoke-static {v0}, Lads_mobile_sdk/f$a;->a(Lads_mobile_sdk/tw1;)Lads_mobile_sdk/xv3;

    move-result-object v0

    throw v0
.end method

.method public c()Lads_mobile_sdk/vz0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageT;"
        }
    .end annotation

    .line 535
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    invoke-virtual {v0}, Lads_mobile_sdk/vz0;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 536
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    return-object v0

    .line 539
    :cond_0
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    invoke-virtual {v0}, Lads_mobile_sdk/vz0;->q()V

    .line 540
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    return-object v0
.end method

.method public clone()Lads_mobile_sdk/vz0$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderT;"
        }
    .end annotation

    .line 528
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->f()Lads_mobile_sdk/vz0;

    move-result-object v0

    invoke-virtual {v0}, Lads_mobile_sdk/vz0;->s()Lads_mobile_sdk/vz0$a;

    move-result-object v0

    .line 529
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->c()Lads_mobile_sdk/vz0;

    move-result-object v1

    iput-object v1, v0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1001
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->clone()Lads_mobile_sdk/vz0$a;

    move-result-object v0

    return-object v0
.end method

.method public final d()V
    .locals 1

    .line 500
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    invoke-virtual {v0}, Lads_mobile_sdk/vz0;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 501
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->e()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    .line 506
    invoke-direct {p0}, Lads_mobile_sdk/vz0$a;->g()Lads_mobile_sdk/vz0;

    move-result-object v0

    .line 507
    iget-object v1, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    invoke-static {v0, v1}, Lads_mobile_sdk/vz0$a;->a(Lads_mobile_sdk/vz0;Lads_mobile_sdk/vz0;)V

    .line 508
    iput-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    return-void
.end method

.method public f()Lads_mobile_sdk/vz0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageT;"
        }
    .end annotation

    .line 627
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->a:Lads_mobile_sdk/vz0;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 513
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lads_mobile_sdk/vz0;->-$$Nest$sma(Lads_mobile_sdk/vz0;Z)Z

    move-result v0

    return v0
.end method
