.class public Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;
.super Ljava/lang/Object;
.source "CronetLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/impl/CronetLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CronetEngineBuilderInfo"
.end annotation


# instance fields
.field private final mBrotiEnabled:Z

.field private final mCronetInitializationRef:J

.field private final mExperimentalOptions:Ljava/lang/String;

.field private final mHttp2Enabled:Z

.field private final mHttpCacheMode:I

.field private final mNetworkQualityEstimatorEnabled:Z

.field private final mPublicKeyPinningBypassForLocalTrustAnchorsEnabled:Z

.field private final mQuicEnabled:Z

.field private final mStoragePath:Ljava/lang/String;

.field private final mThreadPriority:I

.field private final mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;ZZZILjava/lang/String;ZIJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "publicKeyPinningBypassForLocalTrustAnchorsEnabled",
            "userAgent",
            "storagePath",
            "quicEnabled",
            "http2Enabled",
            "brotiEnabled",
            "httpCacheMode",
            "experimentalOptions",
            "networkQualityEstimatorEnabled",
            "threadPriority",
            "cronetInitializationRef"
        }
    .end annotation

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-boolean p1, p0, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->mPublicKeyPinningBypassForLocalTrustAnchorsEnabled:Z

    .line 119
    iput-object p2, p0, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->mUserAgent:Ljava/lang/String;

    .line 120
    iput-object p3, p0, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->mStoragePath:Ljava/lang/String;

    .line 121
    iput-boolean p4, p0, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->mQuicEnabled:Z

    .line 122
    iput-boolean p5, p0, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->mHttp2Enabled:Z

    .line 123
    iput-boolean p6, p0, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->mBrotiEnabled:Z

    .line 124
    iput p7, p0, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->mHttpCacheMode:I

    .line 125
    iput-object p8, p0, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->mExperimentalOptions:Ljava/lang/String;

    .line 126
    iput-boolean p9, p0, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->mNetworkQualityEstimatorEnabled:Z

    .line 127
    iput p10, p0, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->mThreadPriority:I

    .line 128
    iput-wide p11, p0, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->mCronetInitializationRef:J

    return-void
.end method


# virtual methods
.method public getCronetInitializationRef()J
    .locals 2

    .line 185
    iget-wide v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->mCronetInitializationRef:J

    return-wide v0
.end method

.method public getExperimentalOptions()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->mExperimentalOptions:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpCacheMode()I
    .locals 1

    .line 166
    iget v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->mHttpCacheMode:I

    return v0
.end method

.method public getStoragePath()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->mStoragePath:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadPriority()I
    .locals 1

    .line 181
    iget v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->mThreadPriority:I

    return v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->mUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method public isBrotliEnabled()Z
    .locals 1

    .line 158
    iget-boolean v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->mBrotiEnabled:Z

    return v0
.end method

.method public isHttp2Enabled()Z
    .locals 1

    .line 153
    iget-boolean v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->mHttp2Enabled:Z

    return v0
.end method

.method public isNetworkQualityEstimatorEnabled()Z
    .locals 1

    .line 176
    iget-boolean v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->mNetworkQualityEstimatorEnabled:Z

    return v0
.end method

.method public isPublicKeyPinningBypassForLocalTrustAnchorsEnabled()Z
    .locals 1

    .line 133
    iget-boolean v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->mPublicKeyPinningBypassForLocalTrustAnchorsEnabled:Z

    return v0
.end method

.method public isQuicEnabled()Z
    .locals 1

    .line 148
    iget-boolean v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->mQuicEnabled:Z

    return v0
.end method
