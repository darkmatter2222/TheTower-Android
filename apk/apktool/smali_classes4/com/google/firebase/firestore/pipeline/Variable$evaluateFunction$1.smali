.class final Lcom/google/firebase/firestore/pipeline/Variable$evaluateFunction$1;
.super Ljava/lang/Object;
.source "expressions.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/firestore/pipeline/Variable;->evaluateFunction$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/evaluation/EvaluationContext;)Lkotlin/jvm/functions/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/google/firebase/firestore/pipeline/Variable$evaluateFunction$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/firestore/pipeline/Variable$evaluateFunction$1;

    invoke-direct {v0}, Lcom/google/firebase/firestore/pipeline/Variable$evaluateFunction$1;-><init>()V

    sput-object v0, Lcom/google/firebase/firestore/pipeline/Variable$evaluateFunction$1;->INSTANCE:Lcom/google/firebase/firestore/pipeline/Variable$evaluateFunction$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11627
    check-cast p1, Lcom/google/firebase/firestore/model/MutableDocument;

    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/pipeline/Variable$evaluateFunction$1;->invoke(Lcom/google/firebase/firestore/model/MutableDocument;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lcom/google/firebase/firestore/model/MutableDocument;)Ljava/lang/Void;
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11628
    new-instance p1, Lkotlin/NotImplementedError;

    const-string v0, "Variable evaluation not implemented"

    invoke-direct {p1, v0}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw p1
.end method
