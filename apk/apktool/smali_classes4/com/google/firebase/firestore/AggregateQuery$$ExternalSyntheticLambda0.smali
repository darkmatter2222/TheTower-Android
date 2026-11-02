.class public final synthetic Lcom/google/firebase/firestore/AggregateQuery$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/firebase/firestore/util/Function;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/firestore/AggregateQuery;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/AggregateQuery;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/AggregateQuery$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/firestore/AggregateQuery;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/firebase/firestore/AggregateQuery$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/firestore/AggregateQuery;

    check-cast p1, Lcom/google/firebase/firestore/core/FirestoreClient;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/AggregateQuery;->lambda$get$0$com-google-firebase-firestore-AggregateQuery(Lcom/google/firebase/firestore/core/FirestoreClient;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
