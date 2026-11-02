.class public Lcom/google/firebase/database/core/persistence/LRUCachePolicy;
.super Ljava/lang/Object;
.source "LRUCachePolicy.java"

# interfaces
.implements Lcom/google/firebase/database/core/persistence/CachePolicy;


# static fields
.field private static final MAX_NUMBER_OF_PRUNABLE_QUERIES_TO_KEEP:J = 0x3e8L

.field private static final PERCENT_OF_QUERIES_TO_PRUNE_AT_ONCE:F = 0.2f

.field private static final SERVER_UPDATES_BETWEEN_CACHE_SIZE_CHECKS:J = 0x3e8L


# instance fields
.field public final maxSizeBytes:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-wide p1, p0, Lcom/google/firebase/database/core/persistence/LRUCachePolicy;->maxSizeBytes:J

    return-void
.end method


# virtual methods
.method public getMaxNumberOfQueriesToKeep()J
    .locals 2

    const-wide/16 v0, 0x3e8

    return-wide v0
.end method

.method public getPercentOfQueriesToPruneAtOnce()F
    .locals 1

    const v0, 0x3e4ccccd    # 0.2f

    return v0
.end method

.method public shouldCheckCacheSize(J)Z
    .locals 2

    const-wide/16 v0, 0x3e8

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public shouldPrune(JJ)Z
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/google/firebase/database/core/persistence/LRUCachePolicy;->maxSizeBytes:J

    cmp-long p1, p1, v0

    if-gtz p1, :cond_1

    const-wide/16 p1, 0x3e8

    cmp-long p1, p3, p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
