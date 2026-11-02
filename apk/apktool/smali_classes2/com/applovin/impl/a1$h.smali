.class Lcom/applovin/impl/a1$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/a1;->a(Lcom/applovin/impl/w0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/w0;

.field final synthetic b:Lcom/applovin/impl/a1;


# direct methods
.method constructor <init>(Lcom/applovin/impl/a1;Lcom/applovin/impl/w0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/a1$h;->b:Lcom/applovin/impl/a1;

    iput-object p2, p0, Lcom/applovin/impl/a1$h;->a:Lcom/applovin/impl/w0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/a1$h;->b:Lcom/applovin/impl/a1;

    invoke-static {v0}, Lcom/applovin/impl/a1;->c(Lcom/applovin/impl/a1;)Lcom/applovin/impl/w0;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/a1$h;->a:Lcom/applovin/impl/w0;

    iget-object v3, p0, Lcom/applovin/impl/a1$h;->b:Lcom/applovin/impl/a1;

    invoke-static {v3}, Lcom/applovin/impl/a1;->d(Lcom/applovin/impl/a1;)Lcom/applovin/impl/sdk/l;

    move-result-object v3

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/l;->w0()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/a1;->a(Lcom/applovin/impl/a1;Lcom/applovin/impl/w0;Lcom/applovin/impl/w0;Landroid/app/Activity;)V

    return-void
.end method
