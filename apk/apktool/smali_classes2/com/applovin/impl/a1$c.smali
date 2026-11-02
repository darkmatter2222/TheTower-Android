.class Lcom/applovin/impl/a1$c;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/a1;->c(Lcom/applovin/impl/w0;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/applovin/impl/a1;


# direct methods
.method constructor <init>(Lcom/applovin/impl/a1;Landroid/net/Uri;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/a1$c;->c:Lcom/applovin/impl/a1;

    iput-object p2, p0, Lcom/applovin/impl/a1$c;->a:Landroid/net/Uri;

    iput-object p3, p0, Lcom/applovin/impl/a1$c;->b:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/applovin/impl/a1$c;->a:Landroid/net/Uri;

    iget-object v0, p0, Lcom/applovin/impl/a1$c;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/applovin/impl/a1$c;->c:Lcom/applovin/impl/a1;

    invoke-static {v1}, Lcom/applovin/impl/a1;->d(Lcom/applovin/impl/a1;)Lcom/applovin/impl/sdk/l;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/applovin/impl/u7;->a(Landroid/net/Uri;Landroid/app/Activity;Lcom/applovin/impl/sdk/l;)V

    return-void
.end method
