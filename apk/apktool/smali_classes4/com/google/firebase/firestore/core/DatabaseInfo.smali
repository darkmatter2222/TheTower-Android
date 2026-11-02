.class public final Lcom/google/firebase/firestore/core/DatabaseInfo;
.super Ljava/lang/Object;
.source "DatabaseInfo.java"


# instance fields
.field private final databaseId:Lcom/google/firebase/firestore/model/DatabaseId;

.field private final grpcFlowControlWindow:I

.field private final host:Ljava/lang/String;

.field private final persistenceKey:Ljava/lang/String;

.field private final sslEnabled:Z


# direct methods
.method public constructor <init>(Lcom/google/firebase/firestore/model/DatabaseId;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    const/high16 v5, 0x40000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 39
    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/firestore/core/DatabaseInfo;-><init>(Lcom/google/firebase/firestore/model/DatabaseId;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/firestore/model/DatabaseId;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/google/firebase/firestore/core/DatabaseInfo;->databaseId:Lcom/google/firebase/firestore/model/DatabaseId;

    .line 64
    iput-object p2, p0, Lcom/google/firebase/firestore/core/DatabaseInfo;->persistenceKey:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lcom/google/firebase/firestore/core/DatabaseInfo;->host:Ljava/lang/String;

    .line 66
    iput-boolean p4, p0, Lcom/google/firebase/firestore/core/DatabaseInfo;->sslEnabled:Z

    .line 67
    iput p5, p0, Lcom/google/firebase/firestore/core/DatabaseInfo;->grpcFlowControlWindow:I

    return-void
.end method


# virtual methods
.method public getDatabaseId()Lcom/google/firebase/firestore/model/DatabaseId;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/google/firebase/firestore/core/DatabaseInfo;->databaseId:Lcom/google/firebase/firestore/model/DatabaseId;

    return-object v0
.end method

.method public getGrpcFlowControlWindow()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/google/firebase/firestore/core/DatabaseInfo;->grpcFlowControlWindow:I

    return v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/google/firebase/firestore/core/DatabaseInfo;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPersistenceKey()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/google/firebase/firestore/core/DatabaseInfo;->persistenceKey:Ljava/lang/String;

    return-object v0
.end method

.method public isSslEnabled()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/google/firebase/firestore/core/DatabaseInfo;->sslEnabled:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DatabaseInfo(databaseId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/firebase/firestore/core/DatabaseInfo;->databaseId:Lcom/google/firebase/firestore/model/DatabaseId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " host:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/core/DatabaseInfo;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
