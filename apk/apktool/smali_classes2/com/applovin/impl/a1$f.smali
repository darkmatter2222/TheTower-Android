.class Lcom/applovin/impl/a1$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/privacy/cmp/CmpServiceImpl$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/a1;->c(Lcom/applovin/impl/w0;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/applovin/impl/w0;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Lcom/applovin/impl/a1;


# direct methods
.method constructor <init>(Lcom/applovin/impl/a1;JLcom/applovin/impl/w0;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/a1$f;->d:Lcom/applovin/impl/a1;

    iput-wide p2, p0, Lcom/applovin/impl/a1$f;->a:J

    iput-object p4, p0, Lcom/applovin/impl/a1$f;->b:Lcom/applovin/impl/w0;

    iput-object p5, p0, Lcom/applovin/impl/a1$f;->c:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/sdk/AppLovinCmpError;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/a1$f;->d:Lcom/applovin/impl/a1;

    invoke-static {v0}, Lcom/applovin/impl/a1;->f(Lcom/applovin/impl/a1;)Lcom/applovin/impl/v0$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/v0$b;->a(Lcom/applovin/sdk/AppLovinCmpError;)V

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/applovin/impl/a1$f;->a:J

    sub-long/2addr v0, v2

    .line 4
    iget-object v2, p0, Lcom/applovin/impl/a1$f;->d:Lcom/applovin/impl/a1;

    invoke-static {v2, p1, v0, v1}, Lcom/applovin/impl/a1;->a(Lcom/applovin/impl/a1;Lcom/applovin/sdk/AppLovinCmpError;J)V

    .line 7
    iget-object v0, p0, Lcom/applovin/impl/a1$f;->d:Lcom/applovin/impl/a1;

    iget-object v1, p0, Lcom/applovin/impl/a1$f;->b:Lcom/applovin/impl/w0;

    iget-object v2, p0, Lcom/applovin/impl/a1$f;->c:Landroid/app/Activity;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v0, v1, v2, p1}, Lcom/applovin/impl/a1;->a(Lcom/applovin/impl/a1;Lcom/applovin/impl/w0;Landroid/app/Activity;Ljava/lang/Boolean;)V

    return-void
.end method
