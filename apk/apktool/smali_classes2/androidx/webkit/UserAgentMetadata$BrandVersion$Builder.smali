.class public final Landroidx/webkit/UserAgentMetadata$BrandVersion$Builder;
.super Ljava/lang/Object;
.source "UserAgentMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/webkit/UserAgentMetadata$BrandVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBrand:Ljava/lang/String;

.field private mFullVersion:Ljava/lang/String;

.field private mMajorVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/webkit/UserAgentMetadata$BrandVersion;)V
    .locals 1

    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    invoke-virtual {p1}, Landroidx/webkit/UserAgentMetadata$BrandVersion;->getBrand()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/webkit/UserAgentMetadata$BrandVersion$Builder;->mBrand:Ljava/lang/String;

    .line 398
    invoke-virtual {p1}, Landroidx/webkit/UserAgentMetadata$BrandVersion;->getMajorVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/webkit/UserAgentMetadata$BrandVersion$Builder;->mMajorVersion:Ljava/lang/String;

    .line 399
    invoke-virtual {p1}, Landroidx/webkit/UserAgentMetadata$BrandVersion;->getFullVersion()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/webkit/UserAgentMetadata$BrandVersion$Builder;->mFullVersion:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Landroidx/webkit/UserAgentMetadata$BrandVersion;
    .locals 5

    .line 410
    iget-object v0, p0, Landroidx/webkit/UserAgentMetadata$BrandVersion$Builder;->mBrand:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/webkit/UserAgentMetadata$BrandVersion$Builder;->mMajorVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/webkit/UserAgentMetadata$BrandVersion$Builder;->mFullVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 412
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 416
    new-instance v0, Landroidx/webkit/UserAgentMetadata$BrandVersion;

    iget-object v1, p0, Landroidx/webkit/UserAgentMetadata$BrandVersion$Builder;->mBrand:Ljava/lang/String;

    iget-object v2, p0, Landroidx/webkit/UserAgentMetadata$BrandVersion$Builder;->mMajorVersion:Ljava/lang/String;

    iget-object v3, p0, Landroidx/webkit/UserAgentMetadata$BrandVersion$Builder;->mFullVersion:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/webkit/UserAgentMetadata$BrandVersion;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/webkit/UserAgentMetadata$1;)V

    return-object v0

    .line 413
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Brand name, major version and full version should not be null or blank."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBrand(Ljava/lang/String;)Landroidx/webkit/UserAgentMetadata$BrandVersion$Builder;
    .locals 1

    .line 427
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 430
    iput-object p1, p0, Landroidx/webkit/UserAgentMetadata$BrandVersion$Builder;->mBrand:Ljava/lang/String;

    return-object p0

    .line 428
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Brand should not be blank."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFullVersion(Ljava/lang/String;)Landroidx/webkit/UserAgentMetadata$BrandVersion$Builder;
    .locals 1

    .line 457
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 460
    iput-object p1, p0, Landroidx/webkit/UserAgentMetadata$BrandVersion$Builder;->mFullVersion:Ljava/lang/String;

    return-object p0

    .line 458
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FullVersion should not be blank."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMajorVersion(Ljava/lang/String;)Landroidx/webkit/UserAgentMetadata$BrandVersion$Builder;
    .locals 1

    .line 442
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 445
    iput-object p1, p0, Landroidx/webkit/UserAgentMetadata$BrandVersion$Builder;->mMajorVersion:Ljava/lang/String;

    return-object p0

    .line 443
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "MajorVersion should not be blank."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
