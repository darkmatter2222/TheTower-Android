.class Lcom/ironsource/mediationsdk/q$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/mediationsdk/p$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/q$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/mediationsdk/q$f;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/q$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ironsource/mediationsdk/q$f$a;->a:Lcom/ironsource/mediationsdk/q$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/q$f$a;->a:Lcom/ironsource/mediationsdk/q$f;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/ironsource/mediationsdk/q$f;->a:Z

    .line 2
    iput-object p1, v0, Lcom/ironsource/mediationsdk/q$f;->b:Ljava/lang/String;

    return-void
.end method
