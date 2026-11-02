.class public final synthetic Lads_mobile_sdk/ju2$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncFunction;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/ju2;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/ju2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/ju2$$ExternalSyntheticLambda4;->f$0:Lads_mobile_sdk/ju2;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/ju2$$ExternalSyntheticLambda4;->f$0:Lads_mobile_sdk/ju2;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/ju2;->b(Ljava/lang/Boolean;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
