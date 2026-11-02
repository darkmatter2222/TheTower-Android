.class Lcom/applovin/impl/q5$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/d0$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/q5;->a(Ljava/lang/String;Ljava/util/List;Lcom/applovin/impl/q5$c;)Lcom/applovin/impl/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/q5$c;

.field final synthetic b:Lcom/applovin/impl/q5;


# direct methods
.method constructor <init>(Lcom/applovin/impl/q5;Lcom/applovin/impl/q5$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/q5$b;->b:Lcom/applovin/impl/q5;

    iput-object p2, p0, Lcom/applovin/impl/q5$b;->a:Lcom/applovin/impl/q5$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    iget-object p1, p0, Lcom/applovin/impl/q5$b;->b:Lcom/applovin/impl/q5;

    const/16 p2, -0xcb

    invoke-virtual {p1, p2}, Lcom/applovin/impl/q5;->a(I)V

    return-void

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/applovin/impl/q5$b;->a:Lcom/applovin/impl/q5$c;

    if-eqz p2, :cond_1

    .line 5
    invoke-interface {p2, p1}, Lcom/applovin/impl/q5$c;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
