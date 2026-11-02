.class public final synthetic Lcom/google/firebase/firestore/pipeline/RawStage$$ExternalSyntheticLambda0;
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

    iput-object p1, p0, Lcom/google/firebase/firestore/pipeline/RawStage$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/firestore/UserDataReader;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/firebase/firestore/pipeline/RawStage$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/firestore/UserDataReader;

    check-cast p1, Lcom/google/firebase/firestore/pipeline/GenericArg;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/pipeline/RawStage;->$r8$lambda$dQw3cZP0P8d7kH-8DDKlA1mKGxs(Lcom/google/firebase/firestore/UserDataReader;Lcom/google/firebase/firestore/pipeline/GenericArg;)Lcom/google/firestore/v1/Value;

    move-result-object p1

    return-object p1
.end method
