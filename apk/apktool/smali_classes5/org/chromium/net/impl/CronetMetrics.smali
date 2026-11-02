.class public final Lorg/chromium/net/impl/CronetMetrics;
.super Lorg/chromium/net/RequestFinishedInfo$Metrics;
.source "CronetMetrics.java"


# annotations
.annotation runtime Linternal/org/jni_zero/JNINamespace;
    value = "cronet"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mConnectEndMs:J

.field private final mConnectStartMs:J

.field private final mDnsEndMs:J

.field private final mDnsStartMs:J

.field private final mPushEndMs:J

.field private final mPushStartMs:J

.field private final mReceivedByteCount:Ljava/lang/Long;

.field private final mRequestEndMs:J

.field private final mRequestStartMs:J

.field private final mResponseStartMs:J

.field private final mSendingEndMs:J

.field private final mSendingStartMs:J

.field private final mSentByteCount:Ljava/lang/Long;

.field private final mSocketReused:Z

.field private final mSslEndMs:J

.field private final mSslStartMs:J

.field private final mTotalTimeMs:Ljava/lang/Long;

.field private final mTtfbMs:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(JJJJJJJJJJJJJZJJ)V
    .locals 7
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
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestStartMs",
            "dnsStartMs",
            "dnsEndMs",
            "connectStartMs",
            "connectEndMs",
            "sslStartMs",
            "sslEndMs",
            "sendingStartMs",
            "sendingEndMs",
            "pushStartMs",
            "pushEndMs",
            "responseStartMs",
            "requestEndMs",
            "socketReused",
            "sentByteCount",
            "receivedByteCount"
        }
    .end annotation

    move-wide/from16 v0, p23

    move-wide/from16 v2, p25

    .line 90
    invoke-direct {p0}, Lorg/chromium/net/RequestFinishedInfo$Metrics;-><init>()V

    .line 105
    iput-wide p1, p0, Lorg/chromium/net/impl/CronetMetrics;->mRequestStartMs:J

    .line 106
    iput-wide p3, p0, Lorg/chromium/net/impl/CronetMetrics;->mDnsStartMs:J

    .line 107
    iput-wide p5, p0, Lorg/chromium/net/impl/CronetMetrics;->mDnsEndMs:J

    .line 108
    iput-wide p7, p0, Lorg/chromium/net/impl/CronetMetrics;->mConnectStartMs:J

    move-wide/from16 p3, p9

    .line 109
    iput-wide p3, p0, Lorg/chromium/net/impl/CronetMetrics;->mConnectEndMs:J

    move-wide/from16 p3, p11

    .line 110
    iput-wide p3, p0, Lorg/chromium/net/impl/CronetMetrics;->mSslStartMs:J

    move-wide/from16 p3, p13

    .line 111
    iput-wide p3, p0, Lorg/chromium/net/impl/CronetMetrics;->mSslEndMs:J

    move-wide/from16 p3, p15

    .line 112
    iput-wide p3, p0, Lorg/chromium/net/impl/CronetMetrics;->mSendingStartMs:J

    move-wide/from16 p3, p17

    .line 113
    iput-wide p3, p0, Lorg/chromium/net/impl/CronetMetrics;->mSendingEndMs:J

    move-wide/from16 p3, p19

    .line 114
    iput-wide p3, p0, Lorg/chromium/net/impl/CronetMetrics;->mPushStartMs:J

    move-wide/from16 p3, p21

    .line 115
    iput-wide p3, p0, Lorg/chromium/net/impl/CronetMetrics;->mPushEndMs:J

    .line 116
    iput-wide v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mResponseStartMs:J

    .line 117
    iput-wide v2, p0, Lorg/chromium/net/impl/CronetMetrics;->mRequestEndMs:J

    move/from16 p3, p27

    .line 118
    iput-boolean p3, p0, Lorg/chromium/net/impl/CronetMetrics;->mSocketReused:Z

    .line 119
    invoke-static/range {p28 .. p29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    iput-object p3, p0, Lorg/chromium/net/impl/CronetMetrics;->mSentByteCount:Ljava/lang/Long;

    .line 120
    invoke-static/range {p30 .. p31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    iput-object p3, p0, Lorg/chromium/net/impl/CronetMetrics;->mReceivedByteCount:Ljava/lang/Long;

    const-wide/16 p3, -0x1

    cmp-long v4, p1, p3

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    cmp-long v6, v0, p3

    if-eqz v6, :cond_0

    sub-long/2addr v0, p1

    .line 124
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mTtfbMs:Ljava/lang/Long;

    goto :goto_0

    .line 126
    :cond_0
    iput-object v5, p0, Lorg/chromium/net/impl/CronetMetrics;->mTtfbMs:Ljava/lang/Long;

    :goto_0
    if-eqz v4, :cond_1

    cmp-long p3, v2, p3

    if-eqz p3, :cond_1

    sub-long p1, v2, p1

    .line 129
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/net/impl/CronetMetrics;->mTotalTimeMs:Ljava/lang/Long;

    return-void

    .line 131
    :cond_1
    iput-object v5, p0, Lorg/chromium/net/impl/CronetMetrics;->mTotalTimeMs:Ljava/lang/Long;

    return-void
.end method

.method private static checkOrder(JJ)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "start",
            "end"
        }
    .end annotation

    cmp-long v0, p2, p0

    const-wide/16 v1, -0x1

    if-ltz v0, :cond_0

    cmp-long p0, p0, v1

    if-nez p0, :cond_1

    :cond_0
    cmp-long p0, p2, v1

    if-nez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static empty()Lorg/chromium/net/impl/CronetMetrics;
    .locals 32

    .line 69
    new-instance v0, Lorg/chromium/net/impl/CronetMetrics;

    const-wide/16 v28, 0x0

    const-wide/16 v30, 0x0

    const-wide/16 v1, -0x1

    const-wide/16 v3, -0x1

    const-wide/16 v5, -0x1

    const-wide/16 v7, -0x1

    const-wide/16 v9, -0x1

    const-wide/16 v11, -0x1

    const-wide/16 v13, -0x1

    const-wide/16 v15, -0x1

    const-wide/16 v17, -0x1

    const-wide/16 v19, -0x1

    const-wide/16 v21, -0x1

    const-wide/16 v23, -0x1

    const-wide/16 v25, -0x1

    const/16 v27, 0x0

    invoke-direct/range {v0 .. v31}, Lorg/chromium/net/impl/CronetMetrics;-><init>(JJJJJJJJJJJJJZJJ)V

    return-object v0
.end method

.method static getDateDeltaMillisOrDefault(Ljava/util/Date;Ljava/util/Date;J)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "before",
            "after",
            "defaultValue"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long/2addr p1, v0

    return-wide p1

    :cond_1
    :goto_0
    return-wide p2
.end method

.method private static toDate(J)Ljava/util/Date;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timestamp"
        }
    .end annotation

    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    .line 46
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getConnectEnd()Ljava/util/Date;
    .locals 2

    .line 162
    iget-wide v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mConnectEndMs:J

    invoke-static {v0, v1}, Lorg/chromium/net/impl/CronetMetrics;->toDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getConnectStart()Ljava/util/Date;
    .locals 2

    .line 156
    iget-wide v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mConnectStartMs:J

    invoke-static {v0, v1}, Lorg/chromium/net/impl/CronetMetrics;->toDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getDnsEnd()Ljava/util/Date;
    .locals 2

    .line 150
    iget-wide v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mDnsEndMs:J

    invoke-static {v0, v1}, Lorg/chromium/net/impl/CronetMetrics;->toDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getDnsStart()Ljava/util/Date;
    .locals 2

    .line 144
    iget-wide v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mDnsStartMs:J

    invoke-static {v0, v1}, Lorg/chromium/net/impl/CronetMetrics;->toDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPushEnd()Ljava/util/Date;
    .locals 2

    .line 198
    iget-wide v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mPushEndMs:J

    invoke-static {v0, v1}, Lorg/chromium/net/impl/CronetMetrics;->toDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPushStart()Ljava/util/Date;
    .locals 2

    .line 192
    iget-wide v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mPushStartMs:J

    invoke-static {v0, v1}, Lorg/chromium/net/impl/CronetMetrics;->toDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getReceivedByteCount()Ljava/lang/Long;
    .locals 1

    .line 239
    iget-object v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mReceivedByteCount:Ljava/lang/Long;

    return-object v0
.end method

.method public getRequestEnd()Ljava/util/Date;
    .locals 2

    .line 210
    iget-wide v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mRequestEndMs:J

    invoke-static {v0, v1}, Lorg/chromium/net/impl/CronetMetrics;->toDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getRequestStart()Ljava/util/Date;
    .locals 2

    .line 138
    iget-wide v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mRequestStartMs:J

    invoke-static {v0, v1}, Lorg/chromium/net/impl/CronetMetrics;->toDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getResponseStart()Ljava/util/Date;
    .locals 2

    .line 204
    iget-wide v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mResponseStartMs:J

    invoke-static {v0, v1}, Lorg/chromium/net/impl/CronetMetrics;->toDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSendingEnd()Ljava/util/Date;
    .locals 2

    .line 186
    iget-wide v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mSendingEndMs:J

    invoke-static {v0, v1}, Lorg/chromium/net/impl/CronetMetrics;->toDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSendingStart()Ljava/util/Date;
    .locals 2

    .line 180
    iget-wide v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mSendingStartMs:J

    invoke-static {v0, v1}, Lorg/chromium/net/impl/CronetMetrics;->toDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSentByteCount()Ljava/lang/Long;
    .locals 1

    .line 233
    iget-object v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mSentByteCount:Ljava/lang/Long;

    return-object v0
.end method

.method public getSocketReused()Z
    .locals 1

    .line 215
    iget-boolean v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mSocketReused:Z

    return v0
.end method

.method public getSslEnd()Ljava/util/Date;
    .locals 2

    .line 174
    iget-wide v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mSslEndMs:J

    invoke-static {v0, v1}, Lorg/chromium/net/impl/CronetMetrics;->toDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSslStart()Ljava/util/Date;
    .locals 2

    .line 168
    iget-wide v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mSslStartMs:J

    invoke-static {v0, v1}, Lorg/chromium/net/impl/CronetMetrics;->toDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTotalTimeMs()Ljava/lang/Long;
    .locals 1

    .line 227
    iget-object v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mTotalTimeMs:Ljava/lang/Long;

    return-object v0
.end method

.method public getTtfbMs()Ljava/lang/Long;
    .locals 1

    .line 221
    iget-object v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mTtfbMs:Ljava/lang/Long;

    return-object v0
.end method
