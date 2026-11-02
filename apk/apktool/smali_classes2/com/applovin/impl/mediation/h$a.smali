.class Lcom/applovin/impl/mediation/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/mediation/adapter/listeners/MaxSignalCollectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/mediation/h;->a(Lcom/applovin/mediation/adapter/parameters/MaxAdapterSignalCollectionParameters;Lcom/applovin/impl/i5;Landroid/app/Activity;Lcom/applovin/impl/x4;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/i5;

.field final synthetic b:Lcom/applovin/impl/x4;

.field final synthetic c:Lcom/applovin/impl/mediation/h;


# direct methods
.method constructor <init>(Lcom/applovin/impl/mediation/h;Lcom/applovin/impl/i5;Lcom/applovin/impl/x4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/mediation/h$a;->c:Lcom/applovin/impl/mediation/h;

    iput-object p2, p0, Lcom/applovin/impl/mediation/h$a;->a:Lcom/applovin/impl/i5;

    iput-object p3, p0, Lcom/applovin/impl/mediation/h$a;->b:Lcom/applovin/impl/x4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignalCollected(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/mediation/h$a;->a:Lcom/applovin/impl/i5;

    invoke-virtual {v0}, Lcom/applovin/impl/i5;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/applovin/impl/mediation/h$a;->b:Lcom/applovin/impl/x4;

    new-instance v0, Lcom/applovin/impl/mediation/MaxErrorImpl;

    const-string v1, "Signal is not a valid string"

    invoke-direct {v0, v1}, Lcom/applovin/impl/mediation/MaxErrorImpl;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/applovin/impl/x4;->a(Ljava/lang/Object;)Lcom/applovin/impl/x4;

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/mediation/h$a;->b:Lcom/applovin/impl/x4;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/x4;->b(Ljava/lang/Object;)Lcom/applovin/impl/x4;

    return-void
.end method

.method public onSignalCollectionFailed(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/mediation/h$a;->b:Lcom/applovin/impl/x4;

    new-instance v1, Lcom/applovin/impl/mediation/MaxErrorImpl;

    invoke-direct {v1, p1}, Lcom/applovin/impl/mediation/MaxErrorImpl;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/applovin/impl/x4;->a(Ljava/lang/Object;)Lcom/applovin/impl/x4;

    return-void
.end method
