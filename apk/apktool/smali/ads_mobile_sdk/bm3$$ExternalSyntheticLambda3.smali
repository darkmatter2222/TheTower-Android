.class public final synthetic Lads_mobile_sdk/bm3$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/bm3;

.field public final synthetic f$1:Lads_mobile_sdk/iv2;

.field public final synthetic f$2:[B

.field public final synthetic f$3:[B


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/bm3;Lads_mobile_sdk/iv2;[B[B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/bm3$$ExternalSyntheticLambda3;->f$0:Lads_mobile_sdk/bm3;

    iput-object p2, p0, Lads_mobile_sdk/bm3$$ExternalSyntheticLambda3;->f$1:Lads_mobile_sdk/iv2;

    iput-object p3, p0, Lads_mobile_sdk/bm3$$ExternalSyntheticLambda3;->f$2:[B

    iput-object p4, p0, Lads_mobile_sdk/bm3$$ExternalSyntheticLambda3;->f$3:[B

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/bm3$$ExternalSyntheticLambda3;->f$0:Lads_mobile_sdk/bm3;

    iget-object v1, p0, Lads_mobile_sdk/bm3$$ExternalSyntheticLambda3;->f$1:Lads_mobile_sdk/iv2;

    iget-object v2, p0, Lads_mobile_sdk/bm3$$ExternalSyntheticLambda3;->f$2:[B

    iget-object v3, p0, Lads_mobile_sdk/bm3$$ExternalSyntheticLambda3;->f$3:[B

    invoke-virtual {v0, v1, v2, v3}, Lads_mobile_sdk/bm3;->b(Lads_mobile_sdk/iv2;[B[B)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
