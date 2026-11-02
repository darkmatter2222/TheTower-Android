.class public final Lads_mobile_sdk/lr3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/bt3;


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public d:J

.field public e:J

.field public f:J

.field public g:J

.field public h:J

.field public final i:Lads_mobile_sdk/tx;

.field public final j:J


# direct methods
.method public constructor <init>(Lads_mobile_sdk/tx;)V
    .locals 2

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 204
    iput-wide v0, p0, Lads_mobile_sdk/lr3;->a:J

    .line 205
    iput-wide v0, p0, Lads_mobile_sdk/lr3;->b:J

    .line 206
    iput-wide v0, p0, Lads_mobile_sdk/lr3;->c:J

    .line 207
    iput-wide v0, p0, Lads_mobile_sdk/lr3;->d:J

    .line 208
    iput-wide v0, p0, Lads_mobile_sdk/lr3;->e:J

    .line 209
    iput-wide v0, p0, Lads_mobile_sdk/lr3;->f:J

    .line 210
    iput-wide v0, p0, Lads_mobile_sdk/lr3;->g:J

    .line 211
    iput-wide v0, p0, Lads_mobile_sdk/lr3;->h:J

    .line 375
    iput-object p1, p0, Lads_mobile_sdk/lr3;->i:Lads_mobile_sdk/tx;

    .line 376
    invoke-virtual {p0}, Lads_mobile_sdk/lr3;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lads_mobile_sdk/lr3;->j:J

    return-void
.end method

.method public static a(Landroid/view/View;)Z
    .locals 6

    const/4 v0, 0x0

    .line 270
    :try_start_0
    invoke-static {p0}, Lads_mobile_sdk/lr3;->b(Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    .line 271
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getAdConfiguration"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 272
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "adType"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 274
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v2, "adTypeToString"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-virtual {p0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 275
    const-string v1, "INTERSTITIAL"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "APP_OPEN"

    .line 276
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "REWARDED"

    .line 277
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    return v3

    :catch_0
    return v0
.end method

.method public static b(Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 164
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DebugGestureViewWrapper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 124
    iget-object v0, p0, Lads_mobile_sdk/lr3;->i:Lads_mobile_sdk/tx;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final declared-synchronized a(Ljava/util/HashMap;)V
    .locals 2

    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lads_mobile_sdk/lr3;->a:J

    iput-wide v0, p0, Lads_mobile_sdk/lr3;->b:J

    .line 3
    invoke-virtual {p0}, Lads_mobile_sdk/lr3;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lads_mobile_sdk/lr3;->a:J

    .line 4
    invoke-virtual {p0, p1}, Lads_mobile_sdk/lr3;->c(Ljava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/util/HashMap;Landroid/content/Context;Landroid/view/View;)V
    .locals 5

    monitor-enter p0

    .line 6
    :try_start_0
    iget-wide v0, p0, Lads_mobile_sdk/lr3;->c:J

    iput-wide v0, p0, Lads_mobile_sdk/lr3;->d:J

    .line 7
    invoke-virtual {p0}, Lads_mobile_sdk/lr3;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lads_mobile_sdk/lr3;->c:J

    .line 9
    iget-wide v0, p0, Lads_mobile_sdk/lr3;->e:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 10
    iput-wide v0, p0, Lads_mobile_sdk/lr3;->f:J

    .line 11
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_1

    invoke-virtual {p2}, Landroid/content/Context;->isUiContext()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 16
    :cond_1
    const-string v0, "window"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    if-nez p2, :cond_2

    :goto_0
    const/4 p2, 0x0

    goto :goto_2

    .line 20
    :cond_2
    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    .line 22
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :try_start_1
    invoke-virtual {p2, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 26
    :catch_0
    :try_start_2
    invoke-virtual {p2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    :goto_1
    move-object p2, v0

    :goto_2
    if-nez p2, :cond_3

    goto :goto_4

    .line 27
    :cond_3
    iget v0, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v0, v1

    if-nez p3, :cond_4

    goto :goto_4

    .line 34
    :cond_4
    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p3}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/4 v4, 0x0

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_5

    goto :goto_4

    .line 37
    :cond_5
    invoke-virtual {p3}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 38
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 39
    invoke-virtual {p3, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_4

    .line 45
    :cond_6
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v4, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 46
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v4

    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    mul-int/2addr p2, v1

    mul-int/lit8 v1, p2, 0x2

    if-lt v1, v0, :cond_7

    goto :goto_3

    :cond_7
    if-nez p2, :cond_8

    .line 56
    invoke-static {p3}, Lads_mobile_sdk/lr3;->a(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 57
    :goto_3
    iget-wide p2, p0, Lads_mobile_sdk/lr3;->c:J

    iput-wide p2, p0, Lads_mobile_sdk/lr3;->e:J

    goto :goto_5

    .line 59
    :cond_8
    :goto_4
    iput-wide v2, p0, Lads_mobile_sdk/lr3;->e:J

    .line 60
    :goto_5
    invoke-virtual {p0, p1}, Lads_mobile_sdk/lr3;->c(Ljava/util/HashMap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final declared-synchronized b(Ljava/util/HashMap;)V
    .locals 2

    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lads_mobile_sdk/lr3;->g:J

    iput-wide v0, p0, Lads_mobile_sdk/lr3;->h:J

    .line 3
    invoke-virtual {p0}, Lads_mobile_sdk/lr3;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lads_mobile_sdk/lr3;->g:J

    .line 4
    invoke-virtual {p0, p1}, Lads_mobile_sdk/lr3;->c(Ljava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final c(Ljava/util/HashMap;)V
    .locals 2

    .line 2
    iget-wide v0, p0, Lads_mobile_sdk/lr3;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "tcq"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-wide v0, p0, Lads_mobile_sdk/lr3;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "tpq"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-wide v0, p0, Lads_mobile_sdk/lr3;->g:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "tcc"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-wide v0, p0, Lads_mobile_sdk/lr3;->h:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "tpc"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-wide v0, p0, Lads_mobile_sdk/lr3;->d:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "tpv"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-wide v0, p0, Lads_mobile_sdk/lr3;->c:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "tcv"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-wide v0, p0, Lads_mobile_sdk/lr3;->e:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "tchv"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-wide v0, p0, Lads_mobile_sdk/lr3;->f:J

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 11
    const-string v1, "tphv"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-wide v0, p0, Lads_mobile_sdk/lr3;->j:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "tst"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
