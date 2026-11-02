.class Lcom/applovin/impl/o7$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/w2$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/o7;->initialize(Lcom/applovin/impl/sdk/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/l;

.field final synthetic b:Lcom/applovin/impl/o7;


# direct methods
.method constructor <init>(Lcom/applovin/impl/o7;Lcom/applovin/impl/sdk/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/o7$b;->b:Lcom/applovin/impl/o7;

    iput-object p2, p0, Lcom/applovin/impl/o7$b;->a:Lcom/applovin/impl/sdk/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/impl/n2;Lcom/applovin/impl/v2;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/applovin/impl/n2;->b()I

    move-result p2

    sget-object v0, Lcom/applovin/impl/o7$d;->a:Lcom/applovin/impl/o7$d;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/applovin/impl/n2;->a()I

    move-result p2

    sget-object v0, Lcom/applovin/impl/o7$e;->a:Lcom/applovin/impl/o7$e;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/applovin/impl/o7$b;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/l;->y()Lcom/applovin/impl/v0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/v0;->f()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/applovin/impl/o7$b;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/l;->y()Lcom/applovin/impl/v0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/v0;->f()Landroid/net/Uri;

    move-result-object p1

    invoke-static {}, Lcom/applovin/impl/sdk/l;->p()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/applovin/impl/o7$b;->a:Lcom/applovin/impl/sdk/l;

    invoke-static {p1, p2, v0}, Lcom/applovin/impl/q7;->a(Landroid/net/Uri;Landroid/content/Context;Lcom/applovin/impl/sdk/l;)Z

    return-void

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/o7$b;->b:Lcom/applovin/impl/o7;

    const-string p2, "Missing Privacy Policy URL"

    const-string v0, "You cannot use the AppLovin SDK\'s consent flow without defining a Privacy Policy URL"

    invoke-static {p2, v0, p1}, Lcom/applovin/impl/u7;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void

    .line 14
    :cond_1
    invoke-virtual {p1}, Lcom/applovin/impl/n2;->a()I

    move-result p1

    sget-object p2, Lcom/applovin/impl/o7$e;->b:Lcom/applovin/impl/o7$e;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-ne p1, p2, :cond_2

    .line 16
    iget-object p1, p0, Lcom/applovin/impl/o7$b;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/l;->y()Lcom/applovin/impl/v0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/v0;->h()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 18
    iget-object p1, p0, Lcom/applovin/impl/o7$b;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/l;->y()Lcom/applovin/impl/v0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/v0;->h()Landroid/net/Uri;

    move-result-object p1

    invoke-static {}, Lcom/applovin/impl/sdk/l;->p()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/applovin/impl/o7$b;->a:Lcom/applovin/impl/sdk/l;

    invoke-static {p1, p2, v0}, Lcom/applovin/impl/q7;->a(Landroid/net/Uri;Landroid/content/Context;Lcom/applovin/impl/sdk/l;)Z

    :cond_2
    return-void
.end method
