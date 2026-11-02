.class public final synthetic Lads_mobile_sdk/bv2$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/bv2;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/bv2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/bv2$$ExternalSyntheticLambda2;->f$0:Lads_mobile_sdk/bv2;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/bv2$$ExternalSyntheticLambda2;->f$0:Lads_mobile_sdk/bv2;

    check-cast p1, Ljava/net/SocketException;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/bv2;->a(Ljava/net/SocketException;)Lads_mobile_sdk/pr0;

    move-result-object p1

    return-object p1
.end method
