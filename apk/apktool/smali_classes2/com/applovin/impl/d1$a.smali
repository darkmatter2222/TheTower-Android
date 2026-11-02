.class Lcom/applovin/impl/d1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/w2$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/d1;->a(Lcom/applovin/impl/e1;Lcom/applovin/impl/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/c;

.field final synthetic b:Lcom/applovin/impl/d1;


# direct methods
.method constructor <init>(Lcom/applovin/impl/d1;Lcom/applovin/impl/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/d1$a;->b:Lcom/applovin/impl/d1;

    iput-object p2, p0, Lcom/applovin/impl/d1$a;->a:Lcom/applovin/impl/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/impl/n2;Lcom/applovin/impl/v2;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/applovin/impl/n2;->b()I

    move-result p2

    .line 3
    sget-object v0, Lcom/applovin/impl/e1$a;->a:Lcom/applovin/impl/e1$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq p2, v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/applovin/impl/d1$a;->b:Lcom/applovin/impl/d1;

    iget-object v0, p0, Lcom/applovin/impl/d1$a;->a:Lcom/applovin/impl/c;

    new-instance v1, Lcom/applovin/impl/d1$a$a;

    invoke-direct {v1, p0, p1}, Lcom/applovin/impl/d1$a$a;-><init>(Lcom/applovin/impl/d1$a;Lcom/applovin/impl/n2;)V

    const-class p1, Lcom/applovin/creative/MaxCreativeDebuggerDisplayedAdActivity;

    invoke-static {p2, p1, v0, v1}, Lcom/applovin/impl/d;->a(Landroid/content/Context;Ljava/lang/Class;Lcom/applovin/impl/c;Lcom/applovin/impl/d$b;)V

    return-void
.end method
