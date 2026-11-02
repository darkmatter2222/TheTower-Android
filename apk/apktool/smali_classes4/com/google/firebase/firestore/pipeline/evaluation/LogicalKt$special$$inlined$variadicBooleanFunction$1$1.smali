.class public final Lcom/google/firebase/firestore/pipeline/evaluation/LogicalKt$special$$inlined$variadicBooleanFunction$1$1;
.super Ljava/lang/Object;
.source "Utils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/firestore/pipeline/evaluation/LogicalKt$special$$inlined$variadicBooleanFunction$1;->invoke(Ljava/util/List;)Lkotlin/jvm/functions/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$variadicFunction$2$1$WhenMappings;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt$variadicFunction$2$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt\n+ 4 Logical.kt\ncom/google/firebase/firestore/pipeline/evaluation/LogicalKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,905:1\n1872#2,3:906\n31#3,2:909\n33#3,3:915\n70#4:911\n12918#5,3:912\n*S KotlinDebug\n*F\n+ 1 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt$variadicFunction$2$1\n+ 2 Logical.kt\ncom/google/firebase/firestore/pipeline/evaluation/LogicalKt\n*L\n699#1:906,3\n710#1:909,2\n710#1:915,3\n70#2:912,3\n*E\n"
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
.field final synthetic $params:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/firestore/pipeline/evaluation/LogicalKt$special$$inlined$variadicBooleanFunction$1$1;->$params:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    .locals 11

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 697
    iget-object v0, p0, Lcom/google/firebase/firestore/pipeline/evaluation/LogicalKt$special$$inlined$variadicBooleanFunction$1$1;->$params:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Z

    .line 699
    iget-object v2, p0, Lcom/google/firebase/firestore/pipeline/evaluation/LogicalKt$special$$inlined$variadicBooleanFunction$1$1;->$params:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    .line 907
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-gez v5, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 700
    invoke-interface {v6, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    .line 701
    invoke-virtual {v6}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->isError()Z

    move-result v8

    if-eqz v8, :cond_1

    sget-object p1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast p1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object p1

    .line 702
    :cond_1
    invoke-virtual {v6}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 703
    invoke-virtual {v6}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v8

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    const/4 v9, -0x1

    if-nez v8, :cond_3

    move v8, v9

    goto :goto_2

    :cond_3
    sget-object v10, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt$variadicFunction$2$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v8}, Lcom/google/firestore/v1/Value$ValueTypeCase;->ordinal()I

    move-result v8

    aget v8, v10, v8

    :goto_2
    const/4 v10, 0x1

    if-eq v8, v9, :cond_5

    if-eq v8, v10, :cond_5

    const/4 v9, 0x2

    if-eq v8, v9, :cond_4

    .line 707
    sget-object p1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast p1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object p1

    .line 706
    :cond_4
    invoke-virtual {v6}, Lcom/google/firestore/v1/Value;->getBooleanValue()Z

    move-result v6

    aput-boolean v6, v1, v5

    goto :goto_3

    :cond_5
    move v4, v10

    :goto_3
    move v5, v7

    goto :goto_0

    :cond_6
    if-eqz v4, :cond_7

    .line 710
    sget-object p1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->getNULL()Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    return-object p1

    .line 911
    :cond_7
    :try_start_0
    sget-object p1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;->Companion:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_4
    if-ge v3, v0, :cond_8

    .line 913
    aget-boolean v4, v1, v3

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    xor-int/2addr v2, v4

    .line 911
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 914
    :cond_8
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 911
    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult$Companion;->boolean(Z)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 916
    :catch_0
    sget-object p1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultError;

    check-cast p1, Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    :goto_5
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 696
    check-cast p1, Lcom/google/firebase/firestore/model/MutableDocument;

    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/pipeline/evaluation/LogicalKt$special$$inlined$variadicBooleanFunction$1$1;->invoke(Lcom/google/firebase/firestore/model/MutableDocument;)Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;

    move-result-object p1

    return-object p1
.end method
