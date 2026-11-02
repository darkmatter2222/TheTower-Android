.class final Lcom/tapjoy/internal/gd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/gd;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/gd;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/tapjoy/internal/gd$1;->a:Lcom/tapjoy/internal/gd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2

    .line 104
    iget-object p1, p0, Lcom/tapjoy/internal/gd$1;->a:Lcom/tapjoy/internal/gd;

    iget-object p1, p1, Lcom/tapjoy/internal/gd;->a:Lcom/tapjoy/internal/gb;

    const-string p2, "usage_tracking_enabled"

    const/4 v0, 0x0

    .line 1138
    invoke-virtual {p1, p2, v0}, Lcom/tapjoy/internal/gm;->a(Ljava/lang/String;Z)Z

    move-result p1

    .line 104
    invoke-static {p1}, Lcom/tapjoy/internal/gi;->a(Z)V

    .line 105
    iget-object p1, p0, Lcom/tapjoy/internal/gd$1;->a:Lcom/tapjoy/internal/gd;

    iget-object p1, p1, Lcom/tapjoy/internal/gd;->a:Lcom/tapjoy/internal/gb;

    const-class p2, Ljava/util/List;

    .line 2124
    iget-object p1, p1, Lcom/tapjoy/internal/gm;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gm$a;

    .line 2125
    const-string v1, "usage_tracking_exclude"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gm$a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2126
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2127
    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 106
    :goto_0
    check-cast p1, Ljava/util/Collection;

    .line 105
    invoke-static {p1}, Lcom/tapjoy/internal/gi;->a(Ljava/util/Collection;)V

    return-void
.end method
