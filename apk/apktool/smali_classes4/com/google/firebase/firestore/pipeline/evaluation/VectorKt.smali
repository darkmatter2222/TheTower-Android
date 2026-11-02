.class public final Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt;
.super Ljava/lang/Object;
.source "Vector.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Vector.kt\ncom/google/firebase/firestore/pipeline/evaluation/VectorKt\n+ 2 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt\n*L\n1#1,203:1\n61#2:204\n44#2,6:205\n69#2:211\n344#2:212\n272#2:213\n285#2:214\n362#2:215\n344#2:216\n272#2:217\n285#2:218\n362#2:219\n344#2:220\n272#2:221\n285#2:222\n362#2:223\n*S KotlinDebug\n*F\n+ 1 Vector.kt\ncom/google/firebase/firestore/pipeline/evaluation/VectorKt\n*L\n25#1:204\n25#1:205,6\n25#1:211\n31#1:212\n31#1:213\n31#1:214\n31#1:215\n35#1:216\n35#1:217\n35#1:218\n35#1:219\n39#1:220\n39#1:221\n39#1:222\n39#1:223\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0013\n\u0002\u0008\u0004\n\u0002\u0010\u0006\n\u0002\u0008\u0005\u001a\u0018\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0015H\u0000\u001a\u0018\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0015H\u0000\u001a\u0018\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0015H\u0000\u001a \u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001aH\u0002\u001a \u0010\u001e\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001aH\u0003\"w\u0010\u0000\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0002\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0001j\u0002`\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"w\u0010\r\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0002\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0001j\u0002`\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000c\"w\u0010\u000f\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0002\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0001j\u0002`\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000c\"w\u0010\u0011\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0002\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\u00080\u0001j\u0002`\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000c\u00a8\u0006\u001f"
    }
    d2 = {
        "evaluateVectorLength",
        "Lkotlin/Function1;",
        "",
        "Lcom/google/firebase/firestore/model/MutableDocument;",
        "Lkotlin/ParameterName;",
        "name",
        "input",
        "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
        "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateDocument;",
        "params",
        "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateFunction;",
        "getEvaluateVectorLength",
        "()Lkotlin/jvm/functions/Function1;",
        "evaluateCosineDistance",
        "getEvaluateCosineDistance",
        "evaluateDotProductDistance",
        "getEvaluateDotProductDistance",
        "evaluateEuclideanDistance",
        "getEvaluateEuclideanDistance",
        "cosineDistance",
        "vector1",
        "",
        "vector2",
        "euclideanDistance",
        "dotProductDistance",
        "fma",
        "",
        "a",
        "b",
        "c",
        "nativeFma",
        "com.google.firebase-firebase-firestore"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final evaluateCosineDistance:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final evaluateDotProductDistance:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final evaluateEuclideanDistance:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final evaluateVectorLength:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 205
    new-instance v0, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt$special$$inlined$unaryValueFunction$1;

    invoke-direct {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt$special$$inlined$unaryValueFunction$1;-><init>()V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 25
    sput-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt;->evaluateVectorLength:Lkotlin/jvm/functions/Function1;

    .line 213
    new-instance v0, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt$special$$inlined$binaryVectorVectorFunction$1;

    invoke-direct {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt$special$$inlined$binaryVectorVectorFunction$1;-><init>()V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 31
    sput-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt;->evaluateCosineDistance:Lkotlin/jvm/functions/Function1;

    .line 217
    new-instance v0, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt$special$$inlined$binaryVectorVectorFunction$2;

    invoke-direct {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt$special$$inlined$binaryVectorVectorFunction$2;-><init>()V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 35
    sput-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt;->evaluateDotProductDistance:Lkotlin/jvm/functions/Function1;

    .line 221
    new-instance v0, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt$special$$inlined$binaryVectorVectorFunction$3;

    invoke-direct {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt$special$$inlined$binaryVectorVectorFunction$3;-><init>()V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 39
    sput-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt;->evaluateEuclideanDistance:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final cosineDistance([D[D)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .locals 74

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "vector1"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "vector2"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    array-length v2, v0

    array-length v3, v1

    if-eq v2, v3, :cond_0

    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v0

    .line 71
    :cond_0
    array-length v2, v0

    and-int/lit8 v2, v2, -0x4

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-wide v10, v3

    move-wide/from16 v16, v10

    move-wide/from16 v22, v16

    move-wide/from16 v28, v22

    move-wide/from16 v34, v28

    move-wide/from16 v40, v34

    move-wide/from16 v46, v40

    move-wide/from16 v52, v46

    move-wide/from16 v58, v52

    move-wide/from16 v64, v58

    move-wide/from16 v70, v64

    move v12, v5

    :goto_0
    if-ge v12, v2, :cond_1

    .line 75
    aget-wide v6, v0, v12

    aget-wide v8, v1, v12

    invoke-static/range {v6 .. v11}, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt;->fma(DDD)D

    move-result-wide v10

    add-int/lit8 v9, v12, 0x1

    .line 76
    aget-wide v5, v0, v9

    aget-wide v7, v1, v9

    move-wide/from16 v72, v7

    move-wide v7, v3

    move-wide v3, v5

    move-wide/from16 v5, v72

    invoke-static/range {v3 .. v8}, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt;->fma(DDD)D

    move-result-wide v3

    add-int/lit8 v5, v12, 0x2

    .line 77
    aget-wide v6, v0, v5

    aget-wide v14, v1, v5

    move-wide/from16 v72, v6

    move v6, v12

    move-wide/from16 v12, v72

    invoke-static/range {v12 .. v17}, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt;->fma(DDD)D

    move-result-wide v16

    add-int/lit8 v12, v6, 0x3

    .line 78
    aget-wide v18, v0, v12

    aget-wide v20, v1, v12

    invoke-static/range {v18 .. v23}, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt;->fma(DDD)D

    move-result-wide v22

    .line 80
    aget-wide v24, v0, v6

    move-wide/from16 v26, v24

    invoke-static/range {v24 .. v29}, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt;->fma(DDD)D

    move-result-wide v28

    .line 81
    aget-wide v30, v0, v9

    move-wide/from16 v32, v30

    invoke-static/range {v30 .. v35}, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt;->fma(DDD)D

    move-result-wide v34

    .line 82
    aget-wide v36, v0, v5

    move-wide/from16 v38, v36

    invoke-static/range {v36 .. v41}, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt;->fma(DDD)D

    move-result-wide v40

    .line 83
    aget-wide v42, v0, v12

    move-wide/from16 v44, v42

    invoke-static/range {v42 .. v47}, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt;->fma(DDD)D

    move-result-wide v46

    .line 85
    aget-wide v48, v1, v6

    move-wide/from16 v50, v48

    invoke-static/range {v48 .. v53}, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt;->fma(DDD)D

    move-result-wide v52

    .line 86
    aget-wide v54, v1, v9

    move-wide/from16 v56, v54

    invoke-static/range {v54 .. v59}, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt;->fma(DDD)D

    move-result-wide v58

    .line 87
    aget-wide v60, v1, v5

    move-wide/from16 v62, v60

    invoke-static/range {v60 .. v65}, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt;->fma(DDD)D

    move-result-wide v64

    .line 88
    aget-wide v66, v1, v12

    move-wide/from16 v68, v66

    invoke-static/range {v66 .. v71}, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt;->fma(DDD)D

    move-result-wide v70

    add-int/lit8 v12, v6, 0x4

    goto :goto_0

    :cond_1
    move-wide v7, v3

    add-double/2addr v10, v7

    add-double v10, v10, v16

    add-double v10, v10, v22

    add-double v28, v28, v34

    add-double v28, v28, v40

    add-double v28, v28, v46

    add-double v52, v52, v58

    add-double v52, v52, v64

    add-double v52, v52, v70

    .line 97
    array-length v3, v0

    :goto_1
    if-ge v2, v3, :cond_2

    .line 98
    aget-wide v4, v0, v2

    .line 99
    aget-wide v6, v1, v2

    mul-double v8, v4, v6

    add-double/2addr v10, v8

    mul-double/2addr v4, v4

    add-double v28, v28, v4

    mul-double/2addr v6, v6

    add-double v52, v52, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    mul-double v28, v28, v52

    .line 104
    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    div-double/2addr v10, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v10

    .line 105
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v0

    .line 106
    :cond_3
    sget-object v2, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->double(D)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v0
.end method

.method public static final dotProductDistance([D[D)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "vector1"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "vector2"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    array-length v2, v0

    array-length v3, v1

    if-eq v2, v3, :cond_0

    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v0

    .line 166
    :cond_0
    array-length v2, v0

    and-int/lit8 v2, v2, -0x4

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-wide v10, v3

    move-wide/from16 v16, v10

    move-wide/from16 v22, v16

    move v12, v5

    :goto_0
    if-ge v12, v2, :cond_1

    .line 170
    aget-wide v6, v0, v12

    aget-wide v8, v1, v12

    invoke-static/range {v6 .. v11}, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt;->fma(DDD)D

    move-result-wide v10

    add-int/lit8 v5, v12, 0x1

    .line 171
    aget-wide v6, v0, v5

    aget-wide v8, v1, v5

    move-wide/from16 v24, v6

    move-wide/from16 v26, v8

    move-wide v7, v3

    move-wide/from16 v3, v24

    move-wide/from16 v5, v26

    invoke-static/range {v3 .. v8}, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt;->fma(DDD)D

    move-result-wide v3

    add-int/lit8 v5, v12, 0x2

    .line 172
    aget-wide v6, v0, v5

    aget-wide v14, v1, v5

    move v5, v12

    move-wide v12, v6

    invoke-static/range {v12 .. v17}, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt;->fma(DDD)D

    move-result-wide v16

    add-int/lit8 v12, v5, 0x3

    .line 173
    aget-wide v18, v0, v12

    aget-wide v20, v1, v12

    invoke-static/range {v18 .. v23}, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt;->fma(DDD)D

    move-result-wide v22

    add-int/lit8 v12, v5, 0x4

    goto :goto_0

    :cond_1
    move-wide v7, v3

    add-double/2addr v10, v7

    add-double v10, v10, v16

    add-double v10, v10, v22

    .line 181
    array-length v3, v0

    :goto_1
    if-ge v2, v3, :cond_2

    .line 182
    aget-wide v4, v0, v2

    aget-wide v6, v1, v2

    mul-double/2addr v4, v6

    add-double/2addr v10, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 185
    :cond_2
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-virtual {v0, v10, v11}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->double(D)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v0
.end method

.method public static final euclideanDistance([D[D)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "vector1"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "vector2"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    array-length v2, v0

    array-length v3, v1

    if-eq v2, v3, :cond_0

    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v0

    .line 124
    :cond_0
    array-length v2, v0

    and-int/lit8 v2, v2, -0x4

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-wide v10, v3

    move-wide/from16 v16, v10

    move-wide/from16 v22, v16

    move v12, v5

    :goto_0
    if-ge v12, v2, :cond_1

    .line 128
    aget-wide v5, v0, v12

    aget-wide v7, v1, v12

    sub-double v6, v5, v7

    add-int/lit8 v5, v12, 0x1

    .line 129
    aget-wide v8, v0, v5

    aget-wide v13, v1, v5

    sub-double v13, v8, v13

    add-int/lit8 v5, v12, 0x2

    .line 130
    aget-wide v8, v0, v5

    aget-wide v18, v1, v5

    sub-double v18, v8, v18

    add-int/lit8 v5, v12, 0x3

    .line 131
    aget-wide v8, v0, v5

    aget-wide v20, v1, v5

    sub-double v20, v8, v20

    move-wide v8, v6

    .line 132
    invoke-static/range {v6 .. v11}, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt;->fma(DDD)D

    move-result-wide v10

    move-wide v5, v13

    move-wide v7, v3

    move-wide v3, v13

    .line 133
    invoke-static/range {v3 .. v8}, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt;->fma(DDD)D

    move-result-wide v3

    move-wide/from16 v14, v18

    move v5, v12

    move-wide/from16 v12, v18

    .line 134
    invoke-static/range {v12 .. v17}, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt;->fma(DDD)D

    move-result-wide v16

    move-wide/from16 v18, v20

    .line 135
    invoke-static/range {v18 .. v23}, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt;->fma(DDD)D

    move-result-wide v22

    add-int/lit8 v12, v5, 0x4

    goto :goto_0

    :cond_1
    move-wide v7, v3

    add-double/2addr v10, v7

    add-double v10, v10, v16

    add-double v10, v10, v22

    .line 143
    array-length v3, v0

    move-wide v8, v10

    :goto_1
    if-ge v2, v3, :cond_2

    .line 144
    aget-wide v4, v0, v2

    aget-wide v6, v1, v2

    sub-double/2addr v4, v6

    move-wide v6, v4

    .line 145
    invoke-static/range {v4 .. v9}, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt;->fma(DDD)D

    move-result-wide v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 147
    :cond_2
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->double(D)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object v0
.end method

.method private static final fma(DDD)D
    .locals 2

    .line 190
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    .line 192
    invoke-static/range {p0 .. p5}, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt;->nativeFma(DDD)D

    move-result-wide p0

    return-wide p0

    :cond_0
    mul-double/2addr p0, p2

    add-double/2addr p0, p4

    return-wide p0
.end method

.method public static final getEvaluateCosineDistance()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation

    .line 31
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt;->evaluateCosineDistance:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateDotProductDistance()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation

    .line 35
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt;->evaluateDotProductDistance:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateEuclideanDistance()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation

    .line 39
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt;->evaluateEuclideanDistance:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateVectorLength()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation

    .line 25
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/VectorKt;->evaluateVectorLength:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method private static final nativeFma(DDD)D
    .locals 0

    .line 201
    invoke-static/range {p0 .. p5}, Ljava/lang/Math;->fma(DDD)D

    move-result-wide p0

    return-wide p0
.end method
