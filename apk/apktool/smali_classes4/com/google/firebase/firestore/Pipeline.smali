.class public final Lcom/google/firebase/firestore/Pipeline;
.super Ljava/lang/Object;
.source "Pipeline.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/Pipeline$ExecuteOptions;,
        Lcom/google/firebase/firestore/Pipeline$ObserverSnapshotTask;,
        Lcom/google/firebase/firestore/Pipeline$Snapshot;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPipeline.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Pipeline.kt\ncom/google/firebase/firestore/Pipeline\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,1430:1\n1557#2:1431\n1628#2,3:1432\n11165#3:1435\n11500#3,3:1436\n11165#3:1441\n11500#3,3:1442\n11165#3:1447\n11500#3,3:1448\n37#4,2:1439\n37#4,2:1445\n37#4,2:1451\n*S KotlinDebug\n*F\n+ 1 Pipeline.kt\ncom/google/firebase/firestore/Pipeline\n*L\n167#1:1431\n167#1:1432,3\n320#1:1435\n320#1:1436,3\n516#1:1441\n516#1:1442,3\n547#1:1447\n547#1:1448,3\n320#1:1439,2\n516#1:1445,2\n547#1:1451,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00e8\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0013\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0003mnoB/\u0008\u0000\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0010\u0010\u0006\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00080\u0007\u00a2\u0006\u0004\u0008\t\u0010\nB)\u0008\u0010\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0010\u000b\u001a\u0006\u0012\u0002\u0008\u00030\u0008\u00a2\u0006\u0004\u0008\t\u0010\u000cJ\u0014\u0010\r\u001a\u00020\u00002\n\u0010\u000b\u001a\u0006\u0012\u0002\u0008\u00030\u0008H\u0002J\u001f\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0004\u001a\u00020\u0005H\u0000\u00a2\u0006\u0002\u0008\u0012J\u0015\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0004\u001a\u00020\u0005H\u0000\u00a2\u0006\u0002\u0008\u0015J\u0017\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0000\u00a2\u0006\u0002\u0008\u0018J\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001aJ\u0014\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001a2\u0006\u0010\u0010\u001a\u00020\u001cJ\u001d\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001a2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0000\u00a2\u0006\u0002\u0008\u001dJ\u0015\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u0000\u00a2\u0006\u0002\u0008\"J\u000e\u0010#\u001a\u00020\u00002\u0006\u0010#\u001a\u00020$J\'\u0010%\u001a\u00020\u00002\u0006\u0010&\u001a\u00020\'2\u0012\u0010(\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\'0)\"\u00020\'\u00a2\u0006\u0002\u0010*J\'\u0010+\u001a\u00020\u00002\u0006\u0010&\u001a\u00020,2\u0012\u0010(\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020,0)\"\u00020,\u00a2\u0006\u0002\u0010-J\'\u0010+\u001a\u00020\u00002\u0006\u0010&\u001a\u00020.2\u0012\u0010(\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020.0)\"\u00020.\u00a2\u0006\u0002\u0010/J\'\u00100\u001a\u00020\u00002\u0006\u00101\u001a\u00020\'2\u0012\u00102\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010)\"\u00020\u0001\u00a2\u0006\u0002\u00103J\'\u00100\u001a\u00020\u00002\u0006\u00104\u001a\u00020.2\u0012\u00102\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010)\"\u00020\u0001\u00a2\u0006\u0002\u00105J\'\u00106\u001a\u00020\u00002\u0006\u00107\u001a\u0002082\u0012\u00109\u001a\n\u0012\u0006\u0008\u0001\u0012\u0002080)\"\u000208\u00a2\u0006\u0002\u0010:J\u000e\u0010;\u001a\u00020\u00002\u0006\u0010<\u001a\u00020=J\u000e\u0010>\u001a\u00020\u00002\u0006\u0010>\u001a\u00020?J\u000e\u0010@\u001a\u00020\u00002\u0006\u0010@\u001a\u00020?J\'\u0010A\u001a\u00020\u00002\u0006\u0010B\u001a\u00020\'2\u0012\u0010C\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010)\"\u00020\u0001\u00a2\u0006\u0002\u00103J\'\u0010A\u001a\u00020\u00002\u0006\u0010D\u001a\u00020.2\u0012\u0010C\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010)\"\u00020\u0001\u00a2\u0006\u0002\u00105J\'\u0010E\u001a\u00020\u00002\u0006\u0010F\u001a\u00020G2\u0012\u0010H\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020G0)\"\u00020G\u00a2\u0006\u0002\u0010IJ\u000e\u0010E\u001a\u00020\u00002\u0006\u0010J\u001a\u00020KJ\u0016\u0010E\u001a\u00020\u00002\u0006\u0010J\u001a\u00020K2\u0006\u0010\u0010\u001a\u00020LJ\u001e\u0010M\u001a\u00020\u00002\u0006\u0010N\u001a\u00020.2\u0006\u0010O\u001a\u00020P2\u0006\u0010Q\u001a\u00020RJ\u001e\u0010M\u001a\u00020\u00002\u0006\u0010N\u001a\u00020,2\u0006\u0010O\u001a\u00020P2\u0006\u0010Q\u001a\u00020RJ&\u0010M\u001a\u00020\u00002\u0006\u0010N\u001a\u00020.2\u0006\u0010O\u001a\u00020S2\u0006\u0010Q\u001a\u00020R2\u0006\u0010\u0010\u001a\u00020TJ\u000e\u0010U\u001a\u00020\u00002\u0006\u0010&\u001a\u00020.J\u000e\u0010U\u001a\u00020\u00002\u0006\u0010V\u001a\u00020SJ\u000e\u0010W\u001a\u00020\u00002\u0006\u0010X\u001a\u00020?J\u000e\u0010W\u001a\u00020\u00002\u0006\u0010W\u001a\u00020YJ\u000e\u0010Z\u001a\u00020\u00002\u0006\u0010[\u001a\u00020\u0000J\u0016\u0010\\\u001a\u00020\u00002\u0006\u0010]\u001a\u00020.2\u0006\u0010^\u001a\u00020.J\u000e\u0010\\\u001a\u00020\u00002\u0006\u0010_\u001a\u00020\'J\u0016\u0010\\\u001a\u00020\u00002\u0006\u0010_\u001a\u00020\'2\u0006\u0010\u0010\u001a\u00020`J\u000e\u0010\\\u001a\u00020\u00002\u0006\u0010a\u001a\u00020bJ\'\u0010c\u001a\u00020\u00002\u0006\u0010d\u001a\u00020e2\u0012\u0010f\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020e0)\"\u00020e\u00a2\u0006\u0002\u0010gJ\u0006\u0010h\u001a\u00020SJ\u0006\u0010i\u001a\u00020SJ\u0010\u0010j\u001a\u00020\u00002\u0006\u0010k\u001a\u00020lH\u0007R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0006\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006p"
    }
    d2 = {
        "Lcom/google/firebase/firestore/Pipeline;",
        "",
        "firestore",
        "Lcom/google/firebase/firestore/FirebaseFirestore;",
        "userDataReader",
        "Lcom/google/firebase/firestore/UserDataReader;",
        "stages",
        "",
        "Lcom/google/firebase/firestore/pipeline/Stage;",
        "<init>",
        "(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/UserDataReader;Ljava/util/List;)V",
        "stage",
        "(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/UserDataReader;Lcom/google/firebase/firestore/pipeline/Stage;)V",
        "append",
        "toStructuredPipelineProto",
        "Lcom/google/firestore/v1/StructuredPipeline;",
        "options",
        "Lcom/google/firebase/firestore/pipeline/InternalOptions;",
        "toStructuredPipelineProto$com_google_firebase_firebase_firestore",
        "toPipelineProto",
        "Lcom/google/firestore/v1/Pipeline;",
        "toPipelineProto$com_google_firebase_firebase_firestore",
        "toExecutePipelineRequest",
        "Lcom/google/firestore/v1/ExecutePipelineRequest;",
        "toExecutePipelineRequest$com_google_firebase_firebase_firestore",
        "execute",
        "Lcom/google/android/gms/tasks/Task;",
        "Lcom/google/firebase/firestore/Pipeline$Snapshot;",
        "Lcom/google/firebase/firestore/Pipeline$ExecuteOptions;",
        "execute$com_google_firebase_firebase_firestore",
        "documentReference",
        "Lcom/google/firebase/firestore/DocumentReference;",
        "key",
        "Lcom/google/firebase/firestore/model/DocumentKey;",
        "documentReference$com_google_firebase_firebase_firestore",
        "rawStage",
        "Lcom/google/firebase/firestore/pipeline/RawStage;",
        "addFields",
        "field",
        "Lcom/google/firebase/firestore/pipeline/Selectable;",
        "additionalFields",
        "",
        "(Lcom/google/firebase/firestore/pipeline/Selectable;[Lcom/google/firebase/firestore/pipeline/Selectable;)Lcom/google/firebase/firestore/Pipeline;",
        "removeFields",
        "Lcom/google/firebase/firestore/pipeline/Field;",
        "(Lcom/google/firebase/firestore/pipeline/Field;[Lcom/google/firebase/firestore/pipeline/Field;)Lcom/google/firebase/firestore/Pipeline;",
        "",
        "(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/firebase/firestore/Pipeline;",
        "select",
        "selection",
        "additionalSelections",
        "(Lcom/google/firebase/firestore/pipeline/Selectable;[Ljava/lang/Object;)Lcom/google/firebase/firestore/Pipeline;",
        "fieldName",
        "(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/firebase/firestore/Pipeline;",
        "sort",
        "order",
        "Lcom/google/firebase/firestore/pipeline/Ordering;",
        "additionalOrders",
        "(Lcom/google/firebase/firestore/pipeline/Ordering;[Lcom/google/firebase/firestore/pipeline/Ordering;)Lcom/google/firebase/firestore/Pipeline;",
        "where",
        "condition",
        "Lcom/google/firebase/firestore/pipeline/BooleanExpression;",
        "offset",
        "",
        "limit",
        "distinct",
        "group",
        "additionalGroups",
        "groupField",
        "aggregate",
        "accumulator",
        "Lcom/google/firebase/firestore/pipeline/AliasedAggregate;",
        "additionalAccumulators",
        "(Lcom/google/firebase/firestore/pipeline/AliasedAggregate;[Lcom/google/firebase/firestore/pipeline/AliasedAggregate;)Lcom/google/firebase/firestore/Pipeline;",
        "aggregateStage",
        "Lcom/google/firebase/firestore/pipeline/AggregateStage;",
        "Lcom/google/firebase/firestore/pipeline/AggregateOptions;",
        "findNearest",
        "vectorField",
        "vectorValue",
        "",
        "distanceMeasure",
        "Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;",
        "Lcom/google/firebase/firestore/pipeline/Expression;",
        "Lcom/google/firebase/firestore/pipeline/FindNearestOptions;",
        "replaceWith",
        "mapValue",
        "sample",
        "documents",
        "Lcom/google/firebase/firestore/pipeline/SampleStage;",
        "union",
        "other",
        "unnest",
        "arrayField",
        "alias",
        "arrayWithAlias",
        "Lcom/google/firebase/firestore/pipeline/UnnestOptions;",
        "unnestStage",
        "Lcom/google/firebase/firestore/pipeline/UnnestStage;",
        "define",
        "aliasedExpression",
        "Lcom/google/firebase/firestore/pipeline/AliasedExpression;",
        "additionalExpressions",
        "(Lcom/google/firebase/firestore/pipeline/AliasedExpression;[Lcom/google/firebase/firestore/pipeline/AliasedExpression;)Lcom/google/firebase/firestore/Pipeline;",
        "toArrayExpression",
        "toScalarExpression",
        "search",
        "searchStage",
        "Lcom/google/firebase/firestore/pipeline/SearchStage;",
        "ExecuteOptions",
        "Snapshot",
        "ObserverSnapshotTask",
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


# instance fields
.field private final firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

.field private final stages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/pipeline/Stage<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final userDataReader:Lcom/google/firebase/firestore/UserDataReader;


# direct methods
.method public static synthetic $r8$lambda$J1E4J9dQzsonCCXeFja_UpQhAS4(Lcom/google/firestore/v1/ExecutePipelineRequest;Lcom/google/firebase/firestore/Pipeline$ObserverSnapshotTask;Lcom/google/firebase/firestore/core/FirestoreClient;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/firebase/firestore/Pipeline;->execute$lambda$2(Lcom/google/firestore/v1/ExecutePipelineRequest;Lcom/google/firebase/firestore/Pipeline$ObserverSnapshotTask;Lcom/google/firebase/firestore/core/FirestoreClient;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/UserDataReader;Lcom/google/firebase/firestore/pipeline/Stage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/FirebaseFirestore;",
            "Lcom/google/firebase/firestore/UserDataReader;",
            "Lcom/google/firebase/firestore/pipeline/Stage<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "stage"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/firestore/Pipeline;-><init>(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/UserDataReader;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/UserDataReader;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/FirebaseFirestore;",
            "Lcom/google/firebase/firestore/UserDataReader;",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firebase/firestore/pipeline/Stage<",
            "*>;>;)V"
        }
    .end annotation

    const-string v0, "stages"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/google/firebase/firestore/Pipeline;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    .line 98
    iput-object p2, p0, Lcom/google/firebase/firestore/Pipeline;->userDataReader:Lcom/google/firebase/firestore/UserDataReader;

    .line 99
    iput-object p3, p0, Lcom/google/firebase/firestore/Pipeline;->stages:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getFirestore$p(Lcom/google/firebase/firestore/Pipeline;)Lcom/google/firebase/firestore/FirebaseFirestore;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/google/firebase/firestore/Pipeline;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    return-object p0
.end method

.method private final append(Lcom/google/firebase/firestore/pipeline/Stage;)Lcom/google/firebase/firestore/Pipeline;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/pipeline/Stage<",
            "*>;)",
            "Lcom/google/firebase/firestore/Pipeline;"
        }
    .end annotation

    .line 152
    new-instance v0, Lcom/google/firebase/firestore/Pipeline;

    iget-object v1, p0, Lcom/google/firebase/firestore/Pipeline;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    iget-object v2, p0, Lcom/google/firebase/firestore/Pipeline;->userDataReader:Lcom/google/firebase/firestore/UserDataReader;

    iget-object v3, p0, Lcom/google/firebase/firestore/Pipeline;->stages:Ljava/util/List;

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3, p1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/firebase/firestore/Pipeline;-><init>(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/UserDataReader;Ljava/util/List;)V

    return-object v0
.end method

.method private static final execute$lambda$2(Lcom/google/firestore/v1/ExecutePipelineRequest;Lcom/google/firebase/firestore/Pipeline$ObserverSnapshotTask;Lcom/google/firebase/firestore/core/FirestoreClient;)Lkotlin/Unit;
    .locals 0

    .line 201
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/google/firebase/firestore/PipelineResultObserver;

    invoke-virtual {p2, p0, p1}, Lcom/google/firebase/firestore/core/FirestoreClient;->executePipeline(Lcom/google/firestore/v1/ExecutePipelineRequest;Lcom/google/firebase/firestore/PipelineResultObserver;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final varargs addFields(Lcom/google/firebase/firestore/pipeline/Selectable;[Lcom/google/firebase/firestore/pipeline/Selectable;)Lcom/google/firebase/firestore/Pipeline;
    .locals 3

    const-string v0, "field"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalFields"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    new-instance v0, Lcom/google/firebase/firestore/pipeline/AddFieldsStage;

    new-instance v1, Lkotlin/jvm/internal/SpreadBuilder;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    invoke-virtual {v1, p2}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lkotlin/jvm/internal/SpreadBuilder;->size()I

    move-result p1

    new-array p1, p1, [Lcom/google/firebase/firestore/pipeline/Selectable;

    invoke-virtual {v1, p1}, Lkotlin/jvm/internal/SpreadBuilder;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/firebase/firestore/pipeline/Selectable;

    const/4 p2, 0x0

    invoke-direct {v0, p1, p2, v2, p2}, Lcom/google/firebase/firestore/pipeline/AddFieldsStage;-><init>([Lcom/google/firebase/firestore/pipeline/Selectable;Lcom/google/firebase/firestore/pipeline/InternalOptions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/google/firebase/firestore/pipeline/Stage;

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/Pipeline;->append(Lcom/google/firebase/firestore/pipeline/Stage;)Lcom/google/firebase/firestore/Pipeline;

    move-result-object p1

    return-object p1
.end method

.method public final aggregate(Lcom/google/firebase/firestore/pipeline/AggregateStage;)Lcom/google/firebase/firestore/Pipeline;
    .locals 1

    const-string v0, "aggregateStage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 610
    new-instance v0, Lcom/google/firebase/firestore/pipeline/AggregateOptions;

    invoke-direct {v0}, Lcom/google/firebase/firestore/pipeline/AggregateOptions;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/firestore/Pipeline;->aggregate(Lcom/google/firebase/firestore/pipeline/AggregateStage;Lcom/google/firebase/firestore/pipeline/AggregateOptions;)Lcom/google/firebase/firestore/Pipeline;

    move-result-object p1

    return-object p1
.end method

.method public final aggregate(Lcom/google/firebase/firestore/pipeline/AggregateStage;Lcom/google/firebase/firestore/pipeline/AggregateOptions;)Lcom/google/firebase/firestore/Pipeline;
    .locals 1

    const-string v0, "aggregateStage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 634
    invoke-virtual {p1, p2}, Lcom/google/firebase/firestore/pipeline/AggregateStage;->withOptions$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/AggregateOptions;)Lcom/google/firebase/firestore/pipeline/AggregateStage;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/pipeline/Stage;

    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/Pipeline;->append(Lcom/google/firebase/firestore/pipeline/Stage;)Lcom/google/firebase/firestore/Pipeline;

    move-result-object p1

    return-object p1
.end method

.method public final varargs aggregate(Lcom/google/firebase/firestore/pipeline/AliasedAggregate;[Lcom/google/firebase/firestore/pipeline/AliasedAggregate;)Lcom/google/firebase/firestore/Pipeline;
    .locals 2

    const-string v0, "accumulator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalAccumulators"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 577
    sget-object v0, Lcom/google/firebase/firestore/pipeline/AggregateStage;->Companion:Lcom/google/firebase/firestore/pipeline/AggregateStage$Companion;

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/google/firebase/firestore/pipeline/AliasedAggregate;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/firestore/pipeline/AggregateStage$Companion;->withAccumulators(Lcom/google/firebase/firestore/pipeline/AliasedAggregate;[Lcom/google/firebase/firestore/pipeline/AliasedAggregate;)Lcom/google/firebase/firestore/pipeline/AggregateStage;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/pipeline/Stage;

    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/Pipeline;->append(Lcom/google/firebase/firestore/pipeline/Stage;)Lcom/google/firebase/firestore/Pipeline;

    move-result-object p1

    return-object p1
.end method

.method public final varargs define(Lcom/google/firebase/firestore/pipeline/AliasedExpression;[Lcom/google/firebase/firestore/pipeline/AliasedExpression;)Lcom/google/firebase/firestore/Pipeline;
    .locals 3

    const-string v0, "aliasedExpression"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalExpressions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 953
    new-instance v0, Lcom/google/firebase/firestore/pipeline/DefineStage;

    new-instance v1, Lkotlin/jvm/internal/SpreadBuilder;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    invoke-virtual {v1, p2}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lkotlin/jvm/internal/SpreadBuilder;->size()I

    move-result p1

    new-array p1, p1, [Lcom/google/firebase/firestore/pipeline/AliasedExpression;

    invoke-virtual {v1, p1}, Lkotlin/jvm/internal/SpreadBuilder;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/firebase/firestore/pipeline/AliasedExpression;

    const/4 p2, 0x0

    invoke-direct {v0, p1, p2, v2, p2}, Lcom/google/firebase/firestore/pipeline/DefineStage;-><init>([Lcom/google/firebase/firestore/pipeline/AliasedExpression;Lcom/google/firebase/firestore/pipeline/InternalOptions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/google/firebase/firestore/pipeline/Stage;

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/Pipeline;->append(Lcom/google/firebase/firestore/pipeline/Stage;)Lcom/google/firebase/firestore/Pipeline;

    move-result-object p1

    return-object p1
.end method

.method public final varargs distinct(Lcom/google/firebase/firestore/pipeline/Selectable;[Ljava/lang/Object;)Lcom/google/firebase/firestore/Pipeline;
    .locals 7

    const-string v0, "group"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalGroups"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 516
    new-instance v0, Lkotlin/jvm/internal/SpreadBuilder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    sget-object p1, Lcom/google/firebase/firestore/pipeline/Selectable;->Companion:Lcom/google/firebase/firestore/pipeline/Selectable$Companion;

    .line 1441
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, p2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 1442
    array-length v3, p2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, p2, v5

    .line 516
    invoke-virtual {p1, v6}, Lcom/google/firebase/firestore/pipeline/Selectable$Companion;->toSelectable(Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Selectable;

    move-result-object v6

    .line 1443
    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1444
    :cond_0
    check-cast v2, Ljava/util/List;

    .line 1441
    check-cast v2, Ljava/util/Collection;

    .line 1446
    new-array p1, v4, [Lcom/google/firebase/firestore/pipeline/Selectable;

    invoke-interface {v2, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 516
    invoke-virtual {v0, p1}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lkotlin/jvm/internal/SpreadBuilder;->size()I

    move-result p1

    new-array p1, p1, [Lcom/google/firebase/firestore/pipeline/Selectable;

    invoke-virtual {v0, p1}, Lkotlin/jvm/internal/SpreadBuilder;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/firebase/firestore/pipeline/Selectable;

    new-instance p2, Lcom/google/firebase/firestore/pipeline/DistinctStage;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0, v1, v0}, Lcom/google/firebase/firestore/pipeline/DistinctStage;-><init>([Lcom/google/firebase/firestore/pipeline/Selectable;Lcom/google/firebase/firestore/pipeline/InternalOptions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p2, Lcom/google/firebase/firestore/pipeline/Stage;

    .line 515
    invoke-direct {p0, p2}, Lcom/google/firebase/firestore/Pipeline;->append(Lcom/google/firebase/firestore/pipeline/Stage;)Lcom/google/firebase/firestore/Pipeline;

    move-result-object p1

    return-object p1
.end method

.method public final varargs distinct(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/firebase/firestore/Pipeline;
    .locals 7

    const-string v0, "groupField"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalGroups"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 547
    new-instance v0, Lkotlin/jvm/internal/SpreadBuilder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    sget-object v2, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v2, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->field(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Field;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    sget-object p1, Lcom/google/firebase/firestore/pipeline/Selectable;->Companion:Lcom/google/firebase/firestore/pipeline/Selectable$Companion;

    .line 1447
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, p2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 1448
    array-length v3, p2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, p2, v5

    .line 547
    invoke-virtual {p1, v6}, Lcom/google/firebase/firestore/pipeline/Selectable$Companion;->toSelectable(Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Selectable;

    move-result-object v6

    .line 1449
    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1450
    :cond_0
    check-cast v2, Ljava/util/List;

    .line 1447
    check-cast v2, Ljava/util/Collection;

    .line 1452
    new-array p1, v4, [Lcom/google/firebase/firestore/pipeline/Selectable;

    invoke-interface {v2, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 547
    invoke-virtual {v0, p1}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lkotlin/jvm/internal/SpreadBuilder;->size()I

    move-result p1

    new-array p1, p1, [Lcom/google/firebase/firestore/pipeline/Selectable;

    invoke-virtual {v0, p1}, Lkotlin/jvm/internal/SpreadBuilder;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/firebase/firestore/pipeline/Selectable;

    .line 546
    new-instance p2, Lcom/google/firebase/firestore/pipeline/DistinctStage;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0, v1, v0}, Lcom/google/firebase/firestore/pipeline/DistinctStage;-><init>([Lcom/google/firebase/firestore/pipeline/Selectable;Lcom/google/firebase/firestore/pipeline/InternalOptions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p2, Lcom/google/firebase/firestore/pipeline/Stage;

    .line 545
    invoke-direct {p0, p2}, Lcom/google/firebase/firestore/Pipeline;->append(Lcom/google/firebase/firestore/pipeline/Stage;)Lcom/google/firebase/firestore/Pipeline;

    move-result-object p1

    return-object p1
.end method

.method public final documentReference$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/model/DocumentKey;)Lcom/google/firebase/firestore/DocumentReference;
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    new-instance v0, Lcom/google/firebase/firestore/DocumentReference;

    iget-object v1, p0, Lcom/google/firebase/firestore/Pipeline;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-direct {v0, p1, v1}, Lcom/google/firebase/firestore/DocumentReference;-><init>(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/FirebaseFirestore;)V

    return-object v0
.end method

.method public final execute()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/firestore/Pipeline$Snapshot;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 187
    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/Pipeline;->execute$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/InternalOptions;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final execute(Lcom/google/firebase/firestore/Pipeline$ExecuteOptions;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/Pipeline$ExecuteOptions;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/firestore/Pipeline$Snapshot;",
            ">;"
        }
    .end annotation

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    invoke-virtual {p1}, Lcom/google/firebase/firestore/Pipeline$ExecuteOptions;->getOptions$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/pipeline/InternalOptions;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/Pipeline;->execute$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/InternalOptions;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final execute$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/InternalOptions;)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/pipeline/InternalOptions;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/firestore/Pipeline$Snapshot;",
            ">;"
        }
    .end annotation

    .line 198
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/Pipeline;->toExecutePipelineRequest$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/InternalOptions;)Lcom/google/firestore/v1/ExecutePipelineRequest;

    move-result-object p1

    .line 199
    new-instance v0, Lcom/google/firebase/firestore/Pipeline$ObserverSnapshotTask;

    invoke-direct {v0, p0}, Lcom/google/firebase/firestore/Pipeline$ObserverSnapshotTask;-><init>(Lcom/google/firebase/firestore/Pipeline;)V

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Executing pipeline: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Pipeline"

    invoke-static {v3, v1, v2}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    iget-object v1, p0, Lcom/google/firebase/firestore/Pipeline;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/google/firebase/firestore/Pipeline$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v0}, Lcom/google/firebase/firestore/Pipeline$$ExternalSyntheticLambda0;-><init>(Lcom/google/firestore/v1/ExecutePipelineRequest;Lcom/google/firebase/firestore/Pipeline$ObserverSnapshotTask;)V

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/FirebaseFirestore;->callClient(Lcom/google/firebase/firestore/util/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    .line 202
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/firestore/Pipeline$ObserverSnapshotTask;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final findNearest(Lcom/google/firebase/firestore/pipeline/Field;[DLcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;)Lcom/google/firebase/firestore/Pipeline;
    .locals 8

    const-string v0, "vectorField"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vectorValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "distanceMeasure"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 668
    sget-object v1, Lcom/google/firebase/firestore/pipeline/FindNearestStage;->Companion:Lcom/google/firebase/firestore/pipeline/FindNearestStage$Companion;

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v7}, Lcom/google/firebase/firestore/pipeline/FindNearestStage$Companion;->of$com_google_firebase_firebase_firestore$default(Lcom/google/firebase/firestore/pipeline/FindNearestStage$Companion;Lcom/google/firebase/firestore/pipeline/Field;[DLcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;Lcom/google/firebase/firestore/pipeline/FindNearestOptions;ILjava/lang/Object;)Lcom/google/firebase/firestore/pipeline/FindNearestStage;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/pipeline/Stage;

    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/Pipeline;->append(Lcom/google/firebase/firestore/pipeline/Stage;)Lcom/google/firebase/firestore/Pipeline;

    move-result-object p1

    return-object p1
.end method

.method public final findNearest(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;Lcom/google/firebase/firestore/pipeline/FindNearestOptions;)Lcom/google/firebase/firestore/Pipeline;
    .locals 1

    const-string v0, "vectorField"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vectorValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "distanceMeasure"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 698
    sget-object v0, Lcom/google/firebase/firestore/pipeline/FindNearestStage;->Companion:Lcom/google/firebase/firestore/pipeline/FindNearestStage$Companion;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/firebase/firestore/pipeline/FindNearestStage$Companion;->of$com_google_firebase_firebase_firestore(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;Lcom/google/firebase/firestore/pipeline/FindNearestOptions;)Lcom/google/firebase/firestore/pipeline/FindNearestStage;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/pipeline/Stage;

    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/Pipeline;->append(Lcom/google/firebase/firestore/pipeline/Stage;)Lcom/google/firebase/firestore/Pipeline;

    move-result-object p1

    return-object p1
.end method

.method public final findNearest(Ljava/lang/String;[DLcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;)Lcom/google/firebase/firestore/Pipeline;
    .locals 8

    const-string v0, "vectorField"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vectorValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "distanceMeasure"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 651
    sget-object v1, Lcom/google/firebase/firestore/pipeline/FindNearestStage;->Companion:Lcom/google/firebase/firestore/pipeline/FindNearestStage$Companion;

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v7}, Lcom/google/firebase/firestore/pipeline/FindNearestStage$Companion;->of$com_google_firebase_firebase_firestore$default(Lcom/google/firebase/firestore/pipeline/FindNearestStage$Companion;Ljava/lang/String;[DLcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;Lcom/google/firebase/firestore/pipeline/FindNearestOptions;ILjava/lang/Object;)Lcom/google/firebase/firestore/pipeline/FindNearestStage;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/pipeline/Stage;

    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/Pipeline;->append(Lcom/google/firebase/firestore/pipeline/Stage;)Lcom/google/firebase/firestore/Pipeline;

    move-result-object p1

    return-object p1
.end method

.method public final limit(I)Lcom/google/firebase/firestore/Pipeline;
    .locals 3

    .line 485
    new-instance v0, Lcom/google/firebase/firestore/pipeline/LimitStage;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p1, v1, v2, v1}, Lcom/google/firebase/firestore/pipeline/LimitStage;-><init>(ILcom/google/firebase/firestore/pipeline/InternalOptions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/google/firebase/firestore/pipeline/Stage;

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/Pipeline;->append(Lcom/google/firebase/firestore/pipeline/Stage;)Lcom/google/firebase/firestore/Pipeline;

    move-result-object p1

    return-object p1
.end method

.method public final offset(I)Lcom/google/firebase/firestore/Pipeline;
    .locals 3

    .line 462
    new-instance v0, Lcom/google/firebase/firestore/pipeline/OffsetStage;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p1, v1, v2, v1}, Lcom/google/firebase/firestore/pipeline/OffsetStage;-><init>(ILcom/google/firebase/firestore/pipeline/InternalOptions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/google/firebase/firestore/pipeline/Stage;

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/Pipeline;->append(Lcom/google/firebase/firestore/pipeline/Stage;)Lcom/google/firebase/firestore/Pipeline;

    move-result-object p1

    return-object p1
.end method

.method public final rawStage(Lcom/google/firebase/firestore/pipeline/RawStage;)Lcom/google/firebase/firestore/Pipeline;
    .locals 1

    const-string v0, "rawStage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    check-cast p1, Lcom/google/firebase/firestore/pipeline/Stage;

    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/Pipeline;->append(Lcom/google/firebase/firestore/pipeline/Stage;)Lcom/google/firebase/firestore/Pipeline;

    move-result-object p1

    return-object p1
.end method

.method public final varargs removeFields(Lcom/google/firebase/firestore/pipeline/Field;[Lcom/google/firebase/firestore/pipeline/Field;)Lcom/google/firebase/firestore/Pipeline;
    .locals 3

    const-string v0, "field"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalFields"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    new-instance v0, Lcom/google/firebase/firestore/pipeline/RemoveFieldsStage;

    new-instance v1, Lkotlin/jvm/internal/SpreadBuilder;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    invoke-virtual {v1, p2}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lkotlin/jvm/internal/SpreadBuilder;->size()I

    move-result p1

    new-array p1, p1, [Lcom/google/firebase/firestore/pipeline/Field;

    invoke-virtual {v1, p1}, Lkotlin/jvm/internal/SpreadBuilder;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/firebase/firestore/pipeline/Field;

    const/4 p2, 0x0

    invoke-direct {v0, p1, p2, v2, p2}, Lcom/google/firebase/firestore/pipeline/RemoveFieldsStage;-><init>([Lcom/google/firebase/firestore/pipeline/Field;Lcom/google/firebase/firestore/pipeline/InternalOptions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/google/firebase/firestore/pipeline/Stage;

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/Pipeline;->append(Lcom/google/firebase/firestore/pipeline/Stage;)Lcom/google/firebase/firestore/Pipeline;

    move-result-object p1

    return-object p1
.end method

.method public final varargs removeFields(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/firebase/firestore/Pipeline;
    .locals 7

    const-string v0, "field"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalFields"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 320
    new-instance v0, Lkotlin/jvm/internal/SpreadBuilder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    sget-object v2, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v2, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->field(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Field;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    sget-object p1, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    .line 1435
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, p2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 1436
    array-length v3, p2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, p2, v5

    .line 320
    invoke-virtual {p1, v6}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->field(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Field;

    move-result-object v6

    .line 1437
    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1438
    :cond_0
    check-cast v2, Ljava/util/List;

    .line 1435
    check-cast v2, Ljava/util/Collection;

    .line 1440
    new-array p1, v4, [Lcom/google/firebase/firestore/pipeline/Field;

    invoke-interface {v2, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 320
    invoke-virtual {v0, p1}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lkotlin/jvm/internal/SpreadBuilder;->size()I

    move-result p1

    new-array p1, p1, [Lcom/google/firebase/firestore/pipeline/Field;

    invoke-virtual {v0, p1}, Lkotlin/jvm/internal/SpreadBuilder;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/firebase/firestore/pipeline/Field;

    .line 319
    new-instance p2, Lcom/google/firebase/firestore/pipeline/RemoveFieldsStage;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0, v1, v0}, Lcom/google/firebase/firestore/pipeline/RemoveFieldsStage;-><init>([Lcom/google/firebase/firestore/pipeline/Field;Lcom/google/firebase/firestore/pipeline/InternalOptions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p2, Lcom/google/firebase/firestore/pipeline/Stage;

    .line 318
    invoke-direct {p0, p2}, Lcom/google/firebase/firestore/Pipeline;->append(Lcom/google/firebase/firestore/pipeline/Stage;)Lcom/google/firebase/firestore/Pipeline;

    move-result-object p1

    return-object p1
.end method

.method public final replaceWith(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/Pipeline;
    .locals 7

    const-string v0, "mapValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 761
    new-instance v1, Lcom/google/firebase/firestore/pipeline/ReplaceStage;

    sget-object v0, Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode;->Companion:Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode$Companion;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode$Companion;->getFULL_REPLACE()Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/firestore/pipeline/ReplaceStage;-><init>(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode;Lcom/google/firebase/firestore/pipeline/InternalOptions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Lcom/google/firebase/firestore/pipeline/Stage;

    invoke-direct {p0, v1}, Lcom/google/firebase/firestore/Pipeline;->append(Lcom/google/firebase/firestore/pipeline/Stage;)Lcom/google/firebase/firestore/Pipeline;

    move-result-object p1

    return-object p1
.end method

.method public final replaceWith(Ljava/lang/String;)Lcom/google/firebase/firestore/Pipeline;
    .locals 1

    const-string v0, "field"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 729
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->field(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Field;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/pipeline/Expression;

    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/Pipeline;->replaceWith(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/Pipeline;

    move-result-object p1

    return-object p1
.end method

.method public final sample(I)Lcom/google/firebase/firestore/Pipeline;
    .locals 1

    .line 781
    sget-object v0, Lcom/google/firebase/firestore/pipeline/SampleStage;->Companion:Lcom/google/firebase/firestore/pipeline/SampleStage$Companion;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/pipeline/SampleStage$Companion;->withDocLimit(I)Lcom/google/firebase/firestore/pipeline/SampleStage;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/pipeline/Stage;

    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/Pipeline;->append(Lcom/google/firebase/firestore/pipeline/Stage;)Lcom/google/firebase/firestore/Pipeline;

    move-result-object p1

    return-object p1
.end method

.method public final sample(Lcom/google/firebase/firestore/pipeline/SampleStage;)Lcom/google/firebase/firestore/Pipeline;
    .locals 1

    const-string v0, "sample"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 800
    check-cast p1, Lcom/google/firebase/firestore/pipeline/Stage;

    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/Pipeline;->append(Lcom/google/firebase/firestore/pipeline/Stage;)Lcom/google/firebase/firestore/Pipeline;

    move-result-object p1

    return-object p1
.end method

.method public final search(Lcom/google/firebase/firestore/pipeline/SearchStage;)Lcom/google/firebase/firestore/Pipeline;
    .locals 1

    const-string v0, "searchStage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1109
    check-cast p1, Lcom/google/firebase/firestore/pipeline/Stage;

    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/Pipeline;->append(Lcom/google/firebase/firestore/pipeline/Stage;)Lcom/google/firebase/firestore/Pipeline;

    move-result-object p1

    return-object p1
.end method

.method public final varargs select(Lcom/google/firebase/firestore/pipeline/Selectable;[Ljava/lang/Object;)Lcom/google/firebase/firestore/Pipeline;
    .locals 2

    const-string v0, "selection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalSelections"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    sget-object v0, Lcom/google/firebase/firestore/pipeline/SelectStage;->Companion:Lcom/google/firebase/firestore/pipeline/SelectStage$Companion;

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/firestore/pipeline/SelectStage$Companion;->of(Lcom/google/firebase/firestore/pipeline/Selectable;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/SelectStage;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/pipeline/Stage;

    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/Pipeline;->append(Lcom/google/firebase/firestore/pipeline/Stage;)Lcom/google/firebase/firestore/Pipeline;

    move-result-object p1

    return-object p1
.end method

.method public final varargs select(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/firebase/firestore/Pipeline;
    .locals 2

    const-string v0, "fieldName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalSelections"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    sget-object v0, Lcom/google/firebase/firestore/pipeline/SelectStage;->Companion:Lcom/google/firebase/firestore/pipeline/SelectStage$Companion;

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/firestore/pipeline/SelectStage$Companion;->of(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/SelectStage;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/pipeline/Stage;

    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/Pipeline;->append(Lcom/google/firebase/firestore/pipeline/Stage;)Lcom/google/firebase/firestore/Pipeline;

    move-result-object p1

    return-object p1
.end method

.method public final varargs sort(Lcom/google/firebase/firestore/pipeline/Ordering;[Lcom/google/firebase/firestore/pipeline/Ordering;)Lcom/google/firebase/firestore/Pipeline;
    .locals 3

    const-string v0, "order"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalOrders"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 412
    new-instance v0, Lcom/google/firebase/firestore/pipeline/SortStage;

    new-instance v1, Lkotlin/jvm/internal/SpreadBuilder;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    invoke-virtual {v1, p2}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lkotlin/jvm/internal/SpreadBuilder;->size()I

    move-result p1

    new-array p1, p1, [Lcom/google/firebase/firestore/pipeline/Ordering;

    invoke-virtual {v1, p1}, Lkotlin/jvm/internal/SpreadBuilder;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/firebase/firestore/pipeline/Ordering;

    const/4 p2, 0x0

    invoke-direct {v0, p1, p2, v2, p2}, Lcom/google/firebase/firestore/pipeline/SortStage;-><init>([Lcom/google/firebase/firestore/pipeline/Ordering;Lcom/google/firebase/firestore/pipeline/InternalOptions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/google/firebase/firestore/pipeline/Stage;

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/Pipeline;->append(Lcom/google/firebase/firestore/pipeline/Stage;)Lcom/google/firebase/firestore/Pipeline;

    move-result-object p1

    return-object p1
.end method

.method public final toArrayExpression()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 4

    .line 1020
    new-instance v0, Lcom/google/firebase/firestore/pipeline/FunctionExpression;

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt;->getNotImplemented()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    sget-object v2, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v2, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->toExprOrConstant$com_google_firebase_firebase_firestore(Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v2

    const-string v3, "array"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/firebase/firestore/pipeline/FunctionExpression;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lcom/google/firebase/firestore/pipeline/Expression;)V

    check-cast v0, Lcom/google/firebase/firestore/pipeline/Expression;

    return-object v0
.end method

.method public final toExecutePipelineRequest$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/InternalOptions;)Lcom/google/firestore/v1/ExecutePipelineRequest;
    .locals 4

    .line 172
    iget-object v0, p0, Lcom/google/firebase/firestore/Pipeline;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0}, Lcom/google/firebase/firestore/FirebaseFirestore;->getDatabaseId()Lcom/google/firebase/firestore/model/DatabaseId;

    move-result-object v0

    const-string v1, "getDatabaseId(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-static {}, Lcom/google/firestore/v1/ExecutePipelineRequest;->newBuilder()Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;

    move-result-object v1

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "projects/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/DatabaseId;->getProjectId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/databases/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/DatabaseId;->getDatabaseId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;->setDatabase(Ljava/lang/String;)Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;

    .line 178
    iget-object v0, p0, Lcom/google/firebase/firestore/Pipeline;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/FirebaseFirestore;->getUserDataReader()Lcom/google/firebase/firestore/UserDataReader;

    move-result-object v0

    const-string v2, "getUserDataReader(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/firestore/Pipeline;->toStructuredPipelineProto$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/InternalOptions;Lcom/google/firebase/firestore/UserDataReader;)Lcom/google/firestore/v1/StructuredPipeline;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;->setStructuredPipeline(Lcom/google/firestore/v1/StructuredPipeline;)Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;

    .line 179
    invoke-virtual {v1}, Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    const-string v0, "build(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/google/firestore/v1/ExecutePipelineRequest;

    return-object p1

    .line 172
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This pipeline was created without a database (e.g., as a subcollection pipeline) and cannot be executed directly. It can only be used as part of another pipeline."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final toPipelineProto$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/UserDataReader;)Lcom/google/firestore/v1/Pipeline;
    .locals 4

    const-string v0, "userDataReader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lcom/google/firestore/v1/Pipeline;->newBuilder()Lcom/google/firestore/v1/Pipeline$Builder;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lcom/google/firebase/firestore/Pipeline;->stages:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 1431
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 1432
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1433
    check-cast v3, Lcom/google/firebase/firestore/pipeline/Stage;

    .line 167
    invoke-virtual {v3, p1}, Lcom/google/firebase/firestore/pipeline/Stage;->toProtoStage$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/UserDataReader;)Lcom/google/firestore/v1/Pipeline$Stage;

    move-result-object v3

    .line 1433
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1434
    :cond_0
    check-cast v2, Ljava/util/List;

    .line 1431
    check-cast v2, Ljava/lang/Iterable;

    .line 167
    invoke-virtual {v0, v2}, Lcom/google/firestore/v1/Pipeline$Builder;->addAllStages(Ljava/lang/Iterable;)Lcom/google/firestore/v1/Pipeline$Builder;

    move-result-object p1

    .line 168
    invoke-virtual {p1}, Lcom/google/firestore/v1/Pipeline$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    const-string v0, "build(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/google/firestore/v1/Pipeline;

    return-object p1
.end method

.method public final toScalarExpression()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 4

    .line 1086
    new-instance v0, Lcom/google/firebase/firestore/pipeline/FunctionExpression;

    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt;->getNotImplemented()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    sget-object v2, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v2, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->toExprOrConstant$com_google_firebase_firebase_firestore(Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v2

    const-string v3, "scalar"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/firebase/firestore/pipeline/FunctionExpression;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lcom/google/firebase/firestore/pipeline/Expression;)V

    check-cast v0, Lcom/google/firebase/firestore/pipeline/Expression;

    return-object v0
.end method

.method public final toStructuredPipelineProto$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/InternalOptions;Lcom/google/firebase/firestore/UserDataReader;)Lcom/google/firestore/v1/StructuredPipeline;
    .locals 1

    const-string v0, "userDataReader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    invoke-static {}, Lcom/google/firestore/v1/StructuredPipeline;->newBuilder()Lcom/google/firestore/v1/StructuredPipeline$Builder;

    move-result-object v0

    .line 160
    invoke-virtual {p0, p2}, Lcom/google/firebase/firestore/Pipeline;->toPipelineProto$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/UserDataReader;)Lcom/google/firestore/v1/Pipeline;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/firestore/v1/StructuredPipeline$Builder;->setPipeline(Lcom/google/firestore/v1/Pipeline;)Lcom/google/firestore/v1/StructuredPipeline$Builder;

    if-eqz p1, :cond_0

    .line 161
    new-instance p2, Lcom/google/firebase/firestore/Pipeline$toStructuredPipelineProto$1;

    invoke-direct {p2, v0}, Lcom/google/firebase/firestore/Pipeline$toStructuredPipelineProto$1;-><init>(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p1, p2}, Lcom/google/firebase/firestore/pipeline/InternalOptions;->forEach$com_google_firebase_firebase_firestore(Lkotlin/jvm/functions/Function2;)V

    .line 162
    :cond_0
    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredPipeline$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    const-string p2, "build(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/google/firestore/v1/StructuredPipeline;

    return-object p1
.end method

.method public final union(Lcom/google/firebase/firestore/Pipeline;)Lcom/google/firebase/firestore/Pipeline;
    .locals 3

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 819
    new-instance v0, Lcom/google/firebase/firestore/pipeline/UnionStage;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p1, v1, v2, v1}, Lcom/google/firebase/firestore/pipeline/UnionStage;-><init>(Lcom/google/firebase/firestore/Pipeline;Lcom/google/firebase/firestore/pipeline/InternalOptions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/google/firebase/firestore/pipeline/Stage;

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/Pipeline;->append(Lcom/google/firebase/firestore/pipeline/Stage;)Lcom/google/firebase/firestore/Pipeline;

    move-result-object p1

    return-object p1
.end method

.method public final unnest(Lcom/google/firebase/firestore/pipeline/Selectable;)Lcom/google/firebase/firestore/Pipeline;
    .locals 1

    const-string v0, "arrayWithAlias"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 867
    new-instance v0, Lcom/google/firebase/firestore/pipeline/UnnestOptions;

    invoke-direct {v0}, Lcom/google/firebase/firestore/pipeline/UnnestOptions;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/firestore/Pipeline;->unnest(Lcom/google/firebase/firestore/pipeline/Selectable;Lcom/google/firebase/firestore/pipeline/UnnestOptions;)Lcom/google/firebase/firestore/Pipeline;

    move-result-object p1

    return-object p1
.end method

.method public final unnest(Lcom/google/firebase/firestore/pipeline/Selectable;Lcom/google/firebase/firestore/pipeline/UnnestOptions;)Lcom/google/firebase/firestore/Pipeline;
    .locals 1

    const-string v0, "arrayWithAlias"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 901
    new-instance v0, Lcom/google/firebase/firestore/pipeline/UnnestStage;

    invoke-virtual {p2}, Lcom/google/firebase/firestore/pipeline/UnnestOptions;->getOptions$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/pipeline/InternalOptions;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/google/firebase/firestore/pipeline/UnnestStage;-><init>(Lcom/google/firebase/firestore/pipeline/Selectable;Lcom/google/firebase/firestore/pipeline/InternalOptions;)V

    check-cast v0, Lcom/google/firebase/firestore/pipeline/Stage;

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/Pipeline;->append(Lcom/google/firebase/firestore/pipeline/Stage;)Lcom/google/firebase/firestore/Pipeline;

    move-result-object p1

    return-object p1
.end method

.method public final unnest(Lcom/google/firebase/firestore/pipeline/UnnestStage;)Lcom/google/firebase/firestore/Pipeline;
    .locals 1

    const-string v0, "unnestStage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 918
    check-cast p1, Lcom/google/firebase/firestore/pipeline/Stage;

    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/Pipeline;->append(Lcom/google/firebase/firestore/pipeline/Stage;)Lcom/google/firebase/firestore/Pipeline;

    move-result-object p1

    return-object p1
.end method

.method public final unnest(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/Pipeline;
    .locals 1

    const-string v0, "arrayField"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "alias"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 850
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->field(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Field;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/firebase/firestore/pipeline/Field;->alias(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/AliasedExpression;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/pipeline/Selectable;

    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/Pipeline;->unnest(Lcom/google/firebase/firestore/pipeline/Selectable;)Lcom/google/firebase/firestore/Pipeline;

    move-result-object p1

    return-object p1
.end method

.method public final where(Lcom/google/firebase/firestore/pipeline/BooleanExpression;)Lcom/google/firebase/firestore/Pipeline;
    .locals 3

    const-string v0, "condition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 441
    new-instance v0, Lcom/google/firebase/firestore/pipeline/WhereStage;

    check-cast p1, Lcom/google/firebase/firestore/pipeline/Expression;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p1, v1, v2, v1}, Lcom/google/firebase/firestore/pipeline/WhereStage;-><init>(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/InternalOptions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/google/firebase/firestore/pipeline/Stage;

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/Pipeline;->append(Lcom/google/firebase/firestore/pipeline/Stage;)Lcom/google/firebase/firestore/Pipeline;

    move-result-object p1

    return-object p1
.end method
