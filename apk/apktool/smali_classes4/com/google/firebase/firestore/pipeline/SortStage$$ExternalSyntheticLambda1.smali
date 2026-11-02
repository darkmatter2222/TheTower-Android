.class public final synthetic Lcom/google/firebase/firestore/pipeline/SortStage$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/firestore/UserDataReader;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/UserDataReader;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/pipeline/SortStage$$ExternalSyntheticLambda1;->f$0:Lcom/google/firebase/firestore/UserDataReader;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/firebase/firestore/pipeline/SortStage$$ExternalSyntheticLambda1;->f$0:Lcom/google/firebase/firestore/UserDataReader;

    check-cast p1, Lcom/google/firebase/firestore/pipeline/Ordering;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/pipeline/SortStage;->$r8$lambda$CPH9c251w0z3T5F9vM6Mq3QdO-8(Lcom/google/firebase/firestore/UserDataReader;Lcom/google/firebase/firestore/pipeline/Ordering;)Lcom/google/firestore/v1/Value;

    move-result-object p1

    return-object p1
.end method
