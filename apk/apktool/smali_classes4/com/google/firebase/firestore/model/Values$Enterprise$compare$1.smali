.class final synthetic Lcom/google/firebase/firestore/model/Values$Enterprise$compare$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "Values.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/model/Values$Enterprise;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/google/firestore/v1/Value;",
        "Lcom/google/firestore/v1/Value;",
        "Ljava/lang/Integer;",
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


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-class v3, Lcom/google/firebase/firestore/model/Values;

    const-string v5, "compare(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)I"

    const/4 v6, 0x0

    const/4 v1, 0x2

    const-string v4, "compare"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)Ljava/lang/Integer;
    .locals 0

    .line 211
    invoke-static {p1, p2}, Lcom/google/firebase/firestore/model/Values;->compare(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 211
    check-cast p1, Lcom/google/firestore/v1/Value;

    check-cast p2, Lcom/google/firestore/v1/Value;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/firestore/model/Values$Enterprise$compare$1;->invoke(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
