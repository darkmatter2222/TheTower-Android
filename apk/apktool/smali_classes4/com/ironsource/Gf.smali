.class public final Lcom/ironsource/Gf;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic $r8$lambda$q1QybBddZmfUtQS-eoLGW-DzROg(Ljava/lang/ref/WeakReference;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/ironsource/Gf;->a(Ljava/lang/ref/WeakReference;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic a(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/ironsource/Gf;->b(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method private static final a(Ljava/lang/ref/WeakReference;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static final b(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Runnable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 2
    new-instance p0, Lcom/ironsource/Gf$$ExternalSyntheticLambda0;

    invoke-direct {p0, v0, p1}, Lcom/ironsource/Gf$$ExternalSyntheticLambda0;-><init>(Ljava/lang/ref/WeakReference;Lkotlin/jvm/functions/Function1;)V

    return-object p0
.end method
