.class Lcom/unity3d/player/ApplicationExitInfoWrapper;
.super Lcom/unity3d/player/ApplicationExitInfoBase;
.source "SourceFile"


# instance fields
.field private mApplicationExitInfo:Landroid/app/ApplicationExitInfo;


# direct methods
.method public constructor <init>(Landroid/app/ApplicationExitInfo;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/unity3d/player/ApplicationExitInfoBase;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/unity3d/player/ApplicationExitInfoWrapper;->mApplicationExitInfo:Landroid/app/ApplicationExitInfo;

    return-void
.end method

.method protected static GetStaticFieldByReflection(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x6

    .line 18
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    .line 20
    invoke-virtual {p0, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_0
    const/4 p1, 0x0

    .line 21
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "ApplicationExitInfo: GetStaticFieldByReflection exception "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "ApplicationExitInfo: GetStaticFieldByReflection NoSuchFieldException "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    :goto_0
    return-object p2
.end method

.method private checkSupport()Z
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/unity3d/player/ApplicationExitInfoWrapper;->mApplicationExitInfo:Landroid/app/ApplicationExitInfo;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/unity3d/player/PlatformSupport;->RED_VELVET_CAKE_SUPPORT:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private readAllBytes(Ljava/io/InputStream;)[B
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 219
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    .line 221
    new-array v2, v1, [B

    :goto_0
    const/4 v3, 0x0

    .line 225
    :try_start_0
    invoke-virtual {p1, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-lez v4, :cond_1

    .line 227
    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 236
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ApplicationExitInfo: readAllBytes exception "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v1, v0}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    .line 233
    throw p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 59
    invoke-direct {p0}, Lcom/unity3d/player/ApplicationExitInfoWrapper;->checkSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/unity3d/player/ApplicationExitInfoWrapper;->mApplicationExitInfo:Landroid/app/ApplicationExitInfo;

    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->describeContents()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDefiningUid()I
    .locals 1

    .line 69
    invoke-direct {p0}, Lcom/unity3d/player/ApplicationExitInfoWrapper;->checkSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/unity3d/player/ApplicationExitInfoWrapper;->mApplicationExitInfo:Landroid/app/ApplicationExitInfo;

    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getDefiningUid()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/unity3d/player/ApplicationExitInfoWrapper;->checkSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/unity3d/player/ApplicationExitInfoWrapper;->mApplicationExitInfo:Landroid/app/ApplicationExitInfo;

    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImportance()I
    .locals 1

    .line 79
    invoke-direct {p0}, Lcom/unity3d/player/ApplicationExitInfoWrapper;->checkSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/unity3d/player/ApplicationExitInfoWrapper;->mApplicationExitInfo:Landroid/app/ApplicationExitInfo;

    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getImportance()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPackageUid()I
    .locals 1

    .line 89
    invoke-direct {p0}, Lcom/unity3d/player/ApplicationExitInfoWrapper;->checkSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/unity3d/player/ApplicationExitInfoWrapper;->mApplicationExitInfo:Landroid/app/ApplicationExitInfo;

    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getPackageUid()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPid()I
    .locals 1

    .line 99
    invoke-direct {p0}, Lcom/unity3d/player/ApplicationExitInfoWrapper;->checkSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/unity3d/player/ApplicationExitInfoWrapper;->mApplicationExitInfo:Landroid/app/ApplicationExitInfo;

    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getPid()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getProcessName()Ljava/lang/String;
    .locals 1

    .line 109
    invoke-direct {p0}, Lcom/unity3d/player/ApplicationExitInfoWrapper;->checkSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/unity3d/player/ApplicationExitInfoWrapper;->mApplicationExitInfo:Landroid/app/ApplicationExitInfo;

    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getProcessName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProcessStateSummary()[B
    .locals 1

    .line 119
    invoke-direct {p0}, Lcom/unity3d/player/ApplicationExitInfoWrapper;->checkSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/unity3d/player/ApplicationExitInfoWrapper;->mApplicationExitInfo:Landroid/app/ApplicationExitInfo;

    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getProcessStateSummary()[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 123
    new-array v0, v0, [B

    return-object v0
.end method

.method public getPss()J
    .locals 2

    .line 129
    invoke-direct {p0}, Lcom/unity3d/player/ApplicationExitInfoWrapper;->checkSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/unity3d/player/ApplicationExitInfoWrapper;->mApplicationExitInfo:Landroid/app/ApplicationExitInfo;

    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getPss()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getRealUid()I
    .locals 1

    .line 139
    invoke-direct {p0}, Lcom/unity3d/player/ApplicationExitInfoWrapper;->checkSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/unity3d/player/ApplicationExitInfoWrapper;->mApplicationExitInfo:Landroid/app/ApplicationExitInfo;

    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getReason()I
    .locals 1

    .line 149
    invoke-direct {p0}, Lcom/unity3d/player/ApplicationExitInfoWrapper;->checkSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/unity3d/player/ApplicationExitInfoWrapper;->mApplicationExitInfo:Landroid/app/ApplicationExitInfo;

    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getRss()J
    .locals 2

    .line 159
    invoke-direct {p0}, Lcom/unity3d/player/ApplicationExitInfoWrapper;->checkSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/unity3d/player/ApplicationExitInfoWrapper;->mApplicationExitInfo:Landroid/app/ApplicationExitInfo;

    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getRss()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getStatus()I
    .locals 1

    .line 169
    invoke-direct {p0}, Lcom/unity3d/player/ApplicationExitInfoWrapper;->checkSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/unity3d/player/ApplicationExitInfoWrapper;->mApplicationExitInfo:Landroid/app/ApplicationExitInfo;

    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getStatus()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 179
    invoke-direct {p0}, Lcom/unity3d/player/ApplicationExitInfoWrapper;->checkSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/unity3d/player/ApplicationExitInfoWrapper;->mApplicationExitInfo:Landroid/app/ApplicationExitInfo;

    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTrace()[B
    .locals 3

    .line 189
    invoke-direct {p0}, Lcom/unity3d/player/ApplicationExitInfoWrapper;->checkSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/player/ApplicationExitInfoWrapper;->mApplicationExitInfo:Landroid/app/ApplicationExitInfo;

    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getTraceInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 194
    invoke-direct {p0, v0}, Lcom/unity3d/player/ApplicationExitInfoWrapper;->readAllBytes(Ljava/io/InputStream;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ApplicationExitInfo: getTrace exception "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v1, v0}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTraceString()Ljava/lang/String;
    .locals 3

    .line 207
    invoke-virtual {p0}, Lcom/unity3d/player/ApplicationExitInfoWrapper;->getTrace()[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 208
    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1

    .line 209
    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method
