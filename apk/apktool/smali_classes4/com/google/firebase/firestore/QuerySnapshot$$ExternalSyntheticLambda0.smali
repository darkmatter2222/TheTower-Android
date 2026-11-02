.class public final synthetic Lcom/google/firebase/firestore/QuerySnapshot$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/firestore/QuerySnapshot;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/QuerySnapshot;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/QuerySnapshot$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/firestore/QuerySnapshot;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/firebase/firestore/QuerySnapshot$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/firestore/QuerySnapshot;

    check-cast p1, Lcom/google/firebase/firestore/model/Document;

    check-cast p2, Lcom/google/firebase/firestore/DocumentChange$Type;

    check-cast p3, Ljava/lang/Integer;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/firebase/firestore/QuerySnapshot;->lambda$getDocumentChanges$0$com-google-firebase-firestore-QuerySnapshot(Lcom/google/firebase/firestore/model/Document;Lcom/google/firebase/firestore/DocumentChange$Type;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/google/firebase/firestore/DocumentChange;

    move-result-object p1

    return-object p1
.end method
