.class public Lcom/google/firebase/firestore/local/LruGarbageCollector;
.super Ljava/lang/Object;
.source "LruGarbageCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;,
        Lcom/google/firebase/firestore/local/LruGarbageCollector$GCScheduler;,
        Lcom/google/firebase/firestore/local/LruGarbageCollector$RollingSequenceNumberBuffer;,
        Lcom/google/firebase/firestore/local/LruGarbageCollector$Results;
    }
.end annotation


# static fields
.field private static final INITIAL_GC_DELAY_MS:J

.field private static final REGULAR_GC_DELAY_MS:J


# instance fields
.field private final delegate:Lcom/google/firebase/firestore/local/LruDelegate;

.field private final params:Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 31
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/firestore/local/LruGarbageCollector;->INITIAL_GC_DELAY_MS:J

    .line 34
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/firestore/local/LruGarbageCollector;->REGULAR_GC_DELAY_MS:J

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/firestore/local/LruDelegate;Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;)V
    .locals 0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p1, p0, Lcom/google/firebase/firestore/local/LruGarbageCollector;->delegate:Lcom/google/firebase/firestore/local/LruDelegate;

    .line 162
    iput-object p2, p0, Lcom/google/firebase/firestore/local/LruGarbageCollector;->params:Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;

    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/firestore/local/LruGarbageCollector;)Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/google/firebase/firestore/local/LruGarbageCollector;->params:Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;

    return-object p0
.end method

.method static synthetic access$100()J
    .locals 2

    .line 29
    sget-wide v0, Lcom/google/firebase/firestore/local/LruGarbageCollector;->REGULAR_GC_DELAY_MS:J

    return-wide v0
.end method

.method static synthetic access$200()J
    .locals 2

    .line 29
    sget-wide v0, Lcom/google/firebase/firestore/local/LruGarbageCollector;->INITIAL_GC_DELAY_MS:J

    return-wide v0
.end method

.method static synthetic lambda$getNthSequenceNumber$0(Lcom/google/firebase/firestore/local/LruGarbageCollector$RollingSequenceNumberBuffer;Lcom/google/firebase/firestore/local/TargetData;)V
    .locals 2

    .line 221
    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/TargetData;->getSequenceNumber()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/local/LruGarbageCollector$RollingSequenceNumberBuffer;->addElement(Ljava/lang/Long;)V

    return-void
.end method

.method private runGarbageCollection(Landroid/util/SparseArray;)Lcom/google/firebase/firestore/local/LruGarbageCollector$Results;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "*>;)",
            "Lcom/google/firebase/firestore/local/LruGarbageCollector$Results;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 264
    iget-object v3, v0, Lcom/google/firebase/firestore/local/LruGarbageCollector;->params:Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;

    iget v3, v3, Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;->percentileToCollect:I

    invoke-virtual {v0, v3}, Lcom/google/firebase/firestore/local/LruGarbageCollector;->calculateQueryCount(I)I

    move-result v3

    .line 266
    iget-object v4, v0, Lcom/google/firebase/firestore/local/LruGarbageCollector;->params:Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;

    iget v4, v4, Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;->maximumSequenceNumbersToCollect:I

    const/4 v5, 0x0

    const-string v6, "LruGarbageCollector"

    if-le v3, v4, :cond_0

    .line 267
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "Capping sequence numbers to collect down to the maximum of "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/google/firebase/firestore/local/LruGarbageCollector;->params:Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;

    iget v7, v7, Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;->maximumSequenceNumbersToCollect:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " from "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v6, v3, v4}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    iget-object v3, v0, Lcom/google/firebase/firestore/local/LruGarbageCollector;->params:Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;

    iget v3, v3, Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;->maximumSequenceNumbersToCollect:I

    .line 275
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 277
    invoke-virtual {v0, v3}, Lcom/google/firebase/firestore/local/LruGarbageCollector;->getNthSequenceNumber(I)J

    move-result-wide v9

    .line 278
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    move-object/from16 v4, p1

    .line 280
    invoke-virtual {v0, v9, v10, v4}, Lcom/google/firebase/firestore/local/LruGarbageCollector;->removeTargets(JLandroid/util/SparseArray;)I

    move-result v4

    .line 281
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 283
    invoke-virtual {v0, v9, v10}, Lcom/google/firebase/firestore/local/LruGarbageCollector;->removeOrphanedDocuments(J)I

    move-result v9

    .line 284
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 286
    invoke-static {}, Lcom/google/firebase/firestore/util/Logger;->isDebugEnabled()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 288
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v5, "LRU Garbage Collection:\n\tCounted targets in "

    invoke-direct {v10, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v17, v1

    sub-long v0, v7, v17

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 293
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sub-long v7, v11, v7

    .line 294
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v2, v5}, [Ljava/lang/Object;

    move-result-object v2

    .line 290
    const-string v5, "\tDetermined least recently used %d sequence numbers in %dms\n"

    invoke-static {v1, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 299
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sub-long v7, v13, v11

    .line 300
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v2, v5}, [Ljava/lang/Object;

    move-result-object v2

    .line 296
    const-string v5, "\tRemoved %d targets in %dms\n"

    invoke-static {v1, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 305
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sub-long v7, v15, v13

    .line 306
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v2, v5}, [Ljava/lang/Object;

    move-result-object v2

    .line 302
    const-string v5, "\tRemoved %d documents in %dms\n"

    invoke-static {v1, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    sub-long v15, v15, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v5, "Total Duration: %dms"

    invoke-static {v1, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 308
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 310
    :cond_1
    new-instance v0, Lcom/google/firebase/firestore/local/LruGarbageCollector$Results;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v3, v4, v9}, Lcom/google/firebase/firestore/local/LruGarbageCollector$Results;-><init>(ZIII)V

    return-object v0
.end method


# virtual methods
.method calculateQueryCount(I)I
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LruGarbageCollector;->delegate:Lcom/google/firebase/firestore/local/LruDelegate;

    invoke-interface {v0}, Lcom/google/firebase/firestore/local/LruDelegate;->getSequenceNumberCount()J

    move-result-wide v0

    int-to-float p1, p1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr p1, v2

    long-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method collect(Landroid/util/SparseArray;)Lcom/google/firebase/firestore/local/LruGarbageCollector$Results;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "*>;)",
            "Lcom/google/firebase/firestore/local/LruGarbageCollector$Results;"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LruGarbageCollector;->params:Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;

    iget-wide v0, v0, Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;->minBytesThreshold:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const-string v2, "LruGarbageCollector"

    if-nez v0, :cond_0

    .line 244
    const-string p1, "Garbage collection skipped; disabled"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, v0}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    invoke-static {}, Lcom/google/firebase/firestore/local/LruGarbageCollector$Results;->DidNotRun()Lcom/google/firebase/firestore/local/LruGarbageCollector$Results;

    move-result-object p1

    return-object p1

    .line 248
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/firestore/local/LruGarbageCollector;->getByteSize()J

    move-result-wide v3

    .line 249
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LruGarbageCollector;->params:Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;

    iget-wide v5, v0, Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;->minBytesThreshold:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_1

    .line 250
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Garbage collection skipped; Cache size "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " is lower than threshold "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/google/firebase/firestore/local/LruGarbageCollector;->params:Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;

    iget-wide v3, v0, Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;->minBytesThreshold:J

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, v0}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    invoke-static {}, Lcom/google/firebase/firestore/local/LruGarbageCollector$Results;->DidNotRun()Lcom/google/firebase/firestore/local/LruGarbageCollector$Results;

    move-result-object p1

    return-object p1

    .line 258
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/local/LruGarbageCollector;->runGarbageCollection(Landroid/util/SparseArray;)Lcom/google/firebase/firestore/local/LruGarbageCollector$Results;

    move-result-object p1

    return-object p1
.end method

.method getByteSize()J
    .locals 2

    .line 314
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LruGarbageCollector;->delegate:Lcom/google/firebase/firestore/local/LruDelegate;

    invoke-interface {v0}, Lcom/google/firebase/firestore/local/LruDelegate;->getByteSize()J

    move-result-wide v0

    return-wide v0
.end method

.method getNthSequenceNumber(I)J
    .locals 2

    if-nez p1, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 220
    :cond_0
    new-instance v0, Lcom/google/firebase/firestore/local/LruGarbageCollector$RollingSequenceNumberBuffer;

    invoke-direct {v0, p1}, Lcom/google/firebase/firestore/local/LruGarbageCollector$RollingSequenceNumberBuffer;-><init>(I)V

    .line 221
    iget-object p1, p0, Lcom/google/firebase/firestore/local/LruGarbageCollector;->delegate:Lcom/google/firebase/firestore/local/LruDelegate;

    new-instance v1, Lcom/google/firebase/firestore/local/LruGarbageCollector$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/google/firebase/firestore/local/LruGarbageCollector$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/firestore/local/LruGarbageCollector$RollingSequenceNumberBuffer;)V

    invoke-interface {p1, v1}, Lcom/google/firebase/firestore/local/LruDelegate;->forEachTarget(Lcom/google/firebase/firestore/util/Consumer;)V

    .line 222
    iget-object p1, p0, Lcom/google/firebase/firestore/local/LruGarbageCollector;->delegate:Lcom/google/firebase/firestore/local/LruDelegate;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/firebase/firestore/local/LruGarbageCollector$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/google/firebase/firestore/local/LruGarbageCollector$$ExternalSyntheticLambda1;-><init>(Lcom/google/firebase/firestore/local/LruGarbageCollector$RollingSequenceNumberBuffer;)V

    invoke-interface {p1, v1}, Lcom/google/firebase/firestore/local/LruDelegate;->forEachOrphanedDocumentSequenceNumber(Lcom/google/firebase/firestore/util/Consumer;)V

    .line 223
    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/LruGarbageCollector$RollingSequenceNumberBuffer;->getMaxValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public newScheduler(Lcom/google/firebase/firestore/util/AsyncQueue;Lcom/google/firebase/firestore/local/LocalStore;)Lcom/google/firebase/firestore/local/LruGarbageCollector$GCScheduler;
    .locals 1

    .line 167
    new-instance v0, Lcom/google/firebase/firestore/local/LruGarbageCollector$GCScheduler;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/firestore/local/LruGarbageCollector$GCScheduler;-><init>(Lcom/google/firebase/firestore/local/LruGarbageCollector;Lcom/google/firebase/firestore/util/AsyncQueue;Lcom/google/firebase/firestore/local/LocalStore;)V

    return-object v0
.end method

.method removeOrphanedDocuments(J)I
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LruGarbageCollector;->delegate:Lcom/google/firebase/firestore/local/LruDelegate;

    invoke-interface {v0, p1, p2}, Lcom/google/firebase/firestore/local/LruDelegate;->removeOrphanedDocuments(J)I

    move-result p1

    return p1
.end method

.method removeTargets(JLandroid/util/SparseArray;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/util/SparseArray<",
            "*>;)I"
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LruGarbageCollector;->delegate:Lcom/google/firebase/firestore/local/LruDelegate;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/firebase/firestore/local/LruDelegate;->removeTargets(JLandroid/util/SparseArray;)I

    move-result p1

    return p1
.end method

.method public withNewThreshold(J)Lcom/google/firebase/firestore/local/LruGarbageCollector;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LruGarbageCollector;->params:Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;

    iput-wide p1, v0, Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;->minBytesThreshold:J

    .line 173
    iget-object p1, p0, Lcom/google/firebase/firestore/local/LruGarbageCollector;->params:Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;

    const/16 p2, 0x64

    iput p2, p1, Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;->percentileToCollect:I

    return-object p0
.end method
