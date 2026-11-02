.class public final synthetic Lads_mobile_sdk/q71$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/q71;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:[B


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/q71;Ljava/lang/String;ZLjava/lang/String;[B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/q71$$ExternalSyntheticLambda2;->f$0:Lads_mobile_sdk/q71;

    iput-object p2, p0, Lads_mobile_sdk/q71$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iput-boolean p3, p0, Lads_mobile_sdk/q71$$ExternalSyntheticLambda2;->f$2:Z

    iput-object p4, p0, Lads_mobile_sdk/q71$$ExternalSyntheticLambda2;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lads_mobile_sdk/q71$$ExternalSyntheticLambda2;->f$4:[B

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 6

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/q71$$ExternalSyntheticLambda2;->f$0:Lads_mobile_sdk/q71;

    iget-object v1, p0, Lads_mobile_sdk/q71$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iget-boolean v2, p0, Lads_mobile_sdk/q71$$ExternalSyntheticLambda2;->f$2:Z

    iget-object v3, p0, Lads_mobile_sdk/q71$$ExternalSyntheticLambda2;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lads_mobile_sdk/q71$$ExternalSyntheticLambda2;->f$4:[B

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lads_mobile_sdk/q71;->a(Ljava/lang/String;ZLjava/lang/String;[BLandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
