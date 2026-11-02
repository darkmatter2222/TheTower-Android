.class public final synthetic Lcom/google/firebase/firestore/WriteBatch$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/firebase/firestore/util/Function;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/firestore/WriteBatch;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/WriteBatch;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/WriteBatch$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/firestore/WriteBatch;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/firebase/firestore/WriteBatch$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/firestore/WriteBatch;

    check-cast p1, Lcom/google/firebase/firestore/core/FirestoreClient;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/WriteBatch;->lambda$commit$0$com-google-firebase-firestore-WriteBatch(Lcom/google/firebase/firestore/core/FirestoreClient;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
