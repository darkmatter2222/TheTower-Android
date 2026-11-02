.class public final synthetic Lcom/applovin/impl/m8$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/applovin/impl/m8;

.field public final synthetic f$1:Ljava/lang/ref/WeakReference;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/m8;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/m8$$ExternalSyntheticLambda0;->f$0:Lcom/applovin/impl/m8;

    iput-object p2, p0, Lcom/applovin/impl/m8$$ExternalSyntheticLambda0;->f$1:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/applovin/impl/m8$$ExternalSyntheticLambda0;->f$0:Lcom/applovin/impl/m8;

    iget-object v1, p0, Lcom/applovin/impl/m8$$ExternalSyntheticLambda0;->f$1:Ljava/lang/ref/WeakReference;

    invoke-static {v0, v1}, Lcom/applovin/impl/m8;->$r8$lambda$OoFdVUo3mrVY7be6WSXkAf21xws(Lcom/applovin/impl/m8;Ljava/lang/ref/WeakReference;)V

    return-void
.end method
