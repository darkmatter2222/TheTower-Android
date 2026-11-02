.class public final Landroidx/webkit/BackForwardCacheSettings$Builder;
.super Ljava/lang/Object;
.source "BackForwardCacheSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/webkit/BackForwardCacheSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mMaxPagesInCache:I

.field private mTimeoutInSeconds:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x258

    .line 67
    iput-wide v0, p0, Landroidx/webkit/BackForwardCacheSettings$Builder;->mTimeoutInSeconds:J

    const/4 v0, 0x6

    .line 68
    iput v0, p0, Landroidx/webkit/BackForwardCacheSettings$Builder;->mMaxPagesInCache:I

    return-void
.end method


# virtual methods
.method public build()Landroidx/webkit/BackForwardCacheSettings;
    .locals 5

    .line 101
    new-instance v0, Landroidx/webkit/BackForwardCacheSettings;

    iget-wide v1, p0, Landroidx/webkit/BackForwardCacheSettings$Builder;->mTimeoutInSeconds:J

    iget v3, p0, Landroidx/webkit/BackForwardCacheSettings$Builder;->mMaxPagesInCache:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/webkit/BackForwardCacheSettings;-><init>(JILandroidx/webkit/BackForwardCacheSettings$1;)V

    return-object v0
.end method

.method public setMaxPagesInCache(I)Landroidx/webkit/BackForwardCacheSettings$Builder;
    .locals 0

    .line 90
    iput p1, p0, Landroidx/webkit/BackForwardCacheSettings$Builder;->mMaxPagesInCache:I

    return-object p0
.end method

.method public setTimeoutSeconds(J)Landroidx/webkit/BackForwardCacheSettings$Builder;
    .locals 0

    .line 78
    iput-wide p1, p0, Landroidx/webkit/BackForwardCacheSettings$Builder;->mTimeoutInSeconds:J

    return-object p0
.end method
