.class public final Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunctionConstructorType$1$1;
.super Ljava/lang/Object;
.source "Utils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunctionConstructorType$1;->invoke(Ljava/util/List;)Lkotlin/jvm/functions/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunctionConstructorType$1$1$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/google/firebase/firestore/model/MutableDocument;",
        "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0xb0
.end annotation


# instance fields
.field final synthetic $f:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "TT1;TT2;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $p1:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $p2:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $valueExtractor1:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firestore/v1/Value;",
            "TT1;>;"
        }
    .end annotation
.end field

.field final synthetic $valueExtractor2:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firestore/v1/Value;",
            "TT2;>;"
        }
    .end annotation
.end field

.field final synthetic $valueTypeCase1:Lcom/google/firestore/v1/Value$ValueTypeCase;

.field final synthetic $valueTypeCase2:Lcom/google/firestore/v1/Value$ValueTypeCase;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/google/firestore/v1/Value$ValueTypeCase;Lcom/google/firestore/v1/Value$ValueTypeCase;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;",
            "Lcom/google/firestore/v1/Value$ValueTypeCase;",
            "Lcom/google/firestore/v1/Value$ValueTypeCase;",
            "Lkotlin/jvm/functions/Function2<",
            "-TT1;-TT2;+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firestore/v1/Value;",
            "+TT1;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firestore/v1/Value;",
            "+TT2;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunctionConstructorType$1$1;->$p1:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunctionConstructorType$1$1;->$p2:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunctionConstructorType$1$1;->$valueTypeCase1:Lcom/google/firestore/v1/Value$ValueTypeCase;

    iput-object p4, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunctionConstructorType$1$1;->$valueTypeCase2:Lcom/google/firestore/v1/Value$ValueTypeCase;

    iput-object p5, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunctionConstructorType$1$1;->$f:Lkotlin/jvm/functions/Function2;

    iput-object p6, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunctionConstructorType$1$1;->$valueExtractor1:Lkotlin/jvm/functions/Function1;

    iput-object p7, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunctionConstructorType$1$1;->$valueExtractor2:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .locals 7

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunctionConstructorType$1$1;->$p1:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 512
    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast p1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object p1

    .line 513
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunctionConstructorType$1$1;->$p2:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 514
    invoke-virtual {p1}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast p1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object p1

    .line 517
    :cond_1
    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    const/4 v3, -0x1

    if-nez v1, :cond_3

    move v4, v3

    goto :goto_1

    :cond_3
    sget-object v4, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunctionConstructorType$1$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/google/firestore/v1/Value$ValueTypeCase;->ordinal()I

    move-result v5

    aget v4, v4, v5

    :goto_1
    const/4 v5, 0x1

    if-eq v4, v3, :cond_6

    if-ne v4, v5, :cond_4

    goto :goto_2

    .line 520
    :cond_4
    iget-object v4, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunctionConstructorType$1$1;->$valueTypeCase1:Lcom/google/firestore/v1/Value$ValueTypeCase;

    if-ne v1, v4, :cond_5

    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v0

    goto :goto_3

    .line 521
    :cond_5
    sget-object p1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast p1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object p1

    :cond_6
    :goto_2
    move-object v0, v2

    .line 524
    :goto_3
    invoke-virtual {p1}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v1

    goto :goto_4

    :cond_7
    move-object v1, v2

    :goto_4
    if-nez v1, :cond_8

    move v4, v3

    goto :goto_5

    :cond_8
    sget-object v4, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunctionConstructorType$1$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/google/firestore/v1/Value$ValueTypeCase;->ordinal()I

    move-result v6

    aget v4, v4, v6

    :goto_5
    if-eq v4, v3, :cond_b

    if-ne v4, v5, :cond_9

    goto :goto_6

    .line 527
    :cond_9
    iget-object v2, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunctionConstructorType$1$1;->$valueTypeCase2:Lcom/google/firestore/v1/Value$ValueTypeCase;

    if-ne v1, v2, :cond_a

    invoke-virtual {p1}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v2

    goto :goto_6

    .line 528
    :cond_a
    sget-object p1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast p1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object p1

    :cond_b
    :goto_6
    if-eqz v0, :cond_d

    if-nez v2, :cond_c

    goto :goto_7

    .line 531
    :cond_c
    iget-object p1, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunctionConstructorType$1$1;->$f:Lkotlin/jvm/functions/Function2;

    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunctionConstructorType$1$1;->$valueExtractor1:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunctionConstructorType$1$1;->$valueExtractor2:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object p1

    .line 530
    :cond_d
    :goto_7
    sget-object p1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->getNULL()Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 510
    check-cast p1, Lcom/google/firebase/firestore/model/MutableDocument;

    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunctionConstructorType$1$1;->invoke(Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-result-object p1

    return-object p1
.end method
