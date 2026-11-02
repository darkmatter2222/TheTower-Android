.class public final synthetic Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lcom/google/firestore/v1/Value;

    check-cast p2, Lcom/google/firestore/v1/Value;

    invoke-static {p1, p2}, Lcom/google/firebase/firestore/pipeline/evaluation/ArrayKt;->$r8$lambda$aYSyxl8l3mwv-Hx13W6litN1vQQ(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
