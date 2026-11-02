.class public final synthetic Lcom/google/firebase/firestore/Pipeline$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/firebase/firestore/util/Function;


# instance fields
.field public final synthetic f$0:Lcom/google/firestore/v1/ExecutePipelineRequest;

.field public final synthetic f$1:Lcom/google/firebase/firestore/Pipeline$ObserverSnapshotTask;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firestore/v1/ExecutePipelineRequest;Lcom/google/firebase/firestore/Pipeline$ObserverSnapshotTask;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/Pipeline$$ExternalSyntheticLambda0;->f$0:Lcom/google/firestore/v1/ExecutePipelineRequest;

    iput-object p2, p0, Lcom/google/firebase/firestore/Pipeline$$ExternalSyntheticLambda0;->f$1:Lcom/google/firebase/firestore/Pipeline$ObserverSnapshotTask;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/firebase/firestore/Pipeline$$ExternalSyntheticLambda0;->f$0:Lcom/google/firestore/v1/ExecutePipelineRequest;

    iget-object v1, p0, Lcom/google/firebase/firestore/Pipeline$$ExternalSyntheticLambda0;->f$1:Lcom/google/firebase/firestore/Pipeline$ObserverSnapshotTask;

    check-cast p1, Lcom/google/firebase/firestore/core/FirestoreClient;

    invoke-static {v0, v1, p1}, Lcom/google/firebase/firestore/Pipeline;->$r8$lambda$J1E4J9dQzsonCCXeFja_UpQhAS4(Lcom/google/firestore/v1/ExecutePipelineRequest;Lcom/google/firebase/firestore/Pipeline$ObserverSnapshotTask;Lcom/google/firebase/firestore/core/FirestoreClient;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
