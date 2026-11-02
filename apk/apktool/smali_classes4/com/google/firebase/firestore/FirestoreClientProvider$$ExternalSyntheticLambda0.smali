.class public final synthetic Lcom/google/firebase/firestore/FirestoreClientProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/firestore/FirestoreClientProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/FirestoreClientProvider;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/FirestoreClientProvider$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/firestore/FirestoreClientProvider;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/firebase/firestore/FirestoreClientProvider$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/firestore/FirestoreClientProvider;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/FirestoreClientProvider;->lambda$executeIfShutdown$0$com-google-firebase-firestore-FirestoreClientProvider(Ljava/lang/Runnable;)V

    return-void
.end method
