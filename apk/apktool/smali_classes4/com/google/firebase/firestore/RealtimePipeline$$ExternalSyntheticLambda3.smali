.class public final synthetic Lcom/google/firebase/firestore/RealtimePipeline$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/firebase/firestore/EventListener;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/firestore/EventListener;

.field public final synthetic f$1:Lcom/google/firebase/firestore/RealtimePipeline;

.field public final synthetic f$2:Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/EventListener;Lcom/google/firebase/firestore/RealtimePipeline;Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/RealtimePipeline$$ExternalSyntheticLambda3;->f$0:Lcom/google/firebase/firestore/EventListener;

    iput-object p2, p0, Lcom/google/firebase/firestore/RealtimePipeline$$ExternalSyntheticLambda3;->f$1:Lcom/google/firebase/firestore/RealtimePipeline;

    iput-object p3, p0, Lcom/google/firebase/firestore/RealtimePipeline$$ExternalSyntheticLambda3;->f$2:Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;

    return-void
.end method


# virtual methods
.method public final onEvent(Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/google/firebase/firestore/RealtimePipeline$$ExternalSyntheticLambda3;->f$0:Lcom/google/firebase/firestore/EventListener;

    iget-object v1, p0, Lcom/google/firebase/firestore/RealtimePipeline$$ExternalSyntheticLambda3;->f$1:Lcom/google/firebase/firestore/RealtimePipeline;

    iget-object v2, p0, Lcom/google/firebase/firestore/RealtimePipeline$$ExternalSyntheticLambda3;->f$2:Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;

    check-cast p1, Lcom/google/firebase/firestore/core/ViewSnapshot;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/google/firebase/firestore/RealtimePipeline;->$r8$lambda$voaIvKUoKoctrPJkwbFxmzdkhsc(Lcom/google/firebase/firestore/EventListener;Lcom/google/firebase/firestore/RealtimePipeline;Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;Lcom/google/firebase/firestore/core/ViewSnapshot;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    return-void
.end method
