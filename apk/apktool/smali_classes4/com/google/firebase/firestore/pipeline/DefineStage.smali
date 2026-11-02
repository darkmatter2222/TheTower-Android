.class public final Lcom/google/firebase/firestore/pipeline/DefineStage;
.super Lcom/google/firebase/firestore/pipeline/Stage;
.source "stage.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/pipeline/DefineStage$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/firestore/pipeline/Stage<",
        "Lcom/google/firebase/firestore/pipeline/DefineStage;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 \u001d2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u001dB#\u0008\u0000\u0012\u000e\u0010\u0002\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00040\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0015\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0006H\u0010\u00a2\u0006\u0002\u0008\rJ\r\u0010\u000e\u001a\u00020\u000fH\u0010\u00a2\u0006\u0002\u0008\u0010J\u001b\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u0010\u0014\u001a\u00020\u0015H\u0010\u00a2\u0006\u0002\u0008\u0016J\u0013\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0096\u0002J\u0008\u0010\u001b\u001a\u00020\u001cH\u0016R\u001e\u0010\u0002\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00040\u0003X\u0080\u0004\u00a2\u0006\n\n\u0002\u0010\u000b\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/google/firebase/firestore/pipeline/DefineStage;",
        "Lcom/google/firebase/firestore/pipeline/Stage;",
        "aliasedExpressions",
        "",
        "Lcom/google/firebase/firestore/pipeline/AliasedExpression;",
        "options",
        "Lcom/google/firebase/firestore/pipeline/InternalOptions;",
        "<init>",
        "([Lcom/google/firebase/firestore/pipeline/AliasedExpression;Lcom/google/firebase/firestore/pipeline/InternalOptions;)V",
        "getAliasedExpressions$com_google_firebase_firebase_firestore",
        "()[Lcom/google/firebase/firestore/pipeline/AliasedExpression;",
        "[Lcom/google/firebase/firestore/pipeline/AliasedExpression;",
        "self",
        "self$com_google_firebase_firebase_firestore",
        "canonicalId",
        "",
        "canonicalId$com_google_firebase_firebase_firestore",
        "args",
        "Lkotlin/sequences/Sequence;",
        "Lcom/google/firestore/v1/Value;",
        "userDataReader",
        "Lcom/google/firebase/firestore/UserDataReader;",
        "args$com_google_firebase_firebase_firestore",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
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
.field public static final Companion:Lcom/google/firebase/firestore/pipeline/DefineStage$Companion;


# instance fields
.field private final aliasedExpressions:[Lcom/google/firebase/firestore/pipeline/AliasedExpression;


# direct methods
.method public static synthetic $r8$lambda$_C-amAMGUGGXhSUZk1mb-FDS5PY(Lcom/google/firebase/firestore/pipeline/AliasedExpression;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/firestore/pipeline/DefineStage;->canonicalId$lambda$0(Lcom/google/firebase/firestore/pipeline/AliasedExpression;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/firestore/pipeline/DefineStage$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/pipeline/DefineStage$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/firebase/firestore/pipeline/DefineStage;->Companion:Lcom/google/firebase/firestore/pipeline/DefineStage$Companion;

    return-void
.end method

.method public constructor <init>([Lcom/google/firebase/firestore/pipeline/AliasedExpression;Lcom/google/firebase/firestore/pipeline/InternalOptions;)V
    .locals 2

    const-string v0, "aliasedExpressions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1703
    const-string v0, "let"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/google/firebase/firestore/pipeline/Stage;-><init>(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/InternalOptions;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1701
    iput-object p1, p0, Lcom/google/firebase/firestore/pipeline/DefineStage;->aliasedExpressions:[Lcom/google/firebase/firestore/pipeline/AliasedExpression;

    return-void
.end method

.method public synthetic constructor <init>([Lcom/google/firebase/firestore/pipeline/AliasedExpression;Lcom/google/firebase/firestore/pipeline/InternalOptions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 1702
    sget-object p2, Lcom/google/firebase/firestore/pipeline/InternalOptions;->EMPTY:Lcom/google/firebase/firestore/pipeline/InternalOptions;

    .line 1700
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/DefineStage;-><init>([Lcom/google/firebase/firestore/pipeline/AliasedExpression;Lcom/google/firebase/firestore/pipeline/InternalOptions;)V

    return-void
.end method

.method private static final canonicalId$lambda$0(Lcom/google/firebase/firestore/pipeline/AliasedExpression;)Ljava/lang/CharSequence;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/firebase/firestore/pipeline/AliasedExpression;->getAlias$com_google_firebase_firebase_firestore()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/firestore/pipeline/AliasedExpression;->getExpr$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/firebase/firestore/pipeline/Expression;->canonicalId$com_google_firebase_firebase_firestore()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static final varargs withVariables(Lcom/google/firebase/firestore/pipeline/AliasedExpression;[Lcom/google/firebase/firestore/pipeline/AliasedExpression;)Lcom/google/firebase/firestore/pipeline/DefineStage;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/DefineStage;->Companion:Lcom/google/firebase/firestore/pipeline/DefineStage$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/DefineStage$Companion;->withVariables(Lcom/google/firebase/firestore/pipeline/AliasedExpression;[Lcom/google/firebase/firestore/pipeline/AliasedExpression;)Lcom/google/firebase/firestore/pipeline/DefineStage;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public args$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/UserDataReader;)Lkotlin/sequences/Sequence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/UserDataReader;",
            ")",
            "Lkotlin/sequences/Sequence<",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    const-string v0, "userDataReader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1722
    new-array v0, v0, [Lcom/google/firestore/v1/Value;

    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/DefineStage;->aliasedExpressions:[Lcom/google/firebase/firestore/pipeline/AliasedExpression;

    check-cast v1, [Lcom/google/firebase/firestore/pipeline/Selectable;

    invoke-static {v1, p1}, Lcom/google/firebase/firestore/pipeline/StageKt;->access$associateWithoutDuplications([Lcom/google/firebase/firestore/pipeline/Selectable;Lcom/google/firebase/firestore/UserDataReader;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/firestore/model/Values;->encodeValue(Ljava/util/Map;)Lcom/google/firestore/v1/Value;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->sequenceOf([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object p1

    return-object p1
.end method

.method public canonicalId$com_google_firebase_firebase_firestore()Ljava/lang/String;
    .locals 10

    .line 1718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/firebase/firestore/pipeline/DefineStage;->getName$com_google_firebase_firebase_firestore()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/DefineStage;->aliasedExpressions:[Lcom/google/firebase/firestore/pipeline/AliasedExpression;

    const-string v2, ","

    check-cast v2, Ljava/lang/CharSequence;

    new-instance v7, Lcom/google/firebase/firestore/pipeline/DefineStage$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lcom/google/firebase/firestore/pipeline/DefineStage$$ExternalSyntheticLambda0;-><init>()V

    const/16 v8, 0x1e

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1727
    :cond_0
    instance-of v1, p1, Lcom/google/firebase/firestore/pipeline/DefineStage;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1728
    :cond_1
    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/DefineStage;->aliasedExpressions:[Lcom/google/firebase/firestore/pipeline/AliasedExpression;

    check-cast p1, Lcom/google/firebase/firestore/pipeline/DefineStage;

    iget-object v3, p1, Lcom/google/firebase/firestore/pipeline/DefineStage;->aliasedExpressions:[Lcom/google/firebase/firestore/pipeline/AliasedExpression;

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 1729
    :cond_2
    invoke-virtual {p0}, Lcom/google/firebase/firestore/pipeline/DefineStage;->getOptions$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/pipeline/InternalOptions;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/firestore/pipeline/DefineStage;->getOptions$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/pipeline/InternalOptions;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getAliasedExpressions$com_google_firebase_firebase_firestore()[Lcom/google/firebase/firestore/pipeline/AliasedExpression;
    .locals 1

    .line 1701
    iget-object v0, p0, Lcom/google/firebase/firestore/pipeline/DefineStage;->aliasedExpressions:[Lcom/google/firebase/firestore/pipeline/AliasedExpression;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1734
    iget-object v0, p0, Lcom/google/firebase/firestore/pipeline/DefineStage;->aliasedExpressions:[Lcom/google/firebase/firestore/pipeline/AliasedExpression;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 1735
    invoke-virtual {p0}, Lcom/google/firebase/firestore/pipeline/DefineStage;->getOptions$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/pipeline/InternalOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/firestore/pipeline/InternalOptions;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public self$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/InternalOptions;)Lcom/google/firebase/firestore/pipeline/DefineStage;
    .locals 2

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1715
    new-instance v0, Lcom/google/firebase/firestore/pipeline/DefineStage;

    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/DefineStage;->aliasedExpressions:[Lcom/google/firebase/firestore/pipeline/AliasedExpression;

    invoke-direct {v0, v1, p1}, Lcom/google/firebase/firestore/pipeline/DefineStage;-><init>([Lcom/google/firebase/firestore/pipeline/AliasedExpression;Lcom/google/firebase/firestore/pipeline/InternalOptions;)V

    return-object v0
.end method

.method public bridge synthetic self$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/InternalOptions;)Lcom/google/firebase/firestore/pipeline/Stage;
    .locals 0

    .line 1699
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/pipeline/DefineStage;->self$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/InternalOptions;)Lcom/google/firebase/firestore/pipeline/DefineStage;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/pipeline/Stage;

    return-object p1
.end method
