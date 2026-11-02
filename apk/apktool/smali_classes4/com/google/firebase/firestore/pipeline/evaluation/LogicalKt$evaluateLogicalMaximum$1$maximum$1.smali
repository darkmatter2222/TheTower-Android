.class final Lcom/google/firebase/firestore/pipeline/evaluation/LogicalKt$evaluateLogicalMaximum$1$maximum$1;
.super Ljava/lang/Object;
.source "Logical.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/pipeline/evaluation/LogicalKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/google/firestore/v1/Value;",
        "Lcom/google/firestore/v1/Value;",
        "Lcom/google/firestore/v1/Value;",
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
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/LogicalKt$evaluateLogicalMaximum$1$maximum$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/firestore/pipeline/evaluation/LogicalKt$evaluateLogicalMaximum$1$maximum$1;

    invoke-direct {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/LogicalKt$evaluateLogicalMaximum$1$maximum$1;-><init>()V

    sput-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/LogicalKt$evaluateLogicalMaximum$1$maximum$1;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/LogicalKt$evaluateLogicalMaximum$1$maximum$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Value;
    .locals 1

    const-string v0, "b"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    goto :goto_1

    .line 93
    :cond_0
    sget-object v0, Lcom/google/firebase/firestore/model/Values$Enterprise;->INSTANCE:Lcom/google/firebase/firestore/model/Values$Enterprise;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/Values$Enterprise;->getCompare$com_google_firebase_firebase_firestore()Lkotlin/reflect/KFunction;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    if-lez v0, :cond_2

    :goto_0
    return-object p1

    :cond_2
    :goto_1
    return-object p2
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 90
    check-cast p1, Lcom/google/firestore/v1/Value;

    check-cast p2, Lcom/google/firestore/v1/Value;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/evaluation/LogicalKt$evaluateLogicalMaximum$1$maximum$1;->invoke(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Value;

    move-result-object p1

    return-object p1
.end method
