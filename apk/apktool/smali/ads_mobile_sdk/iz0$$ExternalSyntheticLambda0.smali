.class public final synthetic Lads_mobile_sdk/iz0$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/iz0;

.field public final synthetic f$1:Lcom/google/common/util/concurrent/SettableFuture;

.field public final synthetic f$2:I

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/iz0;Lcom/google/common/util/concurrent/SettableFuture;IJ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/iz0$$ExternalSyntheticLambda0;->f$0:Lads_mobile_sdk/iz0;

    iput-object p2, p0, Lads_mobile_sdk/iz0$$ExternalSyntheticLambda0;->f$1:Lcom/google/common/util/concurrent/SettableFuture;

    iput p3, p0, Lads_mobile_sdk/iz0$$ExternalSyntheticLambda0;->f$2:I

    iput-wide p4, p0, Lads_mobile_sdk/iz0$$ExternalSyntheticLambda0;->f$3:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/iz0$$ExternalSyntheticLambda0;->f$0:Lads_mobile_sdk/iz0;

    iget-object v1, p0, Lads_mobile_sdk/iz0$$ExternalSyntheticLambda0;->f$1:Lcom/google/common/util/concurrent/SettableFuture;

    iget v2, p0, Lads_mobile_sdk/iz0$$ExternalSyntheticLambda0;->f$2:I

    iget-wide v3, p0, Lads_mobile_sdk/iz0$$ExternalSyntheticLambda0;->f$3:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lads_mobile_sdk/iz0;->b(Lcom/google/common/util/concurrent/SettableFuture;IJ)V

    return-void
.end method
