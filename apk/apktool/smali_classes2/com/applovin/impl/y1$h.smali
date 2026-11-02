.class Lcom/applovin/impl/y1$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/y1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "h"
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/y1;


# direct methods
.method public static synthetic $r8$lambda$vDvOQKCAI27Nlfr-osV0HnBBjDc(Lcom/applovin/impl/y1$h;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/impl/y1$h;->a()V

    return-void
.end method

.method private constructor <init>(Lcom/applovin/impl/y1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/y1$h;->a:Lcom/applovin/impl/y1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/y1;Lcom/applovin/impl/y1$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/applovin/impl/y1$h;-><init>(Lcom/applovin/impl/y1;)V

    return-void
.end method

.method private synthetic a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/y1$h;->a:Lcom/applovin/impl/y1;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/applovin/impl/y1;->r:J

    return-void
.end method


# virtual methods
.method public adClicked(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/y1$h;->a:Lcom/applovin/impl/y1;

    iget-object v0, v0, Lcom/applovin/impl/y1;->c:Lcom/applovin/impl/sdk/p;

    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/y1$h;->a:Lcom/applovin/impl/y1;

    iget-object v0, v0, Lcom/applovin/impl/y1;->c:Lcom/applovin/impl/sdk/p;

    const-string v1, "AppLovinFullscreenActivity"

    const-string v2, "Clicking through graphic"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/y1$h;->a:Lcom/applovin/impl/y1;

    iget-object v0, v0, Lcom/applovin/impl/y1;->F:Lcom/applovin/sdk/AppLovinAdClickListener;

    invoke-static {v0, p1}, Lcom/applovin/impl/x2;->a(Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAd;)V

    .line 5
    iget-object p1, p0, Lcom/applovin/impl/y1$h;->a:Lcom/applovin/impl/y1;

    iget v0, p1, Lcom/applovin/impl/y1;->A:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/applovin/impl/y1;->A:I

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/y1$h;->a:Lcom/applovin/impl/y1;

    iget-object v1, v0, Lcom/applovin/impl/y1;->k:Lcom/applovin/impl/adview/g;

    const-string v2, "AppLovinFullscreenActivity"

    if-ne p1, v1, :cond_6

    iget-object v0, v0, Lcom/applovin/impl/y1;->b:Lcom/applovin/impl/sdk/l;

    sget-object v1, Lcom/applovin/impl/c5;->e2:Lcom/applovin/impl/c5;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3
    iget-object p1, p0, Lcom/applovin/impl/y1$h;->a:Lcom/applovin/impl/y1;

    invoke-static {p1}, Lcom/applovin/impl/y1;->f(Lcom/applovin/impl/y1;)I

    .line 5
    iget-object p1, p0, Lcom/applovin/impl/y1$h;->a:Lcom/applovin/impl/y1;

    iget-object p1, p1, Lcom/applovin/impl/y1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->O0()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/applovin/impl/y1$h;->a:Lcom/applovin/impl/y1;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:al_onCloseButtonTapped("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/y1$h;->a:Lcom/applovin/impl/y1;

    invoke-static {v1}, Lcom/applovin/impl/y1;->e(Lcom/applovin/impl/y1;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/applovin/impl/y1$h;->a:Lcom/applovin/impl/y1;

    iget v3, v3, Lcom/applovin/impl/y1;->z:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/y1$h;->a:Lcom/applovin/impl/y1;

    iget v1, v1, Lcom/applovin/impl/y1;->A:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/applovin/impl/y1;->e(Ljava/lang/String;)V

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/y1$h;->a:Lcom/applovin/impl/y1;

    iget-object p1, p1, Lcom/applovin/impl/y1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->H()Ljava/util/List;

    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/applovin/impl/y1$h;->a:Lcom/applovin/impl/y1;

    iget-object v0, v0, Lcom/applovin/impl/y1;->c:Lcom/applovin/impl/sdk/p;

    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/y1$h;->a:Lcom/applovin/impl/y1;

    iget-object v0, v0, Lcom/applovin/impl/y1;->c:Lcom/applovin/impl/sdk/p;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Handling close button tap "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/applovin/impl/y1$h;->a:Lcom/applovin/impl/y1;

    invoke-static {v3}, Lcom/applovin/impl/y1;->e(Lcom/applovin/impl/y1;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " with multi close delay: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_5

    .line 15
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/applovin/impl/y1$h;->a:Lcom/applovin/impl/y1;

    invoke-static {v1}, Lcom/applovin/impl/y1;->e(Lcom/applovin/impl/y1;)I

    move-result v1

    if-gt v0, v1, :cond_2

    goto/16 :goto_0

    .line 22
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/y1$h;->a:Lcom/applovin/impl/y1;

    invoke-static {v0}, Lcom/applovin/impl/y1;->g(Lcom/applovin/impl/y1;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v1, p0, Lcom/applovin/impl/y1$h;->a:Lcom/applovin/impl/y1;

    iget-wide v5, v1, Lcom/applovin/impl/y1;->r:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object v0, p0, Lcom/applovin/impl/y1$h;->a:Lcom/applovin/impl/y1;

    iget-object v0, v0, Lcom/applovin/impl/y1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->F()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 25
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v3, p0, Lcom/applovin/impl/y1$h;->a:Lcom/applovin/impl/y1;

    invoke-static {v3}, Lcom/applovin/impl/y1;->e(Lcom/applovin/impl/y1;)I

    move-result v3

    if-le v1, v3, :cond_3

    .line 27
    iget-object v1, p0, Lcom/applovin/impl/y1$h;->a:Lcom/applovin/impl/y1;

    iget-object v3, v1, Lcom/applovin/impl/y1;->k:Lcom/applovin/impl/adview/g;

    invoke-static {v1}, Lcom/applovin/impl/y1;->e(Lcom/applovin/impl/y1;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/adview/e$a;

    invoke-virtual {v3, v0}, Lcom/applovin/impl/adview/g;->a(Lcom/applovin/impl/adview/e$a;)V

    .line 30
    :cond_3
    iget-object v0, p0, Lcom/applovin/impl/y1$h;->a:Lcom/applovin/impl/y1;

    iget-object v0, v0, Lcom/applovin/impl/y1;->c:Lcom/applovin/impl/sdk/p;

    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/applovin/impl/y1$h;->a:Lcom/applovin/impl/y1;

    iget-object v0, v0, Lcom/applovin/impl/y1;->c:Lcom/applovin/impl/sdk/p;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Scheduling next close button with delay: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/applovin/impl/y1$h;->a:Lcom/applovin/impl/y1;

    invoke-static {v3}, Lcom/applovin/impl/y1;->e(Lcom/applovin/impl/y1;)I

    move-result v3

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_4
    iget-object v0, p0, Lcom/applovin/impl/y1$h;->a:Lcom/applovin/impl/y1;

    iget-object v0, v0, Lcom/applovin/impl/y1;->k:Lcom/applovin/impl/adview/g;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 34
    iget-object v0, p0, Lcom/applovin/impl/y1$h;->a:Lcom/applovin/impl/y1;

    iget-object v1, v0, Lcom/applovin/impl/y1;->k:Lcom/applovin/impl/adview/g;

    invoke-static {v0}, Lcom/applovin/impl/y1;->e(Lcom/applovin/impl/y1;)I

    move-result v2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v2, p1

    new-instance p1, Lcom/applovin/impl/y1$h$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/applovin/impl/y1$h$$ExternalSyntheticLambda0;-><init>(Lcom/applovin/impl/y1$h;)V

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/applovin/impl/y1;->a(Lcom/applovin/impl/adview/g;JLjava/lang/Runnable;)V

    return-void

    .line 35
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/applovin/impl/y1$h;->a:Lcom/applovin/impl/y1;

    const-string v0, "native_close_button"

    invoke-virtual {p1, v0}, Lcom/applovin/impl/y1;->a(Ljava/lang/String;)V

    return-void

    .line 60
    :cond_6
    iget-object v0, p0, Lcom/applovin/impl/y1$h;->a:Lcom/applovin/impl/y1;

    iget-object v0, v0, Lcom/applovin/impl/y1;->c:Lcom/applovin/impl/sdk/p;

    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/applovin/impl/y1$h;->a:Lcom/applovin/impl/y1;

    iget-object v0, v0, Lcom/applovin/impl/y1;->c:Lcom/applovin/impl/sdk/p;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unhandled click on widget: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method
