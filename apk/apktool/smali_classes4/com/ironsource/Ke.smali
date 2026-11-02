.class public interface abstract Lcom/ironsource/Ke;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Lcom/ironsource/Ke;Ljava/lang/Runnable;JILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/16 p2, 0x0

    .line 1
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/ironsource/Ke;->a(Ljava/lang/Runnable;J)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: postOnUIThread"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract a()Lcom/ironsource/B7;
.end method

.method public abstract a(Landroid/content/Context;Ljava/lang/String;)Lcom/ironsource/Ue;
.end method

.method public abstract a(Landroid/content/Context;Lcom/ironsource/Jc;)Lcom/ironsource/environment/NetworkStateReceiver;
.end method

.method public abstract a(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract a(JLcom/ironsource/Ue$a;)V
.end method

.method public abstract a(Landroid/content/Context;Lcom/ironsource/environment/NetworkStateReceiver;)V
.end method

.method public abstract a(Lcom/ironsource/He;)V
.end method

.method public abstract a(Lcom/ironsource/N1;)V
.end method

.method public abstract a(Ljava/lang/Runnable;)V
.end method

.method public abstract a(Ljava/lang/Runnable;J)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract b()V
.end method

.method public abstract b(Ljava/lang/Runnable;)V
.end method

.method public abstract b(Landroid/content/Context;)Z
.end method

.method public abstract c()Lcom/ironsource/ia;
.end method

.method public abstract c(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract c(Ljava/lang/Runnable;)V
.end method

.method public abstract d(Ljava/lang/Runnable;)V
.end method

.method public abstract d()Z
.end method

.method public abstract e()V
.end method

.method public abstract f()V
.end method

.method public abstract g()V
.end method

.method public abstract h()V
.end method

.method public abstract i()Lcom/ironsource/ba;
.end method
