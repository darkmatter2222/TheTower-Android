.class public Lcom/google/firebase/database/core/WriteTree;
.super Ljava/lang/Object;
.source "WriteTree.java"


# static fields
.field private static final DEFAULT_FILTER:Lcom/google/firebase/database/core/utilities/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/core/utilities/Predicate<",
            "Lcom/google/firebase/database/core/UserWriteRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private allWrites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/UserWriteRecord;",
            ">;"
        }
    .end annotation
.end field

.field private lastWriteId:Ljava/lang/Long;

.field private visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 412
    new-instance v0, Lcom/google/firebase/database/core/WriteTree$2;

    invoke-direct {v0}, Lcom/google/firebase/database/core/WriteTree$2;-><init>()V

    sput-object v0, Lcom/google/firebase/database/core/WriteTree;->DEFAULT_FILTER:Lcom/google/firebase/database/core/utilities/Predicate;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {}, Lcom/google/firebase/database/core/CompoundWrite;->emptyWrite()Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->allWrites:Ljava/util/List;

    const-wide/16 v0, -0x1

    .line 60
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->lastWriteId:Ljava/lang/Long;

    return-void
.end method

.method private static layerTree(Ljava/util/List;Lcom/google/firebase/database/core/utilities/Predicate;Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/CompoundWrite;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/UserWriteRecord;",
            ">;",
            "Lcom/google/firebase/database/core/utilities/Predicate<",
            "Lcom/google/firebase/database/core/UserWriteRecord;",
            ">;",
            "Lcom/google/firebase/database/core/Path;",
            ")",
            "Lcom/google/firebase/database/core/CompoundWrite;"
        }
    .end annotation

    .line 426
    invoke-static {}, Lcom/google/firebase/database/core/CompoundWrite;->emptyWrite()Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v0

    .line 427
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/core/UserWriteRecord;

    .line 433
    invoke-interface {p1, v1}, Lcom/google/firebase/database/core/utilities/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 434
    invoke-virtual {v1}, Lcom/google/firebase/database/core/UserWriteRecord;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    .line 435
    invoke-virtual {v1}, Lcom/google/firebase/database/core/UserWriteRecord;->isOverwrite()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 436
    invoke-virtual {p2, v2}, Lcom/google/firebase/database/core/Path;->contains(Lcom/google/firebase/database/core/Path;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 437
    invoke-static {p2, v2}, Lcom/google/firebase/database/core/Path;->getRelative(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v2

    .line 438
    invoke-virtual {v1}, Lcom/google/firebase/database/core/UserWriteRecord;->getOverwrite()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/database/core/CompoundWrite;->addWrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v0

    goto :goto_0

    .line 439
    :cond_1
    invoke-virtual {v2, p2}, Lcom/google/firebase/database/core/Path;->contains(Lcom/google/firebase/database/core/Path;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 442
    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v3

    .line 443
    invoke-virtual {v1}, Lcom/google/firebase/database/core/UserWriteRecord;->getOverwrite()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    invoke-static {v2, p2}, Lcom/google/firebase/database/core/Path;->getRelative(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/firebase/database/snapshot/Node;->getChild(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    .line 441
    invoke-virtual {v0, v3, v1}, Lcom/google/firebase/database/core/CompoundWrite;->addWrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v0

    goto :goto_0

    .line 448
    :cond_2
    invoke-virtual {p2, v2}, Lcom/google/firebase/database/core/Path;->contains(Lcom/google/firebase/database/core/Path;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 449
    invoke-static {p2, v2}, Lcom/google/firebase/database/core/Path;->getRelative(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v2

    .line 450
    invoke-virtual {v1}, Lcom/google/firebase/database/core/UserWriteRecord;->getMerge()Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/database/core/CompoundWrite;->addWrites(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v0

    goto :goto_0

    .line 451
    :cond_3
    invoke-virtual {v2, p2}, Lcom/google/firebase/database/core/Path;->contains(Lcom/google/firebase/database/core/Path;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 452
    invoke-static {v2, p2}, Lcom/google/firebase/database/core/Path;->getRelative(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v2

    .line 453
    invoke-virtual {v2}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 454
    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/firebase/database/core/UserWriteRecord;->getMerge()Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/database/core/CompoundWrite;->addWrites(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v0

    goto :goto_0

    .line 456
    :cond_4
    invoke-virtual {v1}, Lcom/google/firebase/database/core/UserWriteRecord;->getMerge()Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/core/CompoundWrite;->getCompleteNode(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 458
    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/database/core/CompoundWrite;->addWrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    return-object v0
.end method

.method private recordContainsPath(Lcom/google/firebase/database/core/UserWriteRecord;Lcom/google/firebase/database/core/Path;)Z
    .locals 3

    .line 388
    invoke-virtual {p1}, Lcom/google/firebase/database/core/UserWriteRecord;->isOverwrite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {p1}, Lcom/google/firebase/database/core/UserWriteRecord;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/firebase/database/core/Path;->contains(Lcom/google/firebase/database/core/Path;)Z

    move-result p1

    return p1

    .line 391
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/database/core/UserWriteRecord;->getMerge()Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/CompoundWrite;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 392
    invoke-virtual {p1}, Lcom/google/firebase/database/core/UserWriteRecord;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/core/Path;

    invoke-virtual {v2, v1}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/firebase/database/core/Path;->contains(Lcom/google/firebase/database/core/Path;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private resetTree()V
    .locals 3

    .line 402
    iget-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->allWrites:Ljava/util/List;

    sget-object v1, Lcom/google/firebase/database/core/WriteTree;->DEFAULT_FILTER:Lcom/google/firebase/database/core/utilities/Predicate;

    .line 403
    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/firebase/database/core/WriteTree;->layerTree(Ljava/util/List;Lcom/google/firebase/database/core/utilities/Predicate;Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    .line 404
    iget-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->allWrites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->allWrites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/UserWriteRecord;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/UserWriteRecord;->getWriteId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->lastWriteId:Ljava/lang/Long;

    return-void

    :cond_0
    const-wide/16 v0, -0x1

    .line 407
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->lastWriteId:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public addMerge(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;Ljava/lang/Long;)V
    .locals 4

    .line 82
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/firebase/database/core/WriteTree;->lastWriteId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(Z)V

    .line 83
    iget-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->allWrites:Ljava/util/List;

    new-instance v1, Lcom/google/firebase/database/core/UserWriteRecord;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/google/firebase/database/core/UserWriteRecord;-><init>(JLcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/database/core/CompoundWrite;->addWrites(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    .line 85
    iput-object p3, p0, Lcom/google/firebase/database/core/WriteTree;->lastWriteId:Ljava/lang/Long;

    return-void
.end method

.method public addOverwrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Ljava/lang/Long;Z)V
    .locals 7

    .line 72
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/firebase/database/core/WriteTree;->lastWriteId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(Z)V

    .line 73
    iget-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->allWrites:Ljava/util/List;

    new-instance v1, Lcom/google/firebase/database/core/UserWriteRecord;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v4, p1

    move-object v5, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/database/core/UserWriteRecord;-><init>(JLcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v6, :cond_1

    .line 75
    iget-object p1, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {p1, v4, v5}, Lcom/google/firebase/database/core/CompoundWrite;->addWrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    .line 77
    :cond_1
    iput-object p3, p0, Lcom/google/firebase/database/core/WriteTree;->lastWriteId:Ljava/lang/Long;

    return-void
.end method

.method public calcCompleteChild(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/view/CacheNode;)Lcom/google/firebase/database/snapshot/Node;
    .locals 1

    .line 337
    invoke-virtual {p1, p2}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/Path;

    move-result-object p1

    .line 338
    iget-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/CompoundWrite;->getCompleteNode(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 342
    :cond_0
    invoke-virtual {p3, p2}, Lcom/google/firebase/database/core/view/CacheNode;->isCompleteForChild(Lcom/google/firebase/database/snapshot/ChildKey;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    iget-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/CompoundWrite;->childCompoundWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object p1

    .line 344
    invoke-virtual {p3}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object p3

    invoke-interface {p3, p2}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/firebase/database/core/CompoundWrite;->apply(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public calcCompleteEventCache(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;
    .locals 1

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/firebase/database/core/WriteTree;->calcCompleteEventCache(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Ljava/util/List;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1

    return-object p1
.end method

.method public calcCompleteEventCache(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Ljava/util/List;)Lcom/google/firebase/database/snapshot/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            "Lcom/google/firebase/database/snapshot/Node;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/firebase/database/snapshot/Node;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 192
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/firebase/database/core/WriteTree;->calcCompleteEventCache(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Ljava/util/List;Z)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1

    return-object p1
.end method

.method public calcCompleteEventCache(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Ljava/util/List;Z)Lcom/google/firebase/database/snapshot/Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            "Lcom/google/firebase/database/snapshot/Node;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)",
            "Lcom/google/firebase/database/snapshot/Node;"
        }
    .end annotation

    .line 200
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez p4, :cond_4

    .line 201
    iget-object p3, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {p3, p1}, Lcom/google/firebase/database/core/CompoundWrite;->getCompleteNode(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p3

    if-eqz p3, :cond_0

    return-object p3

    .line 205
    :cond_0
    iget-object p3, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {p3, p1}, Lcom/google/firebase/database/core/CompoundWrite;->childCompoundWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object p1

    .line 206
    invoke-virtual {p1}, Lcom/google/firebase/database/core/CompoundWrite;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    if-nez p2, :cond_2

    .line 208
    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/google/firebase/database/core/CompoundWrite;->hasCompleteWrite(Lcom/google/firebase/database/core/Path;)Z

    move-result p3

    if-nez p3, :cond_2

    return-object v1

    :cond_2
    if-eqz p2, :cond_3

    goto :goto_0

    .line 217
    :cond_3
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object p2

    .line 219
    :goto_0
    invoke-virtual {p1, p2}, Lcom/google/firebase/database/core/CompoundWrite;->apply(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1

    return-object p1

    .line 223
    :cond_4
    iget-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/CompoundWrite;->childCompoundWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v0

    if-nez p4, :cond_5

    .line 224
    invoke-virtual {v0}, Lcom/google/firebase/database/core/CompoundWrite;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_1
    return-object p2

    :cond_5
    if-nez p4, :cond_6

    if-nez p2, :cond_6

    .line 230
    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/firebase/database/core/CompoundWrite;->hasCompleteWrite(Lcom/google/firebase/database/core/Path;)Z

    move-result v0

    if-nez v0, :cond_6

    return-object v1

    .line 233
    :cond_6
    new-instance v0, Lcom/google/firebase/database/core/WriteTree$1;

    invoke-direct {v0, p0, p4, p3, p1}, Lcom/google/firebase/database/core/WriteTree$1;-><init>(Lcom/google/firebase/database/core/WriteTree;ZLjava/util/List;Lcom/google/firebase/database/core/Path;)V

    .line 243
    iget-object p3, p0, Lcom/google/firebase/database/core/WriteTree;->allWrites:Ljava/util/List;

    invoke-static {p3, v0, p1}, Lcom/google/firebase/database/core/WriteTree;->layerTree(Ljava/util/List;Lcom/google/firebase/database/core/utilities/Predicate;Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object p1

    if-eqz p2, :cond_7

    goto :goto_2

    .line 244
    :cond_7
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object p2

    .line 245
    :goto_2
    invoke-virtual {p1, p2}, Lcom/google/firebase/database/core/CompoundWrite;->apply(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1

    return-object p1
.end method

.method public calcCompleteEventChildren(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;
    .locals 6

    .line 257
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object v0

    .line 258
    iget-object v1, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {v1, p1}, Lcom/google/firebase/database/core/CompoundWrite;->getCompleteNode(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 260
    invoke-interface {v1}, Lcom/google/firebase/database/snapshot/Node;->isLeafNode()Z

    move-result p1

    if-nez p1, :cond_0

    .line 262
    invoke-interface {v1}, Lcom/google/firebase/database/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/database/snapshot/NamedNode;

    .line 264
    invoke-virtual {p2}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Lcom/google/firebase/database/snapshot/Node;->updateImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0

    .line 272
    :cond_1
    iget-object v1, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {v1, p1}, Lcom/google/firebase/database/core/CompoundWrite;->childCompoundWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object p1

    .line 273
    invoke-interface {p2}, Lcom/google/firebase/database/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/snapshot/NamedNode;

    .line 274
    new-instance v2, Lcom/google/firebase/database/core/Path;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/firebase/database/snapshot/ChildKey;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v2, v3}, Lcom/google/firebase/database/core/Path;-><init>([Lcom/google/firebase/database/snapshot/ChildKey;)V

    invoke-virtual {p1, v2}, Lcom/google/firebase/database/core/CompoundWrite;->childCompoundWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/database/core/CompoundWrite;->apply(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    .line 275
    invoke-virtual {v1}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/google/firebase/database/snapshot/Node;->updateImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    goto :goto_1

    .line 278
    :cond_2
    invoke-virtual {p1}, Lcom/google/firebase/database/core/CompoundWrite;->getCompleteChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/database/snapshot/NamedNode;

    .line 279
    invoke-virtual {p2}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Lcom/google/firebase/database/snapshot/Node;->updateImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    goto :goto_2

    :cond_3
    return-object v0
.end method

.method public calcEventCacheAfterServerOverwrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;
    .locals 1

    if-nez p3, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p3, 0x1

    .line 305
    :goto_1
    const-string v0, "Either existingEventSnap or existingServerSnap must exist"

    invoke-static {p3, v0}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 308
    invoke-virtual {p1, p2}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object p1

    .line 309
    iget-object p3, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {p3, p1}, Lcom/google/firebase/database/core/CompoundWrite;->hasCompleteWrite(Lcom/google/firebase/database/core/Path;)Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 315
    :cond_2
    iget-object p3, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {p3, p1}, Lcom/google/firebase/database/core/CompoundWrite;->childCompoundWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object p1

    .line 316
    invoke-virtual {p1}, Lcom/google/firebase/database/core/CompoundWrite;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 318
    invoke-interface {p4, p2}, Lcom/google/firebase/database/snapshot/Node;->getChild(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1

    return-object p1

    .line 327
    :cond_3
    invoke-interface {p4, p2}, Lcom/google/firebase/database/snapshot/Node;->getChild(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/firebase/database/core/CompoundWrite;->apply(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1

    return-object p1
.end method

.method public calcNextNodeAfterPost(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/NamedNode;ZLcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/snapshot/NamedNode;
    .locals 2

    .line 367
    iget-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/CompoundWrite;->childCompoundWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object p1

    .line 368
    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/core/CompoundWrite;->getCompleteNode(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_3

    .line 372
    invoke-virtual {p1, p2}, Lcom/google/firebase/database/core/CompoundWrite;->apply(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    .line 378
    :goto_0
    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/database/snapshot/NamedNode;

    .line 379
    invoke-virtual {p5, p2, p3, p4}, Lcom/google/firebase/database/snapshot/Index;->compare(Lcom/google/firebase/database/snapshot/NamedNode;Lcom/google/firebase/database/snapshot/NamedNode;Z)I

    move-result v0

    if-lez v0, :cond_1

    if-eqz v1, :cond_2

    .line 380
    invoke-virtual {p5, p2, v1, p4}, Lcom/google/firebase/database/snapshot/Index;->compare(Lcom/google/firebase/database/snapshot/NamedNode;Lcom/google/firebase/database/snapshot/NamedNode;Z)I

    move-result v0

    if-gez v0, :cond_1

    :cond_2
    move-object v1, p2

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method public childWrites(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/WriteTreeRef;
    .locals 1

    .line 67
    new-instance v0, Lcom/google/firebase/database/core/WriteTreeRef;

    invoke-direct {v0, p1, p0}, Lcom/google/firebase/database/core/WriteTreeRef;-><init>(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/WriteTree;)V

    return-object v0
.end method

.method public getCompleteWriteData(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/CompoundWrite;->getCompleteNode(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1

    return-object p1
.end method

.method public getWrite(J)Lcom/google/firebase/database/core/UserWriteRecord;
    .locals 4

    .line 89
    iget-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->allWrites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/core/UserWriteRecord;

    .line 90
    invoke-virtual {v1}, Lcom/google/firebase/database/core/UserWriteRecord;->getWriteId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public purgeAllWrites()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/UserWriteRecord;",
            ">;"
        }
    .end annotation

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/firebase/database/core/WriteTree;->allWrites:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 100
    invoke-static {}, Lcom/google/firebase/database/core/CompoundWrite;->emptyWrite()Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/firebase/database/core/WriteTree;->allWrites:Ljava/util/List;

    return-object v0
.end method

.method public removeWrite(J)Z
    .locals 7

    .line 124
    iget-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->allWrites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/database/core/UserWriteRecord;

    .line 125
    invoke-virtual {v3}, Lcom/google/firebase/database/core/UserWriteRecord;->getWriteId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const/4 p1, 0x1

    if-eqz v3, :cond_2

    move p2, p1

    goto :goto_2

    :cond_2
    move p2, v1

    .line 131
    :goto_2
    const-string v0, "removeWrite called with nonexistent writeId"

    invoke-static {p2, v0}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 133
    iget-object p2, p0, Lcom/google/firebase/database/core/WriteTree;->allWrites:Ljava/util/List;

    invoke-interface {p2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 135
    invoke-virtual {v3}, Lcom/google/firebase/database/core/UserWriteRecord;->isVisible()Z

    move-result p2

    .line 137
    iget-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->allWrites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p1

    move v4, v1

    :goto_3
    if-eqz p2, :cond_5

    if-ltz v0, :cond_5

    .line 140
    iget-object v5, p0, Lcom/google/firebase/database/core/WriteTree;->allWrites:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/database/core/UserWriteRecord;

    .line 141
    invoke-virtual {v5}, Lcom/google/firebase/database/core/UserWriteRecord;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_4

    if-lt v0, v2, :cond_3

    .line 142
    invoke-virtual {v3}, Lcom/google/firebase/database/core/UserWriteRecord;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/google/firebase/database/core/WriteTree;->recordContainsPath(Lcom/google/firebase/database/core/UserWriteRecord;Lcom/google/firebase/database/core/Path;)Z

    move-result v6

    if-eqz v6, :cond_3

    move p2, v1

    goto :goto_4

    .line 145
    :cond_3
    invoke-virtual {v3}, Lcom/google/firebase/database/core/UserWriteRecord;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v6

    invoke-virtual {v5}, Lcom/google/firebase/database/core/UserWriteRecord;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/google/firebase/database/core/Path;->contains(Lcom/google/firebase/database/core/Path;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v4, p1

    :cond_4
    :goto_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_5
    if-nez p2, :cond_6

    return v1

    :cond_6
    if-eqz v4, :cond_7

    .line 158
    invoke-direct {p0}, Lcom/google/firebase/database/core/WriteTree;->resetTree()V

    return p1

    .line 162
    :cond_7
    invoke-virtual {v3}, Lcom/google/firebase/database/core/UserWriteRecord;->isOverwrite()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 163
    iget-object p2, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {v3}, Lcom/google/firebase/database/core/UserWriteRecord;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/firebase/database/core/CompoundWrite;->removeWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object p2

    iput-object p2, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    goto :goto_6

    .line 165
    :cond_8
    invoke-virtual {v3}, Lcom/google/firebase/database/core/UserWriteRecord;->getMerge()Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/firebase/database/core/CompoundWrite;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 166
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/Path;

    .line 167
    iget-object v1, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {v3}, Lcom/google/firebase/database/core/UserWriteRecord;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/firebase/database/core/CompoundWrite;->removeWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    goto :goto_5

    :cond_9
    :goto_6
    return p1
.end method

.method public shadowingWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/CompoundWrite;->getCompleteNode(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1

    return-object p1
.end method
