.class public final synthetic Lads_mobile_sdk/iz0$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/iz0;

.field public final synthetic f$1:Lcom/google/common/util/concurrent/SettableFuture;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/iz0;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/iz0$$ExternalSyntheticLambda3;->f$0:Lads_mobile_sdk/iz0;

    iput-object p2, p0, Lads_mobile_sdk/iz0$$ExternalSyntheticLambda3;->f$1:Lcom/google/common/util/concurrent/SettableFuture;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/iz0$$ExternalSyntheticLambda3;->f$0:Lads_mobile_sdk/iz0;

    iget-object v1, p0, Lads_mobile_sdk/iz0$$ExternalSyntheticLambda3;->f$1:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, v1}, Lads_mobile_sdk/iz0;->a(Lcom/google/common/util/concurrent/SettableFuture;)V

    return-void
.end method
