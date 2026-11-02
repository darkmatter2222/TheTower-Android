.class abstract Lcom/ironsource/mediationsdk/q$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "f"
.end annotation


# instance fields
.field a:Z

.field b:Ljava/lang/String;

.field protected c:Lcom/ironsource/mediationsdk/p$c;

.field final synthetic d:Lcom/ironsource/mediationsdk/q;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ironsource/mediationsdk/q$f;->d:Lcom/ironsource/mediationsdk/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/q$f;->a:Z

    .line 4
    new-instance p1, Lcom/ironsource/mediationsdk/q$f$a;

    invoke-direct {p1, p0}, Lcom/ironsource/mediationsdk/q$f$a;-><init>(Lcom/ironsource/mediationsdk/q$f;)V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/q$f;->c:Lcom/ironsource/mediationsdk/p$c;

    return-void
.end method
