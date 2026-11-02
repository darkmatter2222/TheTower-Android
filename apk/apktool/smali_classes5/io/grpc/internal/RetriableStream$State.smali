.class final Lio/grpc/internal/RetriableStream$State;
.super Ljava/lang/Object;
.source "RetriableStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/RetriableStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "State"
.end annotation


# instance fields
.field final activeHedges:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lio/grpc/internal/RetriableStream$Substream;",
            ">;"
        }
    .end annotation
.end field

.field final buffer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/internal/RetriableStream$BufferEntry;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final cancelled:Z

.field final drainedSubstreams:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lio/grpc/internal/RetriableStream$Substream;",
            ">;"
        }
    .end annotation
.end field

.field final hedgingAttemptCount:I

.field final hedgingFrozen:Z

.field final passThrough:Z

.field final winningSubstream:Lio/grpc/internal/RetriableStream$Substream;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lio/grpc/internal/RetriableStream$Substream;ZZZI)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lio/grpc/internal/RetriableStream$Substream;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/internal/RetriableStream$BufferEntry;",
            ">;",
            "Ljava/util/Collection<",
            "Lio/grpc/internal/RetriableStream$Substream;",
            ">;",
            "Ljava/util/Collection<",
            "Lio/grpc/internal/RetriableStream$Substream;",
            ">;",
            "Lio/grpc/internal/RetriableStream$Substream;",
            "ZZZI)V"
        }
    .end annotation

    .line 1177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1178
    iput-object p1, p0, Lio/grpc/internal/RetriableStream$State;->buffer:Ljava/util/List;

    .line 1179
    const-string v0, "drainedSubstreams"

    .line 1180
    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iput-object v0, p0, Lio/grpc/internal/RetriableStream$State;->drainedSubstreams:Ljava/util/Collection;

    .line 1181
    iput-object p4, p0, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    .line 1182
    iput-object p3, p0, Lio/grpc/internal/RetriableStream$State;->activeHedges:Ljava/util/Collection;

    .line 1183
    iput-boolean p5, p0, Lio/grpc/internal/RetriableStream$State;->cancelled:Z

    .line 1184
    iput-boolean p6, p0, Lio/grpc/internal/RetriableStream$State;->passThrough:Z

    .line 1185
    iput-boolean p7, p0, Lio/grpc/internal/RetriableStream$State;->hedgingFrozen:Z

    .line 1186
    iput p8, p0, Lio/grpc/internal/RetriableStream$State;->hedgingAttemptCount:I

    const/4 p3, 0x0

    const/4 p7, 0x1

    if-eqz p6, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, p3

    goto :goto_1

    :cond_1
    :goto_0
    move p1, p7

    .line 1188
    :goto_1
    const-string p8, "passThrough should imply buffer is null"

    invoke-static {p1, p8}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    if-eqz p6, :cond_3

    if-eqz p4, :cond_2

    goto :goto_2

    :cond_2
    move p1, p3

    goto :goto_3

    :cond_3
    :goto_2
    move p1, p7

    .line 1189
    :goto_3
    const-string p8, "passThrough should imply winningSubstream != null"

    invoke-static {p1, p8}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    if-eqz p6, :cond_6

    .line 1194
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p1

    if-ne p1, p7, :cond_4

    invoke-interface {p2, p4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 1195
    :cond_4
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p1

    if-nez p1, :cond_5

    iget-boolean p1, p4, Lio/grpc/internal/RetriableStream$Substream;->closed:Z

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    move p1, p3

    goto :goto_5

    :cond_6
    :goto_4
    move p1, p7

    :goto_5
    const-string p2, "passThrough should imply winningSubstream is drained"

    .line 1192
    invoke-static {p1, p2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    if-eqz p5, :cond_7

    if-eqz p4, :cond_8

    :cond_7
    move p3, p7

    .line 1197
    :cond_8
    const-string p1, "cancelled should imply committed"

    invoke-static {p3, p1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method addActiveHedge(Lio/grpc/internal/RetriableStream$Substream;)Lio/grpc/internal/RetriableStream$State;
    .locals 11
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .line 1297
    iget-boolean v0, p0, Lio/grpc/internal/RetriableStream$State;->hedgingFrozen:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "hedging frozen"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1298
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "already committed"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1301
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$State;->activeHedges:Ljava/util/Collection;

    if-nez v0, :cond_1

    .line 1302
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    goto :goto_1

    .line 1304
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lio/grpc/internal/RetriableStream$State;->activeHedges:Ljava/util/Collection;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1305
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1306
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    :goto_1
    move-object v5, p1

    .line 1309
    iget p1, p0, Lio/grpc/internal/RetriableStream$State;->hedgingAttemptCount:I

    add-int/lit8 v10, p1, 0x1

    .line 1310
    new-instance v2, Lio/grpc/internal/RetriableStream$State;

    iget-object v3, p0, Lio/grpc/internal/RetriableStream$State;->buffer:Ljava/util/List;

    iget-object v4, p0, Lio/grpc/internal/RetriableStream$State;->drainedSubstreams:Ljava/util/Collection;

    iget-object v6, p0, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    iget-boolean v7, p0, Lio/grpc/internal/RetriableStream$State;->cancelled:Z

    iget-boolean v8, p0, Lio/grpc/internal/RetriableStream$State;->passThrough:Z

    iget-boolean v9, p0, Lio/grpc/internal/RetriableStream$State;->hedgingFrozen:Z

    invoke-direct/range {v2 .. v10}, Lio/grpc/internal/RetriableStream$State;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lio/grpc/internal/RetriableStream$Substream;ZZZI)V

    return-object v2
.end method

.method cancelled()Lio/grpc/internal/RetriableStream$State;
    .locals 9
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .line 1203
    new-instance v0, Lio/grpc/internal/RetriableStream$State;

    iget-object v1, p0, Lio/grpc/internal/RetriableStream$State;->buffer:Ljava/util/List;

    iget-object v2, p0, Lio/grpc/internal/RetriableStream$State;->drainedSubstreams:Ljava/util/Collection;

    iget-object v3, p0, Lio/grpc/internal/RetriableStream$State;->activeHedges:Ljava/util/Collection;

    iget-object v4, p0, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    iget-boolean v6, p0, Lio/grpc/internal/RetriableStream$State;->passThrough:Z

    iget-boolean v7, p0, Lio/grpc/internal/RetriableStream$State;->hedgingFrozen:Z

    iget v8, p0, Lio/grpc/internal/RetriableStream$State;->hedgingAttemptCount:I

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v8}, Lio/grpc/internal/RetriableStream$State;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lio/grpc/internal/RetriableStream$Substream;ZZZI)V

    return-object v0
.end method

.method committed(Lio/grpc/internal/RetriableStream$Substream;)Lio/grpc/internal/RetriableStream$State;
    .locals 12
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .line 1261
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "Already committed"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1264
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$State;->buffer:Ljava/util/List;

    .line 1267
    iget-object v3, p0, Lio/grpc/internal/RetriableStream$State;->drainedSubstreams:Ljava/util/Collection;

    invoke-interface {v3, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1270
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    const/4 v2, 0x0

    move-object v5, v0

    move v9, v1

    move-object v4, v2

    goto :goto_1

    .line 1272
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v4, v0

    move-object v5, v1

    move v9, v2

    .line 1275
    :goto_1
    new-instance v3, Lio/grpc/internal/RetriableStream$State;

    iget-object v6, p0, Lio/grpc/internal/RetriableStream$State;->activeHedges:Ljava/util/Collection;

    iget-boolean v8, p0, Lio/grpc/internal/RetriableStream$State;->cancelled:Z

    iget-boolean v10, p0, Lio/grpc/internal/RetriableStream$State;->hedgingFrozen:Z

    iget v11, p0, Lio/grpc/internal/RetriableStream$State;->hedgingAttemptCount:I

    move-object v7, p1

    invoke-direct/range {v3 .. v11}, Lio/grpc/internal/RetriableStream$State;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lio/grpc/internal/RetriableStream$Substream;ZZZI)V

    return-object v3
.end method

.method freezeHedging()Lio/grpc/internal/RetriableStream$State;
    .locals 10
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .line 1283
    iget-boolean v0, p0, Lio/grpc/internal/RetriableStream$State;->hedgingFrozen:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 1286
    :cond_0
    new-instance v1, Lio/grpc/internal/RetriableStream$State;

    iget-object v2, p0, Lio/grpc/internal/RetriableStream$State;->buffer:Ljava/util/List;

    iget-object v3, p0, Lio/grpc/internal/RetriableStream$State;->drainedSubstreams:Ljava/util/Collection;

    iget-object v4, p0, Lio/grpc/internal/RetriableStream$State;->activeHedges:Ljava/util/Collection;

    iget-object v5, p0, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    iget-boolean v6, p0, Lio/grpc/internal/RetriableStream$State;->cancelled:Z

    iget-boolean v7, p0, Lio/grpc/internal/RetriableStream$State;->passThrough:Z

    const/4 v8, 0x1

    iget v9, p0, Lio/grpc/internal/RetriableStream$State;->hedgingAttemptCount:I

    invoke-direct/range {v1 .. v9}, Lio/grpc/internal/RetriableStream$State;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lio/grpc/internal/RetriableStream$Substream;ZZZI)V

    return-object v1
.end method

.method removeActiveHedge(Lio/grpc/internal/RetriableStream$Substream;)Lio/grpc/internal/RetriableStream$State;
    .locals 11
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .line 1319
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/grpc/internal/RetriableStream$State;->activeHedges:Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1320
    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 1321
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v5

    .line 1323
    new-instance v2, Lio/grpc/internal/RetriableStream$State;

    iget-object v3, p0, Lio/grpc/internal/RetriableStream$State;->buffer:Ljava/util/List;

    iget-object v4, p0, Lio/grpc/internal/RetriableStream$State;->drainedSubstreams:Ljava/util/Collection;

    iget-object v6, p0, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    iget-boolean v7, p0, Lio/grpc/internal/RetriableStream$State;->cancelled:Z

    iget-boolean v8, p0, Lio/grpc/internal/RetriableStream$State;->passThrough:Z

    iget-boolean v9, p0, Lio/grpc/internal/RetriableStream$State;->hedgingFrozen:Z

    iget v10, p0, Lio/grpc/internal/RetriableStream$State;->hedgingAttemptCount:I

    invoke-direct/range {v2 .. v10}, Lio/grpc/internal/RetriableStream$State;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lio/grpc/internal/RetriableStream$Substream;ZZZI)V

    return-object v2
.end method

.method replaceActiveHedge(Lio/grpc/internal/RetriableStream$Substream;Lio/grpc/internal/RetriableStream$Substream;)Lio/grpc/internal/RetriableStream$State;
    .locals 11
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .line 1332
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/grpc/internal/RetriableStream$State;->activeHedges:Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1333
    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 1334
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1335
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v5

    .line 1337
    new-instance v2, Lio/grpc/internal/RetriableStream$State;

    iget-object v3, p0, Lio/grpc/internal/RetriableStream$State;->buffer:Ljava/util/List;

    iget-object v4, p0, Lio/grpc/internal/RetriableStream$State;->drainedSubstreams:Ljava/util/Collection;

    iget-object v6, p0, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    iget-boolean v7, p0, Lio/grpc/internal/RetriableStream$State;->cancelled:Z

    iget-boolean v8, p0, Lio/grpc/internal/RetriableStream$State;->passThrough:Z

    iget-boolean v9, p0, Lio/grpc/internal/RetriableStream$State;->hedgingFrozen:Z

    iget v10, p0, Lio/grpc/internal/RetriableStream$State;->hedgingAttemptCount:I

    invoke-direct/range {v2 .. v10}, Lio/grpc/internal/RetriableStream$State;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lio/grpc/internal/RetriableStream$Substream;ZZZI)V

    return-object v2
.end method

.method substreamClosed(Lio/grpc/internal/RetriableStream$Substream;)Lio/grpc/internal/RetriableStream$State;
    .locals 11
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    const/4 v0, 0x1

    .line 1245
    iput-boolean v0, p1, Lio/grpc/internal/RetriableStream$Substream;->closed:Z

    .line 1246
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$State;->drainedSubstreams:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1247
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/grpc/internal/RetriableStream$State;->drainedSubstreams:Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1248
    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 1249
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v4

    .line 1250
    new-instance v2, Lio/grpc/internal/RetriableStream$State;

    iget-object v3, p0, Lio/grpc/internal/RetriableStream$State;->buffer:Ljava/util/List;

    iget-object v5, p0, Lio/grpc/internal/RetriableStream$State;->activeHedges:Ljava/util/Collection;

    iget-object v6, p0, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    iget-boolean v7, p0, Lio/grpc/internal/RetriableStream$State;->cancelled:Z

    iget-boolean v8, p0, Lio/grpc/internal/RetriableStream$State;->passThrough:Z

    iget-boolean v9, p0, Lio/grpc/internal/RetriableStream$State;->hedgingFrozen:Z

    iget v10, p0, Lio/grpc/internal/RetriableStream$State;->hedgingAttemptCount:I

    invoke-direct/range {v2 .. v10}, Lio/grpc/internal/RetriableStream$State;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lio/grpc/internal/RetriableStream$Substream;ZZZI)V

    return-object v2

    :cond_0
    return-object p0
.end method

.method substreamDrained(Lio/grpc/internal/RetriableStream$Substream;)Lio/grpc/internal/RetriableStream$State;
    .locals 11
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .line 1212
    iget-boolean v0, p0, Lio/grpc/internal/RetriableStream$State;->passThrough:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Already passThrough"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1216
    iget-boolean v0, p1, Lio/grpc/internal/RetriableStream$Substream;->closed:Z

    if-eqz v0, :cond_0

    .line 1217
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$State;->drainedSubstreams:Ljava/util/Collection;

    :goto_0
    move-object v4, v0

    goto :goto_1

    .line 1218
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$State;->drainedSubstreams:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1220
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 1222
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lio/grpc/internal/RetriableStream$State;->drainedSubstreams:Ljava/util/Collection;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1223
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1224
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0

    .line 1227
    :goto_1
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move v8, v1

    goto :goto_2

    :cond_2
    move v8, v2

    .line 1229
    :goto_2
    iget-object v3, p0, Lio/grpc/internal/RetriableStream$State;->buffer:Ljava/util/List;

    if-eqz v8, :cond_4

    if-ne v0, p1, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 1231
    :goto_3
    const-string p1, "Another RPC attempt has already committed"

    invoke-static {v1, p1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    const/4 v3, 0x0

    .line 1236
    :cond_4
    new-instance v2, Lio/grpc/internal/RetriableStream$State;

    iget-object v5, p0, Lio/grpc/internal/RetriableStream$State;->activeHedges:Ljava/util/Collection;

    iget-object v6, p0, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    iget-boolean v7, p0, Lio/grpc/internal/RetriableStream$State;->cancelled:Z

    iget-boolean v9, p0, Lio/grpc/internal/RetriableStream$State;->hedgingFrozen:Z

    iget v10, p0, Lio/grpc/internal/RetriableStream$State;->hedgingAttemptCount:I

    invoke-direct/range {v2 .. v10}, Lio/grpc/internal/RetriableStream$State;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lio/grpc/internal/RetriableStream$Substream;ZZZI)V

    return-object v2
.end method
