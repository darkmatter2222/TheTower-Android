.class public final Lcom/google/firebase/firestore/local/TargetData;
.super Ljava/lang/Object;
.source "TargetData.java"


# instance fields
.field private final expectedCount:Ljava/lang/Integer;

.field private final lastLimboFreeSnapshotVersion:Lcom/google/firebase/firestore/model/SnapshotVersion;

.field private final purpose:Lcom/google/firebase/firestore/local/QueryPurpose;

.field private final resumeToken:Lcom/google/protobuf/ByteString;

.field private final sequenceNumber:J

.field private final snapshotVersion:Lcom/google/firebase/firestore/model/SnapshotVersion;

.field private final target:Lcom/google/firebase/firestore/core/TargetOrPipeline;

.field private final targetId:I


# direct methods
.method public constructor <init>(Lcom/google/firebase/firestore/core/TargetOrPipeline;IJLcom/google/firebase/firestore/local/QueryPurpose;)V
    .locals 10

    .line 77
    sget-object v6, Lcom/google/firebase/firestore/model/SnapshotVersion;->NONE:Lcom/google/firebase/firestore/model/SnapshotVersion;

    sget-object v7, Lcom/google/firebase/firestore/model/SnapshotVersion;->NONE:Lcom/google/firebase/firestore/model/SnapshotVersion;

    sget-object v8, Lcom/google/firebase/firestore/remote/WatchStream;->EMPTY_RESUME_TOKEN:Lcom/google/protobuf/ByteString;

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v9}, Lcom/google/firebase/firestore/local/TargetData;-><init>(Lcom/google/firebase/firestore/core/TargetOrPipeline;IJLcom/google/firebase/firestore/local/QueryPurpose;Lcom/google/firebase/firestore/model/SnapshotVersion;Lcom/google/firebase/firestore/model/SnapshotVersion;Lcom/google/protobuf/ByteString;Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/firestore/core/TargetOrPipeline;IJLcom/google/firebase/firestore/local/QueryPurpose;Lcom/google/firebase/firestore/model/SnapshotVersion;Lcom/google/firebase/firestore/model/SnapshotVersion;Lcom/google/protobuf/ByteString;Ljava/lang/Integer;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-static {p1}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/core/TargetOrPipeline;

    iput-object p1, p0, Lcom/google/firebase/firestore/local/TargetData;->target:Lcom/google/firebase/firestore/core/TargetOrPipeline;

    .line 65
    iput p2, p0, Lcom/google/firebase/firestore/local/TargetData;->targetId:I

    .line 66
    iput-wide p3, p0, Lcom/google/firebase/firestore/local/TargetData;->sequenceNumber:J

    .line 67
    iput-object p7, p0, Lcom/google/firebase/firestore/local/TargetData;->lastLimboFreeSnapshotVersion:Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 68
    iput-object p5, p0, Lcom/google/firebase/firestore/local/TargetData;->purpose:Lcom/google/firebase/firestore/local/QueryPurpose;

    .line 69
    invoke-static {p6}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/model/SnapshotVersion;

    iput-object p1, p0, Lcom/google/firebase/firestore/local/TargetData;->snapshotVersion:Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 70
    invoke-static {p8}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lcom/google/firebase/firestore/local/TargetData;->resumeToken:Lcom/google/protobuf/ByteString;

    .line 71
    iput-object p9, p0, Lcom/google/firebase/firestore/local/TargetData;->expectedCount:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 193
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 197
    :cond_1
    check-cast p1, Lcom/google/firebase/firestore/local/TargetData;

    .line 198
    iget-object v2, p0, Lcom/google/firebase/firestore/local/TargetData;->target:Lcom/google/firebase/firestore/core/TargetOrPipeline;

    iget-object v3, p1, Lcom/google/firebase/firestore/local/TargetData;->target:Lcom/google/firebase/firestore/core/TargetOrPipeline;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/firebase/firestore/local/TargetData;->targetId:I

    iget v3, p1, Lcom/google/firebase/firestore/local/TargetData;->targetId:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/google/firebase/firestore/local/TargetData;->sequenceNumber:J

    iget-wide v4, p1, Lcom/google/firebase/firestore/local/TargetData;->sequenceNumber:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/firebase/firestore/local/TargetData;->purpose:Lcom/google/firebase/firestore/local/QueryPurpose;

    iget-object v3, p1, Lcom/google/firebase/firestore/local/TargetData;->purpose:Lcom/google/firebase/firestore/local/QueryPurpose;

    .line 201
    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/local/QueryPurpose;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/firebase/firestore/local/TargetData;->snapshotVersion:Lcom/google/firebase/firestore/model/SnapshotVersion;

    iget-object v3, p1, Lcom/google/firebase/firestore/local/TargetData;->snapshotVersion:Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 202
    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/model/SnapshotVersion;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/firebase/firestore/local/TargetData;->lastLimboFreeSnapshotVersion:Lcom/google/firebase/firestore/model/SnapshotVersion;

    iget-object v3, p1, Lcom/google/firebase/firestore/local/TargetData;->lastLimboFreeSnapshotVersion:Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 203
    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/model/SnapshotVersion;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/firebase/firestore/local/TargetData;->resumeToken:Lcom/google/protobuf/ByteString;

    iget-object v3, p1, Lcom/google/firebase/firestore/local/TargetData;->resumeToken:Lcom/google/protobuf/ByteString;

    .line 204
    invoke-virtual {v2, v3}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/firebase/firestore/local/TargetData;->expectedCount:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/google/firebase/firestore/local/TargetData;->expectedCount:Ljava/lang/Integer;

    .line 205
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getExpectedCount()Ljava/lang/Integer;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/google/firebase/firestore/local/TargetData;->expectedCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLastLimboFreeSnapshotVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/google/firebase/firestore/local/TargetData;->lastLimboFreeSnapshotVersion:Lcom/google/firebase/firestore/model/SnapshotVersion;

    return-object v0
.end method

.method public getPurpose()Lcom/google/firebase/firestore/local/QueryPurpose;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/google/firebase/firestore/local/TargetData;->purpose:Lcom/google/firebase/firestore/local/QueryPurpose;

    return-object v0
.end method

.method public getResumeToken()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/google/firebase/firestore/local/TargetData;->resumeToken:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSequenceNumber()J
    .locals 2

    .line 161
    iget-wide v0, p0, Lcom/google/firebase/firestore/local/TargetData;->sequenceNumber:J

    return-wide v0
.end method

.method public getSnapshotVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/google/firebase/firestore/local/TargetData;->snapshotVersion:Lcom/google/firebase/firestore/model/SnapshotVersion;

    return-object v0
.end method

.method public getTarget()Lcom/google/firebase/firestore/core/TargetOrPipeline;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/google/firebase/firestore/local/TargetData;->target:Lcom/google/firebase/firestore/core/TargetOrPipeline;

    return-object v0
.end method

.method public getTargetId()I
    .locals 1

    .line 157
    iget v0, p0, Lcom/google/firebase/firestore/local/TargetData;->targetId:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/google/firebase/firestore/local/TargetData;->target:Lcom/google/firebase/firestore/core/TargetOrPipeline;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 211
    iget v1, p0, Lcom/google/firebase/firestore/local/TargetData;->targetId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 212
    iget-wide v1, p0, Lcom/google/firebase/firestore/local/TargetData;->sequenceNumber:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 213
    iget-object v1, p0, Lcom/google/firebase/firestore/local/TargetData;->purpose:Lcom/google/firebase/firestore/local/QueryPurpose;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/local/QueryPurpose;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 214
    iget-object v1, p0, Lcom/google/firebase/firestore/local/TargetData;->snapshotVersion:Lcom/google/firebase/firestore/model/SnapshotVersion;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/SnapshotVersion;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 215
    iget-object v1, p0, Lcom/google/firebase/firestore/local/TargetData;->lastLimboFreeSnapshotVersion:Lcom/google/firebase/firestore/model/SnapshotVersion;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/SnapshotVersion;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 216
    iget-object v1, p0, Lcom/google/firebase/firestore/local/TargetData;->resumeToken:Lcom/google/protobuf/ByteString;

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 217
    iget-object v1, p0, Lcom/google/firebase/firestore/local/TargetData;->expectedCount:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TargetData{target="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/firebase/firestore/local/TargetData;->target:Lcom/google/firebase/firestore/core/TargetOrPipeline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", targetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/firebase/firestore/local/TargetData;->targetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sequenceNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/firebase/firestore/local/TargetData;->sequenceNumber:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", purpose="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/local/TargetData;->purpose:Lcom/google/firebase/firestore/local/QueryPurpose;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", snapshotVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/local/TargetData;->snapshotVersion:Lcom/google/firebase/firestore/model/SnapshotVersion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastLimboFreeSnapshotVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/local/TargetData;->lastLimboFreeSnapshotVersion:Lcom/google/firebase/firestore/model/SnapshotVersion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resumeToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/local/TargetData;->resumeToken:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", expectedCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/local/TargetData;->expectedCount:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withExpectedCount(Ljava/lang/Integer;)Lcom/google/firebase/firestore/local/TargetData;
    .locals 10

    .line 116
    new-instance v0, Lcom/google/firebase/firestore/local/TargetData;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/TargetData;->target:Lcom/google/firebase/firestore/core/TargetOrPipeline;

    iget v2, p0, Lcom/google/firebase/firestore/local/TargetData;->targetId:I

    iget-wide v3, p0, Lcom/google/firebase/firestore/local/TargetData;->sequenceNumber:J

    iget-object v5, p0, Lcom/google/firebase/firestore/local/TargetData;->purpose:Lcom/google/firebase/firestore/local/QueryPurpose;

    iget-object v6, p0, Lcom/google/firebase/firestore/local/TargetData;->snapshotVersion:Lcom/google/firebase/firestore/model/SnapshotVersion;

    iget-object v7, p0, Lcom/google/firebase/firestore/local/TargetData;->lastLimboFreeSnapshotVersion:Lcom/google/firebase/firestore/model/SnapshotVersion;

    iget-object v8, p0, Lcom/google/firebase/firestore/local/TargetData;->resumeToken:Lcom/google/protobuf/ByteString;

    move-object v9, p1

    invoke-direct/range {v0 .. v9}, Lcom/google/firebase/firestore/local/TargetData;-><init>(Lcom/google/firebase/firestore/core/TargetOrPipeline;IJLcom/google/firebase/firestore/local/QueryPurpose;Lcom/google/firebase/firestore/model/SnapshotVersion;Lcom/google/firebase/firestore/model/SnapshotVersion;Lcom/google/protobuf/ByteString;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public withLastLimboFreeSnapshotVersion(Lcom/google/firebase/firestore/model/SnapshotVersion;)Lcom/google/firebase/firestore/local/TargetData;
    .locals 10

    .line 129
    new-instance v0, Lcom/google/firebase/firestore/local/TargetData;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/TargetData;->target:Lcom/google/firebase/firestore/core/TargetOrPipeline;

    iget v2, p0, Lcom/google/firebase/firestore/local/TargetData;->targetId:I

    iget-wide v3, p0, Lcom/google/firebase/firestore/local/TargetData;->sequenceNumber:J

    iget-object v5, p0, Lcom/google/firebase/firestore/local/TargetData;->purpose:Lcom/google/firebase/firestore/local/QueryPurpose;

    iget-object v6, p0, Lcom/google/firebase/firestore/local/TargetData;->snapshotVersion:Lcom/google/firebase/firestore/model/SnapshotVersion;

    iget-object v8, p0, Lcom/google/firebase/firestore/local/TargetData;->resumeToken:Lcom/google/protobuf/ByteString;

    iget-object v9, p0, Lcom/google/firebase/firestore/local/TargetData;->expectedCount:Ljava/lang/Integer;

    move-object v7, p1

    invoke-direct/range {v0 .. v9}, Lcom/google/firebase/firestore/local/TargetData;-><init>(Lcom/google/firebase/firestore/core/TargetOrPipeline;IJLcom/google/firebase/firestore/local/QueryPurpose;Lcom/google/firebase/firestore/model/SnapshotVersion;Lcom/google/firebase/firestore/model/SnapshotVersion;Lcom/google/protobuf/ByteString;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public withResumeToken(Lcom/google/protobuf/ByteString;Lcom/google/firebase/firestore/model/SnapshotVersion;)Lcom/google/firebase/firestore/local/TargetData;
    .locals 10

    .line 103
    new-instance v0, Lcom/google/firebase/firestore/local/TargetData;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/TargetData;->target:Lcom/google/firebase/firestore/core/TargetOrPipeline;

    iget v2, p0, Lcom/google/firebase/firestore/local/TargetData;->targetId:I

    iget-wide v3, p0, Lcom/google/firebase/firestore/local/TargetData;->sequenceNumber:J

    iget-object v5, p0, Lcom/google/firebase/firestore/local/TargetData;->purpose:Lcom/google/firebase/firestore/local/QueryPurpose;

    iget-object v7, p0, Lcom/google/firebase/firestore/local/TargetData;->lastLimboFreeSnapshotVersion:Lcom/google/firebase/firestore/model/SnapshotVersion;

    const/4 v9, 0x0

    move-object v8, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v9}, Lcom/google/firebase/firestore/local/TargetData;-><init>(Lcom/google/firebase/firestore/core/TargetOrPipeline;IJLcom/google/firebase/firestore/local/QueryPurpose;Lcom/google/firebase/firestore/model/SnapshotVersion;Lcom/google/firebase/firestore/model/SnapshotVersion;Lcom/google/protobuf/ByteString;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public withSequenceNumber(J)Lcom/google/firebase/firestore/local/TargetData;
    .locals 10

    .line 90
    new-instance v0, Lcom/google/firebase/firestore/local/TargetData;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/TargetData;->target:Lcom/google/firebase/firestore/core/TargetOrPipeline;

    iget v2, p0, Lcom/google/firebase/firestore/local/TargetData;->targetId:I

    iget-object v5, p0, Lcom/google/firebase/firestore/local/TargetData;->purpose:Lcom/google/firebase/firestore/local/QueryPurpose;

    iget-object v6, p0, Lcom/google/firebase/firestore/local/TargetData;->snapshotVersion:Lcom/google/firebase/firestore/model/SnapshotVersion;

    iget-object v7, p0, Lcom/google/firebase/firestore/local/TargetData;->lastLimboFreeSnapshotVersion:Lcom/google/firebase/firestore/model/SnapshotVersion;

    iget-object v8, p0, Lcom/google/firebase/firestore/local/TargetData;->resumeToken:Lcom/google/protobuf/ByteString;

    iget-object v9, p0, Lcom/google/firebase/firestore/local/TargetData;->expectedCount:Ljava/lang/Integer;

    move-wide v3, p1

    invoke-direct/range {v0 .. v9}, Lcom/google/firebase/firestore/local/TargetData;-><init>(Lcom/google/firebase/firestore/core/TargetOrPipeline;IJLcom/google/firebase/firestore/local/QueryPurpose;Lcom/google/firebase/firestore/model/SnapshotVersion;Lcom/google/firebase/firestore/model/SnapshotVersion;Lcom/google/protobuf/ByteString;Ljava/lang/Integer;)V

    return-object v0
.end method

.method withTarget(Lcom/google/firebase/firestore/core/TargetOrPipeline;)Lcom/google/firebase/firestore/local/TargetData;
    .locals 10

    .line 145
    new-instance v0, Lcom/google/firebase/firestore/local/TargetData;

    iget v2, p0, Lcom/google/firebase/firestore/local/TargetData;->targetId:I

    iget-wide v3, p0, Lcom/google/firebase/firestore/local/TargetData;->sequenceNumber:J

    iget-object v5, p0, Lcom/google/firebase/firestore/local/TargetData;->purpose:Lcom/google/firebase/firestore/local/QueryPurpose;

    iget-object v6, p0, Lcom/google/firebase/firestore/local/TargetData;->snapshotVersion:Lcom/google/firebase/firestore/model/SnapshotVersion;

    iget-object v7, p0, Lcom/google/firebase/firestore/local/TargetData;->lastLimboFreeSnapshotVersion:Lcom/google/firebase/firestore/model/SnapshotVersion;

    iget-object v8, p0, Lcom/google/firebase/firestore/local/TargetData;->resumeToken:Lcom/google/protobuf/ByteString;

    iget-object v9, p0, Lcom/google/firebase/firestore/local/TargetData;->expectedCount:Ljava/lang/Integer;

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/google/firebase/firestore/local/TargetData;-><init>(Lcom/google/firebase/firestore/core/TargetOrPipeline;IJLcom/google/firebase/firestore/local/QueryPurpose;Lcom/google/firebase/firestore/model/SnapshotVersion;Lcom/google/firebase/firestore/model/SnapshotVersion;Lcom/google/protobuf/ByteString;Ljava/lang/Integer;)V

    return-object v0
.end method
