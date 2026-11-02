.class public final Lcom/google/firebase/firestore/RealtimePipeline$Snapshot;
.super Ljava/lang/Object;
.source "RealtimePipeline.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/RealtimePipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Snapshot"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange;,
        Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$SnapshotMetadata;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRealtimePipeline.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealtimePipeline.kt\ncom/google/firebase/firestore/RealtimePipeline$Snapshot\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,694:1\n1557#2:695\n1628#2,3:696\n*S KotlinDebug\n*F\n+ 1 RealtimePipeline.kt\ncom/google/firebase/firestore/RealtimePipeline$Snapshot\n*L\n297#1:695\n297#1:696,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001:\u0002\u0017\u0018B!\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0018\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u000f2\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\n\u001a\u00020\u000b8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0017\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/google/firebase/firestore/RealtimePipeline$Snapshot;",
        "",
        "viewSnapshot",
        "Lcom/google/firebase/firestore/core/ViewSnapshot;",
        "firestore",
        "Lcom/google/firebase/firestore/FirebaseFirestore;",
        "options",
        "Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;",
        "<init>",
        "(Lcom/google/firebase/firestore/core/ViewSnapshot;Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;)V",
        "metadata",
        "Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$SnapshotMetadata;",
        "getMetadata",
        "()Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$SnapshotMetadata;",
        "results",
        "",
        "Lcom/google/firebase/firestore/PipelineResult;",
        "getResults",
        "()Ljava/util/List;",
        "getChanges",
        "Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange;",
        "metadataChanges",
        "Lcom/google/firebase/firestore/MetadataChanges;",
        "SnapshotMetadata",
        "ResultChange",
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

.field private final options:Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;

.field private final viewSnapshot:Lcom/google/firebase/firestore/core/ViewSnapshot;


# direct methods
.method public static synthetic $r8$lambda$WKzugL58xF5tj86Us1M_LLV16DE(Lcom/google/firebase/firestore/RealtimePipeline$Snapshot;Lcom/google/firebase/firestore/model/Document;Lcom/google/firebase/firestore/DocumentChange$Type;II)Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot;->getChanges$lambda$1(Lcom/google/firebase/firestore/RealtimePipeline$Snapshot;Lcom/google/firebase/firestore/model/Document;Lcom/google/firebase/firestore/DocumentChange$Type;II)Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/google/firebase/firestore/core/ViewSnapshot;Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;)V
    .locals 1

    const-string v0, "viewSnapshot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firestore"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput-object p1, p0, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot;->viewSnapshot:Lcom/google/firebase/firestore/core/ViewSnapshot;

    .line 228
    iput-object p2, p0, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    .line 229
    iput-object p3, p0, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot;->options:Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;

    return-void
.end method

.method public static synthetic getChanges$default(Lcom/google/firebase/firestore/RealtimePipeline$Snapshot;Lcom/google/firebase/firestore/MetadataChanges;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 307
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot;->getChanges(Lcom/google/firebase/firestore/MetadataChanges;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final getChanges$lambda$1(Lcom/google/firebase/firestore/RealtimePipeline$Snapshot;Lcom/google/firebase/firestore/model/Document;Lcom/google/firebase/firestore/DocumentChange$Type;II)Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange;
    .locals 8

    const-string v0, "doc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    new-instance v1, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange;

    iget-object v2, p0, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    iget-object p0, p0, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot;->options:Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;

    invoke-virtual {p0}, Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;->getServerTimestampBehavior$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;

    move-result-object v4

    move-object v3, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange;-><init>(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/model/Document;Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;Lcom/google/firebase/firestore/DocumentChange$Type;II)V

    return-object v1
.end method


# virtual methods
.method public final getChanges(Lcom/google/firebase/firestore/MetadataChanges;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/MetadataChanges;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 308
    sget-object p1, Lcom/google/firebase/firestore/MetadataChanges;->EXCLUDE:Lcom/google/firebase/firestore/MetadataChanges;

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot;->viewSnapshot:Lcom/google/firebase/firestore/core/ViewSnapshot;

    new-instance v1, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/firestore/RealtimePipeline$Snapshot;)V

    invoke-static {p1, v0, v1}, Lcom/google/firebase/firestore/RealtimePipelineKt;->changesFromSnapshot(Lcom/google/firebase/firestore/MetadataChanges;Lcom/google/firebase/firestore/core/ViewSnapshot;Lkotlin/jvm/functions/Function4;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final getMetadata()Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$SnapshotMetadata;
    .locals 3

    .line 292
    new-instance v0, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$SnapshotMetadata;

    iget-object v1, p0, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot;->viewSnapshot:Lcom/google/firebase/firestore/core/ViewSnapshot;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/ViewSnapshot;->hasPendingWrites()Z

    move-result v1

    iget-object v2, p0, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot;->viewSnapshot:Lcom/google/firebase/firestore/core/ViewSnapshot;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/core/ViewSnapshot;->isFromCache()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$SnapshotMetadata;-><init>(ZZ)V

    return-object v0
.end method

.method public final getResults()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/PipelineResult;",
            ">;"
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot;->viewSnapshot:Lcom/google/firebase/firestore/core/ViewSnapshot;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/ViewSnapshot;->getDocuments()Lcom/google/firebase/firestore/model/DocumentSet;

    move-result-object v0

    const-string v1, "getDocuments(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 695
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 696
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 697
    check-cast v2, Lcom/google/firebase/firestore/model/Document;

    .line 298
    new-instance v3, Lcom/google/firebase/firestore/PipelineResult;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot;->options:Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;

    invoke-virtual {v4}, Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;->getServerTimestampBehavior$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;

    move-result-object v4

    iget-object v5, p0, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-direct {v3, v2, v4, v5}, Lcom/google/firebase/firestore/PipelineResult;-><init>(Lcom/google/firebase/firestore/model/Document;Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;Lcom/google/firebase/firestore/FirebaseFirestore;)V

    .line 697
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 698
    :cond_0
    check-cast v1, Ljava/util/List;

    return-object v1
.end method
