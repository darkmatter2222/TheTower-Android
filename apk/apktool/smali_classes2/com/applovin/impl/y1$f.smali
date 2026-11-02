.class Lcom/applovin/impl/y1$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/j0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/y1;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/y1;


# direct methods
.method constructor <init>(Lcom/applovin/impl/y1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/y1$f;->a:Lcom/applovin/impl/y1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/y1$f;->a:Lcom/applovin/impl/y1;

    iget-object v0, v0, Lcom/applovin/impl/y1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-static {v0}, Lcom/applovin/impl/j2;->a(Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;)Ljava/util/Map;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/applovin/impl/y1$f;->a:Lcom/applovin/impl/y1;

    iget-object v1, v1, Lcom/applovin/impl/y1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-static {v1}, Lcom/applovin/impl/j2;->a(Lcom/applovin/impl/sdk/ad/b;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "detection_count="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ",total_checks="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "details"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lcom/applovin/impl/y1$f;->a:Lcom/applovin/impl/y1;

    iget-object p1, p1, Lcom/applovin/impl/y1;->b:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/l;->E()Lcom/applovin/impl/s1;

    move-result-object p1

    sget-object p2, Lcom/applovin/impl/h2;->Z0:Lcom/applovin/impl/h2;

    invoke-virtual {p1, p2, v0}, Lcom/applovin/impl/i2;->d(Lcom/applovin/impl/h2;Ljava/util/Map;)V

    return-void
.end method

.method public a(III)V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/applovin/impl/y1$f;->a:Lcom/applovin/impl/y1;

    iget-object v0, v0, Lcom/applovin/impl/y1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-static {v0}, Lcom/applovin/impl/j2;->a(Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;)Ljava/util/Map;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/applovin/impl/y1$f;->a:Lcom/applovin/impl/y1;

    iget-object v1, v1, Lcom/applovin/impl/y1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-static {v1}, Lcom/applovin/impl/j2;->a(Lcom/applovin/impl/sdk/ad/b;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "detections_to_report="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ",detection_count="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ",total_checks="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "details"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object p1, p0, Lcom/applovin/impl/y1$f;->a:Lcom/applovin/impl/y1;

    iget-object p1, p1, Lcom/applovin/impl/y1;->b:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/l;->E()Lcom/applovin/impl/s1;

    move-result-object p1

    sget-object p2, Lcom/applovin/impl/h2;->a1:Lcom/applovin/impl/h2;

    invoke-virtual {p1, p2, v0}, Lcom/applovin/impl/i2;->d(Lcom/applovin/impl/h2;Ljava/util/Map;)V

    .line 10
    iget-object p1, p0, Lcom/applovin/impl/y1$f;->a:Lcom/applovin/impl/y1;

    iget-object p1, p1, Lcom/applovin/impl/y1;->b:Lcom/applovin/impl/sdk/l;

    sget-object p2, Lcom/applovin/impl/c5;->E6:Lcom/applovin/impl/c5;

    invoke-virtual {p1, p2}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 13
    iget-object p1, p0, Lcom/applovin/impl/y1$f;->a:Lcom/applovin/impl/y1;

    invoke-virtual {p1}, Lcom/applovin/impl/y1;->x()V

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/y1$f;->a:Lcom/applovin/impl/y1;

    iget-object p1, p1, Lcom/applovin/impl/y1;->b:Lcom/applovin/impl/sdk/l;

    sget-object p2, Lcom/applovin/impl/c5;->S0:Lcom/applovin/impl/c5;

    invoke-virtual {p1, p2}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 18
    iget-object p1, p0, Lcom/applovin/impl/y1$f;->a:Lcom/applovin/impl/y1;

    iget-object p1, p1, Lcom/applovin/impl/y1;->b:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/l;->I()Lcom/applovin/impl/sdk/n;

    move-result-object p1

    iget-object p2, p0, Lcom/applovin/impl/y1$f;->a:Lcom/applovin/impl/y1;

    iget-object p2, p2, Lcom/applovin/impl/y1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-static {}, Lcom/applovin/impl/sdk/l;->p()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/applovin/impl/sdk/n;->c(Lcom/applovin/impl/sdk/ad/b;Landroid/content/Context;)V

    .line 21
    :cond_1
    iget-object p1, p0, Lcom/applovin/impl/y1$f;->a:Lcom/applovin/impl/y1;

    iget-object p1, p1, Lcom/applovin/impl/y1;->b:Lcom/applovin/impl/sdk/l;

    sget-object p2, Lcom/applovin/impl/c5;->A6:Lcom/applovin/impl/c5;

    invoke-virtual {p1, p2}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 24
    iget-object p1, p0, Lcom/applovin/impl/y1$f;->a:Lcom/applovin/impl/y1;

    const-string p2, "black_view_auto_dismiss"

    invoke-virtual {p1, p2}, Lcom/applovin/impl/y1;->a(Ljava/lang/String;)V

    return-void

    .line 29
    :cond_2
    iget-object p1, p0, Lcom/applovin/impl/y1$f;->a:Lcom/applovin/impl/y1;

    iget-object p2, p1, Lcom/applovin/impl/y1;->b:Lcom/applovin/impl/sdk/l;

    sget-object p3, Lcom/applovin/impl/c5;->B6:Lcom/applovin/impl/c5;

    invoke-virtual {p2, p3}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/applovin/impl/y1;->a(Lcom/applovin/impl/y1;Z)Z

    .line 31
    iget-object p1, p0, Lcom/applovin/impl/y1$f;->a:Lcom/applovin/impl/y1;

    iget-object p1, p1, Lcom/applovin/impl/y1;->b:Lcom/applovin/impl/sdk/l;

    sget-object p2, Lcom/applovin/impl/c5;->C6:Lcom/applovin/impl/c5;

    invoke-virtual {p1, p2}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 33
    iget-object p1, p0, Lcom/applovin/impl/y1$f;->a:Lcom/applovin/impl/y1;

    invoke-virtual {p1}, Lcom/applovin/impl/y1;->A()V

    :cond_3
    return-void
.end method
