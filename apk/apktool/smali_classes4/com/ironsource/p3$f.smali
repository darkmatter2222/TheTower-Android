.class Lcom/ironsource/p3$f;
.super Lcom/ironsource/environment/thread/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/p3;->onAdOpened()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/ironsource/p3;


# direct methods
.method constructor <init>(Lcom/ironsource/p3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ironsource/p3$f;->b:Lcom/ironsource/p3;

    invoke-direct {p0}, Lcom/ironsource/environment/thread/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/p3$f;->b:Lcom/ironsource/p3;

    invoke-static {v0}, Lcom/ironsource/p3;->-$$Nest$mJ(Lcom/ironsource/p3;)V

    return-void
.end method
