.class Lcom/ironsource/R2$b;
.super Lcom/ironsource/environment/thread/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/R2;->onAdOpened()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/ironsource/R2;


# direct methods
.method constructor <init>(Lcom/ironsource/R2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ironsource/R2$b;->b:Lcom/ironsource/R2;

    invoke-direct {p0}, Lcom/ironsource/environment/thread/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/R2$b;->b:Lcom/ironsource/R2;

    invoke-static {v0}, Lcom/ironsource/R2;->-$$Nest$mJ(Lcom/ironsource/R2;)V

    return-void
.end method
