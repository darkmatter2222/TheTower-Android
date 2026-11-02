.class public final synthetic Lcom/google/firebase/firestore/pipeline/Field$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/firestore/pipeline/Field;

.field public final synthetic f$1:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluationContext;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/pipeline/Field;Lcom/google/firebase/firestore/pipeline/evaluation/EvaluationContext;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/pipeline/Field$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/firestore/pipeline/Field;

    iput-object p2, p0, Lcom/google/firebase/firestore/pipeline/Field$$ExternalSyntheticLambda0;->f$1:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluationContext;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/firebase/firestore/pipeline/Field$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/firestore/pipeline/Field;

    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/Field$$ExternalSyntheticLambda0;->f$1:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluationContext;

    check-cast p1, Lcom/google/firebase/firestore/model/MutableDocument;

    invoke-static {v0, v1, p1}, Lcom/google/firebase/firestore/pipeline/Field;->$r8$lambda$23xuWUR4Rl1ioFtffD3UikSMogc(Lcom/google/firebase/firestore/pipeline/Field;Lcom/google/firebase/firestore/pipeline/evaluation/EvaluationContext;Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-result-object p1

    return-object p1
.end method
