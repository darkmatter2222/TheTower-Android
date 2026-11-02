.class public final Lads_mobile_sdk/ni;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lads_mobile_sdk/tx;

.field public final c:Lads_mobile_sdk/g30;

.field public final d:Lads_mobile_sdk/uv;

.field public final e:Lads_mobile_sdk/ex0;

.field public final f:Lads_mobile_sdk/ao0;

.field public final g:Lads_mobile_sdk/zw3;

.field public final h:Lads_mobile_sdk/qn;

.field public final i:Lads_mobile_sdk/cn0;

.field public final j:Lads_mobile_sdk/e11;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lads_mobile_sdk/ja1;Ljava/lang/String;Ljava/lang/String;Lads_mobile_sdk/tx;Lads_mobile_sdk/g30;Lads_mobile_sdk/uv;Lads_mobile_sdk/ex0;Lads_mobile_sdk/ao0;Lads_mobile_sdk/zw3;Lads_mobile_sdk/qn;Lads_mobile_sdk/cn0;)V
    .locals 1

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initializationConfigWrapper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "afmaVersionString"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gmaVersion"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consentManager"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chromeVariationsProvider"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "displayUtil"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userAgentProvider"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appState"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceTierManager"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lads_mobile_sdk/ni;->a:Landroid/content/Context;

    .line 50
    iput-object p5, p0, Lads_mobile_sdk/ni;->b:Lads_mobile_sdk/tx;

    .line 51
    iput-object p6, p0, Lads_mobile_sdk/ni;->c:Lads_mobile_sdk/g30;

    .line 52
    iput-object p7, p0, Lads_mobile_sdk/ni;->d:Lads_mobile_sdk/uv;

    .line 53
    iput-object p8, p0, Lads_mobile_sdk/ni;->e:Lads_mobile_sdk/ex0;

    .line 54
    iput-object p9, p0, Lads_mobile_sdk/ni;->f:Lads_mobile_sdk/ao0;

    .line 55
    iput-object p10, p0, Lads_mobile_sdk/ni;->g:Lads_mobile_sdk/zw3;

    .line 56
    iput-object p11, p0, Lads_mobile_sdk/ni;->h:Lads_mobile_sdk/qn;

    .line 57
    iput-object p12, p0, Lads_mobile_sdk/ni;->i:Lads_mobile_sdk/cn0;

    .line 60
    invoke-virtual {p0}, Lads_mobile_sdk/ni;->a()Landroid/graphics/Rect;

    move-result-object p5

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p6

    const-string p7, ""

    if-eqz p6, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p8

    const/16 p9, 0x80

    invoke-virtual {p6, p8, p9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p6

    if-eqz p6, :cond_0

    iget-object p6, p6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez p6, :cond_1

    :cond_0
    move-object p6, p7

    .line 192
    :cond_1
    invoke-static {}, Lads_mobile_sdk/e11;->w()Lads_mobile_sdk/b11;

    move-result-object p8

    const-string p9, "newBuilder(...)"

    invoke-static {p8, p9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p8}, Lads_mobile_sdk/f11;->a(Lads_mobile_sdk/b11;)Lads_mobile_sdk/g11;

    move-result-object p8

    .line 193
    invoke-virtual {p8}, Lads_mobile_sdk/g11;->b()V

    .line 194
    invoke-virtual {p8}, Lads_mobile_sdk/g11;->c()V

    .line 195
    sget-object p9, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string p10, "RELEASE"

    invoke-static {p9, p10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p8, p9}, Lads_mobile_sdk/g11;->g(Ljava/lang/String;)V

    .line 196
    sget-object p9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string p10, "MODEL"

    invoke-static {p9, p10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p8, p9}, Lads_mobile_sdk/g11;->f(Ljava/lang/String;)V

    .line 197
    sget p9, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p8, p9}, Lads_mobile_sdk/g11;->c(I)V

    .line 198
    invoke-virtual {p8, p4}, Lads_mobile_sdk/g11;->h(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p8, p3}, Lads_mobile_sdk/g11;->a(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string p3, "getPackageName(...)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p8, p1}, Lads_mobile_sdk/g11;->c(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p8, p6}, Lads_mobile_sdk/g11;->d(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p2}, Lads_mobile_sdk/ja1;->a()Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;->getApplicationId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move-object p7, p1

    :cond_3
    :goto_0
    invoke-virtual {p8, p7}, Lads_mobile_sdk/g11;->b(Ljava/lang/String;)V

    .line 203
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    const-string p2, "getCountry(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p8, p1}, Lads_mobile_sdk/g11;->e(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p8, p1}, Lads_mobile_sdk/g11;->b(I)V

    .line 205
    invoke-virtual {p5}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p8, p1}, Lads_mobile_sdk/g11;->a(I)V

    .line 319
    invoke-virtual {p8}, Lads_mobile_sdk/g11;->a()Lads_mobile_sdk/e11;

    move-result-object p1

    .line 320
    iput-object p1, p0, Lads_mobile_sdk/ni;->j:Lads_mobile_sdk/e11;

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Rect;
    .locals 3

    .line 15231
    iget-object v0, p0, Lads_mobile_sdk/ni;->f:Lads_mobile_sdk/ao0;

    iget-object v1, p0, Lads_mobile_sdk/ni;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lads_mobile_sdk/ao0;->b(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v0

    .line 15233
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    .line 15234
    invoke-interface {v0}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    .line 15236
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    move-object v0, v1

    .line 15237
    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    instance-of v2, v0, Lads_mobile_sdk/mi;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/mi;

    iget v3, v2, Lads_mobile_sdk/mi;->k:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/mi;->k:I

    goto :goto_0

    :cond_0
    new-instance v2, Lads_mobile_sdk/mi;

    invoke-direct {v2, v1, v0}, Lads_mobile_sdk/mi;-><init>(Lads_mobile_sdk/ni;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v2, Lads_mobile_sdk/mi;->i:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 82
    iget v4, v2, Lads_mobile_sdk/mi;->k:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v3, v2, Lads_mobile_sdk/mi;->e:Ljava/lang/Object;

    check-cast v3, Lads_mobile_sdk/g11;

    iget-object v4, v2, Lads_mobile_sdk/mi;->d:Ljava/lang/Object;

    check-cast v4, Lads_mobile_sdk/g11;

    iget-object v5, v2, Lads_mobile_sdk/mi;->c:Ljava/lang/Object;

    check-cast v5, Lads_mobile_sdk/ks3;

    iget-object v8, v2, Lads_mobile_sdk/mi;->b:Ljava/lang/Object;

    check-cast v8, Lads_mobile_sdk/rr3;

    iget-object v2, v2, Lads_mobile_sdk/mi;->a:Lads_mobile_sdk/ni;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v14, v2

    move-object v6, v7

    move-object v2, v0

    goto/16 :goto_8

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v4, v2, Lads_mobile_sdk/mi;->h:Lads_mobile_sdk/g11;

    iget-object v8, v2, Lads_mobile_sdk/mi;->g:Lads_mobile_sdk/g11;

    iget-object v9, v2, Lads_mobile_sdk/mi;->f:Lads_mobile_sdk/g11;

    iget-object v10, v2, Lads_mobile_sdk/mi;->e:Ljava/lang/Object;

    check-cast v10, Lads_mobile_sdk/ks3;

    iget-object v11, v2, Lads_mobile_sdk/mi;->d:Ljava/lang/Object;

    check-cast v11, Lads_mobile_sdk/rr3;

    iget-object v12, v2, Lads_mobile_sdk/mi;->c:Ljava/lang/Object;

    check-cast v12, Lads_mobile_sdk/lv;

    iget-object v13, v2, Lads_mobile_sdk/mi;->b:Ljava/lang/Object;

    check-cast v13, Landroid/app/ActivityManager$MemoryInfo;

    iget-object v14, v2, Lads_mobile_sdk/mi;->a:Lads_mobile_sdk/ni;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 83
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v4, "getThread(...)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    const-string v0, "getStackTrace(...)"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "\n"

    const/16 v15, 0x3e

    const/16 v16, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v8 .. v16}, Lkotlin/collections/ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 85
    :try_start_0
    const-string v4, "SHA-256"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 86
    sget-object v8, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    const-string v9, "getBytes(...)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/security/MessageDigest;->update([B)V

    .line 87
    sget-object v8, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "%032X"

    new-instance v10, Ljava/math/BigInteger;

    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    invoke-direct {v10, v6, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v8, v9, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "format(...)"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object v4, v7

    :goto_1
    if-nez v4, :cond_4

    .line 88
    const-string v4, ""

    .line 89
    :cond_4
    iget-object v8, v1, Lads_mobile_sdk/ni;->a:Landroid/content/Context;

    const-string v9, "activity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "null cannot be cast to non-null type android.app.ActivityManager"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroid/app/ActivityManager;

    .line 90
    new-instance v13, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v13}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {v8, v13}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 91
    iget-object v8, v1, Lads_mobile_sdk/ni;->d:Lads_mobile_sdk/uv;

    .line 92
    iget-object v9, v8, Lads_mobile_sdk/uv;->j:Lads_mobile_sdk/mv;

    if-nez v9, :cond_5

    .line 94
    iget-object v14, v8, Lads_mobile_sdk/uv;->c:Lkotlinx/coroutines/CoroutineScope;

    new-instance v10, Lads_mobile_sdk/sv;

    invoke-direct {v10, v8, v7}, Lads_mobile_sdk/sv;-><init>(Lads_mobile_sdk/uv;Lkotlin/coroutines/Continuation;)V

    const/16 v18, 0x3

    const/16 v19, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v17, v10

    invoke-static/range {v14 .. v19}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_5
    if-eqz v9, :cond_6

    .line 95
    iget-object v8, v9, Lads_mobile_sdk/mv;->b:Lads_mobile_sdk/lv;

    move-object v12, v8

    goto :goto_2

    :cond_6
    move-object v12, v7

    .line 96
    :goto_2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v8

    const-string v9, "getThread(...)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    sget-object v9, Lads_mobile_sdk/hs3;->a:Ljava/util/WeakHashMap;

    .line 98
    const-string v9, "thread"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    sget-object v9, Lads_mobile_sdk/hs3;->a:Ljava/util/WeakHashMap;

    monitor-enter v9

    :try_start_1
    invoke-virtual {v9, v8}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lads_mobile_sdk/gs3;

    if-eqz v8, :cond_7

    .line 157
    iget-object v8, v8, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :cond_7
    move-object v8, v7

    .line 158
    :goto_3
    monitor-exit v9

    if-eqz v8, :cond_8

    .line 159
    iget-object v9, v8, Lads_mobile_sdk/rr3;->a:Lads_mobile_sdk/ks3;

    goto :goto_4

    :cond_8
    move-object v9, v7

    .line 160
    :goto_4
    iget-object v10, v1, Lads_mobile_sdk/ni;->j:Lads_mobile_sdk/e11;

    .line 259
    invoke-virtual {v10}, Lads_mobile_sdk/vz0;->u()Lads_mobile_sdk/vz0$a;

    move-result-object v10

    const-string v11, "toBuilder(...)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Lads_mobile_sdk/b11;

    .line 260
    const-string v11, "builder"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    new-instance v11, Lads_mobile_sdk/g11;

    .line 291
    invoke-direct {v11, v10}, Lads_mobile_sdk/g11;-><init>(Lads_mobile_sdk/b11;)V

    .line 292
    iget-object v14, v1, Lads_mobile_sdk/ni;->b:Lads_mobile_sdk/tx;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 294
    invoke-virtual {v10, v14, v15}, Lads_mobile_sdk/b11;->e(J)V

    .line 295
    const-string v14, "value"

    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 425
    invoke-virtual {v10, v0}, Lads_mobile_sdk/b11;->v(Ljava/lang/String;)V

    .line 426
    const-string v0, "value"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1186
    invoke-virtual {v10, v4}, Lads_mobile_sdk/b11;->u(Ljava/lang/String;)V

    .line 1187
    iget-object v0, v1, Lads_mobile_sdk/ni;->e:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1188
    const-string v4, "gads:system_health:anr_watchdog:sample_rate"

    .line 1189
    const-string v14, "key"

    invoke-static {v4, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide v14, 0x3fa999999999999aL    # 0.05

    .line 1208
    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    sget-object v15, Lads_mobile_sdk/yr;->c:Lads_mobile_sdk/kr;

    invoke-virtual {v0, v4, v14, v15}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmpl-double v0, v14, v16

    if-lez v0, :cond_9

    move-object v0, v8

    int-to-double v7, v6

    div-double/2addr v7, v14

    double-to-long v7, v7

    goto :goto_5

    :cond_9
    move-object v0, v8

    const-wide/16 v7, 0x0

    .line 1209
    :goto_5
    invoke-virtual {v10, v7, v8}, Lads_mobile_sdk/b11;->c(J)V

    .line 1210
    iget-object v4, v1, Lads_mobile_sdk/ni;->c:Lads_mobile_sdk/g30;

    iput-object v1, v2, Lads_mobile_sdk/mi;->a:Lads_mobile_sdk/ni;

    iput-object v13, v2, Lads_mobile_sdk/mi;->b:Ljava/lang/Object;

    iput-object v12, v2, Lads_mobile_sdk/mi;->c:Ljava/lang/Object;

    iput-object v0, v2, Lads_mobile_sdk/mi;->d:Ljava/lang/Object;

    iput-object v9, v2, Lads_mobile_sdk/mi;->e:Ljava/lang/Object;

    iput-object v11, v2, Lads_mobile_sdk/mi;->f:Lads_mobile_sdk/g11;

    iput-object v11, v2, Lads_mobile_sdk/mi;->g:Lads_mobile_sdk/g11;

    iput-object v11, v2, Lads_mobile_sdk/mi;->h:Lads_mobile_sdk/g11;

    iput v6, v2, Lads_mobile_sdk/mi;->k:I

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1211
    invoke-static {v4, v2}, Lads_mobile_sdk/g30;->i(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_a

    goto/16 :goto_7

    :cond_a
    move-object v14, v1

    move-object v10, v9

    move-object v8, v11

    move-object v9, v8

    move-object v11, v0

    move-object v0, v4

    move-object v4, v9

    .line 1212
    :goto_6
    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_b

    const-string v0, ""

    :cond_b
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1213
    const-string v7, "value"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1820
    iget-object v4, v4, Lads_mobile_sdk/g11;->a:Lads_mobile_sdk/b11;

    invoke-virtual {v4, v0}, Lads_mobile_sdk/b11;->t(Ljava/lang/String;)V

    .line 1821
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 1822
    iget-object v4, v8, Lads_mobile_sdk/g11;->a:Lads_mobile_sdk/b11;

    .line 1823
    invoke-virtual {v4, v0}, Lads_mobile_sdk/b11;->f(I)V

    .line 1824
    iget-wide v6, v13, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    .line 1825
    iget-object v4, v8, Lads_mobile_sdk/g11;->a:Lads_mobile_sdk/b11;

    invoke-virtual {v4, v6, v7}, Lads_mobile_sdk/b11;->f(J)V

    .line 1826
    iget-wide v6, v13, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 1827
    iget-object v4, v8, Lads_mobile_sdk/g11;->a:Lads_mobile_sdk/b11;

    invoke-virtual {v4, v6, v7}, Lads_mobile_sdk/b11;->a(J)V

    .line 1828
    iget-wide v6, v13, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    .line 1829
    iget-object v4, v8, Lads_mobile_sdk/g11;->a:Lads_mobile_sdk/b11;

    invoke-virtual {v4, v6, v7}, Lads_mobile_sdk/b11;->d(J)V

    .line 1830
    iget-boolean v4, v13, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    .line 1831
    iget-object v6, v8, Lads_mobile_sdk/g11;->a:Lads_mobile_sdk/b11;

    invoke-virtual {v6, v4}, Lads_mobile_sdk/b11;->a(Z)V

    if-nez v12, :cond_c

    .line 1832
    invoke-static {}, Lads_mobile_sdk/lv;->v()Lads_mobile_sdk/kv;

    move-result-object v4

    const-string v6, "newBuilder(...)"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1833
    const-string v6, "builder"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1834
    invoke-virtual {v4}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v4

    const-string v6, "build(...)"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v4

    check-cast v12, Lads_mobile_sdk/lv;

    .line 1835
    :cond_c
    const-string v4, "value"

    invoke-static {v12, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2639
    iget-object v4, v8, Lads_mobile_sdk/g11;->a:Lads_mobile_sdk/b11;

    invoke-virtual {v4, v12}, Lads_mobile_sdk/b11;->a(Lads_mobile_sdk/lv;)V

    .line 2640
    iget-object v4, v14, Lads_mobile_sdk/ni;->g:Lads_mobile_sdk/zw3;

    iput-object v14, v2, Lads_mobile_sdk/mi;->a:Lads_mobile_sdk/ni;

    iput-object v11, v2, Lads_mobile_sdk/mi;->b:Ljava/lang/Object;

    iput-object v10, v2, Lads_mobile_sdk/mi;->c:Ljava/lang/Object;

    iput-object v9, v2, Lads_mobile_sdk/mi;->d:Ljava/lang/Object;

    iput-object v8, v2, Lads_mobile_sdk/mi;->e:Ljava/lang/Object;

    const/4 v6, 0x0

    iput-object v6, v2, Lads_mobile_sdk/mi;->f:Lads_mobile_sdk/g11;

    iput-object v6, v2, Lads_mobile_sdk/mi;->g:Lads_mobile_sdk/g11;

    iput-object v6, v2, Lads_mobile_sdk/mi;->h:Lads_mobile_sdk/g11;

    iput v5, v2, Lads_mobile_sdk/mi;->k:I

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2641
    invoke-static {v4, v2}, Lads_mobile_sdk/zw3;->a(Lads_mobile_sdk/zw3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_d

    :goto_7
    return-object v3

    :cond_d
    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    move-object v8, v11

    .line 2642
    :goto_8
    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_e

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2643
    const-string v7, "value"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2848
    iget-object v7, v3, Lads_mobile_sdk/g11;->a:Lads_mobile_sdk/b11;

    invoke-virtual {v7, v2}, Lads_mobile_sdk/b11;->y(Ljava/lang/String;)V

    .line 2849
    :cond_e
    new-instance v2, Lads_mobile_sdk/lo0;

    .line 2850
    iget-object v7, v3, Lads_mobile_sdk/g11;->a:Lads_mobile_sdk/b11;

    .line 2851
    invoke-virtual {v7}, Lads_mobile_sdk/b11;->j()Ljava/util/List;

    move-result-object v7

    const-string v9, "getExperimentIdList(...)"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2852
    invoke-direct {v2, v7}, Lads_mobile_sdk/lo0;-><init>(Ljava/util/List;)V

    .line 2853
    iget-object v7, v14, Lads_mobile_sdk/ni;->e:Lads_mobile_sdk/ex0;

    .line 2854
    iget-object v7, v7, Lads_mobile_sdk/ex0;->s:Lads_mobile_sdk/eb3;

    .line 2855
    invoke-virtual {v7}, Lads_mobile_sdk/eb3;->c()Ljava/lang/String;

    move-result-object v15

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v9, ","

    aput-object v9, v0, v7

    const/16 v19, 0x6

    const/16 v20, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v20}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2944
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2953
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 2954
    check-cast v9, Ljava/lang/String;

    .line 2955
    invoke-static {v9}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    if-eqz v9, :cond_f

    .line 3052
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 3053
    :cond_10
    const-string v0, "<this>"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3543
    iget-object v0, v3, Lads_mobile_sdk/g11;->a:Lads_mobile_sdk/b11;

    invoke-virtual {v0, v7}, Lads_mobile_sdk/b11;->b(Ljava/util/ArrayList;)V

    .line 3544
    iget-object v0, v14, Lads_mobile_sdk/ni;->h:Lads_mobile_sdk/qn;

    .line 3545
    iget-object v0, v0, Lads_mobile_sdk/qn;->a:Lads_mobile_sdk/qs1;

    .line 3546
    check-cast v0, Lads_mobile_sdk/rs1;

    .line 3547
    iget v0, v0, Lads_mobile_sdk/rs1;->c:I

    .line 3548
    iget-object v2, v3, Lads_mobile_sdk/g11;->a:Lads_mobile_sdk/b11;

    invoke-virtual {v2, v0}, Lads_mobile_sdk/b11;->c(I)V

    .line 3549
    iget-object v0, v14, Lads_mobile_sdk/ni;->h:Lads_mobile_sdk/qn;

    .line 3550
    iget-object v0, v0, Lads_mobile_sdk/qn;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3581
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v7

    invoke-static {v7}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v7

    invoke-direct {v2, v7}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 3582
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 3583
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 3584
    check-cast v7, Ljava/util/Map$Entry;

    .line 3585
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    .line 3586
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 3620
    invoke-interface {v2, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 3623
    :cond_11
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3624
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 3625
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    if-lez v9, :cond_12

    .line 3626
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v9, v7}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 3627
    :cond_13
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lads_mobile_sdk/j53;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 3628
    new-instance v9, Lads_mobile_sdk/lo0;

    .line 3629
    iget-object v10, v3, Lads_mobile_sdk/g11;->a:Lads_mobile_sdk/b11;

    invoke-virtual {v10}, Lads_mobile_sdk/b11;->k()Ljava/util/List;

    move-result-object v10

    const-string v11, "getLoadedAdsStatsList(...)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3630
    invoke-direct {v9, v10}, Lads_mobile_sdk/lo0;-><init>(Ljava/util/List;)V

    .line 3631
    invoke-static {}, Lads_mobile_sdk/a11;->v()Lads_mobile_sdk/z01;

    move-result-object v10

    const-string v11, "newBuilder(...)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3632
    const-string v11, "builder"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3633
    invoke-static {v7}, Lads_mobile_sdk/k53;->a(Lads_mobile_sdk/j53;)Lads_mobile_sdk/nt1;

    move-result-object v7

    .line 3634
    const-string v11, "value"

    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5003
    invoke-virtual {v10, v7}, Lads_mobile_sdk/z01;->a(Lads_mobile_sdk/nt1;)V

    .line 5004
    invoke-virtual {v10, v2}, Lads_mobile_sdk/z01;->a(I)V

    .line 5005
    invoke-virtual {v10}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v2

    const-string v7, "build(...)"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lads_mobile_sdk/a11;

    .line 5006
    const-string v7, "<this>"

    invoke-static {v9, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "value"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5901
    iget-object v7, v3, Lads_mobile_sdk/g11;->a:Lads_mobile_sdk/b11;

    invoke-virtual {v7, v2}, Lads_mobile_sdk/b11;->a(Lads_mobile_sdk/a11;)V

    goto :goto_c

    .line 5902
    :cond_14
    iget-object v0, v14, Lads_mobile_sdk/ni;->h:Lads_mobile_sdk/qn;

    .line 5903
    iget-object v0, v0, Lads_mobile_sdk/qn;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 5942
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v7

    invoke-static {v7}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v7

    invoke-direct {v2, v7}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 5943
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 5944
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 5945
    check-cast v7, Ljava/util/Map$Entry;

    .line 5946
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    .line 5947
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 5989
    invoke-interface {v2, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 5992
    :cond_15
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 5993
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_16
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 5994
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    if-lez v9, :cond_16

    .line 5995
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v9, v7}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    .line 5996
    :cond_17
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lads_mobile_sdk/j53;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 5997
    new-instance v9, Lads_mobile_sdk/lo0;

    .line 5998
    iget-object v10, v3, Lads_mobile_sdk/g11;->a:Lads_mobile_sdk/b11;

    invoke-virtual {v10}, Lads_mobile_sdk/b11;->l()Ljava/util/List;

    move-result-object v10

    const-string v11, "getShowingAdsStatsList(...)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5999
    invoke-direct {v9, v10}, Lads_mobile_sdk/lo0;-><init>(Ljava/util/List;)V

    .line 6000
    invoke-static {}, Lads_mobile_sdk/a11;->v()Lads_mobile_sdk/z01;

    move-result-object v10

    const-string v11, "newBuilder(...)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6001
    const-string v11, "builder"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6002
    invoke-static {v7}, Lads_mobile_sdk/k53;->a(Lads_mobile_sdk/j53;)Lads_mobile_sdk/nt1;

    move-result-object v7

    .line 6003
    const-string v11, "value"

    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7372
    invoke-virtual {v10, v7}, Lads_mobile_sdk/z01;->a(Lads_mobile_sdk/nt1;)V

    .line 7373
    invoke-virtual {v10, v2}, Lads_mobile_sdk/z01;->a(I)V

    .line 7374
    invoke-virtual {v10}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v2

    const-string v7, "build(...)"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lads_mobile_sdk/a11;

    .line 7375
    const-string v7, "<this>"

    invoke-static {v9, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "value"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8341
    iget-object v7, v3, Lads_mobile_sdk/g11;->a:Lads_mobile_sdk/b11;

    invoke-virtual {v7, v2}, Lads_mobile_sdk/b11;->b(Lads_mobile_sdk/a11;)V

    goto :goto_f

    .line 8342
    :cond_18
    iget-object v0, v14, Lads_mobile_sdk/ni;->i:Lads_mobile_sdk/cn0;

    .line 8343
    iget-object v0, v0, Lads_mobile_sdk/cn0;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 8344
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v2, "get(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lads_mobile_sdk/mm0;

    .line 8345
    const-string v2, "value"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9369
    iget-object v2, v3, Lads_mobile_sdk/g11;->a:Lads_mobile_sdk/b11;

    invoke-virtual {v2, v0}, Lads_mobile_sdk/b11;->a(Lads_mobile_sdk/mm0;)V

    .line 9370
    iget-object v0, v14, Lads_mobile_sdk/ni;->i:Lads_mobile_sdk/cn0;

    .line 9371
    iget-object v0, v0, Lads_mobile_sdk/cn0;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 9372
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v9

    .line 9373
    iget-object v0, v3, Lads_mobile_sdk/g11;->a:Lads_mobile_sdk/b11;

    invoke-virtual {v0, v9, v10}, Lads_mobile_sdk/b11;->b(J)V

    .line 9374
    iget-object v0, v14, Lads_mobile_sdk/ni;->i:Lads_mobile_sdk/cn0;

    .line 9375
    iget-object v0, v0, Lads_mobile_sdk/cn0;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 9376
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v2, "get(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lads_mobile_sdk/om0;

    .line 9377
    const-string v2, "value"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10425
    iget-object v2, v3, Lads_mobile_sdk/g11;->a:Lads_mobile_sdk/b11;

    invoke-virtual {v2, v0}, Lads_mobile_sdk/b11;->a(Lads_mobile_sdk/om0;)V

    .line 10426
    iget-object v0, v14, Lads_mobile_sdk/ni;->i:Lads_mobile_sdk/cn0;

    invoke-virtual {v0}, Lads_mobile_sdk/cn0;->a()Lads_mobile_sdk/nm0;

    move-result-object v0

    .line 10427
    const-string v2, "value"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11625
    iget-object v2, v3, Lads_mobile_sdk/g11;->a:Lads_mobile_sdk/b11;

    invoke-virtual {v2, v0}, Lads_mobile_sdk/b11;->a(Lads_mobile_sdk/nm0;)V

    if-eqz v8, :cond_19

    .line 11626
    invoke-virtual {v8}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, v0, Lads_mobile_sdk/uj2;->c:Lads_mobile_sdk/s11;

    if-eqz v0, :cond_19

    .line 11627
    invoke-virtual {v0}, Lads_mobile_sdk/s11;->getNumber()I

    move-result v0

    invoke-static {v0}, Lads_mobile_sdk/mt1;->a(I)Lads_mobile_sdk/mt1;

    move-result-object v7

    if-nez v7, :cond_1a

    .line 11628
    sget-object v7, Lads_mobile_sdk/mt1;->b:Lads_mobile_sdk/mt1;

    goto :goto_10

    :cond_19
    move-object v7, v6

    :cond_1a
    :goto_10
    if-eqz v7, :cond_1b

    .line 11629
    const-string v0, "value"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12701
    iget-object v0, v3, Lads_mobile_sdk/g11;->a:Lads_mobile_sdk/b11;

    invoke-virtual {v0, v7}, Lads_mobile_sdk/b11;->a(Lads_mobile_sdk/mt1;)V

    .line 12702
    :cond_1b
    new-instance v0, Lads_mobile_sdk/lo0;

    .line 12703
    iget-object v2, v3, Lads_mobile_sdk/g11;->a:Lads_mobile_sdk/b11;

    invoke-virtual {v2}, Lads_mobile_sdk/b11;->i()Ljava/util/List;

    move-result-object v2

    const-string v6, "getActiveCuiStackList(...)"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12704
    invoke-direct {v0, v2}, Lads_mobile_sdk/lo0;-><init>(Ljava/util/List;)V

    .line 12705
    const-string v2, "<this>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13859
    iget-object v0, v3, Lads_mobile_sdk/g11;->a:Lads_mobile_sdk/b11;

    invoke-virtual {v0}, Lads_mobile_sdk/b11;->h()V

    .line 13860
    new-instance v0, Lads_mobile_sdk/lo0;

    .line 13861
    iget-object v2, v3, Lads_mobile_sdk/g11;->a:Lads_mobile_sdk/b11;

    invoke-virtual {v2}, Lads_mobile_sdk/b11;->i()Ljava/util/List;

    move-result-object v2

    const-string v6, "getActiveCuiStackList(...)"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13862
    invoke-direct {v0, v2}, Lads_mobile_sdk/lo0;-><init>(Ljava/util/List;)V

    .line 13863
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_11
    if-eqz v8, :cond_1d

    .line 13866
    invoke-virtual {v8}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v6

    iget-object v6, v6, Lads_mobile_sdk/uj2;->c:Lads_mobile_sdk/s11;

    .line 13867
    invoke-virtual {v6}, Lads_mobile_sdk/s11;->getNumber()I

    move-result v6

    invoke-static {v6}, Lads_mobile_sdk/mt1;->a(I)Lads_mobile_sdk/mt1;

    move-result-object v6

    if-nez v6, :cond_1c

    .line 13868
    sget-object v6, Lads_mobile_sdk/mt1;->b:Lads_mobile_sdk/mt1;

    .line 13869
    :cond_1c
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13870
    iget-object v8, v8, Lads_mobile_sdk/rr3;->b:Lads_mobile_sdk/rr3;

    goto :goto_11

    .line 13871
    :cond_1d
    const-string v6, "<this>"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14998
    iget-object v0, v3, Lads_mobile_sdk/g11;->a:Lads_mobile_sdk/b11;

    invoke-virtual {v0, v2}, Lads_mobile_sdk/b11;->a(Ljava/util/ArrayList;)V

    if-eqz v5, :cond_1e

    .line 14999
    invoke-static {v3, v5}, Lads_mobile_sdk/is3;->a(Lads_mobile_sdk/g11;Lads_mobile_sdk/ks3;)V

    .line 15059
    :cond_1e
    invoke-virtual {v4}, Lads_mobile_sdk/g11;->a()Lads_mobile_sdk/e11;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    .line 15060
    monitor-exit v9

    throw v0
.end method
