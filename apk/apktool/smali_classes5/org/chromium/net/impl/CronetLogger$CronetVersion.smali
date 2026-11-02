.class public Lorg/chromium/net/impl/CronetLogger$CronetVersion;
.super Ljava/lang/Object;
.source "CronetLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/impl/CronetLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CronetVersion"
.end annotation


# instance fields
.field private final mBuildVersion:I

.field private final mMajorVersion:I

.field private final mMinorVersion:I

.field private final mPatchVersion:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "version"
        }
    .end annotation

    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 443
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 444
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetVersion;->mMajorVersion:I

    const/4 v0, 0x1

    .line 445
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetVersion;->mMinorVersion:I

    const/4 v0, 0x2

    .line 446
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetVersion;->mBuildVersion:I

    const/4 v0, 0x3

    .line 447
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/chromium/net/impl/CronetLogger$CronetVersion;->mPatchVersion:I

    return-void
.end method


# virtual methods
.method public getBuildVersion()I
    .locals 1

    .line 462
    iget v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetVersion;->mBuildVersion:I

    return v0
.end method

.method public getMajorVersion()I
    .locals 1

    .line 452
    iget v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetVersion;->mMajorVersion:I

    return v0
.end method

.method public getMinorVersion()I
    .locals 1

    .line 457
    iget v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetVersion;->mMinorVersion:I

    return v0
.end method

.method public getPatchVersion()I
    .locals 1

    .line 467
    iget v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetVersion;->mPatchVersion:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 472
    iget v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetVersion;->mMajorVersion:I

    iget v1, p0, Lorg/chromium/net/impl/CronetLogger$CronetVersion;->mMinorVersion:I

    iget v2, p0, Lorg/chromium/net/impl/CronetLogger$CronetVersion;->mBuildVersion:I

    iget v3, p0, Lorg/chromium/net/impl/CronetLogger$CronetVersion;->mPatchVersion:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
