.class public final synthetic Lcom/applovin/impl/i6$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field public final synthetic f$1:Lcom/applovin/impl/i6$e;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Lcom/applovin/impl/i6$e;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/i6$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iput-object p2, p0, Lcom/applovin/impl/i6$$ExternalSyntheticLambda1;->f$1:Lcom/applovin/impl/i6$e;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/applovin/impl/i6$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-object v1, p0, Lcom/applovin/impl/i6$$ExternalSyntheticLambda1;->f$1:Lcom/applovin/impl/i6$e;

    invoke-static {v0, v1}, Lcom/applovin/impl/i6;->$r8$lambda$hXhOJR3_KDdW4ZEsUWgLsQsfW3c(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Lcom/applovin/impl/i6$e;)V

    return-void
.end method
