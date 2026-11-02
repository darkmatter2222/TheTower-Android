.class abstract Lcom/unity3d/player/SoftInputProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()I
    .locals 10

    .line 61
    invoke-static {}, Lcom/unity3d/player/SoftInputProvider;->nativeGetSoftInputType()I

    move-result v0

    const/4 v1, 0x4

    .line 7
    invoke-static {v1}, Lcom/unity3d/player/a/k;->b(I)[I

    move-result-object v2

    .line 28
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v3, :cond_5

    aget v7, v2, v5

    if-eq v7, v6, :cond_2

    const/4 v8, 0x2

    if-eq v7, v8, :cond_1

    const/4 v9, 0x3

    if-eq v7, v9, :cond_3

    if-ne v7, v1, :cond_0

    move v6, v8

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 30
    throw v0

    :cond_1
    move v6, v4

    goto :goto_1

    :cond_2
    const/4 v6, -0x1

    :cond_3
    :goto_1
    if-ne v6, v0, :cond_4

    return v7

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    return v6
.end method

.method private static final native nativeGetSoftInputType()I
.end method
