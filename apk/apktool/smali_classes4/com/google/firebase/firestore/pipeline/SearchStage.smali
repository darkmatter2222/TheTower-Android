.class public final Lcom/google/firebase/firestore/pipeline/SearchStage;
.super Lcom/google/firebase/firestore/pipeline/Stage;
.source "stage.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/pipeline/SearchStage$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/firestore/pipeline/Stage<",
        "Lcom/google/firebase/firestore/pipeline/SearchStage;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nstage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 stage.kt\ncom/google/firebase/firestore/pipeline/SearchStage\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,1739:1\n11165#2:1740\n11500#2,3:1741\n37#3,2:1744\n37#3,2:1746\n*S KotlinDebug\n*F\n+ 1 stage.kt\ncom/google/firebase/firestore/pipeline/SearchStage\n*L\n952#1:1740\n952#1:1741,3\n1059#1:1744,2\n1103#1:1746,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0008\u0007\u0018\u0000 52\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u00015Bo\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0010\u0008\u0002\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0007\u0012\u0010\u0008\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\t\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0015\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0010H\u0010\u00a2\u0006\u0002\u0008\u0017J\r\u0010\u0018\u001a\u00020\u0005H\u0010\u00a2\u0006\u0002\u0008\u0019J\u001b\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001b2\u0006\u0010\u001d\u001a\u00020\u001eH\u0010\u00a2\u0006\u0002\u0008\u001fJ\u0013\u0010 \u001a\u00020!2\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0096\u0002J\u0008\u0010$\u001a\u00020%H\u0016J\u0015\u0010&\u001a\u00020\'2\u0006\u0010\u001d\u001a\u00020\u001eH\u0010\u00a2\u0006\u0002\u0008(J\'\u0010)\u001a\u00020\u00002\u0006\u0010*\u001a\u00020\u000e2\u0012\u0010+\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000e0\t\"\u00020\u000e\u00a2\u0006\u0002\u0010,J\'\u0010-\u001a\u00020\u00002\u0006\u0010.\u001a\u00020\n2\u0012\u0010/\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\n0\t\"\u00020\n\u00a2\u0006\u0002\u00100J\u000e\u00101\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u0007J\u000e\u00102\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u00103\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0007J\u000e\u00104\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0013R\u0018\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0014R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0013R\u0012\u0010\u000c\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0013R\u0018\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\tX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0015\u00a8\u00066"
    }
    d2 = {
        "Lcom/google/firebase/firestore/pipeline/SearchStage;",
        "Lcom/google/firebase/firestore/pipeline/Stage;",
        "query",
        "Lcom/google/firebase/firestore/pipeline/BooleanExpression;",
        "languageCode",
        "",
        "retrievalDepth",
        "",
        "sort",
        "",
        "Lcom/google/firebase/firestore/pipeline/Ordering;",
        "offset",
        "limit",
        "addFields",
        "Lcom/google/firebase/firestore/pipeline/Selectable;",
        "options",
        "Lcom/google/firebase/firestore/pipeline/InternalOptions;",
        "<init>",
        "(Lcom/google/firebase/firestore/pipeline/BooleanExpression;Ljava/lang/String;Ljava/lang/Long;[Lcom/google/firebase/firestore/pipeline/Ordering;Ljava/lang/Long;Ljava/lang/Long;[Lcom/google/firebase/firestore/pipeline/Selectable;Lcom/google/firebase/firestore/pipeline/InternalOptions;)V",
        "Ljava/lang/Long;",
        "[Lcom/google/firebase/firestore/pipeline/Ordering;",
        "[Lcom/google/firebase/firestore/pipeline/Selectable;",
        "self",
        "self$com_google_firebase_firebase_firestore",
        "canonicalId",
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
        "toProtoStage",
        "Lcom/google/firestore/v1/Pipeline$Stage;",
        "toProtoStage$com_google_firebase_firebase_firestore",
        "withAddFields",
        "field",
        "additionalFields",
        "(Lcom/google/firebase/firestore/pipeline/Selectable;[Lcom/google/firebase/firestore/pipeline/Selectable;)Lcom/google/firebase/firestore/pipeline/SearchStage;",
        "withSort",
        "order",
        "additionalOrderings",
        "(Lcom/google/firebase/firestore/pipeline/Ordering;[Lcom/google/firebase/firestore/pipeline/Ordering;)Lcom/google/firebase/firestore/pipeline/SearchStage;",
        "withLimit",
        "withRetrievalDepth",
        "withOffset",
        "withLanguageCode",
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
.field public static final Companion:Lcom/google/firebase/firestore/pipeline/SearchStage$Companion;


# instance fields
.field private final addFields:[Lcom/google/firebase/firestore/pipeline/Selectable;

.field private final languageCode:Ljava/lang/String;

.field private final limit:Ljava/lang/Long;

.field private final offset:Ljava/lang/Long;

.field private final query:Lcom/google/firebase/firestore/pipeline/BooleanExpression;

.field private final retrievalDepth:Ljava/lang/Long;

.field private final sort:[Lcom/google/firebase/firestore/pipeline/Ordering;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/firestore/pipeline/SearchStage$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/pipeline/SearchStage$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/firebase/firestore/pipeline/SearchStage;->Companion:Lcom/google/firebase/firestore/pipeline/SearchStage$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/firestore/pipeline/BooleanExpression;Ljava/lang/String;Ljava/lang/Long;[Lcom/google/firebase/firestore/pipeline/Ordering;Ljava/lang/Long;Ljava/lang/Long;[Lcom/google/firebase/firestore/pipeline/Selectable;Lcom/google/firebase/firestore/pipeline/InternalOptions;)V
    .locals 2

    const-string v0, "query"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 893
    const-string v0, "search"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p8, v1}, Lcom/google/firebase/firestore/pipeline/Stage;-><init>(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/InternalOptions;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 880
    iput-object p1, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->query:Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    .line 881
    iput-object p2, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->languageCode:Ljava/lang/String;

    .line 883
    iput-object p3, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->retrievalDepth:Ljava/lang/Long;

    .line 884
    iput-object p4, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->sort:[Lcom/google/firebase/firestore/pipeline/Ordering;

    .line 885
    iput-object p5, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->offset:Ljava/lang/Long;

    .line 886
    iput-object p6, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->limit:Ljava/lang/Long;

    .line 889
    iput-object p7, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->addFields:[Lcom/google/firebase/firestore/pipeline/Selectable;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/firebase/firestore/pipeline/BooleanExpression;Ljava/lang/String;Ljava/lang/Long;[Lcom/google/firebase/firestore/pipeline/Ordering;Ljava/lang/Long;Ljava/lang/Long;[Lcom/google/firebase/firestore/pipeline/Selectable;Lcom/google/firebase/firestore/pipeline/InternalOptions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p10, p9, 0x2

    const/4 v0, 0x0

    if-eqz p10, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p10, p9, 0x4

    if-eqz p10, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p10, p9, 0x8

    if-eqz p10, :cond_2

    move-object p4, v0

    :cond_2
    and-int/lit8 p10, p9, 0x10

    if-eqz p10, :cond_3

    move-object p5, v0

    :cond_3
    and-int/lit8 p10, p9, 0x20

    if-eqz p10, :cond_4

    move-object p6, v0

    :cond_4
    and-int/lit8 p10, p9, 0x40

    if-eqz p10, :cond_5

    move-object p7, v0

    :cond_5
    and-int/lit16 p9, p9, 0x80

    if-eqz p9, :cond_6

    .line 892
    sget-object p8, Lcom/google/firebase/firestore/pipeline/InternalOptions;->EMPTY:Lcom/google/firebase/firestore/pipeline/InternalOptions;

    :cond_6
    move-object p9, p8

    move-object p8, p7

    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 879
    invoke-direct/range {p1 .. p9}, Lcom/google/firebase/firestore/pipeline/SearchStage;-><init>(Lcom/google/firebase/firestore/pipeline/BooleanExpression;Ljava/lang/String;Ljava/lang/Long;[Lcom/google/firebase/firestore/pipeline/Ordering;Ljava/lang/Long;Ljava/lang/Long;[Lcom/google/firebase/firestore/pipeline/Selectable;Lcom/google/firebase/firestore/pipeline/InternalOptions;)V

    return-void
.end method

.method public static final withQuery(Lcom/google/firebase/firestore/pipeline/BooleanExpression;)Lcom/google/firebase/firestore/pipeline/SearchStage;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/SearchStage;->Companion:Lcom/google/firebase/firestore/pipeline/SearchStage$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/SearchStage$Companion;->withQuery(Lcom/google/firebase/firestore/pipeline/BooleanExpression;)Lcom/google/firebase/firestore/pipeline/SearchStage;

    move-result-object p0

    return-object p0
.end method

.method public static final withQuery(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/SearchStage;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/SearchStage;->Companion:Lcom/google/firebase/firestore/pipeline/SearchStage$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/SearchStage$Companion;->withQuery(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/SearchStage;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public args$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/UserDataReader;)Lkotlin/sequences/Sequence;
    .locals 1
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

    .line 910
    invoke-static {}, Lkotlin/sequences/SequencesKt;->emptySequence()Lkotlin/sequences/Sequence;

    move-result-object p1

    return-object p1
.end method

.method public canonicalId$com_google_firebase_firebase_firestore()Ljava/lang/String;
    .locals 2

    .line 908
    new-instance v0, Lkotlin/NotImplementedError;

    const-string v1, "An operation is not implemented: Not yet implemented"

    invoke-direct {v0, v1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 914
    :cond_0
    instance-of v1, p1, Lcom/google/firebase/firestore/pipeline/SearchStage;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 915
    :cond_1
    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->query:Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    check-cast p1, Lcom/google/firebase/firestore/pipeline/SearchStage;

    iget-object v3, p1, Lcom/google/firebase/firestore/pipeline/SearchStage;->query:Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 916
    :cond_2
    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->languageCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/firebase/firestore/pipeline/SearchStage;->languageCode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 917
    :cond_3
    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->retrievalDepth:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/firebase/firestore/pipeline/SearchStage;->retrievalDepth:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 918
    :cond_4
    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->sort:[Lcom/google/firebase/firestore/pipeline/Ordering;

    iget-object v3, p1, Lcom/google/firebase/firestore/pipeline/SearchStage;->sort:[Lcom/google/firebase/firestore/pipeline/Ordering;

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 919
    :cond_5
    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->offset:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/firebase/firestore/pipeline/SearchStage;->offset:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 920
    :cond_6
    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->limit:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/firebase/firestore/pipeline/SearchStage;->limit:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 922
    :cond_7
    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->addFields:[Lcom/google/firebase/firestore/pipeline/Selectable;

    iget-object v3, p1, Lcom/google/firebase/firestore/pipeline/SearchStage;->addFields:[Lcom/google/firebase/firestore/pipeline/Selectable;

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 924
    :cond_8
    invoke-virtual {p0}, Lcom/google/firebase/firestore/pipeline/SearchStage;->getOptions$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/pipeline/InternalOptions;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/firestore/pipeline/SearchStage;->getOptions$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/pipeline/InternalOptions;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 929
    iget-object v0, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->query:Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/BooleanExpression;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 930
    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->languageCode:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 931
    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->retrievalDepth:Ljava/lang/Long;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 932
    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->sort:[Lcom/google/firebase/firestore/pipeline/Ordering;

    if-eqz v1, :cond_2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 933
    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->offset:Ljava/lang/Long;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 934
    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->limit:Ljava/lang/Long;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 936
    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->addFields:[Lcom/google/firebase/firestore/pipeline/Selectable;

    if-eqz v1, :cond_5

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    :cond_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 938
    invoke-virtual {p0}, Lcom/google/firebase/firestore/pipeline/SearchStage;->getOptions$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/pipeline/InternalOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/firestore/pipeline/InternalOptions;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public self$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/InternalOptions;)Lcom/google/firebase/firestore/pipeline/SearchStage;
    .locals 10

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 895
    new-instance v1, Lcom/google/firebase/firestore/pipeline/SearchStage;

    .line 896
    iget-object v2, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->query:Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    .line 897
    iget-object v3, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->languageCode:Ljava/lang/String;

    .line 898
    iget-object v4, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->retrievalDepth:Ljava/lang/Long;

    .line 899
    iget-object v5, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->sort:[Lcom/google/firebase/firestore/pipeline/Ordering;

    .line 900
    iget-object v6, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->offset:Ljava/lang/Long;

    .line 901
    iget-object v7, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->limit:Ljava/lang/Long;

    .line 903
    iget-object v8, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->addFields:[Lcom/google/firebase/firestore/pipeline/Selectable;

    move-object v9, p1

    .line 895
    invoke-direct/range {v1 .. v9}, Lcom/google/firebase/firestore/pipeline/SearchStage;-><init>(Lcom/google/firebase/firestore/pipeline/BooleanExpression;Ljava/lang/String;Ljava/lang/Long;[Lcom/google/firebase/firestore/pipeline/Ordering;Ljava/lang/Long;Ljava/lang/Long;[Lcom/google/firebase/firestore/pipeline/Selectable;Lcom/google/firebase/firestore/pipeline/InternalOptions;)V

    return-object v1
.end method

.method public bridge synthetic self$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/InternalOptions;)Lcom/google/firebase/firestore/pipeline/Stage;
    .locals 0

    .line 877
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/pipeline/SearchStage;->self$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/InternalOptions;)Lcom/google/firebase/firestore/pipeline/SearchStage;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/pipeline/Stage;

    return-object p1
.end method

.method public toProtoStage$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/UserDataReader;)Lcom/google/firestore/v1/Pipeline$Stage;
    .locals 6

    const-string v0, "userDataReader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 943
    invoke-virtual {p0}, Lcom/google/firebase/firestore/pipeline/SearchStage;->getOptions$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/pipeline/InternalOptions;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->query:Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    invoke-virtual {v1, p1}, Lcom/google/firebase/firestore/pipeline/BooleanExpression;->toProto$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/UserDataReader;)Lcom/google/firestore/v1/Value;

    move-result-object v1

    const-string v2, "query"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/firestore/pipeline/InternalOptions;->with$com_google_firebase_firebase_firestore(Ljava/lang/String;Lcom/google/firestore/v1/Value;)Lcom/google/firebase/firestore/pipeline/InternalOptions;

    move-result-object v0

    .line 945
    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->languageCode:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 946
    const-string v2, "language_code"

    invoke-static {v1}, Lcom/google/firebase/firestore/model/Values;->encodeValue(Ljava/lang/String;)Lcom/google/firestore/v1/Value;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/firestore/pipeline/InternalOptions;->with$com_google_firebase_firebase_firestore(Ljava/lang/String;Lcom/google/firestore/v1/Value;)Lcom/google/firebase/firestore/pipeline/InternalOptions;

    move-result-object v0

    .line 948
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->retrievalDepth:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 949
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/firebase/firestore/model/Values;->encodeValue(J)Lcom/google/firestore/v1/Value;

    move-result-object v1

    const-string v2, "retrieval_depth"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/firestore/pipeline/InternalOptions;->with$com_google_firebase_firebase_firestore(Ljava/lang/String;Lcom/google/firestore/v1/Value;)Lcom/google/firebase/firestore/pipeline/InternalOptions;

    move-result-object v0

    .line 951
    :cond_1
    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->sort:[Lcom/google/firebase/firestore/pipeline/Ordering;

    if-eqz v1, :cond_3

    .line 1740
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 1741
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    .line 952
    invoke-virtual {v5, p1}, Lcom/google/firebase/firestore/pipeline/Ordering;->toProto$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/UserDataReader;)Lcom/google/firestore/v1/Value;

    move-result-object v5

    .line 1742
    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1743
    :cond_2
    check-cast v2, Ljava/util/List;

    .line 1740
    check-cast v2, Ljava/lang/Iterable;

    .line 952
    const-string v1, "sort"

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/firestore/pipeline/InternalOptions;->with$com_google_firebase_firebase_firestore(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/google/firebase/firestore/pipeline/InternalOptions;

    move-result-object v0

    .line 954
    :cond_3
    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->offset:Ljava/lang/Long;

    if-eqz v1, :cond_4

    .line 955
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/firebase/firestore/model/Values;->encodeValue(J)Lcom/google/firestore/v1/Value;

    move-result-object v1

    const-string v2, "offset"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/firestore/pipeline/InternalOptions;->with$com_google_firebase_firebase_firestore(Ljava/lang/String;Lcom/google/firestore/v1/Value;)Lcom/google/firebase/firestore/pipeline/InternalOptions;

    move-result-object v0

    .line 957
    :cond_4
    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->limit:Ljava/lang/Long;

    if-eqz v1, :cond_5

    .line 958
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/firebase/firestore/model/Values;->encodeValue(J)Lcom/google/firestore/v1/Value;

    move-result-object v1

    const-string v2, "limit"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/firestore/pipeline/InternalOptions;->with$com_google_firebase_firebase_firestore(Ljava/lang/String;Lcom/google/firestore/v1/Value;)Lcom/google/firebase/firestore/pipeline/InternalOptions;

    move-result-object v0

    .line 967
    :cond_5
    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->addFields:[Lcom/google/firebase/firestore/pipeline/Selectable;

    if-eqz v1, :cond_6

    .line 971
    invoke-static {v1, p1}, Lcom/google/firebase/firestore/pipeline/StageKt;->access$associateWithoutDuplications([Lcom/google/firebase/firestore/pipeline/Selectable;Lcom/google/firebase/firestore/UserDataReader;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/firestore/model/Values;->encodeValue(Ljava/util/Map;)Lcom/google/firestore/v1/Value;

    move-result-object v1

    .line 969
    const-string v2, "add_fields"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/firestore/pipeline/InternalOptions;->with$com_google_firebase_firebase_firestore(Ljava/lang/String;Lcom/google/firestore/v1/Value;)Lcom/google/firebase/firestore/pipeline/InternalOptions;

    move-result-object v0

    .line 978
    :cond_6
    sget-object v1, Lcom/google/firebase/firestore/pipeline/Stage;->Companion:Lcom/google/firebase/firestore/pipeline/Stage$Companion;

    invoke-virtual {p0}, Lcom/google/firebase/firestore/pipeline/SearchStage;->getName$com_google_firebase_firebase_firestore()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/pipeline/SearchStage;->args$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/UserDataReader;)Lkotlin/sequences/Sequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0, p1}, Lcom/google/firebase/firestore/pipeline/Stage$Companion;->toProtoStage$com_google_firebase_firebase_firestore(Ljava/lang/String;Lkotlin/sequences/Sequence;Lcom/google/firebase/firestore/pipeline/InternalOptions;Lcom/google/firebase/firestore/UserDataReader;)Lcom/google/firestore/v1/Pipeline$Stage;

    move-result-object p1

    return-object p1
.end method

.method public final varargs withAddFields(Lcom/google/firebase/firestore/pipeline/Selectable;[Lcom/google/firebase/firestore/pipeline/Selectable;)Lcom/google/firebase/firestore/pipeline/SearchStage;
    .locals 9

    const-string v0, "field"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalFields"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1059
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    const/4 p2, 0x0

    .line 1745
    new-array p2, p2, [Lcom/google/firebase/firestore/pipeline/Selectable;

    invoke-interface {p1, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 1059
    move-object v7, p1

    check-cast v7, [Lcom/google/firebase/firestore/pipeline/Selectable;

    .line 1061
    new-instance v0, Lcom/google/firebase/firestore/pipeline/SearchStage;

    .line 1062
    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->query:Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    .line 1063
    iget-object v2, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->languageCode:Ljava/lang/String;

    .line 1064
    iget-object v3, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->retrievalDepth:Ljava/lang/Long;

    .line 1065
    iget-object v4, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->sort:[Lcom/google/firebase/firestore/pipeline/Ordering;

    .line 1066
    iget-object v5, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->offset:Ljava/lang/Long;

    .line 1067
    iget-object v6, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->limit:Ljava/lang/Long;

    .line 1071
    invoke-virtual {p0}, Lcom/google/firebase/firestore/pipeline/SearchStage;->getOptions$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/pipeline/InternalOptions;

    move-result-object v8

    .line 1061
    invoke-direct/range {v0 .. v8}, Lcom/google/firebase/firestore/pipeline/SearchStage;-><init>(Lcom/google/firebase/firestore/pipeline/BooleanExpression;Ljava/lang/String;Ljava/lang/Long;[Lcom/google/firebase/firestore/pipeline/Ordering;Ljava/lang/Long;Ljava/lang/Long;[Lcom/google/firebase/firestore/pipeline/Selectable;Lcom/google/firebase/firestore/pipeline/InternalOptions;)V

    return-object v0
.end method

.method public final withLanguageCode(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/SearchStage;
    .locals 10

    const-string v0, "languageCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1176
    new-instance v1, Lcom/google/firebase/firestore/pipeline/SearchStage;

    .line 1177
    iget-object v2, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->query:Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    .line 1179
    iget-object v4, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->retrievalDepth:Ljava/lang/Long;

    .line 1180
    iget-object v5, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->sort:[Lcom/google/firebase/firestore/pipeline/Ordering;

    .line 1181
    iget-object v6, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->offset:Ljava/lang/Long;

    .line 1182
    iget-object v7, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->limit:Ljava/lang/Long;

    .line 1184
    iget-object v8, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->addFields:[Lcom/google/firebase/firestore/pipeline/Selectable;

    .line 1186
    invoke-virtual {p0}, Lcom/google/firebase/firestore/pipeline/SearchStage;->getOptions$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/pipeline/InternalOptions;

    move-result-object v9

    move-object v3, p1

    .line 1176
    invoke-direct/range {v1 .. v9}, Lcom/google/firebase/firestore/pipeline/SearchStage;-><init>(Lcom/google/firebase/firestore/pipeline/BooleanExpression;Ljava/lang/String;Ljava/lang/Long;[Lcom/google/firebase/firestore/pipeline/Ordering;Ljava/lang/Long;Ljava/lang/Long;[Lcom/google/firebase/firestore/pipeline/Selectable;Lcom/google/firebase/firestore/pipeline/InternalOptions;)V

    return-object v1
.end method

.method public final withLimit(J)Lcom/google/firebase/firestore/pipeline/SearchStage;
    .locals 9

    .line 1123
    new-instance v0, Lcom/google/firebase/firestore/pipeline/SearchStage;

    .line 1124
    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->query:Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    .line 1125
    iget-object v2, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->languageCode:Ljava/lang/String;

    .line 1126
    iget-object v3, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->retrievalDepth:Ljava/lang/Long;

    .line 1127
    iget-object v4, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->sort:[Lcom/google/firebase/firestore/pipeline/Ordering;

    .line 1128
    iget-object v5, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->offset:Ljava/lang/Long;

    .line 1129
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 1131
    iget-object v7, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->addFields:[Lcom/google/firebase/firestore/pipeline/Selectable;

    .line 1133
    invoke-virtual {p0}, Lcom/google/firebase/firestore/pipeline/SearchStage;->getOptions$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/pipeline/InternalOptions;

    move-result-object v8

    .line 1123
    invoke-direct/range {v0 .. v8}, Lcom/google/firebase/firestore/pipeline/SearchStage;-><init>(Lcom/google/firebase/firestore/pipeline/BooleanExpression;Ljava/lang/String;Ljava/lang/Long;[Lcom/google/firebase/firestore/pipeline/Ordering;Ljava/lang/Long;Ljava/lang/Long;[Lcom/google/firebase/firestore/pipeline/Selectable;Lcom/google/firebase/firestore/pipeline/InternalOptions;)V

    return-object v0
.end method

.method public final withOffset(J)Lcom/google/firebase/firestore/pipeline/SearchStage;
    .locals 9

    .line 1160
    new-instance v0, Lcom/google/firebase/firestore/pipeline/SearchStage;

    .line 1161
    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->query:Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    .line 1162
    iget-object v2, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->languageCode:Ljava/lang/String;

    .line 1163
    iget-object v3, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->retrievalDepth:Ljava/lang/Long;

    .line 1164
    iget-object v4, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->sort:[Lcom/google/firebase/firestore/pipeline/Ordering;

    .line 1165
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 1166
    iget-object v6, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->limit:Ljava/lang/Long;

    .line 1168
    iget-object v7, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->addFields:[Lcom/google/firebase/firestore/pipeline/Selectable;

    .line 1170
    invoke-virtual {p0}, Lcom/google/firebase/firestore/pipeline/SearchStage;->getOptions$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/pipeline/InternalOptions;

    move-result-object v8

    .line 1160
    invoke-direct/range {v0 .. v8}, Lcom/google/firebase/firestore/pipeline/SearchStage;-><init>(Lcom/google/firebase/firestore/pipeline/BooleanExpression;Ljava/lang/String;Ljava/lang/Long;[Lcom/google/firebase/firestore/pipeline/Ordering;Ljava/lang/Long;Ljava/lang/Long;[Lcom/google/firebase/firestore/pipeline/Selectable;Lcom/google/firebase/firestore/pipeline/InternalOptions;)V

    return-object v0
.end method

.method public final withRetrievalDepth(J)Lcom/google/firebase/firestore/pipeline/SearchStage;
    .locals 9

    .line 1144
    new-instance v0, Lcom/google/firebase/firestore/pipeline/SearchStage;

    .line 1145
    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->query:Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    .line 1146
    iget-object v2, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->languageCode:Ljava/lang/String;

    .line 1147
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1148
    iget-object v4, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->sort:[Lcom/google/firebase/firestore/pipeline/Ordering;

    .line 1149
    iget-object v5, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->offset:Ljava/lang/Long;

    .line 1150
    iget-object v6, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->limit:Ljava/lang/Long;

    .line 1152
    iget-object v7, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->addFields:[Lcom/google/firebase/firestore/pipeline/Selectable;

    .line 1154
    invoke-virtual {p0}, Lcom/google/firebase/firestore/pipeline/SearchStage;->getOptions$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/pipeline/InternalOptions;

    move-result-object v8

    .line 1144
    invoke-direct/range {v0 .. v8}, Lcom/google/firebase/firestore/pipeline/SearchStage;-><init>(Lcom/google/firebase/firestore/pipeline/BooleanExpression;Ljava/lang/String;Ljava/lang/Long;[Lcom/google/firebase/firestore/pipeline/Ordering;Ljava/lang/Long;Ljava/lang/Long;[Lcom/google/firebase/firestore/pipeline/Selectable;Lcom/google/firebase/firestore/pipeline/InternalOptions;)V

    return-object v0
.end method

.method public final varargs withSort(Lcom/google/firebase/firestore/pipeline/Ordering;[Lcom/google/firebase/firestore/pipeline/Ordering;)Lcom/google/firebase/firestore/pipeline/SearchStage;
    .locals 9

    const-string v0, "order"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalOrderings"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1103
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    const/4 p2, 0x0

    .line 1747
    new-array p2, p2, [Lcom/google/firebase/firestore/pipeline/Ordering;

    invoke-interface {p1, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 1103
    move-object v4, p1

    check-cast v4, [Lcom/google/firebase/firestore/pipeline/Ordering;

    .line 1104
    new-instance v0, Lcom/google/firebase/firestore/pipeline/SearchStage;

    .line 1105
    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->query:Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    .line 1106
    iget-object v2, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->languageCode:Ljava/lang/String;

    .line 1107
    iget-object v3, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->retrievalDepth:Ljava/lang/Long;

    .line 1109
    iget-object v5, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->offset:Ljava/lang/Long;

    .line 1110
    iget-object v6, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->limit:Ljava/lang/Long;

    .line 1112
    iget-object v7, p0, Lcom/google/firebase/firestore/pipeline/SearchStage;->addFields:[Lcom/google/firebase/firestore/pipeline/Selectable;

    .line 1114
    invoke-virtual {p0}, Lcom/google/firebase/firestore/pipeline/SearchStage;->getOptions$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/pipeline/InternalOptions;

    move-result-object v8

    .line 1104
    invoke-direct/range {v0 .. v8}, Lcom/google/firebase/firestore/pipeline/SearchStage;-><init>(Lcom/google/firebase/firestore/pipeline/BooleanExpression;Ljava/lang/String;Ljava/lang/Long;[Lcom/google/firebase/firestore/pipeline/Ordering;Ljava/lang/Long;Ljava/lang/Long;[Lcom/google/firebase/firestore/pipeline/Selectable;Lcom/google/firebase/firestore/pipeline/InternalOptions;)V

    return-object v0
.end method
