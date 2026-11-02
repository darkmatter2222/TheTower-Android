.class public final Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmetic$1$1;
.super Ljava/lang/Object;
.source "Utils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmetic$1;->invoke(Ljava/util/List;)Lkotlin/jvm/functions/Function1;
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
    value = "SMAP\nUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunction$1$1\n+ 2 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt\n+ 3 Arithmetic.kt\ncom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt\n*L\n1#1,905:1\n31#2,2:906\n859#2,6:908\n858#2,23:914\n896#2:937\n881#2,8:956\n33#2,3:964\n55#3,18:938\n*S KotlinDebug\n*F\n+ 1 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt$binaryFunction$1$1\n*L\n283#1:906,2\n283#1:964,3\n*E\n"
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

    iput-object p1, p0, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmetic$1$1;->$p1:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmetic$1$1;->$p2:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "input"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    iget-object v2, v0, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmetic$1$1;->$p1:Lkotlin/jvm/functions/Function1;

    invoke-interface {v2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 279
    invoke-virtual {v2}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->isError()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v1

    .line 280
    :cond_0
    iget-object v3, v0, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmetic$1$1;->$p2:Lkotlin/jvm/functions/Function1;

    invoke-interface {v3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 281
    invoke-virtual {v1}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->isError()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v1

    .line 283
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 908
    invoke-virtual {v2}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v4

    goto :goto_0

    :cond_2
    move-object v4, v3

    :goto_0
    const/4 v5, -0x1

    if-nez v4, :cond_3

    move v4, v5

    goto :goto_1

    :cond_3
    sget-object v6, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v4}, Lcom/google/firestore/v1/Value$ValueTypeCase;->ordinal()I

    move-result v4

    aget v4, v6, v4

    :goto_1
    const/4 v6, 0x6

    const/4 v7, 0x5

    const/4 v8, 0x1

    if-eq v4, v5, :cond_6

    if-eq v4, v8, :cond_6

    if-eq v4, v7, :cond_5

    if-eq v4, v6, :cond_4

    .line 913
    sget-object v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v1

    .line 912
    :cond_4
    new-instance v4, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;

    invoke-virtual {v2}, Lcom/google/firestore/v1/Value;->getDoubleValue()D

    move-result-wide v9

    invoke-direct {v4, v9, v10}, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;-><init>(D)V

    check-cast v4, Lcom/google/firebase/firestore/pipeline/evaluation/FirestoreNumber;

    goto :goto_2

    .line 911
    :cond_5
    new-instance v4, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;

    invoke-virtual {v2}, Lcom/google/firestore/v1/Value;->getIntegerValue()J

    move-result-wide v9

    invoke-direct {v4, v9, v10}, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;-><init>(J)V

    check-cast v4, Lcom/google/firebase/firestore/pipeline/evaluation/FirestoreNumber;

    goto :goto_2

    :cond_6
    move-object v4, v3

    :goto_2
    if-eqz v1, :cond_7

    .line 923
    invoke-virtual {v1}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v2

    goto :goto_3

    :cond_7
    move-object v2, v3

    :goto_3
    if-nez v2, :cond_8

    move v2, v5

    goto :goto_4

    :cond_8
    sget-object v9, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Lcom/google/firestore/v1/Value$ValueTypeCase;->ordinal()I

    move-result v2

    aget v2, v9, v2

    :goto_4
    if-eq v2, v5, :cond_b

    if-eq v2, v8, :cond_b

    if-eq v2, v7, :cond_a

    if-eq v2, v6, :cond_9

    .line 928
    sget-object v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v1

    .line 927
    :cond_9
    new-instance v2, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;

    invoke-virtual {v1}, Lcom/google/firestore/v1/Value;->getDoubleValue()D

    move-result-wide v5

    invoke-direct {v2, v5, v6}, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;-><init>(D)V

    move-object v3, v2

    check-cast v3, Lcom/google/firebase/firestore/pipeline/evaluation/FirestoreNumber;

    goto :goto_5

    .line 926
    :cond_a
    new-instance v2, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;

    invoke-virtual {v1}, Lcom/google/firestore/v1/Value;->getIntegerValue()J

    move-result-wide v5

    invoke-direct {v2, v5, v6}, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;-><init>(J)V

    move-object v3, v2

    check-cast v3, Lcom/google/firebase/firestore/pipeline/evaluation/FirestoreNumber;

    :cond_b
    :goto_5
    if-eqz v4, :cond_33

    if-nez v3, :cond_c

    goto/16 :goto_18

    .line 934
    :cond_c
    instance-of v1, v4, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;

    const-wide/high16 v5, -0x8000000000000000L

    const-wide/high16 v7, 0x7ff8000000000000L    # Double.NaN

    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    const-wide/16 v11, 0x0

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    if-eqz v1, :cond_1f

    .line 936
    instance-of v1, v3, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;

    if-eqz v1, :cond_15

    check-cast v4, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;

    invoke-virtual {v4}, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;->getValue()J

    move-result-wide v1

    check-cast v3, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;

    invoke-virtual {v3}, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;->getValue()J

    move-result-wide v3

    long-to-double v1, v1

    long-to-double v3, v3

    cmpg-double v15, v3, v11

    if-nez v15, :cond_d

    goto :goto_6

    :cond_d
    cmpg-double v16, v1, v13

    if-nez v16, :cond_e

    .line 939
    :goto_6
    sget-object v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    :goto_7
    invoke-virtual {v1, v13, v14}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->double(D)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v1

    :cond_e
    cmpg-double v9, v1, v9

    if-nez v9, :cond_f

    .line 940
    invoke-static {v3, v4}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 941
    sget-object v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    :goto_8
    invoke-virtual {v1, v13, v14}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->double(D)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v1

    .line 945
    :cond_f
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v9

    if-nez v9, :cond_14

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v9

    if-eqz v9, :cond_10

    goto :goto_d

    :cond_10
    cmpg-double v7, v1, v11

    if-gez v7, :cond_11

    .line 951
    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v8

    if-nez v8, :cond_11

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-nez v8, :cond_11

    invoke-static {v3, v4}, Lcom/google/common/math/DoubleMath;->isMathematicalInteger(D)Z

    move-result v8

    if-nez v8, :cond_11

    .line 952
    :goto_9
    sget-object v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v1

    :cond_11
    if-nez v7, :cond_12

    goto :goto_a

    :cond_12
    cmpg-double v5, v1, v5

    if-nez v5, :cond_13

    :goto_a
    if-gez v15, :cond_13

    .line 954
    :goto_b
    sget-object v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v1

    .line 955
    :cond_13
    sget-object v5, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    :goto_c
    invoke-virtual {v5, v1, v2}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->double(D)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v1

    .line 946
    :cond_14
    :goto_d
    sget-object v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    :goto_e
    invoke-virtual {v1, v7, v8}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->double(D)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v1

    .line 956
    :cond_15
    instance-of v1, v3, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;

    if-eqz v1, :cond_1e

    check-cast v4, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;

    invoke-virtual {v4}, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;->getValue()J

    move-result-wide v1

    long-to-double v1, v1

    check-cast v3, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;

    invoke-virtual {v3}, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;->getValue()D

    move-result-wide v3

    cmpg-double v15, v3, v11

    if-nez v15, :cond_16

    goto :goto_f

    :cond_16
    cmpg-double v16, v1, v13

    if-nez v16, :cond_17

    .line 939
    :goto_f
    sget-object v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    goto/16 :goto_7

    :cond_17
    cmpg-double v9, v1, v9

    if-nez v9, :cond_18

    .line 940
    invoke-static {v3, v4}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 941
    sget-object v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    goto :goto_8

    .line 945
    :cond_18
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v9

    if-nez v9, :cond_1d

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v9

    if-eqz v9, :cond_19

    goto :goto_11

    :cond_19
    cmpg-double v7, v1, v11

    if-gez v7, :cond_1a

    .line 951
    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v8

    if-nez v8, :cond_1a

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-nez v8, :cond_1a

    invoke-static {v3, v4}, Lcom/google/common/math/DoubleMath;->isMathematicalInteger(D)Z

    move-result v8

    if-nez v8, :cond_1a

    goto :goto_9

    :cond_1a
    if-nez v7, :cond_1b

    goto :goto_10

    :cond_1b
    cmpg-double v5, v1, v5

    if-nez v5, :cond_1c

    :goto_10
    if-gez v15, :cond_1c

    goto :goto_b

    .line 955
    :cond_1c
    sget-object v5, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    goto :goto_c

    .line 946
    :cond_1d
    :goto_11
    sget-object v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    goto :goto_e

    .line 935
    :cond_1e
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 959
    :cond_1f
    instance-of v1, v4, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;

    if-eqz v1, :cond_32

    .line 961
    instance-of v1, v3, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;

    if-eqz v1, :cond_28

    check-cast v4, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;

    invoke-virtual {v4}, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;->getValue()D

    move-result-wide v1

    check-cast v3, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;

    invoke-virtual {v3}, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;->getValue()D

    move-result-wide v3

    cmpg-double v15, v3, v11

    if-nez v15, :cond_20

    goto :goto_12

    :cond_20
    cmpg-double v16, v1, v13

    if-nez v16, :cond_21

    .line 939
    :goto_12
    sget-object v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    goto/16 :goto_7

    :cond_21
    cmpg-double v9, v1, v9

    if-nez v9, :cond_22

    .line 940
    invoke-static {v3, v4}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v9

    if-eqz v9, :cond_22

    .line 941
    sget-object v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    goto/16 :goto_8

    .line 945
    :cond_22
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v9

    if-nez v9, :cond_27

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v9

    if-eqz v9, :cond_23

    goto :goto_14

    :cond_23
    cmpg-double v7, v1, v11

    if-gez v7, :cond_24

    .line 951
    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v8

    if-nez v8, :cond_24

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-nez v8, :cond_24

    invoke-static {v3, v4}, Lcom/google/common/math/DoubleMath;->isMathematicalInteger(D)Z

    move-result v8

    if-nez v8, :cond_24

    goto/16 :goto_9

    :cond_24
    if-nez v7, :cond_25

    goto :goto_13

    :cond_25
    cmpg-double v5, v1, v5

    if-nez v5, :cond_26

    :goto_13
    if-gez v15, :cond_26

    goto/16 :goto_b

    .line 955
    :cond_26
    sget-object v5, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    goto/16 :goto_c

    .line 946
    :cond_27
    :goto_14
    sget-object v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    goto/16 :goto_e

    .line 962
    :cond_28
    instance-of v1, v3, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;

    if-eqz v1, :cond_31

    check-cast v4, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;

    invoke-virtual {v4}, Lcom/google/firebase/firestore/pipeline/evaluation/DoubleValue;->getValue()D

    move-result-wide v1

    check-cast v3, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;

    invoke-virtual {v3}, Lcom/google/firebase/firestore/pipeline/evaluation/LongValue;->getValue()J

    move-result-wide v3

    long-to-double v3, v3

    cmpg-double v15, v3, v11

    if-nez v15, :cond_29

    goto :goto_15

    :cond_29
    cmpg-double v16, v1, v13

    if-nez v16, :cond_2a

    .line 939
    :goto_15
    sget-object v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    goto/16 :goto_7

    :cond_2a
    cmpg-double v9, v1, v9

    if-nez v9, :cond_2b

    .line 940
    invoke-static {v3, v4}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v9

    if-eqz v9, :cond_2b

    .line 941
    sget-object v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    goto/16 :goto_8

    .line 945
    :cond_2b
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v9

    if-nez v9, :cond_30

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v9

    if-eqz v9, :cond_2c

    goto :goto_17

    :cond_2c
    cmpg-double v7, v1, v11

    if-gez v7, :cond_2d

    .line 951
    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v8

    if-nez v8, :cond_2d

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-nez v8, :cond_2d

    invoke-static {v3, v4}, Lcom/google/common/math/DoubleMath;->isMathematicalInteger(D)Z

    move-result v8

    if-nez v8, :cond_2d

    goto/16 :goto_9

    :cond_2d
    if-nez v7, :cond_2e

    goto :goto_16

    :cond_2e
    cmpg-double v5, v1, v5

    if-nez v5, :cond_2f

    :goto_16
    if-gez v15, :cond_2f

    goto/16 :goto_b

    .line 955
    :cond_2f
    sget-object v5, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    goto/16 :goto_c

    .line 946
    :cond_30
    :goto_17
    sget-object v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    goto/16 :goto_e

    .line 963
    :cond_31
    sget-object v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v1

    .line 933
    :cond_32
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 931
    :cond_33
    :goto_18
    sget-object v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->getNULL()Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 965
    :catch_0
    sget-object v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 277
    check-cast p1, Lcom/google/firebase/firestore/model/MutableDocument;

    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/pipeline/evaluation/ArithmeticKt$special$$inlined$arithmetic$1$1;->invoke(Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-result-object p1

    return-object p1
.end method
