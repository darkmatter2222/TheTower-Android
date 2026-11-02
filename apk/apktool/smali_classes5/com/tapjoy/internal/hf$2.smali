.class final Lcom/tapjoy/internal/hf$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/iy$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/hf;->a(Landroid/app/Activity;Lcom/tapjoy/internal/hk;Lcom/tapjoy/internal/fy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/tapjoy/internal/hk;

.field final synthetic c:Lcom/tapjoy/internal/hf;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/hf;Landroid/app/Activity;Lcom/tapjoy/internal/hk;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/tapjoy/internal/hf$2;->c:Lcom/tapjoy/internal/hf;

    iput-object p2, p0, Lcom/tapjoy/internal/hf$2;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/tapjoy/internal/hf$2;->b:Lcom/tapjoy/internal/hk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/tapjoy/internal/hf$2;->c:Lcom/tapjoy/internal/hf;

    invoke-static {v0}, Lcom/tapjoy/internal/hf;->a(Lcom/tapjoy/internal/hf;)V

    return-void
.end method

.method public final a(Lcom/tapjoy/internal/ij;)V
    .locals 4

    .line 138
    iget-object v0, p0, Lcom/tapjoy/internal/hf$2;->c:Lcom/tapjoy/internal/hf;

    iget-object v0, v0, Lcom/tapjoy/internal/hf;->g:Lcom/tapjoy/internal/fs;

    instance-of v0, v0, Lcom/tapjoy/internal/fx;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/tapjoy/internal/hf$2;->c:Lcom/tapjoy/internal/hf;

    iget-object v0, v0, Lcom/tapjoy/internal/hf;->g:Lcom/tapjoy/internal/fs;

    check-cast v0, Lcom/tapjoy/internal/fx;

    if-eqz v0, :cond_0

    .line 140
    iget-object v1, v0, Lcom/tapjoy/internal/fx;->b:Lcom/tapjoy/internal/fo;

    if-eqz v1, :cond_0

    .line 141
    iget-object v0, v0, Lcom/tapjoy/internal/fx;->b:Lcom/tapjoy/internal/fo;

    invoke-virtual {v0}, Lcom/tapjoy/internal/fo;->a()Lcom/tapjoy/internal/gi$a;

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/hf$2;->c:Lcom/tapjoy/internal/hf;

    invoke-static {v0}, Lcom/tapjoy/internal/hf;->b(Lcom/tapjoy/internal/hf;)Lcom/tapjoy/internal/hj;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/hf$2;->c:Lcom/tapjoy/internal/hf;

    iget-object v1, v1, Lcom/tapjoy/internal/hf;->b:Lcom/tapjoy/internal/ib;

    iget-object v1, v1, Lcom/tapjoy/internal/ib;->b:Ljava/util/Map;

    iget-object v2, p1, Lcom/tapjoy/internal/ij;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/hj;->a(Ljava/util/Map;Ljava/lang/String;)V

    .line 147
    iget-object v0, p1, Lcom/tapjoy/internal/ij;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/tapjoy/internal/hf$2;->c:Lcom/tapjoy/internal/hf;

    iget-object v0, v0, Lcom/tapjoy/internal/hf;->e:Lcom/tapjoy/internal/hc;

    iget-object v1, p0, Lcom/tapjoy/internal/hf$2;->a:Landroid/app/Activity;

    iget-object v2, p1, Lcom/tapjoy/internal/ij;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/ij;->i:Ljava/lang/String;

    invoke-static {v3}, Lcom/tapjoy/internal/gs;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/tapjoy/internal/hc;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/tapjoy/internal/hf$2;->c:Lcom/tapjoy/internal/hf;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tapjoy/internal/hf;->d:Z

    goto :goto_0

    .line 151
    :cond_1
    iget-object v0, p1, Lcom/tapjoy/internal/ij;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 152
    iget-object v0, p0, Lcom/tapjoy/internal/hf$2;->a:Landroid/app/Activity;

    iget-object v1, p1, Lcom/tapjoy/internal/ij;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tapjoy/internal/hq;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 155
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/tapjoy/internal/hf$2;->b:Lcom/tapjoy/internal/hk;

    iget-object v1, p0, Lcom/tapjoy/internal/hf$2;->c:Lcom/tapjoy/internal/hf;

    iget-object v1, v1, Lcom/tapjoy/internal/hf;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/hk;->a(Ljava/lang/String;Lcom/tapjoy/internal/gv;)V

    .line 157
    iget-boolean p1, p1, Lcom/tapjoy/internal/ij;->j:Z

    if-eqz p1, :cond_3

    .line 158
    iget-object p1, p0, Lcom/tapjoy/internal/hf$2;->c:Lcom/tapjoy/internal/hf;

    invoke-static {p1}, Lcom/tapjoy/internal/hf;->a(Lcom/tapjoy/internal/hf;)V

    :cond_3
    return-void
.end method
