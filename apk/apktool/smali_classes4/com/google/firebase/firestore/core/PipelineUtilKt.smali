.class public final Lcom/google/firebase/firestore/core/PipelineUtilKt;
.super Ljava/lang/Object;
.source "PipelineUtil.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPipelineUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PipelineUtil.kt\ncom/google/firebase/firestore/core/PipelineUtilKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,297:1\n11165#2:298\n11500#2,3:299\n37#3,2:302\n1557#4:304\n1628#4,3:305\n*S KotlinDebug\n*F\n+ 1 PipelineUtil.kt\ncom/google/firebase/firestore/core/PipelineUtilKt\n*L\n243#1:298\n243#1:299,3\n243#1:302,2\n256#1:304\n256#1:305,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0012\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u001f\u0010\t\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u0007\u0018\u00010\n2\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u00a2\u0006\u0002\u0010\u000b\u001a\u0018\u0010\u000c\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000eH\u0000\u001a\u0017\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u00a2\u0006\u0002\u0010\u0011\u001a\u0016\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00132\u0006\u0010\u0002\u001a\u00020\u0003H\u0002\u00a8\u0006\u0015"
    }
    d2 = {
        "getPipelineFlavor",
        "Lcom/google/firebase/firestore/core/PipelineFlavor;",
        "pipeline",
        "Lcom/google/firebase/firestore/RealtimePipeline;",
        "getPipelineSourceType",
        "Lcom/google/firebase/firestore/core/PipelineSourceType;",
        "getPipelineCollectionGroup",
        "",
        "getPipelineCollection",
        "getPipelineDocuments",
        "",
        "(Lcom/google/firebase/firestore/RealtimePipeline;)[Ljava/lang/String;",
        "asCollectionPipelineAtPath",
        "path",
        "Lcom/google/firebase/firestore/model/ResourcePath;",
        "getLastEffectiveLimit",
        "",
        "(Lcom/google/firebase/firestore/RealtimePipeline;)Ljava/lang/Integer;",
        "getLastEffectiveSortOrderings",
        "",
        "Lcom/google/firebase/firestore/pipeline/Ordering;",
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


# direct methods
.method public static final asCollectionPipelineAtPath(Lcom/google/firebase/firestore/RealtimePipeline;Lcom/google/firebase/firestore/model/ResourcePath;)Lcom/google/firebase/firestore/RealtimePipeline;
    .locals 11

    const-string v0, "pipeline"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Lcom/google/firebase/firestore/RealtimePipeline;->getStages$com_google_firebase_firebase_firestore()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 304
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 305
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 306
    check-cast v2, Lcom/google/firebase/firestore/pipeline/Stage;

    .line 257
    instance-of v3, v2, Lcom/google/firebase/firestore/pipeline/CollectionGroupSource;

    if-eqz v3, :cond_0

    .line 258
    new-instance v2, Lcom/google/firebase/firestore/pipeline/CollectionSource;

    invoke-virtual {p0}, Lcom/google/firebase/firestore/RealtimePipeline;->getSerializer$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/remote/RemoteSerializer;

    move-result-object v3

    sget-object v4, Lcom/google/firebase/firestore/pipeline/InternalOptions;->EMPTY:Lcom/google/firebase/firestore/pipeline/InternalOptions;

    invoke-direct {v2, p1, v3, v4}, Lcom/google/firebase/firestore/pipeline/CollectionSource;-><init>(Lcom/google/firebase/firestore/model/ResourcePath;Lcom/google/firebase/firestore/remote/RemoteSerializer;Lcom/google/firebase/firestore/pipeline/InternalOptions;)V

    check-cast v2, Lcom/google/firebase/firestore/pipeline/Stage;

    .line 306
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 307
    :cond_1
    move-object v7, v1

    check-cast v7, Ljava/util/List;

    .line 266
    new-instance v3, Lcom/google/firebase/firestore/RealtimePipeline;

    .line 267
    invoke-virtual {p0}, Lcom/google/firebase/firestore/RealtimePipeline;->getFirestore$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v4

    .line 268
    invoke-virtual {p0}, Lcom/google/firebase/firestore/RealtimePipeline;->getSerializer$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/remote/RemoteSerializer;

    move-result-object v5

    .line 269
    invoke-virtual {p0}, Lcom/google/firebase/firestore/RealtimePipeline;->getUserDataReader$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/UserDataReader;

    move-result-object v6

    const/16 v9, 0x10

    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 266
    invoke-direct/range {v3 .. v10}, Lcom/google/firebase/firestore/RealtimePipeline;-><init>(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/remote/RemoteSerializer;Lcom/google/firebase/firestore/UserDataReader;Ljava/util/List;Lcom/google/firebase/firestore/core/EventManager$ListenOptions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v3
.end method

.method public static final getLastEffectiveLimit(Lcom/google/firebase/firestore/RealtimePipeline;)Ljava/lang/Integer;
    .locals 2

    const-string v0, "pipeline"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0}, Lcom/google/firebase/firestore/RealtimePipeline;->getRewrittenStages$com_google_firebase_firebase_firestore()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->asReversed(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/Stage;

    .line 277
    instance-of v1, v0, Lcom/google/firebase/firestore/pipeline/LimitStage;

    if-eqz v1, :cond_0

    .line 278
    check-cast v0, Lcom/google/firebase/firestore/pipeline/LimitStage;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/LimitStage;->getLimit()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static final getLastEffectiveSortOrderings(Lcom/google/firebase/firestore/RealtimePipeline;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/RealtimePipeline;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/pipeline/Ordering;",
            ">;"
        }
    .end annotation

    .line 287
    invoke-virtual {p0}, Lcom/google/firebase/firestore/RealtimePipeline;->getRewrittenStages$com_google_firebase_firebase_firestore()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->asReversed(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/Stage;

    .line 288
    instance-of v1, v0, Lcom/google/firebase/firestore/pipeline/SortStage;

    if-eqz v1, :cond_0

    .line 289
    check-cast v0, Lcom/google/firebase/firestore/pipeline/SortStage;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/SortStage;->getOrders()[Lcom/google/firebase/firestore/pipeline/Ordering;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    .line 294
    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "RealtimePipeline must contain at least one Sort stage (ensured by RewriteStages)."

    invoke-static {v0, p0}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    .line 295
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final getPipelineCollection(Lcom/google/firebase/firestore/RealtimePipeline;)Ljava/lang/String;
    .locals 3

    const-string v0, "pipeline"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    invoke-static {p0}, Lcom/google/firebase/firestore/core/PipelineUtilKt;->getPipelineSourceType(Lcom/google/firebase/firestore/RealtimePipeline;)Lcom/google/firebase/firestore/core/PipelineSourceType;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/firestore/core/PipelineSourceType;->COLLECTION:Lcom/google/firebase/firestore/core/PipelineSourceType;

    if-ne v0, v1, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/google/firebase/firestore/RealtimePipeline;->getStages$com_google_firebase_firebase_firestore()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    .line 224
    new-array v1, v1, [Ljava/lang/Object;

    .line 222
    const-string v2, "Pipeline source is Collection but stages are empty."

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 226
    invoke-virtual {p0}, Lcom/google/firebase/firestore/RealtimePipeline;->getStages$com_google_firebase_firebase_firestore()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/pipeline/Stage;

    .line 227
    instance-of v0, p0, Lcom/google/firebase/firestore/pipeline/CollectionSource;

    if-eqz v0, :cond_0

    .line 228
    check-cast p0, Lcom/google/firebase/firestore/pipeline/CollectionSource;

    invoke-virtual {p0}, Lcom/google/firebase/firestore/pipeline/CollectionSource;->getPath$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/ResourcePath;->canonicalString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final getPipelineCollectionGroup(Lcom/google/firebase/firestore/RealtimePipeline;)Ljava/lang/String;
    .locals 3

    const-string v0, "pipeline"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    invoke-static {p0}, Lcom/google/firebase/firestore/core/PipelineUtilKt;->getPipelineSourceType(Lcom/google/firebase/firestore/RealtimePipeline;)Lcom/google/firebase/firestore/core/PipelineSourceType;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/firestore/core/PipelineSourceType;->COLLECTION_GROUP:Lcom/google/firebase/firestore/core/PipelineSourceType;

    if-ne v0, v1, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/google/firebase/firestore/RealtimePipeline;->getStages$com_google_firebase_firebase_firestore()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    .line 209
    new-array v1, v1, [Ljava/lang/Object;

    .line 207
    const-string v2, "Pipeline source is CollectionGroup but stages are empty."

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 211
    invoke-virtual {p0}, Lcom/google/firebase/firestore/RealtimePipeline;->getStages$com_google_firebase_firebase_firestore()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/pipeline/Stage;

    .line 212
    instance-of v0, p0, Lcom/google/firebase/firestore/pipeline/CollectionGroupSource;

    if-eqz v0, :cond_0

    .line 213
    check-cast p0, Lcom/google/firebase/firestore/pipeline/CollectionGroupSource;

    invoke-virtual {p0}, Lcom/google/firebase/firestore/pipeline/CollectionGroupSource;->getCollectionId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final getPipelineDocuments(Lcom/google/firebase/firestore/RealtimePipeline;)[Ljava/lang/String;
    .locals 5

    const-string v0, "pipeline"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    invoke-static {p0}, Lcom/google/firebase/firestore/core/PipelineUtilKt;->getPipelineSourceType(Lcom/google/firebase/firestore/RealtimePipeline;)Lcom/google/firebase/firestore/core/PipelineSourceType;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/firestore/core/PipelineSourceType;->DOCUMENTS:Lcom/google/firebase/firestore/core/PipelineSourceType;

    if-ne v0, v1, :cond_1

    .line 238
    invoke-virtual {p0}, Lcom/google/firebase/firestore/RealtimePipeline;->getStages$com_google_firebase_firebase_firestore()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 239
    const-string v1, "Pipeline source is Documents but stages are empty."

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 237
    invoke-static {v0, v1, v3}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 241
    invoke-virtual {p0}, Lcom/google/firebase/firestore/RealtimePipeline;->getStages$com_google_firebase_firebase_firestore()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/pipeline/Stage;

    .line 242
    instance-of v0, p0, Lcom/google/firebase/firestore/pipeline/DocumentsSource;

    if-eqz v0, :cond_1

    .line 243
    check-cast p0, Lcom/google/firebase/firestore/pipeline/DocumentsSource;

    invoke-virtual {p0}, Lcom/google/firebase/firestore/pipeline/DocumentsSource;->getDocuments()[Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object p0

    .line 298
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 299
    array-length v1, p0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p0, v3

    .line 243
    invoke-virtual {v4}, Lcom/google/firebase/firestore/model/ResourcePath;->canonicalString()Ljava/lang/String;

    move-result-object v4

    .line 300
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 301
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 298
    check-cast v0, Ljava/util/Collection;

    .line 303
    new-array p0, v2, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final getPipelineFlavor(Lcom/google/firebase/firestore/RealtimePipeline;)Lcom/google/firebase/firestore/core/PipelineFlavor;
    .locals 1

    const-string v0, "pipeline"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    sget-object p0, Lcom/google/firebase/firestore/core/PipelineFlavor;->EXACT:Lcom/google/firebase/firestore/core/PipelineFlavor;

    return-object p0
.end method

.method public static final getPipelineSourceType(Lcom/google/firebase/firestore/RealtimePipeline;)Lcom/google/firebase/firestore/core/PipelineSourceType;
    .locals 3

    const-string v0, "pipeline"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Lcom/google/firebase/firestore/RealtimePipeline;->getStages$com_google_firebase_firebase_firestore()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    .line 192
    new-array v1, v1, [Ljava/lang/Object;

    .line 190
    const-string v2, "Pipeline must have at least one stage to determine its source."

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 194
    invoke-virtual {p0}, Lcom/google/firebase/firestore/RealtimePipeline;->getStages$com_google_firebase_firebase_firestore()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/pipeline/Stage;

    .line 195
    instance-of v0, p0, Lcom/google/firebase/firestore/pipeline/CollectionSource;

    if-eqz v0, :cond_0

    sget-object p0, Lcom/google/firebase/firestore/core/PipelineSourceType;->COLLECTION:Lcom/google/firebase/firestore/core/PipelineSourceType;

    return-object p0

    .line 196
    :cond_0
    instance-of v0, p0, Lcom/google/firebase/firestore/pipeline/CollectionGroupSource;

    if-eqz v0, :cond_1

    sget-object p0, Lcom/google/firebase/firestore/core/PipelineSourceType;->COLLECTION_GROUP:Lcom/google/firebase/firestore/core/PipelineSourceType;

    return-object p0

    .line 197
    :cond_1
    instance-of v0, p0, Lcom/google/firebase/firestore/pipeline/DatabaseSource;

    if-eqz v0, :cond_2

    sget-object p0, Lcom/google/firebase/firestore/core/PipelineSourceType;->DATABASE:Lcom/google/firebase/firestore/core/PipelineSourceType;

    return-object p0

    .line 198
    :cond_2
    instance-of p0, p0, Lcom/google/firebase/firestore/pipeline/DocumentsSource;

    if-eqz p0, :cond_3

    sget-object p0, Lcom/google/firebase/firestore/core/PipelineSourceType;->DOCUMENTS:Lcom/google/firebase/firestore/core/PipelineSourceType;

    return-object p0

    .line 199
    :cond_3
    sget-object p0, Lcom/google/firebase/firestore/core/PipelineSourceType;->UNKNOWN:Lcom/google/firebase/firestore/core/PipelineSourceType;

    return-object p0
.end method
