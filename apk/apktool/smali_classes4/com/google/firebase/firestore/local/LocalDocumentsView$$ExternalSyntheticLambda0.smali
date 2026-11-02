.class public final synthetic Lcom/google/firebase/firestore/local/LocalDocumentsView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/firebase/firestore/util/Function;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/firestore/core/Query;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/core/Query;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/local/LocalDocumentsView$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/firestore/core/Query;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalDocumentsView$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/firestore/core/Query;

    check-cast p1, Lcom/google/firebase/firestore/model/Document;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/core/Query;->matches(Lcom/google/firebase/firestore/model/Document;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
