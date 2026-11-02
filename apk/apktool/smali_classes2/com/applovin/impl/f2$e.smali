.class Lcom/applovin/impl/f2$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/f2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/f2;


# direct methods
.method private constructor <init>(Lcom/applovin/impl/f2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/f2$e;->a:Lcom/applovin/impl/f2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/f2;Lcom/applovin/impl/f2$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/applovin/impl/f2$e;-><init>(Lcom/applovin/impl/f2;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/f2$e;->a:Lcom/applovin/impl/f2;

    iget-object v1, v0, Lcom/applovin/impl/f2;->R:Lcom/applovin/impl/adview/g;

    if-ne p1, v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/applovin/impl/f2;->T()V

    return-void

    .line 5
    :cond_0
    iget-object v1, v0, Lcom/applovin/impl/f2;->T:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/applovin/impl/f2;->V()V

    return-void

    .line 11
    :cond_1
    iget-object v0, v0, Lcom/applovin/impl/y1;->c:Lcom/applovin/impl/sdk/p;

    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/f2$e;->a:Lcom/applovin/impl/f2;

    iget-object v0, v0, Lcom/applovin/impl/y1;->c:Lcom/applovin/impl/sdk/p;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unhandled click on widget: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AppLovinFullscreenActivity"

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
