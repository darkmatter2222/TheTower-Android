.class Lcom/applovin/impl/q3$a;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/q3;->setListAdapter(Lcom/applovin/impl/s3;Lcom/applovin/impl/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/q3;


# direct methods
.method constructor <init>(Lcom/applovin/impl/q3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/q3$a;->a:Lcom/applovin/impl/q3;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/q3$a;->a:Lcom/applovin/impl/q3;

    invoke-static {v0}, Lcom/applovin/impl/q3;->a(Lcom/applovin/impl/q3;)V

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/q3$a;->a:Lcom/applovin/impl/q3;

    invoke-static {v0, v0}, Lcom/applovin/impl/q3;->a(Lcom/applovin/impl/q3;Landroid/content/Context;)V

    return-void
.end method
