.class public interface abstract Lcom/ironsource/Ff;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/Ff$a;
    }
.end annotation


# virtual methods
.method public a(Ljava/lang/Object;JLkotlin/jvm/functions/Function1;)Lcom/ironsource/Ff$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/ironsource/Ff$a;"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, p4}, Lcom/ironsource/Gf;->a(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p0, p1, p2, p3}, Lcom/ironsource/Ff;->b(Ljava/lang/Runnable;J)Lcom/ironsource/Ff$a;

    move-result-object p1

    return-object p1
.end method

.method public abstract a(Ljava/lang/Runnable;J)Lcom/ironsource/Ff$a;
.end method

.method public abstract b(Ljava/lang/Runnable;J)Lcom/ironsource/Ff$a;
.end method
