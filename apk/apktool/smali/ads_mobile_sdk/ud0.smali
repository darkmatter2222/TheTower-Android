.class public abstract Lads_mobile_sdk/ud0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I)Ljava/util/LinkedHashMap;
    .locals 2

    .line 132
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x3

    if-ge p0, v1, :cond_0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    if-ge p0, v1, :cond_1

    int-to-float p0, p0

    const/high16 v1, 0x3f400000    # 0.75f

    div-float/2addr p0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr p0, v1

    float-to-int p0, p0

    goto :goto_0

    :cond_1
    const p0, 0x7fffffff

    .line 133
    :goto_0
    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(I)V

    return-object v0
.end method

.method public static a(Ljava/util/List;)Z
    .locals 3

    .line 54
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    .line 57
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 58
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-eq p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v2
.end method

.method public static b(I)Ljava/util/List;
    .locals 1

    if-nez p0, :cond_0

    .line 47
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 49
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method
