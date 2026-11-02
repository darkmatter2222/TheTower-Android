.class public final synthetic Lcom/google/firebase/firestore/core/Query$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/firebase/firestore/util/IntFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p1}, Lcom/google/firebase/firestore/core/Query;->lambda$convertToStages$0(I)[Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p1

    return-object p1
.end method
