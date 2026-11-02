.class public final synthetic Lcom/google/firebase/firestore/core/Query$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/firebase/firestore/util/Function;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/firestore/pipeline/Expression$Companion;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/pipeline/Expression$Companion;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/core/Query$$ExternalSyntheticLambda1;->f$0:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Query$$ExternalSyntheticLambda1;->f$0:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    check-cast p1, Lcom/google/firebase/firestore/pipeline/Field;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->exists(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p1

    return-object p1
.end method
