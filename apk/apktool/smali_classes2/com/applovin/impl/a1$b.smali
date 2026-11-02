.class Lcom/applovin/impl/a1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/a1;->c(Lcom/applovin/impl/w0;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/applovin/impl/y0;

.field final synthetic c:Lcom/applovin/impl/w0;

.field final synthetic d:Landroid/app/Activity;

.field final synthetic e:Lcom/applovin/impl/a1;


# direct methods
.method constructor <init>(Lcom/applovin/impl/a1;ZLcom/applovin/impl/y0;Lcom/applovin/impl/w0;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/a1$b;->e:Lcom/applovin/impl/a1;

    iput-boolean p2, p0, Lcom/applovin/impl/a1$b;->a:Z

    iput-object p3, p0, Lcom/applovin/impl/a1$b;->b:Lcom/applovin/impl/y0;

    iput-object p4, p0, Lcom/applovin/impl/a1$b;->c:Lcom/applovin/impl/w0;

    iput-object p5, p0, Lcom/applovin/impl/a1$b;->d:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 1
    iget-object p2, p0, Lcom/applovin/impl/a1$b;->e:Lcom/applovin/impl/a1;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/applovin/impl/a1;->a(Lcom/applovin/impl/a1;Lcom/applovin/impl/w0;)Lcom/applovin/impl/w0;

    .line 2
    iget-object p2, p0, Lcom/applovin/impl/a1$b;->e:Lcom/applovin/impl/a1;

    invoke-static {p2, v0}, Lcom/applovin/impl/a1;->a(Lcom/applovin/impl/a1;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object p2, p0, Lcom/applovin/impl/a1$b;->e:Lcom/applovin/impl/a1;

    invoke-static {p2}, Lcom/applovin/impl/a1;->e(Lcom/applovin/impl/a1;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 5
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string v0, "duration_ms"

    invoke-static {v0, p2}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->hashMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p2

    .line 6
    iget-boolean v0, p0, Lcom/applovin/impl/a1$b;->a:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "details"

    invoke-static {v1, v0, p2}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 7
    iget-object v0, p0, Lcom/applovin/impl/a1$b;->e:Lcom/applovin/impl/a1;

    invoke-static {v0}, Lcom/applovin/impl/a1;->d(Lcom/applovin/impl/a1;)Lcom/applovin/impl/sdk/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->y0()Lcom/applovin/impl/s7;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/h2;->s:Lcom/applovin/impl/h2;

    invoke-virtual {v0, v1, p2}, Lcom/applovin/impl/i2;->d(Lcom/applovin/impl/h2;Ljava/util/Map;)V

    .line 10
    iget-object p2, p0, Lcom/applovin/impl/a1$b;->e:Lcom/applovin/impl/a1;

    iget-object v0, p0, Lcom/applovin/impl/a1$b;->b:Lcom/applovin/impl/y0;

    invoke-virtual {v0}, Lcom/applovin/impl/y0;->a()I

    move-result v0

    invoke-static {p2, v0}, Lcom/applovin/impl/a1;->a(Lcom/applovin/impl/a1;I)Lcom/applovin/impl/w0;

    move-result-object p2

    if-nez p2, :cond_0

    .line 13
    iget-object p1, p0, Lcom/applovin/impl/a1$b;->e:Lcom/applovin/impl/a1;

    const-string p2, "Destination state for TOS/PP alert is null"

    invoke-static {p1, p2}, Lcom/applovin/impl/a1;->a(Lcom/applovin/impl/a1;Ljava/lang/String;)V

    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/a1$b;->e:Lcom/applovin/impl/a1;

    iget-object v1, p0, Lcom/applovin/impl/a1$b;->c:Lcom/applovin/impl/w0;

    iget-object v2, p0, Lcom/applovin/impl/a1$b;->d:Landroid/app/Activity;

    invoke-static {v0, v1, p2, v2}, Lcom/applovin/impl/a1;->a(Lcom/applovin/impl/a1;Lcom/applovin/impl/w0;Lcom/applovin/impl/w0;Landroid/app/Activity;)V

    .line 19
    invoke-virtual {p2}, Lcom/applovin/impl/w0;->d()Lcom/applovin/impl/w0$b;

    move-result-object p2

    sget-object v0, Lcom/applovin/impl/w0$b;->a:Lcom/applovin/impl/w0$b;

    if-eq p2, v0, :cond_1

    .line 21
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_1
    return-void
.end method
