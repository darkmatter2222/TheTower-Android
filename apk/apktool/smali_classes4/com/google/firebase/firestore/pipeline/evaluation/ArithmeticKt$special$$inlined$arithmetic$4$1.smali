.class public final Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmetic$4$1;
.super Ljava/lang/Object;
.source "Utils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmetic$4;->invoke(Ljava/util/List;)Lkotlin/jvm/functions/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunction$1$1\n+ 2 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt\n+ 3 Arithmetic.kt\ncom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt\n*L\n1#1,905:1\n31#2,2:906\n859#2,6:908\n858#2,23:914\n896#2:937\n881#2,8:945\n33#2,3:953\n164#3,7:938\n*S KotlinDebug\n*F\n+ 1 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunction$1$1\n*L\n283#1:906,2\n283#1:953,3\n*E\n"
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


# instance fields
.field final synthetic $p1:Lkotlin/jvm/functions/Function1;

.field final synthetic $p2:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmetic$4$1;->$p1:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmetic$4$1;->$p2:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .locals 14

    move-object v0, p1

    const-string v1, "input"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmetic$4$1;->$p1:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 279
    invoke-virtual {v1}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v0

    .line 280
    :cond_0
    iget-object v2, p0, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmetic$4$1;->$p2:Lkotlin/jvm/functions/Function1;

    invoke-interface {v2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 281
    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v0

    .line 283
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 908
    invoke-virtual {v1}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v3, v2

    :goto_0
    const/4 v4, -0x1

    if-nez v3, :cond_3

    move v3, v4

    goto :goto_1

    :cond_3
    sget-object v5, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Lcom/google/firestore/v1/Value$ValueTypeCase;->ordinal()I

    move-result v3

    aget v3, v5, v3

    :goto_1
    const/4 v5, 0x6

    const/4 v6, 0x5

    const/4 v7, 0x1

    if-eq v3, v4, :cond_6

    if-eq v3, v7, :cond_6

    if-eq v3, v6, :cond_5

    if-eq v3, v5, :cond_4

    .line 913
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v0

    .line 912
    :cond_4
    new-instance v3, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;

    invoke-virtual {v1}, Lcom/google/firestore/v1/Value;->getDoubleValue()D

    move-result-wide v8

    invoke-direct {v3, v8, v9}, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;-><init>(D)V

    check-cast v3, Lcom/google/firebase/firestore/pipeline/evaluation/FirestoreNumber;

    goto :goto_2

    .line 911
    :cond_5
    new-instance v3, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;

    invoke-virtual {v1}, Lcom/google/firestore/v1/Value;->getIntegerValue()J

    move-result-wide v8

    invoke-direct {v3, v8, v9}, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;-><init>(J)V

    check-cast v3, Lcom/google/firebase/firestore/pipeline/evaluation/FirestoreNumber;

    goto :goto_2

    :cond_6
    move-object v3, v2

    :goto_2
    if-eqz v0, :cond_7

    .line 923
    invoke-virtual {v0}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v1

    goto :goto_3

    :cond_7
    move-object v1, v2

    :goto_3
    if-nez v1, :cond_8

    move v1, v4

    goto :goto_4

    :cond_8
    sget-object v8, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/google/firestore/v1/Value$ValueTypeCase;->ordinal()I

    move-result v1

    aget v1, v8, v1

    :goto_4
    if-eq v1, v4, :cond_b

    if-eq v1, v7, :cond_b

    if-eq v1, v6, :cond_a

    if-eq v1, v5, :cond_9

    .line 928
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v0

    .line 927
    :cond_9
    new-instance v1, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value;->getDoubleValue()D

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;-><init>(D)V

    move-object v2, v1

    check-cast v2, Lcom/google/firebase/firestore/pipeline/evaluation/FirestoreNumber;

    goto :goto_5

    .line 926
    :cond_a
    new-instance v1, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value;->getIntegerValue()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;-><init>(J)V

    move-object v2, v1

    check-cast v2, Lcom/google/firebase/firestore/pipeline/evaluation/FirestoreNumber;

    :cond_b
    :goto_5
    if-eqz v3, :cond_20

    if-nez v2, :cond_c

    goto/16 :goto_a

    .line 934
    :cond_c
    instance-of v0, v3, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-wide/high16 v8, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/16 v10, 0x0

    const-wide/high16 v12, 0x7ff8000000000000L    # Double.NaN

    if-eqz v0, :cond_16

    .line 936
    instance-of v0, v2, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;

    if-eqz v0, :cond_11

    check-cast v3, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;

    invoke-virtual {v3}, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;->getValue()J

    move-result-wide v0

    check-cast v2, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;->getValue()J

    move-result-wide v2

    long-to-double v0, v0

    long-to-double v2, v2

    cmpg-double v8, v0, v8

    if-nez v8, :cond_d

    .line 939
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    :goto_6
    invoke-virtual {v0, v12, v13}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->double(D)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v0

    :cond_d
    cmpg-double v6, v2, v6

    if-nez v6, :cond_e

    .line 941
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    :goto_7
    invoke-virtual {v0, v12, v13}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->double(D)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v0

    :cond_e
    cmpg-double v6, v2, v10

    if-lez v6, :cond_10

    cmpg-double v6, v0, v10

    if-lez v6, :cond_10

    cmpg-double v4, v2, v4

    if-nez v4, :cond_f

    goto :goto_9

    .line 944
    :cond_f
    sget-object v4, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-static {v0, v1, v2, v3}, Lkotlin/math/MathKt;->log(DD)D

    move-result-wide v0

    :goto_8
    invoke-virtual {v4, v0, v1}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->double(D)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v0

    .line 943
    :cond_10
    :goto_9
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v0

    .line 945
    :cond_11
    instance-of v0, v2, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;

    if-eqz v0, :cond_15

    check-cast v3, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;

    invoke-virtual {v3}, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;->getValue()J

    move-result-wide v0

    long-to-double v0, v0

    check-cast v2, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;->getValue()D

    move-result-wide v2

    cmpg-double v8, v0, v8

    if-nez v8, :cond_12

    .line 939
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    goto :goto_6

    :cond_12
    cmpg-double v6, v2, v6

    if-nez v6, :cond_13

    .line 941
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    goto :goto_7

    :cond_13
    cmpg-double v6, v2, v10

    if-lez v6, :cond_10

    cmpg-double v6, v0, v10

    if-lez v6, :cond_10

    cmpg-double v4, v2, v4

    if-nez v4, :cond_14

    goto :goto_9

    .line 944
    :cond_14
    sget-object v4, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-static {v0, v1, v2, v3}, Lkotlin/math/MathKt;->log(DD)D

    move-result-wide v0

    goto :goto_8

    .line 935
    :cond_15
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 948
    :cond_16
    instance-of v0, v3, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;

    if-eqz v0, :cond_1f

    .line 950
    instance-of v0, v2, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;

    if-eqz v0, :cond_1a

    check-cast v3, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;

    invoke-virtual {v3}, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;->getValue()D

    move-result-wide v0

    check-cast v2, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;->getValue()D

    move-result-wide v2

    cmpg-double v8, v0, v8

    if-nez v8, :cond_17

    .line 939
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    goto/16 :goto_6

    :cond_17
    cmpg-double v6, v2, v6

    if-nez v6, :cond_18

    .line 941
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    goto/16 :goto_7

    :cond_18
    cmpg-double v6, v2, v10

    if-lez v6, :cond_10

    cmpg-double v6, v0, v10

    if-lez v6, :cond_10

    cmpg-double v4, v2, v4

    if-nez v4, :cond_19

    goto :goto_9

    .line 944
    :cond_19
    sget-object v4, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-static {v0, v1, v2, v3}, Lkotlin/math/MathKt;->log(DD)D

    move-result-wide v0

    goto :goto_8

    .line 951
    :cond_1a
    instance-of v0, v2, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;

    if-eqz v0, :cond_1e

    check-cast v3, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;

    invoke-virtual {v3}, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;->getValue()D

    move-result-wide v0

    check-cast v2, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;->getValue()J

    move-result-wide v2

    long-to-double v2, v2

    cmpg-double v8, v0, v8

    if-nez v8, :cond_1b

    .line 939
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    goto/16 :goto_6

    :cond_1b
    cmpg-double v6, v2, v6

    if-nez v6, :cond_1c

    .line 941
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    goto/16 :goto_7

    :cond_1c
    cmpg-double v6, v2, v10

    if-lez v6, :cond_10

    cmpg-double v6, v0, v10

    if-lez v6, :cond_10

    cmpg-double v4, v2, v4

    if-nez v4, :cond_1d

    goto/16 :goto_9

    .line 944
    :cond_1d
    sget-object v4, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-static {v0, v1, v2, v3}, Lkotlin/math/MathKt;->log(DD)D

    move-result-wide v0

    goto/16 :goto_8

    .line 952
    :cond_1e
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v0

    .line 933
    :cond_1f
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 931
    :cond_20
    :goto_a
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->getNULL()Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 954
    :catch_0
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 277
    check-cast p1, Lcom/google/firebase/firestore/model/MutableDocument;

    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmetic$4$1;->invoke(Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-result-object p1

    return-object p1
.end method
