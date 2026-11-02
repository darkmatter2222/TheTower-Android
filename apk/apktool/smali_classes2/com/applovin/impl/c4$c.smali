.class Lcom/applovin/impl/c4$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/c4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field final a:Lcom/applovin/impl/c4;

.field final b:Lcom/applovin/impl/c4$b;

.field final c:Lcom/applovin/impl/c4$a;

.field volatile d:Z


# direct methods
.method constructor <init>(Lcom/applovin/impl/c4;Lcom/applovin/impl/c4$b;Lcom/applovin/impl/c4$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/applovin/impl/c4$c;->d:Z

    .line 6
    iput-object p1, p0, Lcom/applovin/impl/c4$c;->a:Lcom/applovin/impl/c4;

    .line 7
    iput-object p2, p0, Lcom/applovin/impl/c4$c;->b:Lcom/applovin/impl/c4$b;

    .line 8
    iput-object p3, p0, Lcom/applovin/impl/c4$c;->c:Lcom/applovin/impl/c4$a;

    return-void
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/applovin/impl/c4$c;->d:Z

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/c4$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/applovin/impl/c4$c;->b()V

    return-void
.end method

.method private b()V
    .locals 11

    .line 2
    iget-boolean v0, p0, Lcom/applovin/impl/c4$c;->d:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/applovin/impl/c4$c;->a:Lcom/applovin/impl/c4;

    invoke-static {v0}, Lcom/applovin/impl/c4;->a(Lcom/applovin/impl/c4;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/c4$c;->a:Lcom/applovin/impl/c4;

    invoke-static {v0}, Lcom/applovin/impl/c4;->b(Lcom/applovin/impl/c4;)Lcom/applovin/impl/sdk/l;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/applovin/impl/c4$c;->a:Lcom/applovin/impl/c4;

    invoke-static {v1}, Lcom/applovin/impl/c4;->c(Lcom/applovin/impl/c4;)Lcom/applovin/impl/sdk/ad/a;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->I()Lcom/applovin/impl/sdk/n;

    move-result-object v2

    .line 8
    iget-object v3, p0, Lcom/applovin/impl/c4$c;->b:Lcom/applovin/impl/c4$b;

    iget-object v3, v3, Lcom/applovin/impl/c4$b;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/b;->getCachePrefix()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/applovin/impl/u7;->a(Landroid/net/Uri;Ljava/lang/String;Lcom/applovin/impl/sdk/l;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {}, Lcom/applovin/impl/sdk/l;->p()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/applovin/impl/sdk/n;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    const/16 v0, -0xc8

    const/4 v10, 0x1

    if-nez v3, :cond_1

    .line 12
    iget-object v1, p0, Lcom/applovin/impl/c4$c;->a:Lcom/applovin/impl/c4;

    const-string v2, "create_cached_file_for_segment"

    invoke-static {v1, v2}, Lcom/applovin/impl/c4;->a(Lcom/applovin/impl/c4;Ljava/lang/String;)V

    .line 14
    iget-object v1, p0, Lcom/applovin/impl/c4$c;->b:Lcom/applovin/impl/c4$b;

    iget-boolean v1, v1, Lcom/applovin/impl/c4$b;->d:Z

    if-eqz v1, :cond_4

    .line 16
    iget-object v1, p0, Lcom/applovin/impl/c4$c;->a:Lcom/applovin/impl/c4;

    invoke-static {v1, v10}, Lcom/applovin/impl/c4;->a(Lcom/applovin/impl/c4;Z)Z

    .line 17
    iget-object v1, p0, Lcom/applovin/impl/c4$c;->c:Lcom/applovin/impl/c4$a;

    invoke-interface {v1, v0}, Lcom/applovin/impl/c4$a;->a(I)V

    return-void

    .line 22
    :cond_1
    invoke-static {v1}, Lcom/applovin/impl/j2;->a(Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;)Ljava/util/Map;

    move-result-object v9

    .line 23
    iget-object v4, p0, Lcom/applovin/impl/c4$c;->b:Lcom/applovin/impl/c4$b;

    iget-object v4, v4, Lcom/applovin/impl/c4$b;->a:Ljava/lang/String;

    invoke-virtual {v2, v4, v1}, Lcom/applovin/impl/sdk/n;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/ad/b;)I

    move-result v7

    .line 24
    iget-object v4, p0, Lcom/applovin/impl/c4$c;->b:Lcom/applovin/impl/c4$b;

    move-object v5, v4

    iget-object v4, v5, Lcom/applovin/impl/c4$b;->a:Ljava/lang/String;

    iget-object v5, v5, Lcom/applovin/impl/c4$b;->b:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/b;->V()Ljava/util/List;

    move-result-object v6

    iget-object v1, p0, Lcom/applovin/impl/c4$c;->b:Lcom/applovin/impl/c4$b;

    iget-object v8, v1, Lcom/applovin/impl/c4$b;->c:Ljava/lang/String;

    invoke-virtual/range {v2 .. v9}, Lcom/applovin/impl/sdk/n;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 27
    iget-object v1, p0, Lcom/applovin/impl/c4$c;->a:Lcom/applovin/impl/c4;

    invoke-static {v1}, Lcom/applovin/impl/c4;->d(Lcom/applovin/impl/c4;)Lcom/applovin/impl/sdk/p;

    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/applovin/impl/c4$c;->a:Lcom/applovin/impl/c4;

    invoke-static {v1}, Lcom/applovin/impl/c4;->d(Lcom/applovin/impl/c4;)Lcom/applovin/impl/sdk/p;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to cache "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/applovin/impl/c4$c;->b:Lcom/applovin/impl/c4$b;

    iget-boolean v3, v3, Lcom/applovin/impl/c4$b;->d:Z

    if-eqz v3, :cond_2

    const-string v3, "required"

    goto :goto_0

    :cond_2
    const-string v3, "optional"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " segment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/c4$c;->b:Lcom/applovin/impl/c4$b;

    iget-object v3, v3, Lcom/applovin/impl/c4$b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/c4$c;->b:Lcom/applovin/impl/c4$b;

    iget-object v3, v3, Lcom/applovin/impl/c4$b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MpdManager"

    invoke-virtual {v1, v3, v2}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_3
    iget-object v1, p0, Lcom/applovin/impl/c4$c;->b:Lcom/applovin/impl/c4$b;

    iget-boolean v1, v1, Lcom/applovin/impl/c4$b;->d:Z

    if-eqz v1, :cond_4

    .line 31
    iget-object v1, p0, Lcom/applovin/impl/c4$c;->a:Lcom/applovin/impl/c4;

    invoke-static {v1, v10}, Lcom/applovin/impl/c4;->a(Lcom/applovin/impl/c4;Z)Z

    .line 32
    iget-object v1, p0, Lcom/applovin/impl/c4$c;->c:Lcom/applovin/impl/c4$a;

    invoke-interface {v1, v0}, Lcom/applovin/impl/c4$a;->a(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/c4$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/applovin/impl/c4$c;->a()V

    return-void
.end method
