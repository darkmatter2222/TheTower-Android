.class public final Lcom/google/firebase/firestore/proto/Target$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Target.java"

# interfaces
.implements Lcom/google/firebase/firestore/proto/TargetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/proto/Target;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firebase/firestore/proto/Target;",
        "Lcom/google/firebase/firestore/proto/Target$Builder;",
        ">;",
        "Lcom/google/firebase/firestore/proto/TargetOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 726
    invoke-static {}, Lcom/google/firebase/firestore/proto/Target;->access$000()Lcom/google/firebase/firestore/proto/Target;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/firestore/proto/Target$1;)V
    .locals 0

    .line 719
    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/Target$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDocuments()Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1

    .line 1168
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/Target$Builder;->copyOnWrite()V

    .line 1169
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0}, Lcom/google/firebase/firestore/proto/Target;->access$1600(Lcom/google/firebase/firestore/proto/Target;)V

    return-object p0
.end method

.method public clearLastLimboFreeSnapshotVersion()Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1

    .line 1317
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/Target$Builder;->copyOnWrite()V

    .line 1318
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0}, Lcom/google/firebase/firestore/proto/Target;->access$2200(Lcom/google/firebase/firestore/proto/Target;)V

    return-object p0
.end method

.method public clearLastListenSequenceNumber()Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1

    .line 1024
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/Target$Builder;->copyOnWrite()V

    .line 1025
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0}, Lcom/google/firebase/firestore/proto/Target;->access$1000(Lcom/google/firebase/firestore/proto/Target;)V

    return-object p0
.end method

.method public clearPipelineQuery()Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1

    .line 1240
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/Target$Builder;->copyOnWrite()V

    .line 1241
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0}, Lcom/google/firebase/firestore/proto/Target;->access$1900(Lcom/google/firebase/firestore/proto/Target;)V

    return-object p0
.end method

.method public clearQuery()Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1

    .line 1096
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/Target$Builder;->copyOnWrite()V

    .line 1097
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0}, Lcom/google/firebase/firestore/proto/Target;->access$1300(Lcom/google/firebase/firestore/proto/Target;)V

    return-object p0
.end method

.method public clearResumeToken()Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1

    .line 951
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/Target$Builder;->copyOnWrite()V

    .line 952
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0}, Lcom/google/firebase/firestore/proto/Target;->access$800(Lcom/google/firebase/firestore/proto/Target;)V

    return-object p0
.end method

.method public clearSnapshotVersion()Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1

    .line 869
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/Target$Builder;->copyOnWrite()V

    .line 870
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0}, Lcom/google/firebase/firestore/proto/Target;->access$600(Lcom/google/firebase/firestore/proto/Target;)V

    return-object p0
.end method

.method public clearTargetId()Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1

    .line 780
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/Target$Builder;->copyOnWrite()V

    .line 781
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0}, Lcom/google/firebase/firestore/proto/Target;->access$300(Lcom/google/firebase/firestore/proto/Target;)V

    return-object p0
.end method

.method public clearTargetType()Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1

    .line 736
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/Target$Builder;->copyOnWrite()V

    .line 737
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0}, Lcom/google/firebase/firestore/proto/Target;->access$100(Lcom/google/firebase/firestore/proto/Target;)V

    return-object p0
.end method

.method public getDocuments()Lcom/google/firestore/v1/Target$DocumentsTarget;
    .locals 1

    .line 1121
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/Target;->getDocuments()Lcom/google/firestore/v1/Target$DocumentsTarget;

    move-result-object v0

    return-object v0
.end method

.method public getLastLimboFreeSnapshotVersion()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 1267
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/Target;->getLastLimboFreeSnapshotVersion()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getLastListenSequenceNumber()J
    .locals 2

    .line 977
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/Target;->getLastListenSequenceNumber()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPipelineQuery()Lcom/google/firestore/v1/Target$PipelineQueryTarget;
    .locals 1

    .line 1193
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/Target;->getPipelineQuery()Lcom/google/firestore/v1/Target$PipelineQueryTarget;

    move-result-object v0

    return-object v0
.end method

.method public getQuery()Lcom/google/firestore/v1/Target$QueryTarget;
    .locals 1

    .line 1049
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/Target;->getQuery()Lcom/google/firestore/v1/Target$QueryTarget;

    move-result-object v0

    return-object v0
.end method

.method public getResumeToken()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 898
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/Target;->getResumeToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSnapshotVersion()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 811
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/Target;->getSnapshotVersion()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getTargetId()I
    .locals 1

    .line 753
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/Target;->getTargetId()I

    move-result v0

    return v0
.end method

.method public getTargetTypeCase()Lcom/google/firebase/firestore/proto/Target$TargetTypeCase;
    .locals 1

    .line 732
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/Target;->getTargetTypeCase()Lcom/google/firebase/firestore/proto/Target$TargetTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public hasDocuments()Z
    .locals 1

    .line 1110
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/Target;->hasDocuments()Z

    move-result v0

    return v0
.end method

.method public hasLastLimboFreeSnapshotVersion()Z
    .locals 1

    .line 1255
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/Target;->hasLastLimboFreeSnapshotVersion()Z

    move-result v0

    return v0
.end method

.method public hasPipelineQuery()Z
    .locals 1

    .line 1182
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/Target;->hasPipelineQuery()Z

    move-result v0

    return v0
.end method

.method public hasQuery()Z
    .locals 1

    .line 1038
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/Target;->hasQuery()Z

    move-result v0

    return v0
.end method

.method public hasSnapshotVersion()Z
    .locals 1

    .line 797
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/Target;->hasSnapshotVersion()Z

    move-result v0

    return v0
.end method

.method public mergeDocuments(Lcom/google/firestore/v1/Target$DocumentsTarget;)Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1

    .line 1156
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/Target$Builder;->copyOnWrite()V

    .line 1157
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/Target;->access$1500(Lcom/google/firebase/firestore/proto/Target;Lcom/google/firestore/v1/Target$DocumentsTarget;)V

    return-object p0
.end method

.method public mergeLastLimboFreeSnapshotVersion(Lcom/google/protobuf/Timestamp;)Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1

    .line 1305
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/Target$Builder;->copyOnWrite()V

    .line 1306
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/Target;->access$2100(Lcom/google/firebase/firestore/proto/Target;Lcom/google/protobuf/Timestamp;)V

    return-object p0
.end method

.method public mergePipelineQuery(Lcom/google/firestore/v1/Target$PipelineQueryTarget;)Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1

    .line 1228
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/Target$Builder;->copyOnWrite()V

    .line 1229
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/Target;->access$1800(Lcom/google/firebase/firestore/proto/Target;Lcom/google/firestore/v1/Target$PipelineQueryTarget;)V

    return-object p0
.end method

.method public mergeQuery(Lcom/google/firestore/v1/Target$QueryTarget;)Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1

    .line 1084
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/Target$Builder;->copyOnWrite()V

    .line 1085
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/Target;->access$1200(Lcom/google/firebase/firestore/proto/Target;Lcom/google/firestore/v1/Target$QueryTarget;)V

    return-object p0
.end method

.method public mergeSnapshotVersion(Lcom/google/protobuf/Timestamp;)Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1

    .line 855
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/Target$Builder;->copyOnWrite()V

    .line 856
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/Target;->access$500(Lcom/google/firebase/firestore/proto/Target;Lcom/google/protobuf/Timestamp;)V

    return-object p0
.end method

.method public setDocuments(Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;)Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1

    .line 1144
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/Target$Builder;->copyOnWrite()V

    .line 1145
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/Target$DocumentsTarget;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/Target;->access$1400(Lcom/google/firebase/firestore/proto/Target;Lcom/google/firestore/v1/Target$DocumentsTarget;)V

    return-object p0
.end method

.method public setDocuments(Lcom/google/firestore/v1/Target$DocumentsTarget;)Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1

    .line 1131
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/Target$Builder;->copyOnWrite()V

    .line 1132
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/Target;->access$1400(Lcom/google/firebase/firestore/proto/Target;Lcom/google/firestore/v1/Target$DocumentsTarget;)V

    return-object p0
.end method

.method public setLastLimboFreeSnapshotVersion(Lcom/google/protobuf/Timestamp$Builder;)Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1

    .line 1292
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/Target$Builder;->copyOnWrite()V

    .line 1293
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/Target;->access$2000(Lcom/google/firebase/firestore/proto/Target;Lcom/google/protobuf/Timestamp;)V

    return-object p0
.end method

.method public setLastLimboFreeSnapshotVersion(Lcom/google/protobuf/Timestamp;)Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1

    .line 1278
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/Target$Builder;->copyOnWrite()V

    .line 1279
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/Target;->access$2000(Lcom/google/firebase/firestore/proto/Target;Lcom/google/protobuf/Timestamp;)V

    return-object p0
.end method

.method public setLastListenSequenceNumber(J)Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1

    .line 1000
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/Target$Builder;->copyOnWrite()V

    .line 1001
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/firestore/proto/Target;->access$900(Lcom/google/firebase/firestore/proto/Target;J)V

    return-object p0
.end method

.method public setPipelineQuery(Lcom/google/firestore/v1/Target$PipelineQueryTarget$Builder;)Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1

    .line 1216
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/Target$Builder;->copyOnWrite()V

    .line 1217
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Target$PipelineQueryTarget$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/Target$PipelineQueryTarget;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/Target;->access$1700(Lcom/google/firebase/firestore/proto/Target;Lcom/google/firestore/v1/Target$PipelineQueryTarget;)V

    return-object p0
.end method

.method public setPipelineQuery(Lcom/google/firestore/v1/Target$PipelineQueryTarget;)Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1

    .line 1203
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/Target$Builder;->copyOnWrite()V

    .line 1204
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/Target;->access$1700(Lcom/google/firebase/firestore/proto/Target;Lcom/google/firestore/v1/Target$PipelineQueryTarget;)V

    return-object p0
.end method

.method public setQuery(Lcom/google/firestore/v1/Target$QueryTarget$Builder;)Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1

    .line 1072
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/Target$Builder;->copyOnWrite()V

    .line 1073
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Target$QueryTarget$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/Target;->access$1100(Lcom/google/firebase/firestore/proto/Target;Lcom/google/firestore/v1/Target$QueryTarget;)V

    return-object p0
.end method

.method public setQuery(Lcom/google/firestore/v1/Target$QueryTarget;)Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1

    .line 1059
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/Target$Builder;->copyOnWrite()V

    .line 1060
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/Target;->access$1100(Lcom/google/firebase/firestore/proto/Target;Lcom/google/firestore/v1/Target$QueryTarget;)V

    return-object p0
.end method

.method public setResumeToken(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1

    .line 924
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/Target$Builder;->copyOnWrite()V

    .line 925
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/Target;->access$700(Lcom/google/firebase/firestore/proto/Target;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSnapshotVersion(Lcom/google/protobuf/Timestamp$Builder;)Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1

    .line 840
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/Target$Builder;->copyOnWrite()V

    .line 841
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/Target;->access$400(Lcom/google/firebase/firestore/proto/Target;Lcom/google/protobuf/Timestamp;)V

    return-object p0
.end method

.method public setSnapshotVersion(Lcom/google/protobuf/Timestamp;)Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1

    .line 824
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/Target$Builder;->copyOnWrite()V

    .line 825
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/Target;->access$400(Lcom/google/firebase/firestore/proto/Target;Lcom/google/protobuf/Timestamp;)V

    return-object p0
.end method

.method public setTargetId(I)Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1

    .line 766
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/Target$Builder;->copyOnWrite()V

    .line 767
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/Target;->access$200(Lcom/google/firebase/firestore/proto/Target;I)V

    return-object p0
.end method
