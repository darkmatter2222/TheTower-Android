.class public abstract Lads_mobile_sdk/sd2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Landroid/content/Context;

.field public static volatile b:I


# direct methods
.method public static a()I
    .locals 5

    .line 1
    sget v0, Lads_mobile_sdk/sd2;->b:I

    const/4 v1, 0x3

    if-nez v0, :cond_4

    sget-object v0, Lads_mobile_sdk/sd2;->a:Landroid/content/Context;

    if-eqz v0, :cond_4

    .line 2
    const-class v0, Lads_mobile_sdk/sd2;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v2, Lads_mobile_sdk/sd2;->a:Landroid/content/Context;

    if-eqz v2, :cond_3

    sget v2, Lads_mobile_sdk/sd2;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    :try_start_1
    sget-object v2, Lads_mobile_sdk/sd2;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v4, 0x4

    if-eq v2, v4, :cond_2

    move v3, v1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    .line 8
    :cond_2
    :goto_0
    sput v3, Lads_mobile_sdk/sd2;->b:I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :catch_0
    monitor-exit v0

    goto :goto_2

    .line 10
    :cond_3
    :goto_1
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 11
    monitor-exit v0

    throw v1

    .line 13
    :cond_4
    :goto_2
    sget v0, Lads_mobile_sdk/sd2;->b:I

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    sget v1, Lads_mobile_sdk/sd2;->b:I

    :goto_3
    return v1
.end method
