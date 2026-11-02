.class public abstract Lcom/google/firebase/firestore/pipeline/BooleanExpression;
.super Lcom/google/firebase/firestore/pipeline/Expression;
.source "expressions.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/pipeline/BooleanExpression$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0002\u0008\u0007\u0008&\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0004\u001a\u00020\u0005J\u0016\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u0008\u001a\u00020\u0001J\u0016\u0010\u0006\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nJ\u0006\u0010\u000c\u001a\u00020\u0000J\u0015\u0010\r\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0000H\u0000\u00a2\u0006\u0002\u0008\u000f\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/google/firebase/firestore/pipeline/BooleanExpression;",
        "Lcom/google/firebase/firestore/pipeline/Expression;",
        "<init>",
        "()V",
        "countIf",
        "Lcom/google/firebase/firestore/pipeline/AggregateFunction;",
        "conditional",
        "thenExpr",
        "elseExpr",
        "thenValue",
        "",
        "elseValue",
        "not",
        "ifError",
        "catchExpr",
        "ifError$com_google_firebase_firebase_firestore",
        "Companion",
        "com.google.firebase-firebase-firestore"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/google/firebase/firestore/pipeline/BooleanExpression$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/firestore/pipeline/BooleanExpression$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/pipeline/BooleanExpression$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/firebase/firestore/pipeline/BooleanExpression;->Companion:Lcom/google/firebase/firestore/pipeline/BooleanExpression$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11360
    invoke-direct {p0}, Lcom/google/firebase/firestore/pipeline/Expression;-><init>()V

    return-void
.end method

.method public static final varargs rawFunction(Ljava/lang/String;[Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/BooleanExpression;->Companion:Lcom/google/firebase/firestore/pipeline/BooleanExpression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/BooleanExpression$Companion;->rawFunction(Ljava/lang/String;[Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final conditional(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "thenExpr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "elseExpr"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11379
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->conditional(Lcom/google/firebase/firestore/pipeline/BooleanExpression;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final conditional(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "thenValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "elseValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11390
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->conditional(Lcom/google/firebase/firestore/pipeline/BooleanExpression;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final countIf()Lcom/google/firebase/firestore/pipeline/AggregateFunction;
    .locals 1

    .line 11368
    sget-object v0, Lcom/google/firebase/firestore/pipeline/AggregateFunction;->Companion:Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;->countIf(Lcom/google/firebase/firestore/pipeline/BooleanExpression;)Lcom/google/firebase/firestore/pipeline/AggregateFunction;

    move-result-object v0

    return-object v0
.end method

.method public final ifError$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/BooleanExpression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1

    const-string v0, "catchExpr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11410
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->ifError(Lcom/google/firebase/firestore/pipeline/BooleanExpression;Lcom/google/firebase/firestore/pipeline/BooleanExpression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p1

    return-object p1
.end method

.method public final not()Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1

    .line 11397
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->not(Lcom/google/firebase/firestore/pipeline/BooleanExpression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    return-object v0
.end method
