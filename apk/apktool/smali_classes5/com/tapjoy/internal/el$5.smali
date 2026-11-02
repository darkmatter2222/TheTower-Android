.class final Lcom/tapjoy/internal/el$5;
.super Lcom/tapjoy/internal/el;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/el;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/el<",
        "Lcom/tapjoy/internal/je;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/ei;Ljava/lang/Class;)V
    .locals 0

    .line 381
    invoke-direct {p0, p1, p2}, Lcom/tapjoy/internal/el;-><init>(Lcom/tapjoy/internal/ei;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)I
    .locals 0

    .line 381
    check-cast p1, Lcom/tapjoy/internal/je;

    .line 3383
    invoke-virtual {p1}, Lcom/tapjoy/internal/je;->c()I

    move-result p1

    return p1
.end method

.method public final synthetic a(Lcom/tapjoy/internal/em;)Ljava/lang/Object;
    .locals 2

    .line 2258
    invoke-virtual {p1}, Lcom/tapjoy/internal/em;->g()J

    move-result-wide v0

    .line 2259
    iget-object p1, p1, Lcom/tapjoy/internal/em;->a:Lcom/tapjoy/internal/jd;

    invoke-interface {p1, v0, v1}, Lcom/tapjoy/internal/jd;->b(J)Lcom/tapjoy/internal/je;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Lcom/tapjoy/internal/en;Ljava/lang/Object;)V
    .locals 0

    .line 381
    check-cast p2, Lcom/tapjoy/internal/je;

    .line 2387
    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/en;->a(Lcom/tapjoy/internal/je;)V

    return-void
.end method
