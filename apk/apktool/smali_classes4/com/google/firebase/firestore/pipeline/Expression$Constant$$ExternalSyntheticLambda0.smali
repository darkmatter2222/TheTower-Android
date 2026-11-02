.class public final synthetic Lcom/google/firebase/firestore/pipeline/Expression$Constant$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/firestore/pipeline/Expression$Constant;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/pipeline/Expression$Constant;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/pipeline/Expression$Constant$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/firestore/pipeline/Expression$Constant;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/firebase/firestore/pipeline/Expression$Constant$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/firestore/pipeline/Expression$Constant;

    check-cast p1, Lcom/google/firebase/firestore/model/MutableDocument;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Constant;->$r8$lambda$GwyOHHEEcw67pQIFaZWqA6KuHzg(Lcom/google/firebase/firestore/pipeline/Expression$Constant;Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object p1

    return-object p1
.end method
