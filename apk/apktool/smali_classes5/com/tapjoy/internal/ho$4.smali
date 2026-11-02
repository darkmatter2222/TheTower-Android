.class final Lcom/tapjoy/internal/ho$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/ja$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/ho;->a(Landroid/app/Activity;Lcom/tapjoy/internal/hk;Lcom/tapjoy/internal/fy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/tapjoy/internal/hk;

.field final synthetic c:Lcom/tapjoy/internal/ho;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/ho;Landroid/app/Activity;Lcom/tapjoy/internal/hk;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/tapjoy/internal/ho$4;->c:Lcom/tapjoy/internal/ho;

    iput-object p2, p0, Lcom/tapjoy/internal/ho$4;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/tapjoy/internal/ho$4;->b:Lcom/tapjoy/internal/hk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/tapjoy/internal/ho$4;->c:Lcom/tapjoy/internal/ho;

    invoke-static {v0}, Lcom/tapjoy/internal/ho;->e(Lcom/tapjoy/internal/ho;)Lcom/tapjoy/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/c;->cancel()V

    return-void
.end method

.method public final a(Lcom/tapjoy/internal/ic;)V
    .locals 4

    .line 223
    iget-object v0, p0, Lcom/tapjoy/internal/ho$4;->c:Lcom/tapjoy/internal/ho;

    iget-object v0, v0, Lcom/tapjoy/internal/ho;->g:Lcom/tapjoy/internal/fs;

    instance-of v0, v0, Lcom/tapjoy/internal/fw;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/tapjoy/internal/ho$4;->c:Lcom/tapjoy/internal/ho;

    iget-object v0, v0, Lcom/tapjoy/internal/ho;->g:Lcom/tapjoy/internal/fs;

    check-cast v0, Lcom/tapjoy/internal/fw;

    if-eqz v0, :cond_0

    .line 225
    iget-object v1, v0, Lcom/tapjoy/internal/fw;->b:Lcom/tapjoy/internal/fo;

    if-eqz v1, :cond_0

    .line 226
    iget-object v0, v0, Lcom/tapjoy/internal/fw;->b:Lcom/tapjoy/internal/fo;

    invoke-virtual {v0}, Lcom/tapjoy/internal/fo;->a()Lcom/tapjoy/internal/gi$a;

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/ho$4;->c:Lcom/tapjoy/internal/ho;

    invoke-static {v0}, Lcom/tapjoy/internal/ho;->c(Lcom/tapjoy/internal/ho;)Lcom/tapjoy/internal/hj;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/ho$4;->c:Lcom/tapjoy/internal/ho;

    iget-object v1, v1, Lcom/tapjoy/internal/ho;->b:Lcom/tapjoy/internal/ie;

    iget-object v1, v1, Lcom/tapjoy/internal/ie;->k:Ljava/util/Map;

    iget-object v2, p1, Lcom/tapjoy/internal/ic;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/hj;->a(Ljava/util/Map;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/tapjoy/internal/ho$4;->a:Landroid/app/Activity;

    iget-object v1, p1, Lcom/tapjoy/internal/ic;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tapjoy/internal/hq;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 234
    iget-object v0, p1, Lcom/tapjoy/internal/ic;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/tapjoy/internal/ho$4;->c:Lcom/tapjoy/internal/ho;

    iget-object v0, v0, Lcom/tapjoy/internal/ho;->e:Lcom/tapjoy/internal/hc;

    iget-object v1, p0, Lcom/tapjoy/internal/ho$4;->a:Landroid/app/Activity;

    iget-object v2, p1, Lcom/tapjoy/internal/ic;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/ic;->f:Ljava/lang/String;

    invoke-static {v3}, Lcom/tapjoy/internal/gs;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/tapjoy/internal/hc;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/tapjoy/internal/ho$4;->c:Lcom/tapjoy/internal/ho;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tapjoy/internal/ho;->d:Z

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/internal/ho$4;->b:Lcom/tapjoy/internal/hk;

    iget-object v1, p0, Lcom/tapjoy/internal/ho$4;->c:Lcom/tapjoy/internal/ho;

    iget-object v1, v1, Lcom/tapjoy/internal/ho;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/tapjoy/internal/ic;->g:Lcom/tapjoy/internal/gv;

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/hk;->a(Ljava/lang/String;Lcom/tapjoy/internal/gv;)V

    .line 241
    iget-boolean p1, p1, Lcom/tapjoy/internal/ic;->c:Z

    if-eqz p1, :cond_2

    .line 242
    iget-object p1, p0, Lcom/tapjoy/internal/ho$4;->c:Lcom/tapjoy/internal/ho;

    invoke-static {p1}, Lcom/tapjoy/internal/ho;->e(Lcom/tapjoy/internal/ho;)Lcom/tapjoy/internal/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tapjoy/internal/c;->dismiss()V

    :cond_2
    return-void
.end method

.method public final b()V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/tapjoy/internal/ho$4;->c:Lcom/tapjoy/internal/ho;

    invoke-static {v0}, Lcom/tapjoy/internal/ho;->d(Lcom/tapjoy/internal/ho;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/tapjoy/internal/ho;->a(Lcom/tapjoy/internal/ho;Z)Z

    return-void
.end method
