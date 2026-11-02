.class public final Lads_mobile_sdk/if1;
.super Lads_mobile_sdk/nc1;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/vk0;
.implements Lads_mobile_sdk/cd3;
.implements Lads_mobile_sdk/gx0;


# static fields
.field public static final N:Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError;

.field public static final O:Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError;

.field public static final P:Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError;

.field public static final Q:Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError;

.field public static final R:Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError;


# instance fields
.field public A:Lcom/google/gson/JsonObject;

.field public B:Lcom/google/gson/JsonObject;

.field public C:Lads_mobile_sdk/ae1;

.field public final D:Lkotlinx/coroutines/sync/Mutex;

.field public E:J

.field public final F:Ljava/util/LinkedHashMap;

.field public final G:Ljava/util/LinkedHashMap;

.field public final H:Lkotlinx/coroutines/sync/Mutex;

.field public I:Ljava/lang/ref/WeakReference;

.field public final J:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final K:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final L:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public M:Ljava/lang/Boolean;

.field public final c:Landroid/content/Context;

.field public final d:Lkotlinx/coroutines/CoroutineScope;

.field public final e:Ljava/lang/String;

.field public final f:Lads_mobile_sdk/cw2;

.field public final g:Lads_mobile_sdk/cw2;

.field public final h:Lcom/google/gson/Gson;

.field public final i:Lads_mobile_sdk/ex0;

.field public final j:Lads_mobile_sdk/tx;

.field public final k:Lads_mobile_sdk/e01;

.field public final l:Lads_mobile_sdk/qg1;

.field public final m:Lads_mobile_sdk/ek;

.field public final n:Lads_mobile_sdk/pn;

.field public final o:Lads_mobile_sdk/fg1;

.field public final p:Lads_mobile_sdk/iz3;

.field public final q:Lads_mobile_sdk/g83;

.field public final r:Lads_mobile_sdk/l43;

.field public final s:Lads_mobile_sdk/cw2;

.field public final t:Lads_mobile_sdk/rd1;

.field public final u:Lads_mobile_sdk/g30;

.field public final v:Lads_mobile_sdk/km;

.field public final w:Lads_mobile_sdk/ja1;

.field public final x:Lkotlinx/coroutines/sync/Mutex;

.field public y:Lads_mobile_sdk/og1;

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError;

    sget-object v1, Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError$ErrorCode;->ALREADY_OPEN:Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError$ErrorCode;

    const-string v2, "Ad inspector cannot be opened because it is already open."

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError$ErrorCode;Ljava/lang/String;)V

    sput-object v0, Lads_mobile_sdk/if1;->N:Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError;

    .line 3
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError;

    sget-object v1, Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError$ErrorCode;->FAILED_TO_LOAD:Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError$ErrorCode;

    const-string v2, "Ad inspector failed to load."

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError$ErrorCode;Ljava/lang/String;)V

    sput-object v0, Lads_mobile_sdk/if1;->O:Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError;

    .line 5
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError;

    sget-object v1, Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError$ErrorCode;->INTERNAL_ERROR:Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError$ErrorCode;

    const-string v2, "Ad inspector had an internal error."

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError$ErrorCode;Ljava/lang/String;)V

    sput-object v0, Lads_mobile_sdk/if1;->P:Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError;

    .line 7
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError;

    sget-object v1, Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError$ErrorCode;->NOT_IN_TEST_MODE:Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError$ErrorCode;

    const-string v2, "Ad inspector cannot be opened because the device is not in test mode. See https://developers.google.com/admob/android/test-ads#enable_test_devices for more information."

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError$ErrorCode;Ljava/lang/String;)V

    sput-object v0, Lads_mobile_sdk/if1;->Q:Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError;

    .line 9
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError;

    sget-object v1, Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError$ErrorCode;->DISABLED:Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError$ErrorCode;

    const-string v2, "Ad inspector cannot be opened because it is disabled in the AndroidManifest.xml."

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError$ErrorCode;Ljava/lang/String;)V

    sput-object v0, Lads_mobile_sdk/if1;->R:Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lcom/google/gson/Gson;Lads_mobile_sdk/ex0;Lads_mobile_sdk/tx;Lads_mobile_sdk/e01;Lads_mobile_sdk/qg1;Lads_mobile_sdk/ek;Lads_mobile_sdk/pn;Lads_mobile_sdk/fg1;Lads_mobile_sdk/iz3;Lads_mobile_sdk/g83;Lads_mobile_sdk/l43;Lads_mobile_sdk/dw2;Lads_mobile_sdk/rd1;Lads_mobile_sdk/g30;Lads_mobile_sdk/km;Lads_mobile_sdk/ja1;)V
    .locals 16

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    .line 1
    const-string v0, "applicationContext"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundScope"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "afmaVersion"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shakeDetector"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flickDetector"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gson"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpClient"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inspectorSettingsDataStore"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appInfo"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appState"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "presenterFactory"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webViewFactory"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootTraceCreator"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestConfigurationWrapper"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webViewConfigurator"

    move-object/from16 v15, p17

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inspectorAdapterInfo"

    move-object/from16 v15, p18

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consentManager"

    move-object/from16 v15, p19

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appSettings"

    move-object/from16 v15, p20

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initializationConfigWrapper"

    move-object/from16 v15, p21

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lads_mobile_sdk/s11;->x:Lads_mobile_sdk/s11;

    const/4 v15, 0x0

    move-object/from16 v14, p0

    invoke-direct {v14, v0, v15}, Lads_mobile_sdk/nc1;-><init>(Lads_mobile_sdk/s11;Z)V

    .line 3
    iput-object v1, v14, Lads_mobile_sdk/if1;->c:Landroid/content/Context;

    .line 4
    iput-object v2, v14, Lads_mobile_sdk/if1;->d:Lkotlinx/coroutines/CoroutineScope;

    .line 5
    iput-object v3, v14, Lads_mobile_sdk/if1;->e:Ljava/lang/String;

    .line 6
    iput-object v4, v14, Lads_mobile_sdk/if1;->f:Lads_mobile_sdk/cw2;

    .line 7
    iput-object v5, v14, Lads_mobile_sdk/if1;->g:Lads_mobile_sdk/cw2;

    .line 8
    iput-object v6, v14, Lads_mobile_sdk/if1;->h:Lcom/google/gson/Gson;

    .line 9
    iput-object v7, v14, Lads_mobile_sdk/if1;->i:Lads_mobile_sdk/ex0;

    .line 10
    iput-object v8, v14, Lads_mobile_sdk/if1;->j:Lads_mobile_sdk/tx;

    .line 11
    iput-object v9, v14, Lads_mobile_sdk/if1;->k:Lads_mobile_sdk/e01;

    .line 12
    iput-object v10, v14, Lads_mobile_sdk/if1;->l:Lads_mobile_sdk/qg1;

    .line 13
    iput-object v11, v14, Lads_mobile_sdk/if1;->m:Lads_mobile_sdk/ek;

    .line 14
    iput-object v12, v14, Lads_mobile_sdk/if1;->n:Lads_mobile_sdk/pn;

    .line 15
    iput-object v13, v14, Lads_mobile_sdk/if1;->o:Lads_mobile_sdk/fg1;

    move-object/from16 v0, p14

    .line 16
    iput-object v0, v14, Lads_mobile_sdk/if1;->p:Lads_mobile_sdk/iz3;

    move-object/from16 v0, p15

    .line 17
    iput-object v0, v14, Lads_mobile_sdk/if1;->q:Lads_mobile_sdk/g83;

    move-object/from16 v0, p16

    .line 18
    iput-object v0, v14, Lads_mobile_sdk/if1;->r:Lads_mobile_sdk/l43;

    move-object/from16 v0, p17

    .line 19
    iput-object v0, v14, Lads_mobile_sdk/if1;->s:Lads_mobile_sdk/cw2;

    move-object/from16 v0, p18

    .line 20
    iput-object v0, v14, Lads_mobile_sdk/if1;->t:Lads_mobile_sdk/rd1;

    move-object/from16 v0, p19

    .line 21
    iput-object v0, v14, Lads_mobile_sdk/if1;->u:Lads_mobile_sdk/g30;

    move-object/from16 v0, p20

    .line 22
    iput-object v0, v14, Lads_mobile_sdk/if1;->v:Lads_mobile_sdk/km;

    move-object/from16 v0, p21

    .line 23
    iput-object v0, v14, Lads_mobile_sdk/if1;->w:Lads_mobile_sdk/ja1;

    .line 30
    invoke-static {v15}, Lkotlinx/coroutines/sync/MutexKt;->Mutex(Z)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v0

    iput-object v0, v14, Lads_mobile_sdk/if1;->x:Lkotlinx/coroutines/sync/Mutex;

    .line 35
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    iput-object v0, v14, Lads_mobile_sdk/if1;->A:Lcom/google/gson/JsonObject;

    .line 36
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    iput-object v0, v14, Lads_mobile_sdk/if1;->B:Lcom/google/gson/JsonObject;

    .line 37
    sget-object v0, Lads_mobile_sdk/ae1;->a:Lads_mobile_sdk/ae1;

    iput-object v0, v14, Lads_mobile_sdk/if1;->C:Lads_mobile_sdk/ae1;

    .line 39
    invoke-static {v15}, Lkotlinx/coroutines/sync/MutexKt;->Mutex(Z)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v0

    iput-object v0, v14, Lads_mobile_sdk/if1;->D:Lkotlinx/coroutines/sync/Mutex;

    .line 42
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, v14, Lads_mobile_sdk/if1;->F:Ljava/util/LinkedHashMap;

    .line 44
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, v14, Lads_mobile_sdk/if1;->G:Ljava/util/LinkedHashMap;

    .line 46
    invoke-static {v15}, Lkotlinx/coroutines/sync/MutexKt;->Mutex(Z)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v0

    iput-object v0, v14, Lads_mobile_sdk/if1;->H:Lkotlinx/coroutines/sync/Mutex;

    .line 48
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, v14, Lads_mobile_sdk/if1;->I:Ljava/lang/ref/WeakReference;

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, v14, Lads_mobile_sdk/if1;->J:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, v14, Lads_mobile_sdk/if1;->K:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, v14, Lads_mobile_sdk/if1;->L:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static a(Lads_mobile_sdk/if1;Lads_mobile_sdk/ae1;Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 12671
    instance-of v4, v3, Lads_mobile_sdk/qe1;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lads_mobile_sdk/qe1;

    iget v5, v4, Lads_mobile_sdk/qe1;->i:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Lads_mobile_sdk/qe1;->i:I

    goto :goto_0

    :cond_0
    new-instance v4, Lads_mobile_sdk/qe1;

    invoke-direct {v4, v0, v3}, Lads_mobile_sdk/qe1;-><init>(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v3, v4, Lads_mobile_sdk/qe1;->g:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v5

    .line 13080
    iget v6, v4, Lads_mobile_sdk/qe1;->i:I

    const-string v7, "Ad inspector cannot be opened because it is already open."

    const-string v8, "Ad inspector is disabled"

    const-string v9, "Ad inspector cannot be opened because the device is not in test mode. See https://developers.google.com/admob/android/test-ads#enable_test_devices for more information."

    const-string v10, "Ad inspector cannot be opened because it is disabled in the AndroidManifest.xml."

    const-string v11, "defaultValue"

    const-string v12, "key"

    const-string v13, "https://admob-gmats.uc.r.appspot.com/"

    const-string v14, "gads:inspector:ui_url"

    packed-switch v6, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, v4, Lads_mobile_sdk/qe1;->e:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/eg1;

    iget-object v1, v4, Lads_mobile_sdk/qe1;->d:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v4, Lads_mobile_sdk/qe1;->c:Ljava/lang/Object;

    check-cast v2, Ljava/io/Closeable;

    iget-object v5, v4, Lads_mobile_sdk/qe1;->b:Ljava/lang/Object;

    check-cast v5, Lads_mobile_sdk/rr3;

    iget-object v4, v4, Lads_mobile_sdk/qe1;->a:Lads_mobile_sdk/if1;

    :try_start_0
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_19

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 13081
    :pswitch_1
    iget-object v0, v4, Lads_mobile_sdk/qe1;->f:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/r31;

    iget-object v1, v4, Lads_mobile_sdk/qe1;->e:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v4, Lads_mobile_sdk/qe1;->d:Ljava/lang/Object;

    check-cast v2, Ljava/io/Closeable;

    iget-object v6, v4, Lads_mobile_sdk/qe1;->c:Ljava/lang/Object;

    check-cast v6, Lads_mobile_sdk/rr3;

    iget-object v7, v4, Lads_mobile_sdk/qe1;->b:Ljava/lang/Object;

    check-cast v7, Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;

    iget-object v8, v4, Lads_mobile_sdk/qe1;->a:Lads_mobile_sdk/if1;

    :try_start_1
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_17

    .line 13082
    :pswitch_2
    iget-object v0, v4, Lads_mobile_sdk/qe1;->f:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/r31;

    iget-object v1, v4, Lads_mobile_sdk/qe1;->e:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v4, Lads_mobile_sdk/qe1;->d:Ljava/lang/Object;

    check-cast v2, Ljava/io/Closeable;

    iget-object v6, v4, Lads_mobile_sdk/qe1;->c:Ljava/lang/Object;

    check-cast v6, Lads_mobile_sdk/rr3;

    iget-object v7, v4, Lads_mobile_sdk/qe1;->b:Ljava/lang/Object;

    check-cast v7, Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;

    iget-object v8, v4, Lads_mobile_sdk/qe1;->a:Lads_mobile_sdk/if1;

    :try_start_2
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v23, v13

    move-object v13, v11

    move-object v11, v12

    move-object v12, v14

    move-object/from16 v14, v23

    goto/16 :goto_16

    :catchall_1
    move-exception v0

    goto :goto_1

    .line 13083
    :pswitch_3
    iget-object v0, v4, Lads_mobile_sdk/qe1;->e:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v4, Lads_mobile_sdk/qe1;->d:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/io/Closeable;

    iget-object v0, v4, Lads_mobile_sdk/qe1;->c:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lads_mobile_sdk/rr3;

    iget-object v0, v4, Lads_mobile_sdk/qe1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;

    iget-object v7, v4, Lads_mobile_sdk/qe1;->a:Lads_mobile_sdk/if1;

    :try_start_3
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v8, v13

    move-object v13, v11

    move-object v11, v12

    move-object v12, v14

    move-object v14, v8

    move-object v8, v7

    goto/16 :goto_15

    :catchall_2
    move-exception v0

    :goto_1
    move-object v5, v6

    :goto_2
    const/4 v7, 0x0

    goto/16 :goto_1b

    .line 13084
    :pswitch_4
    iget-object v0, v4, Lads_mobile_sdk/qe1;->e:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v4, Lads_mobile_sdk/qe1;->d:Ljava/lang/Object;

    check-cast v1, Ljava/io/Closeable;

    iget-object v2, v4, Lads_mobile_sdk/qe1;->c:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/rr3;

    iget-object v6, v4, Lads_mobile_sdk/qe1;->b:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;

    iget-object v8, v4, Lads_mobile_sdk/qe1;->a:Lads_mobile_sdk/if1;

    :try_start_4
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object v3, v13

    move-object v13, v11

    move-object v11, v12

    move-object v12, v14

    move-object v14, v3

    move-object v3, v0

    move-object v0, v6

    goto/16 :goto_14

    .line 13085
    :pswitch_5
    iget-object v0, v4, Lads_mobile_sdk/qe1;->f:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v4, Lads_mobile_sdk/qe1;->e:Ljava/lang/Object;

    check-cast v1, Ljava/io/Closeable;

    iget-object v2, v4, Lads_mobile_sdk/qe1;->d:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/rr3;

    iget-object v6, v4, Lads_mobile_sdk/qe1;->c:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;

    iget-object v8, v4, Lads_mobile_sdk/qe1;->b:Ljava/lang/Object;

    check-cast v8, Lads_mobile_sdk/ae1;

    iget-object v9, v4, Lads_mobile_sdk/qe1;->a:Lads_mobile_sdk/if1;

    :try_start_5
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object v10, v6

    move-object v6, v0

    move-object v0, v10

    move-object v10, v13

    move-object v13, v11

    move-object v11, v12

    move-object v12, v14

    move-object v14, v10

    move-object v10, v8

    move-object v8, v9

    const/4 v15, 0x0

    goto/16 :goto_13

    .line 13086
    :pswitch_6
    iget-object v0, v4, Lads_mobile_sdk/qe1;->f:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v4, Lads_mobile_sdk/qe1;->e:Ljava/lang/Object;

    check-cast v1, Ljava/io/Closeable;

    iget-object v2, v4, Lads_mobile_sdk/qe1;->d:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/rr3;

    iget-object v6, v4, Lads_mobile_sdk/qe1;->c:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;

    iget-object v10, v4, Lads_mobile_sdk/qe1;->b:Ljava/lang/Object;

    check-cast v10, Lads_mobile_sdk/ae1;

    iget-object v15, v4, Lads_mobile_sdk/qe1;->a:Lads_mobile_sdk/if1;

    :try_start_6
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object v3, v6

    move-object v6, v0

    move-object v0, v3

    move-object v3, v13

    move-object v13, v11

    move-object v11, v12

    move-object v12, v14

    move-object v14, v3

    move-object v3, v15

    const/4 v15, 0x0

    goto/16 :goto_12

    :catchall_3
    move-exception v0

    goto/16 :goto_1c

    .line 13087
    :pswitch_7
    iget-object v0, v4, Lads_mobile_sdk/qe1;->f:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v4, Lads_mobile_sdk/qe1;->e:Ljava/lang/Object;

    check-cast v1, Ljava/io/Closeable;

    iget-object v2, v4, Lads_mobile_sdk/qe1;->d:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/rr3;

    iget-object v6, v4, Lads_mobile_sdk/qe1;->c:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;

    iget-object v15, v4, Lads_mobile_sdk/qe1;->b:Ljava/lang/Object;

    check-cast v15, Lads_mobile_sdk/ae1;

    move-object/from16 p0, v1

    iget-object v1, v4, Lads_mobile_sdk/qe1;->a:Lads_mobile_sdk/if1;

    :try_start_7
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move-object v3, v13

    move-object v13, v11

    move-object v11, v12

    move-object v12, v14

    move-object v14, v3

    move-object/from16 v3, p0

    move-object/from16 v22, v2

    move-object v2, v6

    move-object v6, v0

    move-object v0, v1

    move-object v1, v15

    const/4 v15, 0x0

    goto/16 :goto_11

    :catchall_4
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_1c

    .line 13088
    :pswitch_8
    iget-object v0, v4, Lads_mobile_sdk/qe1;->e:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/eg1;

    iget-object v1, v4, Lads_mobile_sdk/qe1;->d:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v4, Lads_mobile_sdk/qe1;->c:Ljava/lang/Object;

    check-cast v2, Ljava/io/Closeable;

    iget-object v5, v4, Lads_mobile_sdk/qe1;->b:Ljava/lang/Object;

    check-cast v5, Lads_mobile_sdk/rr3;

    iget-object v4, v4, Lads_mobile_sdk/qe1;->a:Lads_mobile_sdk/if1;

    :try_start_8
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto/16 :goto_a

    :catchall_5
    move-exception v0

    goto/16 :goto_b

    .line 13089
    :pswitch_9
    iget-object v0, v4, Lads_mobile_sdk/qe1;->f:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/r31;

    iget-object v1, v4, Lads_mobile_sdk/qe1;->e:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v4, Lads_mobile_sdk/qe1;->d:Ljava/lang/Object;

    check-cast v2, Ljava/io/Closeable;

    iget-object v6, v4, Lads_mobile_sdk/qe1;->c:Ljava/lang/Object;

    check-cast v6, Lads_mobile_sdk/rr3;

    iget-object v7, v4, Lads_mobile_sdk/qe1;->b:Ljava/lang/Object;

    check-cast v7, Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;

    iget-object v8, v4, Lads_mobile_sdk/qe1;->a:Lads_mobile_sdk/if1;

    :try_start_9
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    goto/16 :goto_9

    .line 13090
    :pswitch_a
    iget-object v0, v4, Lads_mobile_sdk/qe1;->f:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/r31;

    iget-object v1, v4, Lads_mobile_sdk/qe1;->e:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v4, Lads_mobile_sdk/qe1;->d:Ljava/lang/Object;

    check-cast v2, Ljava/io/Closeable;

    iget-object v6, v4, Lads_mobile_sdk/qe1;->c:Ljava/lang/Object;

    check-cast v6, Lads_mobile_sdk/rr3;

    iget-object v7, v4, Lads_mobile_sdk/qe1;->b:Ljava/lang/Object;

    check-cast v7, Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;

    iget-object v8, v4, Lads_mobile_sdk/qe1;->a:Lads_mobile_sdk/if1;

    :try_start_a
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    move-object/from16 v17, v11

    move-object/from16 v19, v12

    move-object/from16 v18, v13

    move-object/from16 v20, v14

    goto/16 :goto_8

    .line 13091
    :pswitch_b
    iget-object v0, v4, Lads_mobile_sdk/qe1;->e:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v4, Lads_mobile_sdk/qe1;->d:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/io/Closeable;

    iget-object v0, v4, Lads_mobile_sdk/qe1;->c:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lads_mobile_sdk/rr3;

    iget-object v0, v4, Lads_mobile_sdk/qe1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;

    iget-object v7, v4, Lads_mobile_sdk/qe1;->a:Lads_mobile_sdk/if1;

    :try_start_b
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    move-object v8, v7

    move-object/from16 v17, v11

    move-object/from16 v19, v12

    move-object/from16 v18, v13

    move-object/from16 v20, v14

    goto/16 :goto_7

    :catchall_6
    move-exception v0

    move-object v5, v6

    goto/16 :goto_b

    .line 13092
    :pswitch_c
    iget-object v0, v4, Lads_mobile_sdk/qe1;->e:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v4, Lads_mobile_sdk/qe1;->d:Ljava/lang/Object;

    check-cast v1, Ljava/io/Closeable;

    iget-object v2, v4, Lads_mobile_sdk/qe1;->c:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/rr3;

    iget-object v6, v4, Lads_mobile_sdk/qe1;->b:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;

    iget-object v8, v4, Lads_mobile_sdk/qe1;->a:Lads_mobile_sdk/if1;

    :try_start_c
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    move-object/from16 v17, v1

    move-object v1, v0

    move-object v0, v6

    move-object v6, v2

    move-object/from16 v2, v17

    move-object/from16 v21, v7

    move-object/from16 v17, v11

    move-object/from16 v19, v12

    move-object/from16 v18, v13

    move-object/from16 v20, v14

    goto/16 :goto_6

    .line 13093
    :pswitch_d
    iget-object v0, v4, Lads_mobile_sdk/qe1;->f:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v4, Lads_mobile_sdk/qe1;->e:Ljava/lang/Object;

    check-cast v1, Ljava/io/Closeable;

    iget-object v2, v4, Lads_mobile_sdk/qe1;->d:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/rr3;

    iget-object v6, v4, Lads_mobile_sdk/qe1;->c:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;

    iget-object v8, v4, Lads_mobile_sdk/qe1;->b:Ljava/lang/Object;

    check-cast v8, Lads_mobile_sdk/ae1;

    iget-object v9, v4, Lads_mobile_sdk/qe1;->a:Lads_mobile_sdk/if1;

    :try_start_d
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    move-object v15, v6

    move-object v6, v0

    move-object v0, v15

    move-object/from16 v21, v7

    move-object v15, v8

    move-object v8, v9

    move-object/from16 v17, v11

    move-object/from16 v19, v12

    move-object/from16 v18, v13

    move-object/from16 v20, v14

    const/4 v7, 0x0

    goto/16 :goto_5

    .line 13094
    :pswitch_e
    iget-object v0, v4, Lads_mobile_sdk/qe1;->f:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v4, Lads_mobile_sdk/qe1;->e:Ljava/lang/Object;

    check-cast v1, Ljava/io/Closeable;

    iget-object v2, v4, Lads_mobile_sdk/qe1;->d:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/rr3;

    iget-object v6, v4, Lads_mobile_sdk/qe1;->c:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;

    iget-object v10, v4, Lads_mobile_sdk/qe1;->b:Ljava/lang/Object;

    check-cast v10, Lads_mobile_sdk/ae1;

    iget-object v15, v4, Lads_mobile_sdk/qe1;->a:Lads_mobile_sdk/if1;

    :try_start_e
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    move-object v3, v6

    move-object v6, v0

    move-object v0, v3

    move-object/from16 v21, v7

    move-object/from16 v17, v11

    move-object/from16 v19, v12

    move-object/from16 v18, v13

    move-object/from16 v20, v14

    move-object v3, v15

    const/4 v7, 0x0

    move-object v15, v10

    goto/16 :goto_4

    :catchall_7
    move-exception v0

    goto/16 :goto_f

    .line 13095
    :pswitch_f
    iget-object v0, v4, Lads_mobile_sdk/qe1;->f:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v4, Lads_mobile_sdk/qe1;->e:Ljava/lang/Object;

    check-cast v1, Ljava/io/Closeable;

    iget-object v2, v4, Lads_mobile_sdk/qe1;->d:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/rr3;

    iget-object v6, v4, Lads_mobile_sdk/qe1;->c:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;

    iget-object v15, v4, Lads_mobile_sdk/qe1;->b:Ljava/lang/Object;

    check-cast v15, Lads_mobile_sdk/ae1;

    move-object/from16 p0, v1

    iget-object v1, v4, Lads_mobile_sdk/qe1;->a:Lads_mobile_sdk/if1;

    :try_start_f
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    move-object v3, v2

    move-object v2, v6

    move-object/from16 v21, v7

    move-object/from16 v17, v11

    move-object/from16 v19, v12

    move-object/from16 v18, v13

    move-object/from16 v20, v14

    const/4 v7, 0x0

    move-object v6, v0

    move-object v0, v1

    move-object/from16 v1, p0

    goto :goto_3

    :catchall_8
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_f

    .line 13096
    :pswitch_10
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 13100
    iget-object v3, v0, Lads_mobile_sdk/if1;->q:Lads_mobile_sdk/g83;

    sget-object v6, Lads_mobile_sdk/s11;->c1:Lads_mobile_sdk/s11;

    .line 13640
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v15

    move-object/from16 v17, v11

    .line 13641
    new-instance v11, Lads_mobile_sdk/ks3;

    move-object/from16 v18, v13

    .line 13642
    new-instance v13, Lads_mobile_sdk/n03;

    invoke-direct {v13}, Lads_mobile_sdk/n03;-><init>()V

    move-object/from16 v19, v12

    .line 13643
    new-instance v12, Lads_mobile_sdk/tn1;

    invoke-direct {v12}, Lads_mobile_sdk/tn1;-><init>()V

    move-object/from16 v20, v14

    .line 13644
    new-instance v14, Lads_mobile_sdk/m33;

    invoke-direct {v14}, Lads_mobile_sdk/m33;-><init>()V

    move-object/from16 v21, v7

    .line 13645
    new-instance v7, Lads_mobile_sdk/zb;

    invoke-direct {v7}, Lads_mobile_sdk/zb;-><init>()V

    .line 13646
    invoke-direct {v11, v13, v12, v14, v7}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 13647
    invoke-static {}, Lads_mobile_sdk/hs3;->c()Lads_mobile_sdk/rr3;

    move-result-object v7

    if-nez v7, :cond_17

    .line 13648
    invoke-static {v3, v6, v15, v11}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v3

    .line 13649
    :try_start_10
    iget-object v6, v0, Lads_mobile_sdk/if1;->x:Lkotlinx/coroutines/sync/Mutex;

    .line 14199
    iput-object v0, v4, Lads_mobile_sdk/qe1;->a:Lads_mobile_sdk/if1;

    iput-object v1, v4, Lads_mobile_sdk/qe1;->b:Ljava/lang/Object;

    iput-object v2, v4, Lads_mobile_sdk/qe1;->c:Ljava/lang/Object;

    iput-object v3, v4, Lads_mobile_sdk/qe1;->d:Ljava/lang/Object;

    iput-object v3, v4, Lads_mobile_sdk/qe1;->e:Ljava/lang/Object;

    iput-object v6, v4, Lads_mobile_sdk/qe1;->f:Ljava/lang/Object;

    const/4 v7, 0x1

    iput v7, v4, Lads_mobile_sdk/qe1;->i:I

    const/4 v7, 0x0

    invoke-interface {v6, v7, v4}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    if-ne v11, v5, :cond_1

    goto/16 :goto_18

    :cond_1
    move-object v15, v1

    move-object v1, v3

    .line 14200
    :goto_3
    :try_start_11
    invoke-virtual {v0}, Lads_mobile_sdk/if1;->k()Z

    move-result v11
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_f

    .line 14754
    :try_start_12
    invoke-interface {v6, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    if-eqz v11, :cond_2

    .line 14755
    sget-object v0, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    .line 15310
    sget-object v0, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    invoke-virtual {v4}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    invoke-virtual {v0, v4}, Lkotlinx/coroutines/NonCancellable;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 15311
    sget-object v4, Lads_mobile_sdk/rs3;->b:Lads_mobile_sdk/qs3;

    invoke-interface {v0, v4}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 15312
    sget-object v4, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    invoke-interface {v0, v4}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 15313
    sget-object v4, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v0, v4}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 15314
    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    .line 15320
    new-instance v7, Lads_mobile_sdk/re1;

    const/4 v11, 0x0

    invoke-direct {v7, v11, v2}, Lads_mobile_sdk/re1;-><init>(Lkotlin/coroutines/Continuation;Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    const/4 v0, 0x6

    .line 15321
    invoke-static {v10, v11, v0}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 15322
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_e

    invoke-static {v1, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 15325
    :cond_2
    :try_start_13
    iget-object v6, v0, Lads_mobile_sdk/if1;->x:Lkotlinx/coroutines/sync/Mutex;

    .line 15892
    iput-object v0, v4, Lads_mobile_sdk/qe1;->a:Lads_mobile_sdk/if1;

    iput-object v15, v4, Lads_mobile_sdk/qe1;->b:Ljava/lang/Object;

    iput-object v2, v4, Lads_mobile_sdk/qe1;->c:Ljava/lang/Object;

    iput-object v3, v4, Lads_mobile_sdk/qe1;->d:Ljava/lang/Object;

    iput-object v1, v4, Lads_mobile_sdk/qe1;->e:Ljava/lang/Object;

    iput-object v6, v4, Lads_mobile_sdk/qe1;->f:Ljava/lang/Object;

    const/4 v7, 0x2

    iput v7, v4, Lads_mobile_sdk/qe1;->i:I

    const/4 v7, 0x0

    invoke-interface {v6, v7, v4}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_e

    if-ne v10, v5, :cond_3

    goto/16 :goto_18

    :cond_3
    move-object/from16 v23, v3

    move-object v3, v0

    move-object v0, v2

    move-object/from16 v2, v23

    .line 15893
    :goto_4
    :try_start_14
    invoke-virtual {v3}, Lads_mobile_sdk/if1;->l()Z

    move-result v10
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_d

    .line 16464
    :try_start_15
    invoke-interface {v6, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    if-nez v10, :cond_4

    .line 16465
    sget-object v3, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    .line 17037
    sget-object v3, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    invoke-virtual {v4}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    invoke-virtual {v3, v4}, Lkotlinx/coroutines/NonCancellable;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    .line 17038
    sget-object v4, Lads_mobile_sdk/rs3;->b:Lads_mobile_sdk/qs3;

    invoke-interface {v3, v4}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    .line 17039
    sget-object v4, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    invoke-interface {v3, v4}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    .line 17040
    sget-object v4, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v3, v4}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    .line 17041
    invoke-static {v3}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v10

    .line 17047
    new-instance v13, Lads_mobile_sdk/se1;

    const/4 v7, 0x0

    invoke-direct {v13, v7, v0}, Lads_mobile_sdk/se1;-><init>(Lkotlin/coroutines/Continuation;Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;)V

    const/4 v14, 0x3

    const/4 v15, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v10 .. v15}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    const/4 v0, 0x6

    .line 17048
    invoke-static {v9, v7, v0}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 17049
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    invoke-static {v1, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 17052
    :cond_4
    :try_start_16
    iget-object v6, v3, Lads_mobile_sdk/if1;->i:Lads_mobile_sdk/ex0;

    invoke-virtual {v6}, Lads_mobile_sdk/ex0;->a0()Z

    move-result v6

    if-nez v6, :cond_5

    .line 17053
    sget-object v3, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    .line 17631
    sget-object v3, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    invoke-virtual {v4}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    invoke-virtual {v3, v4}, Lkotlinx/coroutines/NonCancellable;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    .line 17632
    sget-object v4, Lads_mobile_sdk/rs3;->b:Lads_mobile_sdk/qs3;

    invoke-interface {v3, v4}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    .line 17633
    sget-object v4, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    invoke-interface {v3, v4}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    .line 17634
    sget-object v4, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v3, v4}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    .line 17635
    invoke-static {v3}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v9

    .line 17641
    new-instance v12, Lads_mobile_sdk/te1;

    const/4 v7, 0x0

    invoke-direct {v12, v7, v0}, Lads_mobile_sdk/te1;-><init>(Lkotlin/coroutines/Continuation;Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;)V

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v9 .. v14}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    const/4 v0, 0x6

    .line 17642
    invoke-static {v8, v7, v0}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 17643
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    invoke-static {v1, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 17646
    :cond_5
    :try_start_17
    iget-object v6, v3, Lads_mobile_sdk/if1;->x:Lkotlinx/coroutines/sync/Mutex;

    .line 18236
    iput-object v3, v4, Lads_mobile_sdk/qe1;->a:Lads_mobile_sdk/if1;

    iput-object v15, v4, Lads_mobile_sdk/qe1;->b:Ljava/lang/Object;

    iput-object v0, v4, Lads_mobile_sdk/qe1;->c:Ljava/lang/Object;

    iput-object v2, v4, Lads_mobile_sdk/qe1;->d:Ljava/lang/Object;

    iput-object v1, v4, Lads_mobile_sdk/qe1;->e:Ljava/lang/Object;

    iput-object v6, v4, Lads_mobile_sdk/qe1;->f:Ljava/lang/Object;

    const/4 v7, 0x3

    iput v7, v4, Lads_mobile_sdk/qe1;->i:I

    const/4 v7, 0x0

    invoke-interface {v6, v7, v4}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    if-ne v8, v5, :cond_6

    goto/16 :goto_18

    :cond_6
    move-object v8, v3

    .line 18237
    :goto_5
    :try_start_18
    iput-object v15, v8, Lads_mobile_sdk/if1;->C:Lads_mobile_sdk/ae1;

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_c

    .line 18831
    :try_start_19
    invoke-interface {v6, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 18832
    iget-object v3, v8, Lads_mobile_sdk/if1;->H:Lkotlinx/coroutines/sync/Mutex;

    .line 19431
    iput-object v8, v4, Lads_mobile_sdk/qe1;->a:Lads_mobile_sdk/if1;

    iput-object v0, v4, Lads_mobile_sdk/qe1;->b:Ljava/lang/Object;

    iput-object v2, v4, Lads_mobile_sdk/qe1;->c:Ljava/lang/Object;

    iput-object v1, v4, Lads_mobile_sdk/qe1;->d:Ljava/lang/Object;

    iput-object v3, v4, Lads_mobile_sdk/qe1;->e:Ljava/lang/Object;

    const/4 v7, 0x0

    iput-object v7, v4, Lads_mobile_sdk/qe1;->f:Ljava/lang/Object;

    const/4 v6, 0x4

    iput v6, v4, Lads_mobile_sdk/qe1;->i:I

    invoke-interface {v3, v7, v4}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    if-ne v6, v5, :cond_7

    goto/16 :goto_18

    :cond_7
    move-object v6, v2

    move-object v2, v1

    move-object v1, v3

    .line 19432
    :goto_6
    :try_start_1a
    iget-object v3, v8, Lads_mobile_sdk/if1;->I:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lads_mobile_sdk/eg1;

    if-eqz v3, :cond_8

    .line 19433
    iget-object v3, v3, Lads_mobile_sdk/yy0;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v3, :cond_8

    .line 19434
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_8

    .line 19435
    sget-object v3, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    .line 20034
    sget-object v3, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    invoke-virtual {v4}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    invoke-virtual {v3, v4}, Lkotlinx/coroutines/NonCancellable;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    .line 20035
    sget-object v4, Lads_mobile_sdk/rs3;->b:Lads_mobile_sdk/qs3;

    invoke-interface {v3, v4}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    .line 20036
    sget-object v4, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    invoke-interface {v3, v4}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    .line 20037
    sget-object v4, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v3, v4}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    .line 20038
    invoke-static {v3}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v7

    .line 20044
    new-instance v10, Lads_mobile_sdk/ue1;

    const/4 v3, 0x0

    invoke-direct {v10, v3, v0}, Lads_mobile_sdk/ue1;-><init>(Lkotlin/coroutines/Continuation;Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;)V

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-object/from16 v7, v21

    const/4 v0, 0x6

    .line 20045
    invoke-static {v7, v3, v0}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 20046
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_a

    .line 20655
    :try_start_1b
    invoke-interface {v1, v3}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_b

    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 20656
    :cond_8
    :try_start_1c
    iget-object v3, v8, Lads_mobile_sdk/if1;->p:Lads_mobile_sdk/iz3;

    .line 20657
    new-instance v7, Lads_mobile_sdk/v14;

    sget-object v9, Lads_mobile_sdk/u14;->d:Lads_mobile_sdk/u14;

    const/16 v10, 0xe

    const/4 v11, 0x0

    invoke-direct {v7, v9, v11, v11, v10}, Lads_mobile_sdk/v14;-><init>(Lads_mobile_sdk/u14;III)V

    .line 20658
    iput-object v8, v4, Lads_mobile_sdk/qe1;->a:Lads_mobile_sdk/if1;

    iput-object v0, v4, Lads_mobile_sdk/qe1;->b:Ljava/lang/Object;

    iput-object v6, v4, Lads_mobile_sdk/qe1;->c:Ljava/lang/Object;

    iput-object v2, v4, Lads_mobile_sdk/qe1;->d:Ljava/lang/Object;

    iput-object v1, v4, Lads_mobile_sdk/qe1;->e:Ljava/lang/Object;

    const/4 v9, 0x5

    iput v9, v4, Lads_mobile_sdk/qe1;->i:I

    const/4 v9, 0x1

    const/4 v11, 0x0

    invoke-virtual {v3, v7, v11, v9, v4}, Lads_mobile_sdk/iz3;->a(Lads_mobile_sdk/v14;Lads_mobile_sdk/v52;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v5, :cond_9

    goto/16 :goto_18

    .line 20659
    :cond_9
    :goto_7
    check-cast v3, Lads_mobile_sdk/v01;

    .line 20696
    instance-of v7, v3, Lads_mobile_sdk/i01;

    if-eqz v7, :cond_a

    .line 20697
    sget-object v5, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    .line 21299
    sget-object v5, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    invoke-virtual {v4}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    invoke-virtual {v5, v4}, Lkotlinx/coroutines/NonCancellable;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    .line 21300
    sget-object v5, Lads_mobile_sdk/rs3;->b:Lads_mobile_sdk/qs3;

    invoke-interface {v4, v5}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    .line 21301
    sget-object v5, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    invoke-interface {v4, v5}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    .line 21302
    sget-object v5, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v4, v5}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    .line 21303
    invoke-static {v4}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v7

    .line 21309
    new-instance v10, Lads_mobile_sdk/ve1;

    const/4 v11, 0x0

    invoke-direct {v10, v11, v0}, Lads_mobile_sdk/ve1;-><init>(Lkotlin/coroutines/Continuation;Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;)V

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 21310
    check-cast v3, Lads_mobile_sdk/i01;

    invoke-static {v3}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;)V

    .line 21311
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_a

    const/4 v7, 0x0

    .line 21910
    :try_start_1d
    invoke-interface {v1, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_b

    invoke-static {v2, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 21911
    :cond_a
    :try_start_1e
    instance-of v7, v3, Lads_mobile_sdk/q01;

    if-eqz v7, :cond_11

    check-cast v3, Lads_mobile_sdk/q01;

    invoke-virtual {v3}, Lads_mobile_sdk/q01;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lads_mobile_sdk/r31;

    .line 21913
    iget-object v7, v8, Lads_mobile_sdk/if1;->s:Lads_mobile_sdk/cw2;

    invoke-interface {v7}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lads_mobile_sdk/yd1;

    invoke-virtual {v3}, Lads_mobile_sdk/r31;->c()Lads_mobile_sdk/nr1;

    move-result-object v9

    iput-object v8, v4, Lads_mobile_sdk/qe1;->a:Lads_mobile_sdk/if1;

    iput-object v0, v4, Lads_mobile_sdk/qe1;->b:Ljava/lang/Object;

    iput-object v6, v4, Lads_mobile_sdk/qe1;->c:Ljava/lang/Object;

    iput-object v2, v4, Lads_mobile_sdk/qe1;->d:Ljava/lang/Object;

    iput-object v1, v4, Lads_mobile_sdk/qe1;->e:Ljava/lang/Object;

    iput-object v3, v4, Lads_mobile_sdk/qe1;->f:Ljava/lang/Object;

    const/4 v10, 0x6

    iput v10, v4, Lads_mobile_sdk/qe1;->i:I

    invoke-virtual {v7, v9, v4}, Lads_mobile_sdk/pr1;->a(Lads_mobile_sdk/nr1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_a

    if-ne v7, v5, :cond_b

    goto/16 :goto_18

    :cond_b
    move-object v7, v0

    move-object v0, v3

    .line 21915
    :goto_8
    :try_start_1f
    iget-object v3, v8, Lads_mobile_sdk/if1;->i:Lads_mobile_sdk/ex0;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_6

    :try_start_20
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v11, v19

    move-object/from16 v12, v20

    .line 21917
    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v13, v17

    move-object/from16 v14, v18

    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21959
    sget-object v9, Lads_mobile_sdk/yr;->o:Lads_mobile_sdk/wr;

    invoke-virtual {v3, v12, v14, v9}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 21960
    iput-object v8, v4, Lads_mobile_sdk/qe1;->a:Lads_mobile_sdk/if1;
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_a

    :try_start_21
    iput-object v7, v4, Lads_mobile_sdk/qe1;->b:Ljava/lang/Object;

    iput-object v6, v4, Lads_mobile_sdk/qe1;->c:Ljava/lang/Object;

    iput-object v2, v4, Lads_mobile_sdk/qe1;->d:Ljava/lang/Object;

    iput-object v1, v4, Lads_mobile_sdk/qe1;->e:Ljava/lang/Object;

    iput-object v0, v4, Lads_mobile_sdk/qe1;->f:Ljava/lang/Object;

    const/4 v9, 0x7

    iput v9, v4, Lads_mobile_sdk/qe1;->i:I

    invoke-virtual {v0, v3, v4}, Lads_mobile_sdk/r31;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_6

    if-ne v3, v5, :cond_c

    goto/16 :goto_18

    .line 21961
    :cond_c
    :goto_9
    :try_start_22
    check-cast v3, Lads_mobile_sdk/v01;

    .line 22008
    instance-of v9, v3, Lads_mobile_sdk/i01;

    if-eqz v9, :cond_d

    .line 22009
    sget-object v0, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    .line 22613
    sget-object v0, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    invoke-virtual {v4}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    invoke-virtual {v0, v4}, Lkotlinx/coroutines/NonCancellable;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 22614
    sget-object v4, Lads_mobile_sdk/rs3;->b:Lads_mobile_sdk/qs3;

    invoke-interface {v0, v4}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 22615
    sget-object v4, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    invoke-interface {v0, v4}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 22616
    sget-object v4, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v0, v4}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 22617
    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v8

    .line 22623
    new-instance v11, Lads_mobile_sdk/we1;

    const/4 v4, 0x0

    invoke-direct {v11, v4, v7}, Lads_mobile_sdk/we1;-><init>(Lkotlin/coroutines/Continuation;Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;)V

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 22624
    check-cast v3, Lads_mobile_sdk/i01;

    invoke-static {v3}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;)V

    .line 22625
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_a

    const/4 v7, 0x0

    .line 23214
    :try_start_23
    invoke-interface {v1, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_b

    invoke-static {v2, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 23215
    :cond_d
    :try_start_24
    iget-object v3, v8, Lads_mobile_sdk/if1;->o:Lads_mobile_sdk/fg1;

    check-cast v3, Lads_mobile_sdk/gg1;

    invoke-virtual {v3, v8, v0, v7}, Lads_mobile_sdk/gg1;->a(Lads_mobile_sdk/if1;Lads_mobile_sdk/r31;Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;)Lads_mobile_sdk/eg1;

    move-result-object v0

    .line 23216
    iput-object v8, v4, Lads_mobile_sdk/qe1;->a:Lads_mobile_sdk/if1;

    iput-object v6, v4, Lads_mobile_sdk/qe1;->b:Ljava/lang/Object;

    iput-object v2, v4, Lads_mobile_sdk/qe1;->c:Ljava/lang/Object;

    iput-object v1, v4, Lads_mobile_sdk/qe1;->d:Ljava/lang/Object;

    iput-object v0, v4, Lads_mobile_sdk/qe1;->e:Ljava/lang/Object;

    const/4 v7, 0x0

    iput-object v7, v4, Lads_mobile_sdk/qe1;->f:Ljava/lang/Object;

    const/16 v3, 0x8

    iput v3, v4, Lads_mobile_sdk/qe1;->i:I

    invoke-virtual {v0, v4}, Lads_mobile_sdk/eg1;->g(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_a

    if-ne v3, v5, :cond_e

    goto/16 :goto_18

    :cond_e
    move-object v5, v6

    move-object v4, v8

    .line 23217
    :goto_a
    :try_start_25
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 23218
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v4, Lads_mobile_sdk/if1;->I:Ljava/lang/ref/WeakReference;

    .line 23220
    :cond_f
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_5

    const/4 v7, 0x0

    .line 23802
    :try_start_26
    invoke-interface {v1, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 23828
    instance-of v1, v0, Lads_mobile_sdk/i01;

    if-eqz v1, :cond_10

    .line 23829
    check-cast v0, Lads_mobile_sdk/i01;

    invoke-static {v0}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_9

    :cond_10
    const/4 v7, 0x0

    .line 23830
    invoke-static {v2, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    :catchall_9
    move-exception v0

    move-object v3, v5

    goto :goto_e

    :catchall_a
    move-exception v0

    goto :goto_c

    :goto_b
    move-object v6, v5

    :goto_c
    const/4 v7, 0x0

    goto :goto_d

    .line 23831
    :cond_11
    :try_start_27
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_a

    .line 24428
    :goto_d
    :try_start_28
    invoke-interface {v1, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_b

    :catchall_b
    move-exception v0

    move-object v3, v6

    :goto_e
    move-object v1, v2

    goto :goto_10

    :catchall_c
    move-exception v0

    const/4 v7, 0x0

    .line 24429
    :try_start_29
    invoke-interface {v6, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0

    :catchall_d
    move-exception v0

    const/4 v7, 0x0

    .line 24430
    invoke-interface {v6, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_7

    :goto_f
    move-object v3, v2

    goto :goto_10

    :catchall_e
    move-exception v0

    goto :goto_10

    :catchall_f
    move-exception v0

    const/4 v7, 0x0

    .line 24431
    :try_start_2a
    invoke-interface {v6, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_e

    :catchall_10
    move-exception v0

    move-object v1, v3

    .line 24542
    :goto_10
    :try_start_2b
    invoke-virtual {v3, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 24546
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_16

    .line 24548
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_12

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_12

    .line 24554
    invoke-virtual {v3, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 24560
    :cond_12
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_15

    .line 24561
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_14

    .line 24562
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_13

    throw v0

    .line 24563
    :cond_13
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 24564
    :cond_14
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 24565
    :cond_15
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 24566
    :cond_16
    throw v0
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_11

    :catchall_11
    move-exception v0

    move-object v2, v0

    .line 24567
    :try_start_2c
    throw v2
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_12

    :catchall_12
    move-exception v0

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_17
    move-object/from16 v13, v17

    move-object/from16 v14, v18

    move-object/from16 v11, v19

    move-object/from16 v12, v20

    move-object/from16 v7, v21

    .line 24716
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    const/4 v15, 0x1

    invoke-static {v6, v3, v15}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v3

    .line 24717
    :try_start_2d
    iget-object v6, v0, Lads_mobile_sdk/if1;->x:Lkotlinx/coroutines/sync/Mutex;

    .line 25267
    iput-object v0, v4, Lads_mobile_sdk/qe1;->a:Lads_mobile_sdk/if1;

    iput-object v1, v4, Lads_mobile_sdk/qe1;->b:Ljava/lang/Object;

    iput-object v2, v4, Lads_mobile_sdk/qe1;->c:Ljava/lang/Object;

    iput-object v3, v4, Lads_mobile_sdk/qe1;->d:Ljava/lang/Object;

    iput-object v3, v4, Lads_mobile_sdk/qe1;->e:Ljava/lang/Object;

    iput-object v6, v4, Lads_mobile_sdk/qe1;->f:Ljava/lang/Object;

    const/16 v15, 0x9

    iput v15, v4, Lads_mobile_sdk/qe1;->i:I

    const/4 v15, 0x0

    invoke-interface {v6, v15, v4}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_1c

    if-ne v1, v5, :cond_18

    goto/16 :goto_18

    :cond_18
    move-object/from16 v1, p1

    move-object/from16 v22, v3

    .line 25268
    :goto_11
    :try_start_2e
    invoke-virtual {v0}, Lads_mobile_sdk/if1;->k()Z

    move-result v17
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_1a

    .line 25822
    :try_start_2f
    invoke-interface {v6, v15}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    if-eqz v17, :cond_19

    .line 25823
    sget-object v0, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    .line 26378
    sget-object v0, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    invoke-virtual {v4}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/NonCancellable;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 26379
    sget-object v1, Lads_mobile_sdk/rs3;->b:Lads_mobile_sdk/qs3;

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 26380
    sget-object v1, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 26381
    sget-object v1, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 26519
    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    .line 26525
    new-instance v7, Lads_mobile_sdk/re1;

    const/4 v11, 0x0

    invoke-direct {v7, v11, v2}, Lads_mobile_sdk/re1;-><init>(Lkotlin/coroutines/Continuation;Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    const/4 v0, 0x6

    .line 26526
    invoke-static {v10, v11, v0}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 26527
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_19

    invoke-static {v3, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 26530
    :cond_19
    :try_start_30
    iget-object v6, v0, Lads_mobile_sdk/if1;->x:Lkotlinx/coroutines/sync/Mutex;

    .line 27234
    iput-object v0, v4, Lads_mobile_sdk/qe1;->a:Lads_mobile_sdk/if1;

    iput-object v1, v4, Lads_mobile_sdk/qe1;->b:Ljava/lang/Object;

    iput-object v2, v4, Lads_mobile_sdk/qe1;->c:Ljava/lang/Object;
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_19

    move-object/from16 v10, v22

    :try_start_31
    iput-object v10, v4, Lads_mobile_sdk/qe1;->d:Ljava/lang/Object;

    iput-object v3, v4, Lads_mobile_sdk/qe1;->e:Ljava/lang/Object;

    iput-object v6, v4, Lads_mobile_sdk/qe1;->f:Ljava/lang/Object;

    const/16 v15, 0xa

    iput v15, v4, Lads_mobile_sdk/qe1;->i:I

    move-object/from16 v16, v1

    const/4 v15, 0x0

    invoke-interface {v6, v15, v4}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_1b

    if-ne v1, v5, :cond_1a

    goto/16 :goto_18

    :cond_1a
    move-object v1, v3

    move-object v3, v0

    move-object v0, v2

    move-object v2, v10

    move-object/from16 v10, v16

    .line 27235
    :goto_12
    :try_start_32
    invoke-virtual {v3}, Lads_mobile_sdk/if1;->l()Z

    move-result v17
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_18

    .line 27943
    :try_start_33
    invoke-interface {v6, v15}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    if-nez v17, :cond_1b

    .line 27944
    sget-object v3, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    .line 28653
    sget-object v3, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    invoke-virtual {v4}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    invoke-virtual {v3, v4}, Lkotlinx/coroutines/NonCancellable;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    .line 28654
    sget-object v4, Lads_mobile_sdk/rs3;->b:Lads_mobile_sdk/qs3;

    invoke-interface {v3, v4}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    .line 28655
    sget-object v4, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    invoke-interface {v3, v4}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    .line 28656
    sget-object v4, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v3, v4}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    .line 28657
    invoke-static {v3}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v10

    .line 28663
    new-instance v13, Lads_mobile_sdk/se1;

    const/4 v7, 0x0

    invoke-direct {v13, v7, v0}, Lads_mobile_sdk/se1;-><init>(Lkotlin/coroutines/Continuation;Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;)V

    const/4 v14, 0x3

    const/4 v15, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v10 .. v15}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    const/4 v0, 0x6

    .line 28664
    invoke-static {v9, v7, v0}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 28665
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_3

    invoke-static {v1, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 28668
    :cond_1b
    :try_start_34
    iget-object v6, v3, Lads_mobile_sdk/if1;->i:Lads_mobile_sdk/ex0;

    invoke-virtual {v6}, Lads_mobile_sdk/ex0;->a0()Z

    move-result v6

    if-nez v6, :cond_1c

    .line 28669
    sget-object v3, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    .line 29384
    sget-object v3, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    invoke-virtual {v4}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    invoke-virtual {v3, v4}, Lkotlinx/coroutines/NonCancellable;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    .line 29385
    sget-object v4, Lads_mobile_sdk/rs3;->b:Lads_mobile_sdk/qs3;

    invoke-interface {v3, v4}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    .line 29386
    sget-object v4, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    invoke-interface {v3, v4}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    .line 29387
    sget-object v4, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v3, v4}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    .line 29388
    invoke-static {v3}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v9

    .line 29394
    new-instance v12, Lads_mobile_sdk/te1;

    const/4 v7, 0x0

    invoke-direct {v12, v7, v0}, Lads_mobile_sdk/te1;-><init>(Lkotlin/coroutines/Continuation;Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;)V

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v9 .. v14}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    const/4 v0, 0x6

    .line 29395
    invoke-static {v8, v7, v0}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 29396
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_3

    invoke-static {v1, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 29399
    :cond_1c
    :try_start_35
    iget-object v6, v3, Lads_mobile_sdk/if1;->x:Lkotlinx/coroutines/sync/Mutex;

    .line 30126
    iput-object v3, v4, Lads_mobile_sdk/qe1;->a:Lads_mobile_sdk/if1;

    iput-object v10, v4, Lads_mobile_sdk/qe1;->b:Ljava/lang/Object;

    iput-object v0, v4, Lads_mobile_sdk/qe1;->c:Ljava/lang/Object;

    iput-object v2, v4, Lads_mobile_sdk/qe1;->d:Ljava/lang/Object;

    iput-object v1, v4, Lads_mobile_sdk/qe1;->e:Ljava/lang/Object;

    iput-object v6, v4, Lads_mobile_sdk/qe1;->f:Ljava/lang/Object;

    const/16 v8, 0xb

    iput v8, v4, Lads_mobile_sdk/qe1;->i:I

    const/4 v15, 0x0

    invoke-interface {v6, v15, v4}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_3

    if-ne v8, v5, :cond_1d

    goto/16 :goto_18

    :cond_1d
    move-object v8, v3

    .line 30127
    :goto_13
    :try_start_36
    iput-object v10, v8, Lads_mobile_sdk/if1;->C:Lads_mobile_sdk/ae1;

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_17

    .line 30858
    :try_start_37
    invoke-interface {v6, v15}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 30859
    iget-object v3, v8, Lads_mobile_sdk/if1;->H:Lkotlinx/coroutines/sync/Mutex;

    .line 31595
    iput-object v8, v4, Lads_mobile_sdk/qe1;->a:Lads_mobile_sdk/if1;

    iput-object v0, v4, Lads_mobile_sdk/qe1;->b:Ljava/lang/Object;

    iput-object v2, v4, Lads_mobile_sdk/qe1;->c:Ljava/lang/Object;

    iput-object v1, v4, Lads_mobile_sdk/qe1;->d:Ljava/lang/Object;

    iput-object v3, v4, Lads_mobile_sdk/qe1;->e:Ljava/lang/Object;

    const/4 v15, 0x0

    iput-object v15, v4, Lads_mobile_sdk/qe1;->f:Ljava/lang/Object;

    const/16 v6, 0xc

    iput v6, v4, Lads_mobile_sdk/qe1;->i:I

    invoke-interface {v3, v15, v4}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_3

    if-ne v6, v5, :cond_1e

    goto/16 :goto_18

    .line 31596
    :cond_1e
    :goto_14
    :try_start_38
    iget-object v6, v8, Lads_mobile_sdk/if1;->I:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lads_mobile_sdk/eg1;

    if-eqz v6, :cond_1f

    .line 31597
    iget-object v6, v6, Lads_mobile_sdk/yy0;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v6, :cond_1f

    .line 31598
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-nez v6, :cond_1f

    .line 31599
    sget-object v5, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    .line 32335
    sget-object v5, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    invoke-virtual {v4}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    invoke-virtual {v5, v4}, Lkotlinx/coroutines/NonCancellable;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    .line 32336
    sget-object v5, Lads_mobile_sdk/rs3;->b:Lads_mobile_sdk/qs3;

    invoke-interface {v4, v5}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    .line 32337
    sget-object v5, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    invoke-interface {v4, v5}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    .line 32338
    sget-object v5, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v4, v5}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    .line 32339
    invoke-static {v4}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v8

    .line 32345
    new-instance v11, Lads_mobile_sdk/ue1;

    const/4 v15, 0x0

    invoke-direct {v11, v15, v0}, Lads_mobile_sdk/ue1;-><init>(Lkotlin/coroutines/Continuation;Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;)V

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    const/4 v0, 0x6

    .line 32346
    invoke-static {v7, v15, v0}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 32347
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_13

    .line 33093
    :try_start_39
    invoke-interface {v3, v15}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_3

    invoke-static {v1, v15}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_13
    move-exception v0

    move-object v5, v2

    move-object v2, v1

    move-object v1, v3

    goto/16 :goto_2

    .line 33094
    :cond_1f
    :try_start_3a
    iget-object v6, v8, Lads_mobile_sdk/if1;->p:Lads_mobile_sdk/iz3;

    .line 33095
    new-instance v7, Lads_mobile_sdk/v14;

    sget-object v9, Lads_mobile_sdk/u14;->d:Lads_mobile_sdk/u14;

    const/16 v10, 0xe

    const/4 v15, 0x0

    invoke-direct {v7, v9, v15, v15, v10}, Lads_mobile_sdk/v14;-><init>(Lads_mobile_sdk/u14;III)V

    .line 33096
    iput-object v8, v4, Lads_mobile_sdk/qe1;->a:Lads_mobile_sdk/if1;

    iput-object v0, v4, Lads_mobile_sdk/qe1;->b:Ljava/lang/Object;

    iput-object v2, v4, Lads_mobile_sdk/qe1;->c:Ljava/lang/Object;

    iput-object v1, v4, Lads_mobile_sdk/qe1;->d:Ljava/lang/Object;

    iput-object v3, v4, Lads_mobile_sdk/qe1;->e:Ljava/lang/Object;

    const/16 v9, 0xd

    iput v9, v4, Lads_mobile_sdk/qe1;->i:I

    const/4 v9, 0x0

    const/4 v15, 0x1

    invoke-virtual {v6, v7, v9, v15, v4}, Lads_mobile_sdk/iz3;->a(Lads_mobile_sdk/v14;Lads_mobile_sdk/v52;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_13

    if-ne v6, v5, :cond_20

    goto/16 :goto_18

    :cond_20
    move-object/from16 v23, v2

    move-object v2, v1

    move-object v1, v3

    move-object v3, v6

    move-object/from16 v6, v23

    .line 33097
    :goto_15
    :try_start_3b
    check-cast v3, Lads_mobile_sdk/v01;

    .line 33134
    instance-of v7, v3, Lads_mobile_sdk/i01;

    if-eqz v7, :cond_21

    .line 33135
    sget-object v5, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    .line 33874
    sget-object v5, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    invoke-virtual {v4}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    invoke-virtual {v5, v4}, Lkotlinx/coroutines/NonCancellable;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    .line 33875
    sget-object v5, Lads_mobile_sdk/rs3;->b:Lads_mobile_sdk/qs3;

    invoke-interface {v4, v5}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    .line 33876
    sget-object v5, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    invoke-interface {v4, v5}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    .line 33877
    sget-object v5, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v4, v5}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    .line 33878
    invoke-static {v4}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v7

    .line 33884
    new-instance v10, Lads_mobile_sdk/ve1;

    const/4 v15, 0x0

    invoke-direct {v10, v15, v0}, Lads_mobile_sdk/ve1;-><init>(Lkotlin/coroutines/Continuation;Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;)V

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 33885
    check-cast v3, Lads_mobile_sdk/i01;

    invoke-static {v3}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;)V

    .line 33886
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_1

    const/4 v7, 0x0

    .line 34622
    :try_start_3c
    invoke-interface {v1, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_14

    invoke-static {v2, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_14
    move-exception v0

    move-object v1, v2

    move-object v2, v6

    goto/16 :goto_1c

    .line 34623
    :cond_21
    :try_start_3d
    instance-of v7, v3, Lads_mobile_sdk/q01;

    if-eqz v7, :cond_28

    check-cast v3, Lads_mobile_sdk/q01;

    invoke-virtual {v3}, Lads_mobile_sdk/q01;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lads_mobile_sdk/r31;

    .line 34625
    iget-object v7, v8, Lads_mobile_sdk/if1;->s:Lads_mobile_sdk/cw2;

    invoke-interface {v7}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lads_mobile_sdk/yd1;

    invoke-virtual {v3}, Lads_mobile_sdk/r31;->c()Lads_mobile_sdk/nr1;

    move-result-object v9

    iput-object v8, v4, Lads_mobile_sdk/qe1;->a:Lads_mobile_sdk/if1;

    iput-object v0, v4, Lads_mobile_sdk/qe1;->b:Ljava/lang/Object;

    iput-object v6, v4, Lads_mobile_sdk/qe1;->c:Ljava/lang/Object;

    iput-object v2, v4, Lads_mobile_sdk/qe1;->d:Ljava/lang/Object;

    iput-object v1, v4, Lads_mobile_sdk/qe1;->e:Ljava/lang/Object;

    iput-object v3, v4, Lads_mobile_sdk/qe1;->f:Ljava/lang/Object;

    const/16 v10, 0xe

    iput v10, v4, Lads_mobile_sdk/qe1;->i:I

    invoke-virtual {v7, v9, v4}, Lads_mobile_sdk/pr1;->a(Lads_mobile_sdk/nr1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v5, :cond_22

    goto/16 :goto_18

    :cond_22
    move-object v7, v0

    move-object v0, v3

    .line 34627
    :goto_16
    iget-object v3, v8, Lads_mobile_sdk/if1;->i:Lads_mobile_sdk/ex0;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34629
    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34671
    sget-object v9, Lads_mobile_sdk/yr;->o:Lads_mobile_sdk/wr;

    invoke-virtual {v3, v12, v14, v9}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 34672
    iput-object v8, v4, Lads_mobile_sdk/qe1;->a:Lads_mobile_sdk/if1;

    iput-object v7, v4, Lads_mobile_sdk/qe1;->b:Ljava/lang/Object;

    iput-object v6, v4, Lads_mobile_sdk/qe1;->c:Ljava/lang/Object;

    iput-object v2, v4, Lads_mobile_sdk/qe1;->d:Ljava/lang/Object;

    iput-object v1, v4, Lads_mobile_sdk/qe1;->e:Ljava/lang/Object;

    iput-object v0, v4, Lads_mobile_sdk/qe1;->f:Ljava/lang/Object;

    const/16 v9, 0xf

    iput v9, v4, Lads_mobile_sdk/qe1;->i:I

    invoke-virtual {v0, v3, v4}, Lads_mobile_sdk/r31;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_1

    if-ne v3, v5, :cond_23

    goto :goto_18

    .line 34673
    :cond_23
    :goto_17
    :try_start_3e
    check-cast v3, Lads_mobile_sdk/v01;

    .line 34720
    instance-of v9, v3, Lads_mobile_sdk/i01;

    if-eqz v9, :cond_24

    .line 34721
    sget-object v0, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    .line 35462
    sget-object v0, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    invoke-virtual {v4}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    invoke-virtual {v0, v4}, Lkotlinx/coroutines/NonCancellable;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 35463
    sget-object v4, Lads_mobile_sdk/rs3;->b:Lads_mobile_sdk/qs3;

    invoke-interface {v0, v4}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 35464
    sget-object v4, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    invoke-interface {v0, v4}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 35465
    sget-object v4, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v0, v4}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 35466
    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v8

    .line 35472
    new-instance v11, Lads_mobile_sdk/we1;

    const/4 v15, 0x0

    invoke-direct {v11, v15, v7}, Lads_mobile_sdk/we1;-><init>(Lkotlin/coroutines/Continuation;Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;)V

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 35473
    check-cast v3, Lads_mobile_sdk/i01;

    invoke-static {v3}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;)V

    .line 35474
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_2

    const/4 v7, 0x0

    .line 36200
    :try_start_3f
    invoke-interface {v1, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_15

    invoke-static {v2, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_15
    move-exception v0

    move-object v3, v6

    goto/16 :goto_1e

    .line 36201
    :cond_24
    :try_start_40
    iget-object v3, v8, Lads_mobile_sdk/if1;->o:Lads_mobile_sdk/fg1;

    check-cast v3, Lads_mobile_sdk/gg1;

    invoke-virtual {v3, v8, v0, v7}, Lads_mobile_sdk/gg1;->a(Lads_mobile_sdk/if1;Lads_mobile_sdk/r31;Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;)Lads_mobile_sdk/eg1;

    move-result-object v0

    .line 36202
    iput-object v8, v4, Lads_mobile_sdk/qe1;->a:Lads_mobile_sdk/if1;

    iput-object v6, v4, Lads_mobile_sdk/qe1;->b:Ljava/lang/Object;

    iput-object v2, v4, Lads_mobile_sdk/qe1;->c:Ljava/lang/Object;

    iput-object v1, v4, Lads_mobile_sdk/qe1;->d:Ljava/lang/Object;

    iput-object v0, v4, Lads_mobile_sdk/qe1;->e:Ljava/lang/Object;

    const/4 v7, 0x0

    iput-object v7, v4, Lads_mobile_sdk/qe1;->f:Ljava/lang/Object;

    const/16 v3, 0x10

    iput v3, v4, Lads_mobile_sdk/qe1;->i:I

    invoke-virtual {v0, v4}, Lads_mobile_sdk/eg1;->g(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_2

    if-ne v3, v5, :cond_25

    :goto_18
    return-object v5

    :cond_25
    move-object v5, v6

    move-object v4, v8

    .line 36203
    :goto_19
    :try_start_41
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 36204
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v4, Lads_mobile_sdk/if1;->I:Ljava/lang/ref/WeakReference;

    .line 36206
    :cond_26
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_0

    const/4 v7, 0x0

    .line 36925
    :try_start_42
    invoke-interface {v1, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 36951
    instance-of v1, v0, Lads_mobile_sdk/i01;

    if-eqz v1, :cond_27

    .line 36952
    check-cast v0, Lads_mobile_sdk/i01;

    invoke-static {v0}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;)V
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_16

    :cond_27
    const/4 v7, 0x0

    .line 36953
    invoke-static {v2, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 36954
    :goto_1a
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 36955
    :cond_28
    :try_start_43
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_1

    .line 37689
    :goto_1b
    :try_start_44
    invoke-interface {v1, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_16

    :catchall_16
    move-exception v0

    move-object v3, v5

    goto :goto_1e

    :catchall_17
    move-exception v0

    const/4 v7, 0x0

    .line 37690
    :try_start_45
    invoke-interface {v6, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0

    :catchall_18
    move-exception v0

    const/4 v7, 0x0

    .line 37691
    invoke-interface {v6, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_3

    :goto_1c
    move-object v3, v2

    move-object v2, v1

    goto :goto_1e

    :catchall_19
    move-exception v0

    move-object/from16 v10, v22

    goto :goto_1d

    :catchall_1a
    move-exception v0

    move-object/from16 v10, v22

    const/4 v7, 0x0

    .line 37692
    :try_start_46
    invoke-interface {v6, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_1b

    :catchall_1b
    move-exception v0

    :goto_1d
    move-object v2, v3

    move-object v3, v10

    goto :goto_1e

    :catchall_1c
    move-exception v0

    move-object v2, v3

    .line 37940
    :goto_1e
    :try_start_47
    invoke-virtual {v3, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 37944
    instance-of v1, v0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_2d

    .line 37946
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_29

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_29

    .line 37952
    invoke-virtual {v3, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 37958
    :cond_29
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_2c

    .line 37959
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_2b

    .line 37960
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_2a

    throw v0

    .line 37961
    :cond_2a
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 37962
    :cond_2b
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 37963
    :cond_2c
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 37964
    :cond_2d
    throw v0
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_1d

    :catchall_1d
    move-exception v0

    move-object v1, v0

    .line 37965
    :try_start_48
    throw v1
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_1e

    :catchall_1e
    move-exception v0

    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Lads_mobile_sdk/if1;Lads_mobile_sdk/vd1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 39496
    instance-of v2, v1, Lads_mobile_sdk/af1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/af1;

    iget v3, v2, Lads_mobile_sdk/af1;->f:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/af1;->f:I

    goto :goto_0

    :cond_0
    new-instance v2, Lads_mobile_sdk/af1;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/af1;-><init>(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v13, v2

    iget-object v1, v13, Lads_mobile_sdk/af1;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 39777
    iget v3, v13, Lads_mobile_sdk/af1;->f:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v15, 0x0

    if-eqz v3, :cond_3

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    iget-object v2, v13, Lads_mobile_sdk/af1;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v13, Lads_mobile_sdk/af1;->b:Lads_mobile_sdk/vd1;

    iget-object v3, v13, Lads_mobile_sdk/af1;->a:Lads_mobile_sdk/if1;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .line 39778
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, v13, Lads_mobile_sdk/af1;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object v3, v13, Lads_mobile_sdk/af1;->b:Lads_mobile_sdk/vd1;

    iget-object v5, v13, Lads_mobile_sdk/af1;->a:Lads_mobile_sdk/if1;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v0

    move-object v6, v3

    move-object v3, v5

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 39779
    iget-object v1, v0, Lads_mobile_sdk/if1;->i:Lads_mobile_sdk/ex0;

    invoke-virtual {v1}, Lads_mobile_sdk/ex0;->a0()Z

    move-result v1

    if-nez v1, :cond_4

    .line 39780
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 39783
    :cond_4
    iget-object v1, v0, Lads_mobile_sdk/if1;->x:Lkotlinx/coroutines/sync/Mutex;

    .line 40416
    iput-object v0, v13, Lads_mobile_sdk/af1;->a:Lads_mobile_sdk/if1;

    move-object/from16 v3, p1

    iput-object v3, v13, Lads_mobile_sdk/af1;->b:Lads_mobile_sdk/vd1;

    iput-object v1, v13, Lads_mobile_sdk/af1;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v5, v13, Lads_mobile_sdk/af1;->f:I

    invoke-interface {v1, v15, v13}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_5

    goto :goto_2

    :cond_5
    move-object v6, v3

    move-object v3, v0

    .line 40417
    :goto_1
    :try_start_1
    iget-object v0, v3, Lads_mobile_sdk/if1;->y:Lads_mobile_sdk/og1;

    if-nez v0, :cond_6

    const-string v0, "storedInspectorSettings"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v15

    .line 40418
    :cond_6
    invoke-virtual {v0}, Lads_mobile_sdk/og1;->y()Lads_mobile_sdk/vd1;

    move-result-object v0

    if-ne v0, v6, :cond_7

    .line 40419
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 41054
    invoke-interface {v1, v15}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    .line 41055
    :cond_7
    :try_start_2
    iput-object v3, v13, Lads_mobile_sdk/af1;->a:Lads_mobile_sdk/if1;

    iput-object v6, v13, Lads_mobile_sdk/af1;->b:Lads_mobile_sdk/vd1;

    iput-object v1, v13, Lads_mobile_sdk/af1;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v13, Lads_mobile_sdk/af1;->f:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v14, 0x1fb

    invoke-static/range {v3 .. v14}, Lads_mobile_sdk/if1;->a(Lads_mobile_sdk/if1;Ljava/lang/Boolean;Ljava/lang/Boolean;Lads_mobile_sdk/vd1;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v0, v2, :cond_8

    :goto_2
    return-object v2

    :cond_8
    move-object v2, v1

    move-object v0, v6

    .line 41057
    :goto_3
    :try_start_3
    invoke-virtual {v3}, Lads_mobile_sdk/if1;->k()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 41058
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 41687
    invoke-interface {v2, v15}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    .line 41688
    :cond_9
    :try_start_4
    invoke-virtual {v3}, Lads_mobile_sdk/if1;->l()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 41689
    invoke-virtual {v3}, Lads_mobile_sdk/if1;->i()V

    .line 41690
    iget-object v1, v3, Lads_mobile_sdk/if1;->f:Lads_mobile_sdk/cw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/ed3;

    invoke-virtual {v1}, Lads_mobile_sdk/ed3;->a()V

    .line 41691
    iget-object v1, v3, Lads_mobile_sdk/if1;->g:Lads_mobile_sdk/cw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/ix0;

    invoke-virtual {v1}, Lads_mobile_sdk/ix0;->a()V

    .line 41692
    invoke-virtual {v3, v0}, Lads_mobile_sdk/if1;->a(Lads_mobile_sdk/vd1;)V

    .line 41694
    :cond_a
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 42314
    invoke-interface {v2, v15}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    :catchall_1
    move-exception v0

    move-object v2, v1

    .line 42315
    :goto_4
    invoke-interface {v2, v15}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method

.method public static synthetic a(Lads_mobile_sdk/if1;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 44555
    instance-of v2, v1, Lads_mobile_sdk/cf1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/cf1;

    iget v3, v2, Lads_mobile_sdk/cf1;->f:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/cf1;->f:I

    goto :goto_0

    :cond_0
    new-instance v2, Lads_mobile_sdk/cf1;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/cf1;-><init>(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v13, v2

    iget-object v1, v13, Lads_mobile_sdk/cf1;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 44786
    iget v3, v13, Lads_mobile_sdk/cf1;->f:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v15, 0x0

    if-eqz v3, :cond_3

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    iget-object v0, v13, Lads_mobile_sdk/cf1;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v13, Lads_mobile_sdk/cf1;->a:Lads_mobile_sdk/if1;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .line 44787
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, v13, Lads_mobile_sdk/cf1;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object v3, v13, Lads_mobile_sdk/cf1;->b:Ljava/lang/Object;

    check-cast v3, Lcom/google/gson/JsonObject;

    iget-object v5, v13, Lads_mobile_sdk/cf1;->a:Lads_mobile_sdk/if1;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v0

    move-object v0, v3

    move-object v3, v5

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v1, v0, Lads_mobile_sdk/if1;->x:Lkotlinx/coroutines/sync/Mutex;

    .line 45442
    iput-object v0, v13, Lads_mobile_sdk/cf1;->a:Lads_mobile_sdk/if1;

    move-object/from16 v3, p1

    iput-object v3, v13, Lads_mobile_sdk/cf1;->b:Ljava/lang/Object;

    iput-object v1, v13, Lads_mobile_sdk/cf1;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v5, v13, Lads_mobile_sdk/cf1;->f:I

    invoke-interface {v1, v15, v13}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_4

    goto :goto_2

    :cond_4
    move-object/from16 v16, v3

    move-object v3, v0

    move-object/from16 v0, v16

    .line 45443
    :goto_1
    :try_start_1
    iput-object v0, v3, Lads_mobile_sdk/if1;->A:Lcom/google/gson/JsonObject;

    .line 45444
    sget-object v5, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    const-string v5, "is_globally_allowlisted"

    const/4 v6, 0x0

    .line 45445
    invoke-static {v0, v5, v6}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Z)Z

    move-result v0

    .line 45446
    iget-object v5, v3, Lads_mobile_sdk/if1;->y:Lads_mobile_sdk/og1;

    if-nez v5, :cond_5

    const-string v5, "storedInspectorSettings"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v15

    .line 45447
    :cond_5
    invoke-virtual {v5}, Lads_mobile_sdk/og1;->z()Z

    move-result v5

    if-eq v0, v5, :cond_6

    .line 45448
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v12

    iput-object v3, v13, Lads_mobile_sdk/cf1;->a:Lads_mobile_sdk/if1;

    iput-object v1, v13, Lads_mobile_sdk/cf1;->b:Ljava/lang/Object;

    iput-object v15, v13, Lads_mobile_sdk/cf1;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v13, Lads_mobile_sdk/cf1;->f:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v14, 0xff

    invoke-static/range {v3 .. v14}, Lads_mobile_sdk/if1;->a(Lads_mobile_sdk/if1;Ljava/lang/Boolean;Ljava/lang/Boolean;Lads_mobile_sdk/vd1;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v0, v2, :cond_6

    :goto_2
    return-object v2

    :cond_6
    move-object v2, v1

    move-object v0, v3

    .line 45451
    :goto_3
    :try_start_2
    invoke-virtual {v0}, Lads_mobile_sdk/if1;->l()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-boolean v1, v0, Lads_mobile_sdk/if1;->z:Z

    if-nez v1, :cond_7

    .line 45452
    invoke-virtual {v0}, Lads_mobile_sdk/if1;->i()V

    .line 45454
    :cond_7
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46103
    invoke-interface {v2, v15}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    :catchall_1
    move-exception v0

    move-object v2, v1

    .line 46104
    :goto_4
    invoke-interface {v2, v15}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method

.method public static synthetic a(Lads_mobile_sdk/if1;Ljava/lang/Boolean;Ljava/lang/Boolean;Lads_mobile_sdk/vd1;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p10

    .line 49461
    instance-of v2, v1, Lads_mobile_sdk/gf1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/gf1;

    iget v3, v2, Lads_mobile_sdk/gf1;->n:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/gf1;->n:I

    goto :goto_0

    :cond_0
    new-instance v2, Lads_mobile_sdk/gf1;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/gf1;-><init>(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lads_mobile_sdk/gf1;->l:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 49815
    iget v4, v2, Lads_mobile_sdk/gf1;->n:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v0, v2, Lads_mobile_sdk/gf1;->a:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .line 49816
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, v2, Lads_mobile_sdk/gf1;->k:Lkotlinx/coroutines/sync/Mutex;

    iget-object v4, v2, Lads_mobile_sdk/gf1;->j:Ljava/lang/Boolean;

    iget-object v6, v2, Lads_mobile_sdk/gf1;->i:Ljava/lang/String;

    iget-object v8, v2, Lads_mobile_sdk/gf1;->h:Ljava/lang/String;

    iget-object v9, v2, Lads_mobile_sdk/gf1;->g:Ljava/lang/String;

    iget-object v10, v2, Lads_mobile_sdk/gf1;->f:Ljava/lang/Long;

    iget-object v11, v2, Lads_mobile_sdk/gf1;->e:Ljava/lang/String;

    iget-object v12, v2, Lads_mobile_sdk/gf1;->d:Lads_mobile_sdk/vd1;

    iget-object v13, v2, Lads_mobile_sdk/gf1;->c:Ljava/lang/Boolean;

    iget-object v14, v2, Lads_mobile_sdk/gf1;->b:Ljava/lang/Boolean;

    iget-object v15, v2, Lads_mobile_sdk/gf1;->a:Ljava/lang/Object;

    check-cast v15, Lads_mobile_sdk/if1;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v13

    move-object v13, v8

    move-object v8, v1

    move-object v1, v12

    move-object v12, v9

    move-object v9, v1

    move-object v1, v11

    move-object v11, v10

    move-object v10, v1

    move-object v1, v0

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 49826
    iget-object v1, v0, Lads_mobile_sdk/if1;->x:Lkotlinx/coroutines/sync/Mutex;

    .line 50403
    iput-object v0, v2, Lads_mobile_sdk/gf1;->a:Ljava/lang/Object;

    move-object/from16 v4, p1

    iput-object v4, v2, Lads_mobile_sdk/gf1;->b:Ljava/lang/Boolean;

    move-object/from16 v8, p2

    iput-object v8, v2, Lads_mobile_sdk/gf1;->c:Ljava/lang/Boolean;

    move-object/from16 v9, p3

    iput-object v9, v2, Lads_mobile_sdk/gf1;->d:Lads_mobile_sdk/vd1;

    move-object/from16 v10, p4

    iput-object v10, v2, Lads_mobile_sdk/gf1;->e:Ljava/lang/String;

    move-object/from16 v11, p5

    iput-object v11, v2, Lads_mobile_sdk/gf1;->f:Ljava/lang/Long;

    move-object/from16 v12, p6

    iput-object v12, v2, Lads_mobile_sdk/gf1;->g:Ljava/lang/String;

    move-object/from16 v13, p7

    iput-object v13, v2, Lads_mobile_sdk/gf1;->h:Ljava/lang/String;

    move-object/from16 v14, p8

    iput-object v14, v2, Lads_mobile_sdk/gf1;->i:Ljava/lang/String;

    move-object/from16 v15, p9

    iput-object v15, v2, Lads_mobile_sdk/gf1;->j:Ljava/lang/Boolean;

    iput-object v1, v2, Lads_mobile_sdk/gf1;->k:Lkotlinx/coroutines/sync/Mutex;

    iput v6, v2, Lads_mobile_sdk/gf1;->n:I

    invoke-interface {v1, v7, v2}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v3, :cond_4

    goto :goto_2

    :cond_4
    move-object v6, v14

    move-object v14, v4

    move-object v4, v15

    move-object v15, v0

    .line 50404
    :goto_1
    :try_start_1
    iput-object v1, v2, Lads_mobile_sdk/gf1;->a:Ljava/lang/Object;

    iput-object v7, v2, Lads_mobile_sdk/gf1;->b:Ljava/lang/Boolean;

    iput-object v7, v2, Lads_mobile_sdk/gf1;->c:Ljava/lang/Boolean;

    iput-object v7, v2, Lads_mobile_sdk/gf1;->d:Lads_mobile_sdk/vd1;

    iput-object v7, v2, Lads_mobile_sdk/gf1;->e:Ljava/lang/String;

    iput-object v7, v2, Lads_mobile_sdk/gf1;->f:Ljava/lang/Long;

    iput-object v7, v2, Lads_mobile_sdk/gf1;->g:Ljava/lang/String;

    iput-object v7, v2, Lads_mobile_sdk/gf1;->h:Ljava/lang/String;

    iput-object v7, v2, Lads_mobile_sdk/gf1;->i:Ljava/lang/String;

    iput-object v7, v2, Lads_mobile_sdk/gf1;->j:Ljava/lang/Boolean;

    iput-object v7, v2, Lads_mobile_sdk/gf1;->k:Lkotlinx/coroutines/sync/Mutex;

    iput v5, v2, Lads_mobile_sdk/gf1;->n:I

    move-object/from16 p10, v2

    move-object/from16 p9, v4

    move-object/from16 p8, v6

    move-object/from16 p2, v8

    move-object/from16 p3, v9

    move-object/from16 p4, v10

    move-object/from16 p5, v11

    move-object/from16 p6, v12

    move-object/from16 p7, v13

    move-object/from16 p1, v14

    move-object/from16 p0, v15

    invoke-virtual/range {p0 .. p10}, Lads_mobile_sdk/if1;->a(Ljava/lang/Boolean;Ljava/lang/Boolean;Lads_mobile_sdk/vd1;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v0, v3, :cond_5

    :goto_2
    return-object v3

    :cond_5
    move-object v2, v1

    .line 50415
    :goto_3
    :try_start_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50984
    invoke-interface {v2, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    :goto_4
    move-object v1, v2

    goto :goto_5

    :catchall_1
    move-exception v0

    .line 50985
    :goto_5
    invoke-interface {v1, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method

.method public static synthetic a(Lads_mobile_sdk/if1;Ljava/lang/Boolean;Ljava/lang/Boolean;Lads_mobile_sdk/vd1;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;
    .locals 2

    and-int/lit8 v0, p11, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p1, v1

    :cond_0
    and-int/lit8 v0, p11, 0x2

    if-eqz v0, :cond_1

    move-object p2, v1

    :cond_1
    and-int/lit8 v0, p11, 0x4

    if-eqz v0, :cond_2

    move-object p3, v1

    :cond_2
    and-int/lit8 v0, p11, 0x8

    if-eqz v0, :cond_3

    move-object p4, v1

    :cond_3
    and-int/lit8 v0, p11, 0x10

    if-eqz v0, :cond_4

    move-object p5, v1

    :cond_4
    and-int/lit8 v0, p11, 0x20

    if-eqz v0, :cond_5

    move-object p6, v1

    :cond_5
    and-int/lit8 v0, p11, 0x40

    if-eqz v0, :cond_6

    move-object p7, v1

    :cond_6
    and-int/lit16 v0, p11, 0x80

    if-eqz v0, :cond_7

    move-object p8, v1

    :cond_7
    and-int/lit16 p11, p11, 0x100

    if-eqz p11, :cond_8

    move-object p9, v1

    .line 52631
    :cond_8
    invoke-virtual/range {p0 .. p10}, Lads_mobile_sdk/if1;->a(Ljava/lang/Boolean;Ljava/lang/Boolean;Lads_mobile_sdk/vd1;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lads_mobile_sdk/if1;Ljava/lang/String;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 4374
    instance-of v4, v3, Lads_mobile_sdk/de1;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lads_mobile_sdk/de1;

    iget v5, v4, Lads_mobile_sdk/de1;->j:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Lads_mobile_sdk/de1;->j:I

    goto :goto_0

    :cond_0
    new-instance v4, Lads_mobile_sdk/de1;

    invoke-direct {v4, v0, v3}, Lads_mobile_sdk/de1;-><init>(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v9, v4

    iget-object v3, v9, Lads_mobile_sdk/de1;->h:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 5021
    iget v5, v9, Lads_mobile_sdk/de1;->j:I

    const-string v11, "1"

    const-string v12, "debug_mode"

    const-string v13, "Null response body when fetching debug settings"

    const-string v14, "exception"

    const-string v6, "gads:drx_debug:timeout_ms"

    const-string v15, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>"

    const-string v7, "toString(...)"

    const-string v8, "key"

    const-string v10, ""

    move-object/from16 v16, v10

    packed-switch v5, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-boolean v0, v9, Lads_mobile_sdk/de1;->g:Z

    iget-object v1, v9, Lads_mobile_sdk/de1;->b:Ljava/lang/Object;

    check-cast v1, Ljava/io/Closeable;

    iget-object v2, v9, Lads_mobile_sdk/de1;->a:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/rr3;

    :try_start_0
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_d

    .line 5022
    :pswitch_1
    iget-boolean v0, v9, Lads_mobile_sdk/de1;->g:Z

    iget-object v1, v9, Lads_mobile_sdk/de1;->d:Ljava/io/Closeable;

    iget-object v2, v9, Lads_mobile_sdk/de1;->c:Lads_mobile_sdk/rr3;

    iget-object v5, v9, Lads_mobile_sdk/de1;->b:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v9, Lads_mobile_sdk/de1;->a:Ljava/lang/Object;

    check-cast v6, Lads_mobile_sdk/if1;

    :try_start_1
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v10, v5

    move-object/from16 v3, v16

    goto/16 :goto_b

    .line 5023
    :pswitch_2
    iget-object v1, v9, Lads_mobile_sdk/de1;->d:Ljava/io/Closeable;

    iget-object v2, v9, Lads_mobile_sdk/de1;->c:Lads_mobile_sdk/rr3;

    iget-object v0, v9, Lads_mobile_sdk/de1;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v5, v9, Lads_mobile_sdk/de1;->a:Ljava/lang/Object;

    check-cast v5, Lads_mobile_sdk/if1;

    :try_start_2
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v6, v5

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    move-object/from16 v25, v13

    move-object/from16 v26, v14

    move-object v11, v15

    const/4 v13, 0x6

    move-object v5, v3

    move-object/from16 v3, v16

    goto/16 :goto_9

    :catchall_0
    move-exception v0

    goto/16 :goto_e

    .line 5024
    :pswitch_3
    iget-object v0, v9, Lads_mobile_sdk/de1;->f:Lads_mobile_sdk/e01;

    iget-object v1, v9, Lads_mobile_sdk/de1;->e:Lads_mobile_sdk/e81;

    iget-object v2, v9, Lads_mobile_sdk/de1;->d:Ljava/io/Closeable;

    iget-object v5, v9, Lads_mobile_sdk/de1;->c:Lads_mobile_sdk/rr3;

    iget-object v10, v9, Lads_mobile_sdk/de1;->b:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    move-object/from16 p0, v0

    iget-object v0, v9, Lads_mobile_sdk/de1;->a:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/if1;

    :try_start_3
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    move-object/from16 v25, v13

    move-object/from16 v26, v14

    move-object/from16 v21, v15

    move-object v11, v1

    move-object v12, v5

    move-object v1, v10

    move-object/from16 v5, p0

    move-object v10, v3

    move-object/from16 v3, v16

    goto/16 :goto_8

    :catchall_1
    move-exception v0

    goto/16 :goto_f

    .line 5025
    :pswitch_4
    iget-boolean v0, v9, Lads_mobile_sdk/de1;->g:Z

    iget-object v1, v9, Lads_mobile_sdk/de1;->b:Ljava/lang/Object;

    check-cast v1, Ljava/io/Closeable;

    iget-object v2, v9, Lads_mobile_sdk/de1;->a:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/rr3;

    :try_start_4
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v14, 0x0

    goto/16 :goto_5

    .line 5026
    :pswitch_5
    iget-boolean v0, v9, Lads_mobile_sdk/de1;->g:Z

    iget-object v1, v9, Lads_mobile_sdk/de1;->d:Ljava/io/Closeable;

    iget-object v2, v9, Lads_mobile_sdk/de1;->c:Lads_mobile_sdk/rr3;

    iget-object v5, v9, Lads_mobile_sdk/de1;->b:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v9, Lads_mobile_sdk/de1;->a:Ljava/lang/Object;

    check-cast v6, Lads_mobile_sdk/if1;

    :try_start_5
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v10, v5

    move-object/from16 v3, v16

    const/4 v14, 0x0

    goto/16 :goto_4

    .line 5027
    :pswitch_6
    iget-object v1, v9, Lads_mobile_sdk/de1;->d:Ljava/io/Closeable;

    iget-object v2, v9, Lads_mobile_sdk/de1;->c:Lads_mobile_sdk/rr3;

    iget-object v0, v9, Lads_mobile_sdk/de1;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v5, v9, Lads_mobile_sdk/de1;->a:Ljava/lang/Object;

    check-cast v5, Lads_mobile_sdk/if1;

    :try_start_6
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object v6, v5

    move-object/from16 v18, v11

    move-object/from16 v19, v12

    move-object/from16 v20, v13

    move-object/from16 v17, v14

    move-object/from16 v21, v15

    const/4 v12, 0x6

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v5, v3

    move-object/from16 v3, v16

    goto/16 :goto_2

    :catchall_2
    move-exception v0

    goto/16 :goto_6

    .line 5028
    :pswitch_7
    iget-object v0, v9, Lads_mobile_sdk/de1;->f:Lads_mobile_sdk/e01;

    iget-object v1, v9, Lads_mobile_sdk/de1;->e:Lads_mobile_sdk/e81;

    iget-object v2, v9, Lads_mobile_sdk/de1;->d:Ljava/io/Closeable;

    iget-object v5, v9, Lads_mobile_sdk/de1;->c:Lads_mobile_sdk/rr3;

    iget-object v10, v9, Lads_mobile_sdk/de1;->b:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    move-object/from16 p0, v0

    iget-object v0, v9, Lads_mobile_sdk/de1;->a:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/if1;

    :try_start_7
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-object/from16 v17, v10

    move-object v10, v1

    move-object/from16 v1, v17

    move-object/from16 v18, v11

    move-object/from16 v19, v12

    move-object/from16 v20, v13

    move-object/from16 v17, v14

    move-object/from16 v21, v15

    move-object v11, v5

    move-object/from16 v5, p0

    goto/16 :goto_1

    :catchall_3
    move-exception v0

    goto/16 :goto_7

    .line 5029
    :pswitch_8
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 5033
    iget-object v3, v0, Lads_mobile_sdk/if1;->q:Lads_mobile_sdk/g83;

    sget-object v5, Lads_mobile_sdk/s11;->W0:Lads_mobile_sdk/s11;

    .line 5865
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v10

    move-object/from16 v17, v14

    .line 5866
    new-instance v14, Lads_mobile_sdk/ks3;

    move-object/from16 v18, v11

    .line 5867
    new-instance v11, Lads_mobile_sdk/n03;

    invoke-direct {v11}, Lads_mobile_sdk/n03;-><init>()V

    move-object/from16 v19, v12

    .line 5868
    new-instance v12, Lads_mobile_sdk/tn1;

    invoke-direct {v12}, Lads_mobile_sdk/tn1;-><init>()V

    move-object/from16 v20, v13

    .line 5869
    new-instance v13, Lads_mobile_sdk/m33;

    invoke-direct {v13}, Lads_mobile_sdk/m33;-><init>()V

    move-object/from16 v21, v15

    .line 5870
    new-instance v15, Lads_mobile_sdk/zb;

    invoke-direct {v15}, Lads_mobile_sdk/zb;-><init>()V

    .line 5871
    invoke-direct {v14, v11, v12, v13, v15}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 5872
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v11

    .line 5873
    iget-object v11, v11, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const-string v12, "defaultValue"

    const-string v13, "https://www.google.com/dfp/debugSignals"

    const-string v15, "gads:drx_debug:debug_signal_status_url"

    move-object/from16 v22, v11

    const/4 v11, 0x1

    if-nez v22, :cond_f

    .line 5874
    invoke-static {v3, v5, v10, v14}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v3

    .line 5875
    :try_start_8
    iget-object v5, v0, Lads_mobile_sdk/if1;->k:Lads_mobile_sdk/e01;

    .line 5877
    new-instance v10, Lads_mobile_sdk/e81;

    invoke-direct {v10}, Lads_mobile_sdk/e81;-><init>()V

    .line 5879
    iget-object v14, v0, Lads_mobile_sdk/if1;->i:Lads_mobile_sdk/ex0;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5881
    invoke-static {v15, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5923
    sget-object v12, Lads_mobile_sdk/yr;->o:Lads_mobile_sdk/wr;

    invoke-virtual {v14, v15, v13, v12}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 5924
    iput-object v0, v9, Lads_mobile_sdk/de1;->a:Ljava/lang/Object;

    iput-object v1, v9, Lads_mobile_sdk/de1;->b:Ljava/lang/Object;

    iput-object v3, v9, Lads_mobile_sdk/de1;->c:Lads_mobile_sdk/rr3;

    iput-object v3, v9, Lads_mobile_sdk/de1;->d:Ljava/io/Closeable;

    iput-object v10, v9, Lads_mobile_sdk/de1;->e:Lads_mobile_sdk/e81;

    iput-object v5, v9, Lads_mobile_sdk/de1;->f:Lads_mobile_sdk/e01;

    iput v11, v9, Lads_mobile_sdk/de1;->j:I

    .line 5925
    invoke-static {v0, v12, v1, v2, v9}, Lads_mobile_sdk/if1;->a(Lads_mobile_sdk/if1;Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    if-ne v2, v4, :cond_1

    goto/16 :goto_c

    :cond_1
    move-object v11, v3

    move-object v3, v2

    move-object v2, v11

    .line 5926
    :goto_1
    :try_start_9
    check-cast v3, Landroid/net/Uri;

    .line 5937
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5938
    invoke-virtual {v10, v3}, Lads_mobile_sdk/e81;->b(Ljava/lang/String;)Lads_mobile_sdk/e81;

    move-result-object v3

    .line 5942
    invoke-virtual {v3}, Lads_mobile_sdk/e81;->a()Lads_mobile_sdk/f81;

    move-result-object v3

    .line 5943
    iget-object v7, v0, Lads_mobile_sdk/if1;->i:Lads_mobile_sdk/ex0;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5944
    sget-object v10, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v10, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    const/4 v12, 0x5

    invoke-static {v12, v10}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v12

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5945
    invoke-static {v12, v13}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v8

    sget-object v10, Lads_mobile_sdk/yr;->j:Lads_mobile_sdk/sr;

    invoke-virtual {v7, v6, v8, v10}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/time/Duration;

    invoke-virtual {v6}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v6

    .line 5946
    invoke-static {v6, v7}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v7

    .line 5947
    iput-object v0, v9, Lads_mobile_sdk/de1;->a:Ljava/lang/Object;

    iput-object v1, v9, Lads_mobile_sdk/de1;->b:Ljava/lang/Object;

    iput-object v11, v9, Lads_mobile_sdk/de1;->c:Lads_mobile_sdk/rr3;

    iput-object v2, v9, Lads_mobile_sdk/de1;->d:Ljava/io/Closeable;

    const/4 v6, 0x0

    iput-object v6, v9, Lads_mobile_sdk/de1;->e:Lads_mobile_sdk/e81;

    iput-object v6, v9, Lads_mobile_sdk/de1;->f:Lads_mobile_sdk/e01;

    const/4 v8, 0x2

    iput v8, v9, Lads_mobile_sdk/de1;->j:I

    const/4 v8, 0x0

    const/16 v10, 0x1c

    move-object v14, v6

    const/4 v12, 0x6

    const/4 v13, 0x0

    move-object v6, v3

    move-object/from16 v3, v16

    invoke-static/range {v5 .. v10}, Lads_mobile_sdk/e01;->a(Lads_mobile_sdk/e01;Lads_mobile_sdk/f81;Lkotlin/time/Duration;ZLkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    if-ne v5, v4, :cond_2

    goto/16 :goto_c

    :cond_2
    move-object v6, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v11

    .line 5948
    :goto_2
    :try_start_a
    check-cast v5, Lads_mobile_sdk/v01;

    .line 6790
    instance-of v7, v5, Lads_mobile_sdk/i01;

    if-eqz v7, :cond_3

    check-cast v5, Lads_mobile_sdk/i01;

    .line 6791
    invoke-static {v5, v13}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V

    .line 6792
    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    invoke-static {v1, v14}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :cond_3
    move-object/from16 v10, v21

    .line 7617
    :try_start_b
    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lads_mobile_sdk/q01;

    .line 7618
    iget-object v5, v5, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 7619
    check-cast v5, Lads_mobile_sdk/h81;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 7620
    :try_start_c
    iget-object v5, v5, Lads_mobile_sdk/h81;->d:Lads_mobile_sdk/p53;

    if-eqz v5, :cond_4

    .line 7621
    invoke-static {v5}, Lads_mobile_sdk/p53;->a(Lads_mobile_sdk/p53;)Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    :cond_4
    move-object v10, v14

    :goto_3
    if-nez v10, :cond_5

    move-object/from16 v5, v20

    .line 7623
    invoke-static {v5, v14, v12}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 7624
    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    invoke-static {v1, v14}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 7626
    :cond_5
    :try_start_d
    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    const-class v7, Lcom/google/gson/JsonObject;

    invoke-virtual {v5, v10, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/gson/JsonObject;

    .line 7628
    sget-object v7, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    move-object/from16 v7, v19

    .line 7629
    invoke-static {v5, v7, v3}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    move-object/from16 v7, v18

    .line 7630
    :try_start_e
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    .line 7631
    iput-object v6, v9, Lads_mobile_sdk/de1;->a:Ljava/lang/Object;

    iput-object v0, v9, Lads_mobile_sdk/de1;->b:Ljava/lang/Object;

    iput-object v2, v9, Lads_mobile_sdk/de1;->c:Lads_mobile_sdk/rr3;

    iput-object v1, v9, Lads_mobile_sdk/de1;->d:Ljava/io/Closeable;

    iput-boolean v5, v9, Lads_mobile_sdk/de1;->g:Z

    const/4 v7, 0x3

    iput v7, v9, Lads_mobile_sdk/de1;->j:I

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7632
    invoke-static {v6, v5, v9}, Lads_mobile_sdk/if1;->a(Lads_mobile_sdk/if1;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v4, :cond_6

    goto/16 :goto_c

    :cond_6
    move-object v10, v0

    move v0, v5

    :goto_4
    if-eqz v0, :cond_7

    if-nez v10, :cond_8

    :cond_7
    move-object v10, v3

    .line 7636
    :cond_8
    iput-object v2, v9, Lads_mobile_sdk/de1;->a:Ljava/lang/Object;

    iput-object v1, v9, Lads_mobile_sdk/de1;->b:Ljava/lang/Object;

    iput-object v14, v9, Lads_mobile_sdk/de1;->c:Lads_mobile_sdk/rr3;

    iput-object v14, v9, Lads_mobile_sdk/de1;->d:Ljava/io/Closeable;

    iput-boolean v0, v9, Lads_mobile_sdk/de1;->g:Z

    const/4 v3, 0x4

    iput v3, v9, Lads_mobile_sdk/de1;->j:I

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7637
    invoke-static {v6, v10, v9}, Lads_mobile_sdk/if1;->a(Lads_mobile_sdk/if1;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v4, :cond_9

    goto/16 :goto_c

    .line 7638
    :cond_9
    :goto_5
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    invoke-static {v1, v14}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_4
    move-exception v0

    move-object/from16 v3, v17

    .line 7639
    :try_start_f
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7640
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v3

    .line 7643
    invoke-virtual {v3}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v4

    iput-boolean v13, v4, Lads_mobile_sdk/uj2;->m:Z

    .line 7644
    invoke-virtual {v3, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 7645
    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    invoke-static {v1, v14}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :goto_6
    move-object v5, v2

    move-object v2, v1

    goto :goto_7

    :catchall_5
    move-exception v0

    move-object v5, v11

    goto :goto_7

    :catchall_6
    move-exception v0

    move-object v2, v3

    move-object v5, v2

    .line 8457
    :goto_7
    :try_start_10
    invoke-virtual {v5, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 8461
    instance-of v1, v0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_e

    .line 8463
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_a

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_a

    .line 8469
    invoke-virtual {v5, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 8475
    :cond_a
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_d

    .line 8476
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_c

    .line 8477
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_b

    throw v0

    .line 8478
    :cond_b
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 8479
    :cond_c
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 8480
    :cond_d
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 8481
    :cond_e
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    :catchall_7
    move-exception v0

    move-object v1, v0

    .line 8498
    :try_start_11
    throw v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    :catchall_8
    move-exception v0

    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_f
    move-object/from16 v3, v16

    move-object/from16 v26, v17

    move-object/from16 v23, v18

    move-object/from16 v24, v19

    move-object/from16 v25, v20

    const/4 v14, 0x0

    .line 8500
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v10

    invoke-static {v5, v10, v11}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v5

    .line 8501
    :try_start_12
    iget-object v10, v0, Lads_mobile_sdk/if1;->k:Lads_mobile_sdk/e01;

    .line 8503
    new-instance v11, Lads_mobile_sdk/e81;

    invoke-direct {v11}, Lads_mobile_sdk/e81;-><init>()V

    .line 8505
    iget-object v14, v0, Lads_mobile_sdk/if1;->i:Lads_mobile_sdk/ex0;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8507
    invoke-static {v15, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8549
    sget-object v12, Lads_mobile_sdk/yr;->o:Lads_mobile_sdk/wr;

    invoke-virtual {v14, v15, v13, v12}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 8550
    iput-object v0, v9, Lads_mobile_sdk/de1;->a:Ljava/lang/Object;

    iput-object v1, v9, Lads_mobile_sdk/de1;->b:Ljava/lang/Object;

    iput-object v5, v9, Lads_mobile_sdk/de1;->c:Lads_mobile_sdk/rr3;

    iput-object v5, v9, Lads_mobile_sdk/de1;->d:Ljava/io/Closeable;

    iput-object v11, v9, Lads_mobile_sdk/de1;->e:Lads_mobile_sdk/e81;

    iput-object v10, v9, Lads_mobile_sdk/de1;->f:Lads_mobile_sdk/e01;

    const/4 v13, 0x5

    iput v13, v9, Lads_mobile_sdk/de1;->j:I

    .line 8551
    invoke-static {v0, v12, v1, v2, v9}, Lads_mobile_sdk/if1;->a(Lads_mobile_sdk/if1;Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    if-ne v2, v4, :cond_10

    goto/16 :goto_c

    :cond_10
    move-object v12, v5

    move-object v5, v10

    move-object v10, v2

    move-object v2, v12

    .line 8552
    :goto_8
    :try_start_13
    check-cast v10, Landroid/net/Uri;

    .line 8563
    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8564
    invoke-virtual {v11, v10}, Lads_mobile_sdk/e81;->b(Ljava/lang/String;)Lads_mobile_sdk/e81;

    move-result-object v7

    .line 8568
    invoke-virtual {v7}, Lads_mobile_sdk/e81;->a()Lads_mobile_sdk/f81;

    move-result-object v7

    .line 8569
    iget-object v10, v0, Lads_mobile_sdk/if1;->i:Lads_mobile_sdk/ex0;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8570
    sget-object v11, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v11, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    const/4 v13, 0x5

    invoke-static {v13, v11}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v13

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8571
    invoke-static {v13, v14}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v8

    sget-object v11, Lads_mobile_sdk/yr;->j:Lads_mobile_sdk/sr;

    invoke-virtual {v10, v6, v8, v11}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/time/Duration;

    invoke-virtual {v6}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v10

    .line 8572
    invoke-static {v10, v11}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v6

    .line 8573
    iput-object v0, v9, Lads_mobile_sdk/de1;->a:Ljava/lang/Object;

    iput-object v1, v9, Lads_mobile_sdk/de1;->b:Ljava/lang/Object;

    iput-object v12, v9, Lads_mobile_sdk/de1;->c:Lads_mobile_sdk/rr3;

    iput-object v2, v9, Lads_mobile_sdk/de1;->d:Ljava/io/Closeable;

    const/4 v14, 0x0

    iput-object v14, v9, Lads_mobile_sdk/de1;->e:Lads_mobile_sdk/e81;

    iput-object v14, v9, Lads_mobile_sdk/de1;->f:Lads_mobile_sdk/e01;

    const/4 v8, 0x6

    iput v8, v9, Lads_mobile_sdk/de1;->j:I

    move v10, v8

    const/4 v8, 0x0

    move v11, v10

    const/16 v10, 0x1c

    move-object v13, v7

    move-object v7, v6

    move-object v6, v13

    move v13, v11

    move-object/from16 v11, v21

    invoke-static/range {v5 .. v10}, Lads_mobile_sdk/e01;->a(Lads_mobile_sdk/e01;Lads_mobile_sdk/f81;Lkotlin/time/Duration;ZLkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object v5
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    if-ne v5, v4, :cond_11

    goto/16 :goto_c

    :cond_11
    move-object v6, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v12

    .line 8574
    :goto_9
    :try_start_14
    check-cast v5, Lads_mobile_sdk/v01;

    .line 9416
    instance-of v7, v5, Lads_mobile_sdk/i01;

    if-eqz v7, :cond_12

    check-cast v5, Lads_mobile_sdk/i01;

    const/4 v7, 0x0

    .line 9417
    invoke-static {v5, v7}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V

    .line 9418
    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    const/4 v14, 0x0

    invoke-static {v1, v14}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :cond_12
    const/4 v7, 0x0

    .line 10243
    :try_start_15
    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lads_mobile_sdk/q01;

    .line 10244
    iget-object v5, v5, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 10245
    check-cast v5, Lads_mobile_sdk/h81;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 10246
    :try_start_16
    iget-object v5, v5, Lads_mobile_sdk/h81;->d:Lads_mobile_sdk/p53;

    if-eqz v5, :cond_13

    .line 10247
    invoke-static {v5}, Lads_mobile_sdk/p53;->a(Lads_mobile_sdk/p53;)Ljava/lang/String;

    move-result-object v10

    goto :goto_a

    :cond_13
    const/4 v10, 0x0

    :goto_a
    if-nez v10, :cond_14

    move-object/from16 v5, v25

    const/4 v14, 0x0

    .line 10249
    invoke-static {v5, v14, v13}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 10250
    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    invoke-static {v1, v14}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 10252
    :cond_14
    :try_start_17
    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    const-class v8, Lcom/google/gson/JsonObject;

    invoke-virtual {v5, v10, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/gson/JsonObject;

    .line 10254
    sget-object v8, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    move-object/from16 v8, v24

    .line 10255
    invoke-static {v5, v8, v3}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    move-object/from16 v7, v23

    .line 10256
    :try_start_18
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    .line 10257
    iput-object v6, v9, Lads_mobile_sdk/de1;->a:Ljava/lang/Object;

    iput-object v0, v9, Lads_mobile_sdk/de1;->b:Ljava/lang/Object;

    iput-object v2, v9, Lads_mobile_sdk/de1;->c:Lads_mobile_sdk/rr3;

    iput-object v1, v9, Lads_mobile_sdk/de1;->d:Ljava/io/Closeable;

    iput-boolean v5, v9, Lads_mobile_sdk/de1;->g:Z

    const/4 v7, 0x7

    iput v7, v9, Lads_mobile_sdk/de1;->j:I

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10258
    invoke-static {v6, v5, v9}, Lads_mobile_sdk/if1;->a(Lads_mobile_sdk/if1;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v4, :cond_15

    goto :goto_c

    :cond_15
    move-object v10, v0

    move v0, v5

    :goto_b
    if-eqz v0, :cond_16

    if-nez v10, :cond_17

    :cond_16
    move-object v10, v3

    .line 10262
    :cond_17
    iput-object v2, v9, Lads_mobile_sdk/de1;->a:Ljava/lang/Object;

    iput-object v1, v9, Lads_mobile_sdk/de1;->b:Ljava/lang/Object;

    const/4 v14, 0x0

    iput-object v14, v9, Lads_mobile_sdk/de1;->c:Lads_mobile_sdk/rr3;

    iput-object v14, v9, Lads_mobile_sdk/de1;->d:Ljava/io/Closeable;

    iput-boolean v0, v9, Lads_mobile_sdk/de1;->g:Z

    const/16 v3, 0x8

    iput v3, v9, Lads_mobile_sdk/de1;->j:I

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10263
    invoke-static {v6, v10, v9}, Lads_mobile_sdk/if1;->a(Lads_mobile_sdk/if1;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v4, :cond_18

    :goto_c
    return-object v4

    .line 10264
    :cond_18
    :goto_d
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    const/4 v14, 0x0

    invoke-static {v1, v14}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_9
    move-exception v0

    move-object/from16 v3, v26

    .line 10265
    :try_start_19
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10266
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v3

    .line 10269
    invoke-virtual {v3}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v4

    iput-boolean v7, v4, Lads_mobile_sdk/uj2;->m:Z

    .line 10270
    invoke-virtual {v3, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 10271
    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    const/4 v14, 0x0

    invoke-static {v1, v14}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :goto_e
    move-object v5, v2

    move-object v2, v1

    goto :goto_f

    :catchall_a
    move-exception v0

    move-object v5, v12

    goto :goto_f

    :catchall_b
    move-exception v0

    move-object v2, v5

    .line 11117
    :goto_f
    :try_start_1a
    invoke-virtual {v5, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 11121
    instance-of v1, v0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_1d

    .line 11123
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_19

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_19

    .line 11129
    invoke-virtual {v5, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 11135
    :cond_19
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_1c

    .line 11136
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_1b

    .line 11137
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_1a

    throw v0

    .line 11138
    :cond_1a
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 11139
    :cond_1b
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 11140
    :cond_1c
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 11141
    :cond_1d
    throw v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_c

    :catchall_c
    move-exception v0

    move-object v1, v0

    .line 11158
    :try_start_1b
    throw v1
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_d

    :catchall_d
    move-exception v0

    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Lads_mobile_sdk/if1;Ljava/lang/String;Ljava/lang/Long;Lads_mobile_sdk/gk3;)Ljava/lang/Object;
    .locals 11

    .line 49459
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v10, p3

    .line 49460
    invoke-static/range {v0 .. v10}, Lads_mobile_sdk/if1;->a(Lads_mobile_sdk/if1;Ljava/lang/Boolean;Ljava/lang/Boolean;Lads_mobile_sdk/vd1;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lads_mobile_sdk/if1;Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 2810
    instance-of v0, p4, Lads_mobile_sdk/ce1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lads_mobile_sdk/ce1;

    iget v1, v0, Lads_mobile_sdk/ce1;->j:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/ce1;->j:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/ce1;

    invoke-direct {v0, p0, p4}, Lads_mobile_sdk/ce1;-><init>(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lads_mobile_sdk/ce1;->h:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 3507
    iget v2, v0, Lads_mobile_sdk/ce1;->j:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lads_mobile_sdk/ce1;->g:Landroid/net/Uri$Builder;

    iget-object p1, v0, Lads_mobile_sdk/ce1;->f:Ljava/lang/String;

    iget-object p2, v0, Lads_mobile_sdk/ce1;->e:Landroid/net/Uri$Builder;

    iget-object p3, v0, Lads_mobile_sdk/ce1;->d:Landroid/net/Uri$Builder;

    iget-object v1, v0, Lads_mobile_sdk/ce1;->c:Lcom/google/gson/JsonObject;

    iget-object v2, v0, Lads_mobile_sdk/ce1;->b:Ljava/lang/String;

    iget-object v0, v0, Lads_mobile_sdk/ce1;->a:Lads_mobile_sdk/if1;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, p3

    move-object p3, p2

    move-object p2, v2

    move-object v2, p4

    move-object p4, v4

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4358
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 4359
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    .line 4361
    iput-object p0, v0, Lads_mobile_sdk/ce1;->a:Lads_mobile_sdk/if1;

    iput-object p2, v0, Lads_mobile_sdk/ce1;->b:Ljava/lang/String;

    iput-object p3, v0, Lads_mobile_sdk/ce1;->c:Lcom/google/gson/JsonObject;

    iput-object p1, v0, Lads_mobile_sdk/ce1;->d:Landroid/net/Uri$Builder;

    iput-object p1, v0, Lads_mobile_sdk/ce1;->e:Landroid/net/Uri$Builder;

    const-string p4, "linkedDeviceId"

    iput-object p4, v0, Lads_mobile_sdk/ce1;->f:Ljava/lang/String;

    iput-object p1, v0, Lads_mobile_sdk/ce1;->g:Landroid/net/Uri$Builder;

    iput v3, v0, Lads_mobile_sdk/ce1;->j:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4362
    invoke-static {p0, v0}, Lads_mobile_sdk/if1;->b(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v1, p3

    move-object v2, v0

    move-object v0, p0

    move-object p0, p1

    move-object p3, p0

    move-object p1, p4

    move-object p4, p3

    .line 4363
    :goto_1
    check-cast v2, Lads_mobile_sdk/og1;

    invoke-virtual {v2}, Lads_mobile_sdk/og1;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    if-eqz p2, :cond_4

    .line 4365
    const-string p0, "adSlotPath"

    invoke-virtual {p3, p0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 4367
    :cond_4
    iget-object p0, v0, Lads_mobile_sdk/if1;->e:Ljava/lang/String;

    const-string p1, "afmaVersion"

    invoke-virtual {p3, p1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    if-eqz v1, :cond_5

    .line 4370
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "debugData"

    invoke-virtual {p3, p1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 4373
    :cond_5
    invoke-virtual {p4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    const-string p1, "build(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic a(Lads_mobile_sdk/if1;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 37966
    instance-of v2, v1, Lads_mobile_sdk/ze1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/ze1;

    iget v3, v2, Lads_mobile_sdk/ze1;->f:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/ze1;->f:I

    goto :goto_0

    :cond_0
    new-instance v2, Lads_mobile_sdk/ze1;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/ze1;-><init>(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v13, v2

    iget-object v1, v13, Lads_mobile_sdk/ze1;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 38193
    iget v3, v13, Lads_mobile_sdk/ze1;->f:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v15, 0x0

    if-eqz v3, :cond_3

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    iget-object v0, v13, Lads_mobile_sdk/ze1;->a:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    .line 38194
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, v13, Lads_mobile_sdk/ze1;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object v3, v13, Lads_mobile_sdk/ze1;->b:Ljava/lang/String;

    iget-object v5, v13, Lads_mobile_sdk/ze1;->a:Ljava/lang/Object;

    check-cast v5, Lads_mobile_sdk/if1;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v0

    move-object v10, v3

    move-object v3, v5

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v1, v0, Lads_mobile_sdk/if1;->x:Lkotlinx/coroutines/sync/Mutex;

    .line 38842
    iput-object v0, v13, Lads_mobile_sdk/ze1;->a:Ljava/lang/Object;

    move-object/from16 v3, p1

    iput-object v3, v13, Lads_mobile_sdk/ze1;->b:Ljava/lang/String;

    iput-object v1, v13, Lads_mobile_sdk/ze1;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v5, v13, Lads_mobile_sdk/ze1;->f:I

    invoke-interface {v1, v15, v13}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_4

    goto :goto_2

    :cond_4
    move-object v10, v3

    move-object v3, v0

    .line 38843
    :goto_1
    :try_start_1
    iput-object v1, v13, Lads_mobile_sdk/ze1;->a:Ljava/lang/Object;

    iput-object v15, v13, Lads_mobile_sdk/ze1;->b:Ljava/lang/String;

    iput-object v15, v13, Lads_mobile_sdk/ze1;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v13, Lads_mobile_sdk/ze1;->f:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v14, 0x1bf

    invoke-static/range {v3 .. v14}, Lads_mobile_sdk/if1;->a(Lads_mobile_sdk/if1;Ljava/lang/Boolean;Ljava/lang/Boolean;Lads_mobile_sdk/vd1;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v0, v2, :cond_5

    :goto_2
    return-object v2

    :cond_5
    move-object v2, v1

    .line 38844
    :goto_3
    :try_start_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39494
    invoke-interface {v2, v15}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    :goto_4
    move-object v1, v2

    goto :goto_5

    :catchall_1
    move-exception v0

    .line 39495
    :goto_5
    invoke-interface {v1, v15}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method

.method public static synthetic a(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 11159
    instance-of v0, p1, Lads_mobile_sdk/ee1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/ee1;

    iget v1, v0, Lads_mobile_sdk/ee1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/ee1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/ee1;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/ee1;-><init>(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lads_mobile_sdk/ee1;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 11384
    iget v2, v0, Lads_mobile_sdk/ee1;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lads_mobile_sdk/ee1;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/ee1;->a:Lads_mobile_sdk/if1;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    move-object p0, v0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/if1;->x:Lkotlinx/coroutines/sync/Mutex;

    .line 12023
    iput-object p0, v0, Lads_mobile_sdk/ee1;->a:Lads_mobile_sdk/if1;

    iput-object p1, v0, Lads_mobile_sdk/ee1;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/ee1;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    .line 12024
    :cond_3
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lads_mobile_sdk/if1;->l()Z

    move-result p0

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12667
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    :catchall_0
    move-exception p0

    .line 12668
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static a(Lads_mobile_sdk/if1;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 42316
    instance-of v2, v1, Lads_mobile_sdk/bf1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/bf1;

    iget v3, v2, Lads_mobile_sdk/bf1;->f:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/bf1;->f:I

    goto :goto_0

    :cond_0
    new-instance v2, Lads_mobile_sdk/bf1;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/bf1;-><init>(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v13, v2

    iget-object v1, v13, Lads_mobile_sdk/bf1;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 42565
    iget v3, v13, Lads_mobile_sdk/bf1;->f:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v15, 0x0

    if-eqz v3, :cond_3

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    iget-boolean v0, v13, Lads_mobile_sdk/bf1;->c:Z

    iget-object v2, v13, Lads_mobile_sdk/bf1;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v3, v13, Lads_mobile_sdk/bf1;->a:Lads_mobile_sdk/if1;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    .line 42566
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-boolean v0, v13, Lads_mobile_sdk/bf1;->c:Z

    iget-object v3, v13, Lads_mobile_sdk/bf1;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v5, v13, Lads_mobile_sdk/bf1;->a:Lads_mobile_sdk/if1;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v3

    move-object v3, v5

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 42567
    iget-object v1, v0, Lads_mobile_sdk/if1;->i:Lads_mobile_sdk/ex0;

    invoke-virtual {v1}, Lads_mobile_sdk/ex0;->a0()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v0, Lads_mobile_sdk/if1;->i:Lads_mobile_sdk/ex0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42569
    const-string v3, "key"

    const-string v6, "gads:inspector:linked_device_enable_inspector"

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42585
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v7, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v1, v6, v3, v7}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_6

    .line 42586
    :cond_4
    iget-object v1, v0, Lads_mobile_sdk/if1;->x:Lkotlinx/coroutines/sync/Mutex;

    .line 43240
    iput-object v0, v13, Lads_mobile_sdk/bf1;->a:Lads_mobile_sdk/if1;

    iput-object v1, v13, Lads_mobile_sdk/bf1;->b:Lkotlinx/coroutines/sync/Mutex;

    move/from16 v3, p1

    iput-boolean v3, v13, Lads_mobile_sdk/bf1;->c:Z

    iput v5, v13, Lads_mobile_sdk/bf1;->f:I

    invoke-interface {v1, v15, v13}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_5

    goto :goto_2

    :cond_5
    move/from16 v16, v3

    move-object v3, v0

    move/from16 v0, v16

    .line 43241
    :goto_1
    :try_start_1
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v3, v13, Lads_mobile_sdk/bf1;->a:Lads_mobile_sdk/if1;

    iput-object v1, v13, Lads_mobile_sdk/bf1;->b:Lkotlinx/coroutines/sync/Mutex;

    iput-boolean v0, v13, Lads_mobile_sdk/bf1;->c:Z

    iput v4, v13, Lads_mobile_sdk/bf1;->f:I

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v14, 0x1fd

    invoke-static/range {v3 .. v14}, Lads_mobile_sdk/if1;->a(Lads_mobile_sdk/if1;Ljava/lang/Boolean;Ljava/lang/Boolean;Lads_mobile_sdk/vd1;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v4, v2, :cond_6

    :goto_2
    return-object v2

    :cond_6
    move-object v2, v1

    .line 43243
    :goto_3
    :try_start_2
    invoke-virtual {v3}, Lads_mobile_sdk/if1;->k()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 43244
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43898
    invoke-interface {v2, v15}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    .line 43899
    :cond_7
    :try_start_3
    iget-boolean v1, v3, Lads_mobile_sdk/if1;->z:Z

    if-nez v1, :cond_8

    if-eqz v0, :cond_8

    .line 43900
    invoke-virtual {v3}, Lads_mobile_sdk/if1;->i()V

    :cond_8
    if-eqz v0, :cond_b

    .line 43904
    iget-object v0, v3, Lads_mobile_sdk/if1;->y:Lads_mobile_sdk/og1;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v1, "storedInspectorSettings"

    if-nez v0, :cond_9

    :try_start_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v15

    .line 43905
    :cond_9
    invoke-virtual {v0}, Lads_mobile_sdk/og1;->B()Z

    move-result v0

    if-nez v0, :cond_b

    .line 43906
    iget-object v0, v3, Lads_mobile_sdk/if1;->y:Lads_mobile_sdk/og1;

    if-nez v0, :cond_a

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v15

    .line 43907
    :cond_a
    invoke-virtual {v0}, Lads_mobile_sdk/og1;->y()Lads_mobile_sdk/vd1;

    move-result-object v0

    const-string v1, "getGesture(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lads_mobile_sdk/if1;->a(Lads_mobile_sdk/vd1;)V

    goto :goto_4

    .line 43908
    :cond_b
    invoke-virtual {v3}, Lads_mobile_sdk/if1;->l()Z

    move-result v0

    if-nez v0, :cond_c

    .line 43909
    iget-object v0, v3, Lads_mobile_sdk/if1;->f:Lads_mobile_sdk/cw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/ed3;

    invoke-virtual {v0}, Lads_mobile_sdk/ed3;->a()V

    .line 43910
    iget-object v0, v3, Lads_mobile_sdk/if1;->g:Lads_mobile_sdk/cw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/ix0;

    invoke-virtual {v0}, Lads_mobile_sdk/ix0;->a()V

    .line 43911
    :cond_c
    :goto_4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 44552
    invoke-interface {v2, v15}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    :catchall_1
    move-exception v0

    move-object v2, v1

    .line 44553
    :goto_5
    invoke-interface {v2, v15}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0

    .line 44554
    :cond_d
    :goto_6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public static synthetic b(Lads_mobile_sdk/if1;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 4235
    instance-of v2, v1, Lads_mobile_sdk/ef1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/ef1;

    iget v3, v2, Lads_mobile_sdk/ef1;->f:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/ef1;->f:I

    goto :goto_0

    :cond_0
    new-instance v2, Lads_mobile_sdk/ef1;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/ef1;-><init>(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v13, v2

    iget-object v1, v13, Lads_mobile_sdk/ef1;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 4478
    iget v3, v13, Lads_mobile_sdk/ef1;->f:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v15, 0x0

    if-eqz v3, :cond_3

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    iget-object v0, v13, Lads_mobile_sdk/ef1;->a:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    .line 4479
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, v13, Lads_mobile_sdk/ef1;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object v3, v13, Lads_mobile_sdk/ef1;->b:Ljava/lang/String;

    iget-object v5, v13, Lads_mobile_sdk/ef1;->a:Ljava/lang/Object;

    check-cast v5, Lads_mobile_sdk/if1;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v0

    move-object v11, v3

    move-object v3, v5

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v1, v0, Lads_mobile_sdk/if1;->x:Lkotlinx/coroutines/sync/Mutex;

    .line 5133
    iput-object v0, v13, Lads_mobile_sdk/ef1;->a:Ljava/lang/Object;

    move-object/from16 v3, p1

    iput-object v3, v13, Lads_mobile_sdk/ef1;->b:Ljava/lang/String;

    iput-object v1, v13, Lads_mobile_sdk/ef1;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v5, v13, Lads_mobile_sdk/ef1;->f:I

    invoke-interface {v1, v15, v13}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_4

    goto :goto_2

    :cond_4
    move-object v11, v3

    move-object v3, v0

    .line 5134
    :goto_1
    :try_start_1
    iput-object v1, v13, Lads_mobile_sdk/ef1;->a:Ljava/lang/Object;

    iput-object v15, v13, Lads_mobile_sdk/ef1;->b:Ljava/lang/String;

    iput-object v15, v13, Lads_mobile_sdk/ef1;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v13, Lads_mobile_sdk/ef1;->f:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/16 v14, 0x17f

    invoke-static/range {v3 .. v14}, Lads_mobile_sdk/if1;->a(Lads_mobile_sdk/if1;Ljava/lang/Boolean;Ljava/lang/Boolean;Lads_mobile_sdk/vd1;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v0, v2, :cond_5

    :goto_2
    return-object v2

    :cond_5
    move-object v2, v1

    .line 5135
    :goto_3
    :try_start_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5791
    invoke-interface {v2, v15}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    :goto_4
    move-object v1, v2

    goto :goto_5

    :catchall_1
    move-exception v0

    .line 5792
    :goto_5
    invoke-interface {v1, v15}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method

.method public static synthetic b(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/je1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/je1;

    iget v1, v0, Lads_mobile_sdk/je1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/je1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/je1;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/je1;-><init>(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lads_mobile_sdk/je1;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 162
    iget v2, v0, Lads_mobile_sdk/je1;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lads_mobile_sdk/je1;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/je1;->a:Lads_mobile_sdk/if1;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    move-object p0, v0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/if1;->x:Lkotlinx/coroutines/sync/Mutex;

    .line 810
    iput-object p0, v0, Lads_mobile_sdk/je1;->a:Lads_mobile_sdk/if1;

    iput-object p1, v0, Lads_mobile_sdk/je1;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/je1;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    .line 811
    :cond_3
    :goto_1
    :try_start_0
    iget-object p0, p0, Lads_mobile_sdk/if1;->y:Lads_mobile_sdk/og1;

    if-nez p0, :cond_4

    const-string p0, "storedInspectorSettings"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p0, v4

    .line 1463
    :cond_4
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    :catchall_0
    move-exception p0

    .line 1464
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static b(Lads_mobile_sdk/if1;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1465
    instance-of v2, v1, Lads_mobile_sdk/df1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/df1;

    iget v3, v2, Lads_mobile_sdk/df1;->f:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/df1;->f:I

    goto :goto_0

    :cond_0
    new-instance v2, Lads_mobile_sdk/df1;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/df1;-><init>(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v13, v2

    iget-object v1, v13, Lads_mobile_sdk/df1;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 1778
    iget v3, v13, Lads_mobile_sdk/df1;->f:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-string v15, "storedInspectorSettings"

    const/4 v6, 0x0

    if-eqz v3, :cond_3

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    iget-boolean v0, v13, Lads_mobile_sdk/df1;->c:Z

    iget-object v2, v13, Lads_mobile_sdk/df1;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v3, v13, Lads_mobile_sdk/df1;->a:Lads_mobile_sdk/if1;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v6

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    :goto_1
    move-object v1, v6

    goto/16 :goto_8

    .line 1779
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-boolean v0, v13, Lads_mobile_sdk/df1;->c:Z

    iget-object v3, v13, Lads_mobile_sdk/df1;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v5, v13, Lads_mobile_sdk/df1;->a:Lads_mobile_sdk/if1;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v3

    move-object v3, v5

    goto :goto_2

    :cond_3
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1780
    iget-object v1, v0, Lads_mobile_sdk/if1;->i:Lads_mobile_sdk/ex0;

    invoke-virtual {v1}, Lads_mobile_sdk/ex0;->a0()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1781
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 1784
    :cond_4
    iget-object v1, v0, Lads_mobile_sdk/if1;->x:Lkotlinx/coroutines/sync/Mutex;

    .line 2396
    iput-object v0, v13, Lads_mobile_sdk/df1;->a:Lads_mobile_sdk/if1;

    iput-object v1, v13, Lads_mobile_sdk/df1;->b:Lkotlinx/coroutines/sync/Mutex;

    move/from16 v3, p1

    iput-boolean v3, v13, Lads_mobile_sdk/df1;->c:Z

    iput v5, v13, Lads_mobile_sdk/df1;->f:I

    invoke-interface {v1, v6, v13}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_5

    goto :goto_4

    :cond_5
    move/from16 v17, v3

    move-object v3, v0

    move/from16 v0, v17

    .line 2397
    :goto_2
    :try_start_1
    iget-object v5, v3, Lads_mobile_sdk/if1;->y:Lads_mobile_sdk/og1;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-nez v5, :cond_6

    :try_start_2
    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v5, v6

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_1

    .line 2398
    :cond_6
    :goto_3
    :try_start_3
    invoke-virtual {v5}, Lads_mobile_sdk/og1;->B()Z

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-ne v5, v0, :cond_7

    .line 2399
    :try_start_4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3013
    invoke-interface {v1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    .line 3014
    :cond_7
    :try_start_5
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v3, v13, Lads_mobile_sdk/df1;->a:Lads_mobile_sdk/if1;

    iput-object v1, v13, Lads_mobile_sdk/df1;->b:Lkotlinx/coroutines/sync/Mutex;

    iput-boolean v0, v13, Lads_mobile_sdk/df1;->c:Z

    iput v4, v13, Lads_mobile_sdk/df1;->f:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-object v4, v5

    const/4 v5, 0x0

    move-object v7, v6

    const/4 v6, 0x0

    move-object v8, v7

    const/4 v7, 0x0

    move-object v9, v8

    const/4 v8, 0x0

    move-object v10, v9

    const/4 v9, 0x0

    move-object v11, v10

    const/4 v10, 0x0

    move-object v12, v11

    const/4 v11, 0x0

    move-object v14, v12

    const/4 v12, 0x0

    move-object/from16 v16, v14

    const/16 v14, 0x1fe

    move-object/from16 p0, v1

    move-object/from16 v1, v16

    :try_start_6
    invoke-static/range {v3 .. v14}, Lads_mobile_sdk/if1;->a(Lads_mobile_sdk/if1;Ljava/lang/Boolean;Ljava/lang/Boolean;Lads_mobile_sdk/vd1;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-ne v4, v2, :cond_8

    :goto_4
    return-object v2

    :cond_8
    move-object/from16 v2, p0

    .line 3016
    :goto_5
    :try_start_7
    invoke-virtual {v3}, Lads_mobile_sdk/if1;->k()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 3017
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 3625
    invoke-interface {v2, v1}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    .line 3626
    :cond_9
    :try_start_8
    iget-boolean v4, v3, Lads_mobile_sdk/if1;->z:Z

    if-nez v4, :cond_a

    if-eqz v0, :cond_a

    .line 3627
    invoke-virtual {v3}, Lads_mobile_sdk/if1;->i()V

    :cond_a
    if-eqz v0, :cond_d

    .line 3631
    iget-object v6, v3, Lads_mobile_sdk/if1;->y:Lads_mobile_sdk/og1;

    if-nez v6, :cond_b

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v1

    .line 3632
    :cond_b
    invoke-virtual {v6}, Lads_mobile_sdk/og1;->A()Z

    move-result v0

    if-nez v0, :cond_d

    .line 3633
    iget-object v6, v3, Lads_mobile_sdk/if1;->y:Lads_mobile_sdk/og1;

    if-nez v6, :cond_c

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v1

    .line 3634
    :cond_c
    invoke-virtual {v6}, Lads_mobile_sdk/og1;->y()Lads_mobile_sdk/vd1;

    move-result-object v0

    const-string v4, "getGesture(...)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lads_mobile_sdk/if1;->a(Lads_mobile_sdk/vd1;)V

    goto :goto_6

    .line 3635
    :cond_d
    invoke-virtual {v3}, Lads_mobile_sdk/if1;->l()Z

    move-result v0

    if-nez v0, :cond_e

    .line 3636
    iget-object v0, v3, Lads_mobile_sdk/if1;->f:Lads_mobile_sdk/cw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/ed3;

    invoke-virtual {v0}, Lads_mobile_sdk/ed3;->a()V

    .line 3637
    iget-object v0, v3, Lads_mobile_sdk/if1;->g:Lads_mobile_sdk/cw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/ix0;

    invoke-virtual {v0}, Lads_mobile_sdk/ix0;->a()V

    .line 3638
    :cond_e
    :goto_6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 4233
    invoke-interface {v2, v1}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    :catchall_2
    move-exception v0

    goto :goto_8

    :catchall_3
    move-exception v0

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object/from16 p0, v1

    move-object v1, v6

    :goto_7
    move-object/from16 v2, p0

    .line 4234
    :goto_8
    invoke-interface {v2, v1}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method

.method public static synthetic c(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/ke1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/ke1;

    iget v1, v0, Lads_mobile_sdk/ke1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/ke1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/ke1;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/ke1;-><init>(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lads_mobile_sdk/ke1;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 517
    iget v2, v0, Lads_mobile_sdk/ke1;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lads_mobile_sdk/ke1;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/ke1;->a:Lads_mobile_sdk/if1;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    move-object p0, v0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/if1;->x:Lkotlinx/coroutines/sync/Mutex;

    .line 1425
    iput-object p0, v0, Lads_mobile_sdk/ke1;->a:Lads_mobile_sdk/if1;

    iput-object p1, v0, Lads_mobile_sdk/ke1;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/ke1;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    .line 1426
    :cond_3
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lads_mobile_sdk/if1;->k()Z

    move-result p0

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2337
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static synthetic d(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/ne1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/ne1;

    iget v1, v0, Lads_mobile_sdk/ne1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/ne1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/ne1;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/ne1;-><init>(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lads_mobile_sdk/ne1;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 579
    iget v2, v0, Lads_mobile_sdk/ne1;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lads_mobile_sdk/ne1;->a:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    .line 580
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lads_mobile_sdk/ne1;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lads_mobile_sdk/ne1;->a:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/if1;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    move-object p0, v2

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/if1;->H:Lkotlinx/coroutines/sync/Mutex;

    .line 1436
    iput-object p0, v0, Lads_mobile_sdk/ne1;->a:Ljava/lang/Object;

    iput-object p1, v0, Lads_mobile_sdk/ne1;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v0, Lads_mobile_sdk/ne1;->e:I

    invoke-interface {p1, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    goto :goto_2

    .line 1437
    :cond_4
    :goto_1
    :try_start_1
    iget-object p0, p0, Lads_mobile_sdk/if1;->I:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lads_mobile_sdk/eg1;

    if-eqz p0, :cond_5

    iput-object p1, v0, Lads_mobile_sdk/ne1;->a:Ljava/lang/Object;

    iput-object v5, v0, Lads_mobile_sdk/ne1;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/ne1;->e:I

    invoke-virtual {p0, v0}, Lads_mobile_sdk/eg1;->f(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p0, v1, :cond_5

    :goto_2
    return-object v1

    :catchall_1
    move-exception p0

    goto :goto_5

    :cond_5
    move-object p0, p1

    .line 1438
    :goto_3
    :try_start_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2296
    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :goto_4
    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    .line 2297
    :goto_5
    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static e(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/xe1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/xe1;

    iget v1, v0, Lads_mobile_sdk/xe1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/xe1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/xe1;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/xe1;-><init>(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lads_mobile_sdk/xe1;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 151
    iget v2, v0, Lads_mobile_sdk/xe1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lads_mobile_sdk/xe1;->a:Lads_mobile_sdk/if1;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 152
    iput-object p0, v0, Lads_mobile_sdk/xe1;->a:Lads_mobile_sdk/if1;

    iput v3, v0, Lads_mobile_sdk/xe1;->d:I

    invoke-virtual {p0, v0}, Lads_mobile_sdk/if1;->A(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 153
    :cond_3
    :goto_1
    iget-object v0, p0, Lads_mobile_sdk/if1;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lads_mobile_sdk/ye1;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lads_mobile_sdk/ye1;-><init>(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)V

    move-object p0, v1

    .line 154
    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 155
    const-string v2, "<this>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "block"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 413
    new-instance v3, Lads_mobile_sdk/ws3;

    invoke-direct {v3, p1, p0}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 414
    new-instance p0, Lads_mobile_sdk/q01;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {p0, p1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public final A(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/me1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/me1;

    iget v1, v0, Lads_mobile_sdk/me1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/me1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/me1;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/me1;-><init>(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lads_mobile_sdk/me1;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 165
    iget v2, v0, Lads_mobile_sdk/me1;->e:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v1, v0, Lads_mobile_sdk/me1;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/me1;->a:Lads_mobile_sdk/if1;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lads_mobile_sdk/me1;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v4, v0, Lads_mobile_sdk/me1;->a:Lads_mobile_sdk/if1;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v2

    move-object v2, v4

    goto :goto_2

    :cond_3
    iget-object v2, v0, Lads_mobile_sdk/me1;->a:Lads_mobile_sdk/if1;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 166
    iput-object p0, v0, Lads_mobile_sdk/me1;->a:Lads_mobile_sdk/if1;

    iput v5, v0, Lads_mobile_sdk/me1;->e:I

    invoke-virtual {p0, v0}, Lads_mobile_sdk/if1;->z(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    goto :goto_4

    :cond_5
    move-object v2, p0

    .line 169
    :goto_1
    iget-object p1, v2, Lads_mobile_sdk/if1;->i:Lads_mobile_sdk/ex0;

    invoke-virtual {p1}, Lads_mobile_sdk/ex0;->a0()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, v2, Lads_mobile_sdk/if1;->x:Lkotlinx/coroutines/sync/Mutex;

    .line 821
    iput-object v2, v0, Lads_mobile_sdk/me1;->a:Lads_mobile_sdk/if1;

    iput-object p1, v0, Lads_mobile_sdk/me1;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v0, Lads_mobile_sdk/me1;->e:I

    invoke-interface {p1, v6, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_6

    goto :goto_4

    .line 822
    :cond_6
    :goto_2
    :try_start_0
    iget-boolean v4, v2, Lads_mobile_sdk/if1;->z:Z

    if-nez v4, :cond_8

    invoke-virtual {v2}, Lads_mobile_sdk/if1;->k()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_7

    goto :goto_3

    :cond_7
    const/4 v5, 0x0

    .line 1478
    :cond_8
    :goto_3
    invoke-interface {p1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    if-eqz v5, :cond_9

    goto :goto_6

    .line 1479
    :cond_9
    iget-object p1, v2, Lads_mobile_sdk/if1;->x:Lkotlinx/coroutines/sync/Mutex;

    .line 2134
    iput-object v2, v0, Lads_mobile_sdk/me1;->a:Lads_mobile_sdk/if1;

    iput-object p1, v0, Lads_mobile_sdk/me1;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/me1;->e:I

    invoke-interface {p1, v6, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_a

    :goto_4
    return-object v1

    :cond_a
    move-object v1, p1

    move-object v0, v2

    .line 2135
    :goto_5
    :try_start_1
    invoke-virtual {v0}, Lads_mobile_sdk/if1;->l()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 2136
    invoke-virtual {v0}, Lads_mobile_sdk/if1;->i()V

    .line 2138
    :cond_b
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2793
    invoke-interface {v1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    .line 2794
    invoke-interface {v1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1

    :catchall_1
    move-exception v0

    .line 2795
    invoke-interface {p1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0

    .line 2796
    :cond_c
    :goto_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    .line 46105
    instance-of v0, p2, Lads_mobile_sdk/ff1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/ff1;

    iget v1, v0, Lads_mobile_sdk/ff1;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/ff1;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/ff1;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/ff1;-><init>(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lads_mobile_sdk/ff1;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 46589
    iget v2, v0, Lads_mobile_sdk/ff1;->f:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget p1, v0, Lads_mobile_sdk/ff1;->c:I

    iget-object v1, v0, Lads_mobile_sdk/ff1;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/ff1;->a:Lads_mobile_sdk/if1;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p2, p0, Lads_mobile_sdk/if1;->D:Lkotlinx/coroutines/sync/Mutex;

    .line 47363
    iput-object p0, v0, Lads_mobile_sdk/ff1;->a:Lads_mobile_sdk/if1;

    iput-object p2, v0, Lads_mobile_sdk/ff1;->b:Lkotlinx/coroutines/sync/Mutex;

    iput p1, v0, Lads_mobile_sdk/ff1;->c:I

    iput v3, v0, Lads_mobile_sdk/ff1;->f:I

    invoke-interface {p2, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    move-object v1, p2

    .line 47364
    :goto_1
    :try_start_0
    iget-wide v5, v0, Lads_mobile_sdk/if1;->E:J

    int-to-long p1, p1

    add-long/2addr v5, p1

    iget-object v2, v0, Lads_mobile_sdk/if1;->i:Lads_mobile_sdk/ex0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47365
    const-string v7, "gads:inspector:max_ad_response_logs_bytes"

    const-string v8, "key"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/32 v8, 0x1400000

    .line 47366
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    sget-object v9, Lads_mobile_sdk/yr;->d:Lads_mobile_sdk/rr;

    invoke-virtual {v2, v7, v8, v9}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    cmp-long v2, v5, v7

    if-ltz v2, :cond_4

    const/4 p1, 0x0

    .line 47367
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48144
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    .line 48145
    :cond_4
    :try_start_1
    iget-wide v5, v0, Lads_mobile_sdk/if1;->E:J

    add-long/2addr v5, p1

    iput-wide v5, v0, Lads_mobile_sdk/if1;->E:J

    .line 48146
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48921
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final a(Lads_mobile_sdk/oh2;)Ljava/lang/Object;
    .locals 0

    .line 12670
    invoke-static {p0, p1}, Lads_mobile_sdk/if1;->d(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Boolean;Ljava/lang/Boolean;Lads_mobile_sdk/vd1;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    move-object/from16 v0, p10

    .line 50986
    instance-of v1, v0, Lads_mobile_sdk/hf1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lads_mobile_sdk/hf1;

    iget v2, v1, Lads_mobile_sdk/hf1;->d:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lads_mobile_sdk/hf1;->d:I

    goto :goto_0

    :cond_0
    new-instance v1, Lads_mobile_sdk/hf1;

    invoke-direct {v1, p0, v0}, Lads_mobile_sdk/hf1;-><init>(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Lads_mobile_sdk/hf1;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 51365
    iget v3, v1, Lads_mobile_sdk/hf1;->d:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    iget-object p1, v1, Lads_mobile_sdk/hf1;->a:Lads_mobile_sdk/if1;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 51377
    iget-object v0, p0, Lads_mobile_sdk/if1;->l:Lads_mobile_sdk/qg1;

    .line 51933
    invoke-static {}, Lads_mobile_sdk/og1;->F()Lads_mobile_sdk/ng1;

    move-result-object v3

    const-string v5, "newBuilder(...)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51934
    const-string v5, "builder"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "storedInspectorSettings"

    const/4 v6, 0x0

    if-eqz p1, :cond_3

    .line 51935
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lads_mobile_sdk/if1;->y:Lads_mobile_sdk/og1;

    if-nez p1, :cond_4

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v6

    :cond_4
    invoke-virtual {p1}, Lads_mobile_sdk/og1;->B()Z

    move-result p1

    .line 51936
    :goto_1
    invoke-virtual {v3, p1}, Lads_mobile_sdk/ng1;->c(Z)V

    if-eqz p2, :cond_5

    .line 51937
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lads_mobile_sdk/if1;->y:Lads_mobile_sdk/og1;

    if-nez p1, :cond_6

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v6

    :cond_6
    invoke-virtual {p1}, Lads_mobile_sdk/og1;->A()Z

    move-result p1

    .line 51938
    :goto_2
    invoke-virtual {v3, p1}, Lads_mobile_sdk/ng1;->b(Z)V

    if-nez p3, :cond_8

    .line 51939
    iget-object p1, p0, Lads_mobile_sdk/if1;->y:Lads_mobile_sdk/og1;

    if-nez p1, :cond_7

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v6

    :cond_7
    invoke-virtual {p1}, Lads_mobile_sdk/og1;->y()Lads_mobile_sdk/vd1;

    move-result-object p3

    const-string p1, "getGesture(...)"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51940
    :cond_8
    const-string p1, "value"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52019
    invoke-virtual {v3, p3}, Lads_mobile_sdk/ng1;->a(Lads_mobile_sdk/vd1;)V

    if-eqz p5, :cond_9

    .line 52020
    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    goto :goto_3

    :cond_9
    iget-object p2, p0, Lads_mobile_sdk/if1;->y:Lads_mobile_sdk/og1;

    if-nez p2, :cond_a

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v6

    :cond_a
    invoke-virtual {p2}, Lads_mobile_sdk/og1;->D()J

    move-result-wide p2

    .line 52021
    :goto_3
    invoke-virtual {v3, p2, p3}, Lads_mobile_sdk/ng1;->a(J)V

    if-nez p4, :cond_c

    .line 52022
    iget-object p2, p0, Lads_mobile_sdk/if1;->y:Lads_mobile_sdk/og1;

    if-nez p2, :cond_b

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v6

    :cond_b
    invoke-virtual {p2}, Lads_mobile_sdk/og1;->C()Ljava/lang/String;

    move-result-object p4

    const-string p2, "getNetworkExtras(...)"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52023
    :cond_c
    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52126
    invoke-virtual {v3, p4}, Lads_mobile_sdk/ng1;->c(Ljava/lang/String;)V

    if-nez p6, :cond_e

    .line 52127
    iget-object p2, p0, Lads_mobile_sdk/if1;->y:Lads_mobile_sdk/og1;

    if-nez p2, :cond_d

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v6

    :cond_d
    invoke-virtual {p2}, Lads_mobile_sdk/og1;->x()Ljava/lang/String;

    move-result-object p2

    const-string p3, "getDeviceIdForDebugging(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :cond_e
    move-object p2, p6

    .line 52128
    :goto_4
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52265
    invoke-virtual {v3, p2}, Lads_mobile_sdk/ng1;->b(Ljava/lang/String;)V

    if-nez p7, :cond_10

    .line 52266
    iget-object p2, p0, Lads_mobile_sdk/if1;->y:Lads_mobile_sdk/og1;

    if-nez p2, :cond_f

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v6

    :cond_f
    invoke-virtual {p2}, Lads_mobile_sdk/og1;->v()Ljava/lang/String;

    move-result-object p2

    const-string p3, "getDebugAdUnitId(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    :cond_10
    move-object p2, p7

    .line 52267
    :goto_5
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52421
    invoke-virtual {v3, p2}, Lads_mobile_sdk/ng1;->a(Ljava/lang/String;)V

    if-nez p8, :cond_12

    .line 52422
    iget-object p2, p0, Lads_mobile_sdk/if1;->y:Lads_mobile_sdk/og1;

    if-nez p2, :cond_11

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v6

    :cond_11
    invoke-virtual {p2}, Lads_mobile_sdk/og1;->E()Ljava/lang/String;

    move-result-object p2

    const-string p3, "getUiStorage(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    :cond_12
    move-object p2, p8

    .line 52423
    :goto_6
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52594
    invoke-virtual {v3, p2}, Lads_mobile_sdk/ng1;->d(Ljava/lang/String;)V

    if-eqz p9, :cond_13

    .line 52595
    invoke-virtual/range {p9 .. p9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_7

    :cond_13
    iget-object p1, p0, Lads_mobile_sdk/if1;->y:Lads_mobile_sdk/og1;

    if-nez p1, :cond_14

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v6

    :cond_14
    invoke-virtual {p1}, Lads_mobile_sdk/og1;->z()Z

    move-result p1

    .line 52596
    :goto_7
    invoke-virtual {v3, p1}, Lads_mobile_sdk/ng1;->a(Z)V

    .line 52597
    invoke-virtual {v3}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object p1

    const-string p2, "build(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lads_mobile_sdk/og1;

    .line 52598
    iput-object p0, v1, Lads_mobile_sdk/hf1;->a:Lads_mobile_sdk/if1;

    iput v4, v1, Lads_mobile_sdk/hf1;->d:I

    .line 52599
    iget-object p2, v0, Lads_mobile_sdk/qg1;->a:Lads_mobile_sdk/ks1;

    .line 52600
    invoke-interface {p2}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/datastore/core/DataStore;

    new-instance p3, Lads_mobile_sdk/pg1;

    invoke-direct {p3, p1, v6}, Lads_mobile_sdk/pg1;-><init>(Lads_mobile_sdk/og1;Lkotlin/coroutines/Continuation;)V

    invoke-interface {p2, p3, v1}, Landroidx/datastore/core/DataStore;->updateData(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_15

    return-object v2

    :cond_15
    move-object p1, p0

    .line 52601
    :goto_8
    check-cast v0, Lads_mobile_sdk/og1;

    .line 52612
    iput-object v0, p1, Lads_mobile_sdk/if1;->y:Lads_mobile_sdk/og1;

    .line 52629
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lads_mobile_sdk/md1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p3, Lads_mobile_sdk/be1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/be1;

    iget v1, v0, Lads_mobile_sdk/be1;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/be1;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/be1;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/be1;-><init>(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lads_mobile_sdk/be1;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 471
    iget v2, v0, Lads_mobile_sdk/be1;->g:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lads_mobile_sdk/be1;->d:Lkotlinx/coroutines/sync/Mutex;

    iget-object p2, v0, Lads_mobile_sdk/be1;->c:Lads_mobile_sdk/md1;

    iget-object v1, v0, Lads_mobile_sdk/be1;->b:Ljava/lang/String;

    iget-object v0, v0, Lads_mobile_sdk/be1;->a:Lads_mobile_sdk/if1;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p3, p1

    move-object p1, v1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 472
    iget-object p3, p0, Lads_mobile_sdk/if1;->D:Lkotlinx/coroutines/sync/Mutex;

    .line 1248
    iput-object p0, v0, Lads_mobile_sdk/be1;->a:Lads_mobile_sdk/if1;

    iput-object p1, v0, Lads_mobile_sdk/be1;->b:Ljava/lang/String;

    iput-object p2, v0, Lads_mobile_sdk/be1;->c:Lads_mobile_sdk/md1;

    iput-object p3, v0, Lads_mobile_sdk/be1;->d:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/be1;->g:I

    invoke-interface {p3, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 1249
    :goto_1
    :try_start_0
    iget-object v1, v0, Lads_mobile_sdk/if1;->F:Ljava/util/LinkedHashMap;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget-object v2, v0, Lads_mobile_sdk/if1;->i:Lads_mobile_sdk/ex0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1250
    const-string v3, "gads:inspector:max_ad_life_cycles"

    const-string v5, "key"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v5, 0x3e8

    .line 1251
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lads_mobile_sdk/yr;->f:Lads_mobile_sdk/nr;

    invoke-virtual {v2, v3, v5, v6}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-lt v1, v2, :cond_4

    .line 1252
    sget-object p1, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    const-string p1, "Maximum number of stored ad requests reached. Dropping the current request."

    .line 1253
    invoke-static {p1, v4}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1254
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2031
    invoke-interface {p3, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    .line 2032
    :cond_4
    :try_start_1
    iget-object v1, v0, Lads_mobile_sdk/if1;->G:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_5

    .line 2033
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v0, Lads_mobile_sdk/if1;->G:Ljava/util/LinkedHashMap;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2034
    :cond_5
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2035
    iget-object p1, v0, Lads_mobile_sdk/if1;->F:Ljava/util/LinkedHashMap;

    .line 2036
    iget-object v0, p2, Lads_mobile_sdk/md1;->d:Ljava/lang/String;

    .line 2037
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2038
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2808
    invoke-interface {p3, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    .line 2809
    invoke-interface {p3, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final a(Lads_mobile_sdk/vd1;)V
    .locals 1

    .line 49454
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-void

    .line 49456
    :cond_0
    iget-object p1, p0, Lads_mobile_sdk/if1;->g:Lads_mobile_sdk/cw2;

    invoke-interface {p1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/ix0;

    invoke-virtual {p1}, Lads_mobile_sdk/ix0;->b()V

    return-void

    .line 49457
    :cond_1
    iget-object p1, p0, Lads_mobile_sdk/if1;->f:Lads_mobile_sdk/cw2;

    invoke-interface {p1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/ed3;

    invoke-virtual {p1}, Lads_mobile_sdk/ed3;->b()V

    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 10

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/if1;->l()Z

    move-result v0

    const-string v1, "{}"

    if-nez v0, :cond_0

    return-object v1

    .line 7
    :cond_0
    iget-object v0, p0, Lads_mobile_sdk/if1;->y:Lads_mobile_sdk/og1;

    const-string v2, "storedInspectorSettings"

    const/4 v3, 0x0

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_1
    invoke-virtual {v0}, Lads_mobile_sdk/og1;->D()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_3

    .line 8
    iget-object v0, p0, Lads_mobile_sdk/if1;->y:Lads_mobile_sdk/og1;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_2
    invoke-virtual {v0}, Lads_mobile_sdk/og1;->D()J

    move-result-wide v4

    iget-object v0, p0, Lads_mobile_sdk/if1;->j:Lads_mobile_sdk/tx;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/16 v0, 0x3e8

    int-to-long v8, v0

    .line 10
    div-long/2addr v6, v8

    cmp-long v0, v4, v6

    if-gez v0, :cond_3

    .line 12
    iget-object v4, p0, Lads_mobile_sdk/if1;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance v7, Lads_mobile_sdk/fe1;

    invoke-direct {v7, p0, v3}, Lads_mobile_sdk/fe1;-><init>(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-object v1

    .line 23
    :cond_3
    iget-object v0, p0, Lads_mobile_sdk/if1;->y:Lads_mobile_sdk/og1;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v3, v0

    :goto_0
    invoke-virtual {v3}, Lads_mobile_sdk/og1;->C()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getNetworkExtras(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final i()V
    .locals 3

    .line 205
    iget-boolean v0, p0, Lads_mobile_sdk/if1;->z:Z

    if-nez v0, :cond_2

    .line 206
    iget-object v0, p0, Lads_mobile_sdk/if1;->f:Lads_mobile_sdk/cw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/ed3;

    .line 207
    iput-object p0, v0, Lads_mobile_sdk/ed3;->i:Lads_mobile_sdk/cd3;

    .line 208
    iget-object v0, p0, Lads_mobile_sdk/if1;->g:Lads_mobile_sdk/cw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/ix0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    const-string v1, "listener"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    iput-object p0, v0, Lads_mobile_sdk/ix0;->m:Lads_mobile_sdk/gx0;

    const/4 v0, 0x1

    .line 262
    iput-boolean v0, p0, Lads_mobile_sdk/if1;->z:Z

    .line 263
    iget-object v0, p0, Lads_mobile_sdk/if1;->y:Lads_mobile_sdk/og1;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "storedInspectorSettings"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lads_mobile_sdk/og1;->y()Lads_mobile_sdk/vd1;

    move-result-object v0

    const-string v2, "getGesture(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lads_mobile_sdk/if1;->a(Lads_mobile_sdk/vd1;)V

    .line 264
    iget-object v0, p0, Lads_mobile_sdk/if1;->m:Lads_mobile_sdk/ek;

    invoke-virtual {v0}, Lads_mobile_sdk/ek;->a()Lads_mobile_sdk/v01;

    move-result-object v0

    .line 265
    instance-of v2, v0, Lads_mobile_sdk/q01;

    if-eqz v2, :cond_1

    check-cast v0, Lads_mobile_sdk/q01;

    .line 266
    iget-object v0, v0, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 267
    check-cast v0, Lcom/google/gson/JsonObject;

    iput-object v0, p0, Lads_mobile_sdk/if1;->B:Lcom/google/gson/JsonObject;

    .line 268
    :cond_1
    const-string v0, "Ad inspector enabled. Ad inspector can increase memory usage on test devices."

    const/4 v2, 0x6

    invoke-static {v0, v1, v1, v2}, Lads_mobile_sdk/f01;->a(Ljava/lang/String;Ljava/lang/RuntimeException;Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method public final k()Z
    .locals 12

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/if1;->i:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const-string v1, "key"

    const-string v2, "gads:inspector:disable_ad_inspector_from_manifest_enabled"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v3, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v0, v2, v1, v3}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_1

    .line 21
    :cond_0
    iget-object v0, p0, Lads_mobile_sdk/if1;->M:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    .line 26
    :cond_1
    :try_start_0
    iget-object v0, p0, Lads_mobile_sdk/if1;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 27
    iget-object v2, p0, Lads_mobile_sdk/if1;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 29
    const-string v2, "com.google.android.libraries.ads.mobile.sdk.flag.DISABLE_AD_INSPECTOR"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_2
    move v0, v1

    .line 33
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lads_mobile_sdk/if1;->M:Ljava/lang/Boolean;

    .line 34
    :goto_1
    iget-object v2, p0, Lads_mobile_sdk/if1;->y:Lads_mobile_sdk/og1;

    const/4 v3, 0x0

    if-nez v2, :cond_3

    const-string v2, "storedInspectorSettings"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_3
    invoke-virtual {v2}, Lads_mobile_sdk/og1;->z()Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v0, :cond_4

    if-nez v2, :cond_4

    move v5, v4

    goto :goto_2

    :cond_4
    move v5, v1

    :goto_2
    if-eqz v0, :cond_20

    if-eqz v2, :cond_12

    .line 39
    iget-object v0, p0, Lads_mobile_sdk/if1;->L:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 40
    iget-object v0, p0, Lads_mobile_sdk/if1;->q:Lads_mobile_sdk/g83;

    sget-object v2, Lads_mobile_sdk/s11;->B:Lads_mobile_sdk/s11;

    .line 808
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 809
    new-instance v7, Lads_mobile_sdk/ks3;

    .line 810
    new-instance v8, Lads_mobile_sdk/n03;

    invoke-direct {v8}, Lads_mobile_sdk/n03;-><init>()V

    .line 811
    new-instance v9, Lads_mobile_sdk/tn1;

    invoke-direct {v9}, Lads_mobile_sdk/tn1;-><init>()V

    .line 812
    new-instance v10, Lads_mobile_sdk/m33;

    invoke-direct {v10}, Lads_mobile_sdk/m33;-><init>()V

    .line 813
    new-instance v11, Lads_mobile_sdk/zb;

    invoke-direct {v11}, Lads_mobile_sdk/zb;-><init>()V

    .line 814
    invoke-direct {v7, v8, v9, v10, v11}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 815
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v8

    .line 816
    iget-object v8, v8, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-nez v8, :cond_b

    .line 817
    invoke-static {v0, v2, v6, v7}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v0

    .line 818
    :try_start_1
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1592
    instance-of v6, v2, Lads_mobile_sdk/i01;

    if-eqz v6, :cond_5

    .line 1593
    check-cast v2, Lads_mobile_sdk/i01;

    .line 1594
    invoke-static {v2, v1}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1595
    :cond_5
    invoke-static {v0, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :catchall_0
    move-exception v1

    .line 1603
    :try_start_2
    invoke-virtual {v0, v1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 1607
    instance-of v2, v1, Lads_mobile_sdk/v24;

    if-nez v2, :cond_a

    .line 1609
    instance-of v2, v1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_6

    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_6

    .line 1615
    invoke-virtual {v0, v1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 1621
    :cond_6
    instance-of v2, v1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_9

    .line 1622
    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_8

    .line 1623
    instance-of v2, v1, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_7

    throw v1

    .line 1624
    :cond_7
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1625
    :cond_8
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 1626
    :cond_9
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 1627
    :cond_a
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    .line 1628
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v2

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    .line 1662
    :cond_b
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0, v4}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v0

    .line 1663
    :try_start_4
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2474
    instance-of v6, v2, Lads_mobile_sdk/i01;

    if-eqz v6, :cond_c

    .line 2475
    check-cast v2, Lads_mobile_sdk/i01;

    .line 2476
    invoke-static {v2, v1}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 2477
    :cond_c
    invoke-static {v0, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :catchall_3
    move-exception v1

    .line 2485
    :try_start_5
    invoke-virtual {v0, v1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 2489
    instance-of v2, v1, Lads_mobile_sdk/v24;

    if-nez v2, :cond_11

    .line 2491
    instance-of v2, v1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_d

    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_d

    .line 2497
    invoke-virtual {v0, v1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 2503
    :cond_d
    instance-of v2, v1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_10

    .line 2504
    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_f

    .line 2505
    instance-of v2, v1, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_e

    throw v1

    .line 2506
    :cond_e
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 2507
    :cond_f
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 2508
    :cond_10
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 2509
    :cond_11
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :catchall_4
    move-exception v1

    .line 2510
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :catchall_5
    move-exception v2

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    .line 2511
    :cond_12
    iget-object v0, p0, Lads_mobile_sdk/if1;->K:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2512
    iget-object v0, p0, Lads_mobile_sdk/if1;->q:Lads_mobile_sdk/g83;

    sget-object v2, Lads_mobile_sdk/s11;->A:Lads_mobile_sdk/s11;

    .line 3354
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 3355
    new-instance v7, Lads_mobile_sdk/ks3;

    .line 3356
    new-instance v8, Lads_mobile_sdk/n03;

    invoke-direct {v8}, Lads_mobile_sdk/n03;-><init>()V

    .line 3357
    new-instance v9, Lads_mobile_sdk/tn1;

    invoke-direct {v9}, Lads_mobile_sdk/tn1;-><init>()V

    .line 3358
    new-instance v10, Lads_mobile_sdk/m33;

    invoke-direct {v10}, Lads_mobile_sdk/m33;-><init>()V

    .line 3359
    new-instance v11, Lads_mobile_sdk/zb;

    invoke-direct {v11}, Lads_mobile_sdk/zb;-><init>()V

    .line 3360
    invoke-direct {v7, v8, v9, v10, v11}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 3361
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v8

    .line 3362
    iget-object v8, v8, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-nez v8, :cond_19

    .line 3363
    invoke-static {v0, v2, v6, v7}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v0

    .line 3364
    :try_start_7
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4212
    instance-of v6, v2, Lads_mobile_sdk/i01;

    if-eqz v6, :cond_13

    .line 4213
    check-cast v2, Lads_mobile_sdk/i01;

    .line 4214
    invoke-static {v2, v1}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 4215
    :cond_13
    invoke-static {v0, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :catchall_6
    move-exception v1

    .line 4223
    :try_start_8
    invoke-virtual {v0, v1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 4227
    instance-of v2, v1, Lads_mobile_sdk/v24;

    if-nez v2, :cond_18

    .line 4229
    instance-of v2, v1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_14

    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_14

    .line 4235
    invoke-virtual {v0, v1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 4241
    :cond_14
    instance-of v2, v1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_17

    .line 4242
    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_16

    .line 4243
    instance-of v2, v1, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_15

    throw v1

    .line 4244
    :cond_15
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 4245
    :cond_16
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 4246
    :cond_17
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 4247
    :cond_18
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    :catchall_7
    move-exception v1

    .line 4248
    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    :catchall_8
    move-exception v2

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    .line 4282
    :cond_19
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0, v4}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v0

    .line 4283
    :try_start_a
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 5168
    instance-of v6, v2, Lads_mobile_sdk/i01;

    if-eqz v6, :cond_1a

    .line 5169
    check-cast v2, Lads_mobile_sdk/i01;

    .line 5170
    invoke-static {v2, v1}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    .line 5171
    :cond_1a
    invoke-static {v0, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_3

    :catchall_9
    move-exception v1

    .line 5179
    :try_start_b
    invoke-virtual {v0, v1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 5183
    instance-of v2, v1, Lads_mobile_sdk/v24;

    if-nez v2, :cond_1f

    .line 5185
    instance-of v2, v1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_1b

    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_1b

    .line 5191
    invoke-virtual {v0, v1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 5197
    :cond_1b
    instance-of v2, v1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_1e

    .line 5198
    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_1d

    .line 5199
    instance-of v2, v1, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_1c

    throw v1

    .line 5200
    :cond_1c
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 5201
    :cond_1d
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 5202
    :cond_1e
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 5203
    :cond_1f
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    :catchall_a
    move-exception v1

    .line 5204
    :try_start_c
    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    :catchall_b
    move-exception v2

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :cond_20
    :goto_3
    if-eqz v5, :cond_21

    .line 5205
    iget-object v0, p0, Lads_mobile_sdk/if1;->J:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 5206
    const-string v0, "Ad inspector is disabled in the AndroidManifest.xml."

    const/4 v1, 0x6

    invoke-static {v0, v3, v3, v1}, Lads_mobile_sdk/f01;->a(Ljava/lang/String;Ljava/lang/RuntimeException;Ljava/lang/String;I)V

    :cond_21
    return v5
.end method

.method public final l()Z
    .locals 5

    .line 523
    invoke-virtual {p0}, Lads_mobile_sdk/if1;->k()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 527
    :cond_0
    iget-object v0, p0, Lads_mobile_sdk/if1;->y:Lads_mobile_sdk/og1;

    const/4 v2, 0x0

    const-string v3, "storedInspectorSettings"

    if-nez v0, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    invoke-virtual {v0}, Lads_mobile_sdk/og1;->B()Z

    move-result v0

    if-nez v0, :cond_4

    .line 528
    iget-object v0, p0, Lads_mobile_sdk/if1;->y:Lads_mobile_sdk/og1;

    if-nez v0, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v2, v0

    :goto_0
    invoke-virtual {v2}, Lads_mobile_sdk/og1;->A()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lads_mobile_sdk/if1;->i:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 530
    const-string v2, "key"

    const-string v3, "gads:inspector:linked_device_enable_inspector"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 546
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v4, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v0, v3, v2, v4}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    return v1

    :cond_4
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method public final u(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lads_mobile_sdk/if1;->e(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final v(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lads_mobile_sdk/if1;->a(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final w(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/ge1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/ge1;

    iget v1, v0, Lads_mobile_sdk/ge1;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/ge1;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/ge1;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/ge1;-><init>(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lads_mobile_sdk/ge1;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 571
    iget v2, v0, Lads_mobile_sdk/ge1;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 572
    iput v3, v0, Lads_mobile_sdk/ge1;->c:I

    invoke-virtual {p0}, Lads_mobile_sdk/if1;->g()Ljava/lang/String;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 573
    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/String;

    .line 575
    const-string v0, "{}"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, ""

    :cond_4
    return-object p1
.end method

.method public final x(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 14

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/he1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/he1;

    iget v1, v0, Lads_mobile_sdk/he1;->h:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/he1;->h:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/he1;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/he1;-><init>(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lads_mobile_sdk/he1;->f:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 216
    iget v2, v0, Lads_mobile_sdk/he1;->h:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-boolean v1, v0, Lads_mobile_sdk/he1;->e:Z

    iget-boolean v2, v0, Lads_mobile_sdk/he1;->d:Z

    iget v4, v0, Lads_mobile_sdk/he1;->c:I

    iget-object v5, v0, Lads_mobile_sdk/he1;->b:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v0, v0, Lads_mobile_sdk/he1;->a:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Lkotlinx/coroutines/sync/Mutex;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v10, v1

    move v11, v2

    move-object v9, v5

    move-object v2, v8

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_6

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 217
    :cond_2
    iget-object v2, v0, Lads_mobile_sdk/he1;->b:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    iget-object v5, v0, Lads_mobile_sdk/he1;->a:Ljava/lang/Object;

    check-cast v5, Lads_mobile_sdk/if1;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 218
    :cond_3
    iget-object v2, v0, Lads_mobile_sdk/he1;->b:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    iget-object v8, v0, Lads_mobile_sdk/he1;->a:Ljava/lang/Object;

    check-cast v8, Lads_mobile_sdk/if1;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/if1;->x:Lkotlinx/coroutines/sync/Mutex;

    .line 856
    iput-object p0, v0, Lads_mobile_sdk/he1;->a:Ljava/lang/Object;

    iput-object p1, v0, Lads_mobile_sdk/he1;->b:Ljava/lang/Object;

    iput v6, v0, Lads_mobile_sdk/he1;->h:I

    invoke-interface {p1, v7, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5

    goto :goto_3

    :cond_5
    move-object v8, p0

    move-object v2, p1

    .line 857
    :goto_1
    :try_start_2
    iput-object v8, v0, Lads_mobile_sdk/he1;->a:Ljava/lang/Object;

    iput-object v2, v0, Lads_mobile_sdk/he1;->b:Ljava/lang/Object;

    iput v5, v0, Lads_mobile_sdk/he1;->h:I

    invoke-virtual {v8, v0}, Lads_mobile_sdk/if1;->w(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    goto :goto_3

    :cond_6
    move-object v5, v8

    .line 858
    :goto_2
    check-cast p1, Ljava/lang/String;

    .line 861
    iget-object v8, v5, Lads_mobile_sdk/if1;->y:Lads_mobile_sdk/og1;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v9, "storedInspectorSettings"

    if-nez v8, :cond_7

    :try_start_3
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v8, v7

    .line 862
    :cond_7
    invoke-virtual {v8}, Lads_mobile_sdk/og1;->B()Z

    move-result v8

    .line 863
    iget-object v10, v5, Lads_mobile_sdk/if1;->y:Lads_mobile_sdk/og1;

    if-nez v10, :cond_8

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v10, v7

    .line 864
    :cond_8
    invoke-virtual {v10}, Lads_mobile_sdk/og1;->A()Z

    move-result v9

    .line 865
    iget-object v10, v5, Lads_mobile_sdk/if1;->A:Lcom/google/gson/JsonObject;

    invoke-virtual {v10}, Lcom/google/gson/JsonObject;->isEmpty()Z

    move-result v10

    xor-int/2addr v10, v6

    .line 866
    iput-object v2, v0, Lads_mobile_sdk/he1;->a:Ljava/lang/Object;

    iput-object p1, v0, Lads_mobile_sdk/he1;->b:Ljava/lang/Object;

    iput v10, v0, Lads_mobile_sdk/he1;->c:I

    iput-boolean v9, v0, Lads_mobile_sdk/he1;->d:Z

    iput-boolean v8, v0, Lads_mobile_sdk/he1;->e:Z

    iput v4, v0, Lads_mobile_sdk/he1;->h:I

    invoke-virtual {v5, v3, v0}, Lads_mobile_sdk/if1;->a(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_9

    :goto_3
    return-object v1

    :cond_9
    move v11, v9

    move v4, v10

    move-object v9, p1

    move-object p1, v0

    move v10, v8

    .line 867
    :goto_4
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .line 868
    new-instance v8, Lads_mobile_sdk/vg1;

    if-eqz v4, :cond_a

    move v12, v6

    goto :goto_5

    :cond_a
    move v12, v3

    :goto_5
    invoke-direct/range {v8 .. v13}, Lads_mobile_sdk/vg1;-><init>(Ljava/lang/String;ZZZZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1509
    invoke-interface {v2, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v8

    :catchall_1
    move-exception v0

    move-object p1, v0

    move-object v8, v2

    .line 1510
    :goto_6
    invoke-interface {v8, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final y(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 39

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    instance-of v2, v0, Lads_mobile_sdk/ie1;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/ie1;

    iget v3, v2, Lads_mobile_sdk/ie1;->q:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/ie1;->q:I

    goto :goto_0

    :cond_0
    new-instance v2, Lads_mobile_sdk/ie1;

    invoke-direct {v2, v1, v0}, Lads_mobile_sdk/ie1;-><init>(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v2, Lads_mobile_sdk/ie1;->o:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 583
    iget v4, v2, Lads_mobile_sdk/ie1;->q:I

    const-string v5, "fromJson(...)"

    const-string v6, "{}"

    const-string v7, "storedInspectorSettings"

    const-string v8, "t"

    packed-switch v4, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-boolean v3, v2, Lads_mobile_sdk/ie1;->n:Z

    iget-boolean v4, v2, Lads_mobile_sdk/ie1;->m:Z

    iget-object v10, v2, Lads_mobile_sdk/ie1;->l:Lcom/google/gson/Gson;

    iget-object v11, v2, Lads_mobile_sdk/ie1;->k:Lcom/google/gson/JsonObject;

    iget-object v12, v2, Lads_mobile_sdk/ie1;->j:Ljava/lang/String;

    iget-object v13, v2, Lads_mobile_sdk/ie1;->i:Ljava/lang/Object;

    check-cast v13, Lcom/google/gson/JsonArray;

    iget-object v14, v2, Lads_mobile_sdk/ie1;->h:Ljava/lang/Object;

    check-cast v14, Lcom/google/gson/JsonObject;

    iget-object v15, v2, Lads_mobile_sdk/ie1;->g:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    iget-object v9, v2, Lads_mobile_sdk/ie1;->f:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v0, v2, Lads_mobile_sdk/ie1;->e:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v2, Lads_mobile_sdk/ie1;->d:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/google/gson/JsonObject;

    iget-object v0, v2, Lads_mobile_sdk/ie1;->c:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/google/gson/JsonObject;

    move/from16 v20, v3

    iget-object v3, v2, Lads_mobile_sdk/ie1;->b:Lcom/google/gson/JsonObject;

    iget-object v2, v2, Lads_mobile_sdk/ie1;->a:Lads_mobile_sdk/if1;

    :try_start_0
    invoke-static/range {v16 .. v16}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v14

    move-object/from16 v0, v16

    move-object v14, v3

    move-object/from16 v16, v6

    move-object/from16 v6, v17

    move/from16 v3, v20

    move-object/from16 v17, v7

    move-object/from16 v7, v19

    move-object/from16 v19, v5

    move-object/from16 v5, v18

    move-object/from16 v18, v8

    goto/16 :goto_f

    :catch_0
    move-exception v0

    move-object v1, v8

    move-object v8, v5

    move-object/from16 v5, v18

    move-object/from16 v18, v1

    move-object/from16 v16, v6

    move-object v1, v14

    move-object/from16 v6, v17

    move-object v14, v3

    move-object/from16 v17, v7

    move/from16 v3, v20

    goto/16 :goto_12

    :pswitch_1
    move-object/from16 v16, v0

    .line 584
    iget-boolean v0, v2, Lads_mobile_sdk/ie1;->n:Z

    iget-boolean v4, v2, Lads_mobile_sdk/ie1;->m:Z

    iget-object v9, v2, Lads_mobile_sdk/ie1;->i:Ljava/lang/Object;

    check-cast v9, Lcom/google/gson/JsonArray;

    iget-object v10, v2, Lads_mobile_sdk/ie1;->h:Ljava/lang/Object;

    check-cast v10, Lcom/google/gson/JsonObject;

    iget-object v11, v2, Lads_mobile_sdk/ie1;->g:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v12, v2, Lads_mobile_sdk/ie1;->f:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    iget-object v13, v2, Lads_mobile_sdk/ie1;->e:Ljava/lang/Object;

    move-object/from16 v17, v13

    check-cast v17, Lkotlinx/coroutines/sync/Mutex;

    iget-object v13, v2, Lads_mobile_sdk/ie1;->d:Ljava/lang/Object;

    check-cast v13, Lcom/google/gson/JsonObject;

    iget-object v14, v2, Lads_mobile_sdk/ie1;->c:Ljava/lang/Object;

    check-cast v14, Lcom/google/gson/JsonObject;

    iget-object v15, v2, Lads_mobile_sdk/ie1;->b:Lcom/google/gson/JsonObject;

    move/from16 v18, v0

    iget-object v0, v2, Lads_mobile_sdk/ie1;->a:Lads_mobile_sdk/if1;

    :try_start_1
    invoke-static/range {v16 .. v16}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v13

    move-object v13, v9

    move-object v9, v12

    move-object v12, v1

    move-object v1, v0

    move-object/from16 v0, v16

    move-object/from16 v16, v6

    move-object/from16 v6, v17

    move-object/from16 v17, v7

    move-object v7, v14

    move-object v14, v15

    move v15, v4

    move/from16 v4, v18

    :goto_1
    move-object/from16 v18, v8

    goto/16 :goto_d

    :pswitch_2
    move-object/from16 v16, v0

    .line 585
    iget-boolean v0, v2, Lads_mobile_sdk/ie1;->n:Z

    iget-boolean v4, v2, Lads_mobile_sdk/ie1;->m:Z

    iget-object v9, v2, Lads_mobile_sdk/ie1;->h:Ljava/lang/Object;

    check-cast v9, Lcom/google/gson/JsonObject;

    iget-object v10, v2, Lads_mobile_sdk/ie1;->g:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iget-object v11, v2, Lads_mobile_sdk/ie1;->f:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v12, v2, Lads_mobile_sdk/ie1;->e:Ljava/lang/Object;

    move-object/from16 v17, v12

    check-cast v17, Lkotlinx/coroutines/sync/Mutex;

    iget-object v12, v2, Lads_mobile_sdk/ie1;->d:Ljava/lang/Object;

    check-cast v12, Lcom/google/gson/JsonObject;

    iget-object v13, v2, Lads_mobile_sdk/ie1;->c:Ljava/lang/Object;

    check-cast v13, Lcom/google/gson/JsonObject;

    iget-object v14, v2, Lads_mobile_sdk/ie1;->b:Lcom/google/gson/JsonObject;

    iget-object v15, v2, Lads_mobile_sdk/ie1;->a:Lads_mobile_sdk/if1;

    :try_start_2
    invoke-static/range {v16 .. v16}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, v4

    move v4, v0

    move-object v0, v15

    move v15, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v6

    move-object/from16 v6, v17

    goto/16 :goto_c

    :catchall_0
    move-exception v0

    move-object/from16 v6, v17

    goto/16 :goto_17

    :pswitch_3
    move-object/from16 v16, v0

    .line 586
    iget-object v0, v2, Lads_mobile_sdk/ie1;->e:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v4, v2, Lads_mobile_sdk/ie1;->d:Ljava/lang/Object;

    check-cast v4, Lcom/google/gson/JsonObject;

    iget-object v9, v2, Lads_mobile_sdk/ie1;->c:Ljava/lang/Object;

    check-cast v9, Lcom/google/gson/JsonObject;

    iget-object v10, v2, Lads_mobile_sdk/ie1;->b:Lcom/google/gson/JsonObject;

    iget-object v11, v2, Lads_mobile_sdk/ie1;->a:Lads_mobile_sdk/if1;

    invoke-static/range {v16 .. v16}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v12, v4

    move-object v13, v9

    move-object v14, v10

    move-object v9, v0

    goto/16 :goto_b

    :pswitch_4
    move-object/from16 v16, v0

    iget-object v0, v2, Lads_mobile_sdk/ie1;->h:Ljava/lang/Object;

    check-cast v0, Lcom/google/gson/JsonArray;

    iget-object v4, v2, Lads_mobile_sdk/ie1;->g:Ljava/lang/Object;

    check-cast v4, Ljava/util/Iterator;

    iget-object v9, v2, Lads_mobile_sdk/ie1;->f:Ljava/lang/Object;

    check-cast v9, Lcom/google/gson/JsonArray;

    iget-object v10, v2, Lads_mobile_sdk/ie1;->e:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iget-object v11, v2, Lads_mobile_sdk/ie1;->d:Ljava/lang/Object;

    check-cast v11, Ljava/util/Iterator;

    iget-object v12, v2, Lads_mobile_sdk/ie1;->c:Ljava/lang/Object;

    check-cast v12, Lcom/google/gson/JsonObject;

    iget-object v13, v2, Lads_mobile_sdk/ie1;->b:Lcom/google/gson/JsonObject;

    iget-object v14, v2, Lads_mobile_sdk/ie1;->a:Lads_mobile_sdk/if1;

    invoke-static/range {v16 .. v16}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v38, v12

    move-object v12, v11

    move-object v11, v14

    move-object v14, v13

    move-object/from16 v13, v38

    goto/16 :goto_a

    :pswitch_5
    move-object/from16 v16, v0

    iget-object v0, v2, Lads_mobile_sdk/ie1;->i:Ljava/lang/Object;

    iget-object v4, v2, Lads_mobile_sdk/ie1;->h:Ljava/lang/Object;

    check-cast v4, Ljava/util/Iterator;

    iget-object v9, v2, Lads_mobile_sdk/ie1;->g:Ljava/lang/Object;

    check-cast v9, Ljava/util/Collection;

    iget-object v10, v2, Lads_mobile_sdk/ie1;->f:Ljava/lang/Object;

    check-cast v10, Lcom/google/gson/JsonArray;

    iget-object v11, v2, Lads_mobile_sdk/ie1;->e:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v12, v2, Lads_mobile_sdk/ie1;->d:Ljava/lang/Object;

    check-cast v12, Ljava/util/Iterator;

    iget-object v13, v2, Lads_mobile_sdk/ie1;->c:Ljava/lang/Object;

    check-cast v13, Lcom/google/gson/JsonObject;

    iget-object v14, v2, Lads_mobile_sdk/ie1;->b:Lcom/google/gson/JsonObject;

    iget-object v15, v2, Lads_mobile_sdk/ie1;->a:Lads_mobile_sdk/if1;

    invoke-static/range {v16 .. v16}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v0

    move-object/from16 v0, v16

    goto/16 :goto_8

    :pswitch_6
    move-object/from16 v16, v0

    iget-object v0, v2, Lads_mobile_sdk/ie1;->c:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v4, v2, Lads_mobile_sdk/ie1;->b:Lcom/google/gson/JsonObject;

    iget-object v9, v2, Lads_mobile_sdk/ie1;->a:Lads_mobile_sdk/if1;

    invoke-static/range {v16 .. v16}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v10, v4

    move-object v4, v0

    move-object v0, v10

    const/4 v10, 0x0

    goto/16 :goto_5

    :pswitch_7
    move-object/from16 v16, v0

    iget-object v0, v2, Lads_mobile_sdk/ie1;->a:Lads_mobile_sdk/if1;

    invoke-static/range {v16 .. v16}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v9, v0

    move-object/from16 v0, v16

    goto :goto_3

    :pswitch_8
    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 587
    iget-object v0, v1, Lads_mobile_sdk/if1;->u:Lads_mobile_sdk/g30;

    iput-object v1, v2, Lads_mobile_sdk/ie1;->a:Lads_mobile_sdk/if1;

    const/4 v4, 0x1

    iput v4, v2, Lads_mobile_sdk/ie1;->q:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 588
    invoke-static {v0, v2}, Lads_mobile_sdk/g30;->d(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_1

    :goto_2
    move-object v2, v3

    goto/16 :goto_e

    :cond_1
    move-object v9, v1

    .line 589
    :goto_3
    check-cast v0, Landroid/os/Bundle;

    .line 592
    sget-object v4, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    :try_start_3
    iget-object v4, v9, Lads_mobile_sdk/if1;->h:Lcom/google/gson/Gson;

    invoke-virtual {v4, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-class v10, Lcom/google/gson/JsonObject;

    invoke-virtual {v4, v0, v10}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 593
    invoke-static {v0, v8, v0}, Lads_mobile_sdk/a2;->a(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Exception;)Lads_mobile_sdk/uj2;

    move-result-object v4

    .line 594
    iget-object v4, v4, Lads_mobile_sdk/uj2;->s:Ljava/util/List;

    .line 595
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    :cond_2
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :goto_4
    if-nez v0, :cond_3

    .line 596
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    :cond_3
    move-object v4, v0

    .line 598
    iget-object v0, v9, Lads_mobile_sdk/if1;->D:Lkotlinx/coroutines/sync/Mutex;

    .line 1461
    iput-object v9, v2, Lads_mobile_sdk/ie1;->a:Lads_mobile_sdk/if1;

    iput-object v4, v2, Lads_mobile_sdk/ie1;->b:Lcom/google/gson/JsonObject;

    iput-object v0, v2, Lads_mobile_sdk/ie1;->c:Ljava/lang/Object;

    const/4 v10, 0x2

    iput v10, v2, Lads_mobile_sdk/ie1;->q:I

    const/4 v10, 0x0

    invoke-interface {v0, v10, v2}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v3, :cond_4

    goto :goto_2

    :cond_4
    move-object/from16 v38, v4

    move-object v4, v0

    move-object/from16 v0, v38

    .line 1462
    :goto_5
    :try_start_4
    iget-object v11, v9, Lads_mobile_sdk/if1;->G:Ljava/util/LinkedHashMap;

    invoke-static {v11}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 2329
    invoke-interface {v4, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 2330
    new-instance v4, Lcom/google/gson/JsonObject;

    invoke-direct {v4}, Lcom/google/gson/JsonObject;-><init>()V

    .line 2331
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v11, v9

    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2332
    new-instance v13, Lcom/google/gson/JsonArray;

    invoke-direct {v13}, Lcom/google/gson/JsonArray;-><init>()V

    .line 2333
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 3198
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 3199
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v15, v11

    move-object v11, v12

    move-object v12, v10

    move-object v10, v13

    move-object v13, v4

    move-object v4, v9

    move-object v9, v14

    move-object v14, v0

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lads_mobile_sdk/md1;

    .line 3200
    iput-object v15, v2, Lads_mobile_sdk/ie1;->a:Lads_mobile_sdk/if1;

    iput-object v14, v2, Lads_mobile_sdk/ie1;->b:Lcom/google/gson/JsonObject;

    iput-object v13, v2, Lads_mobile_sdk/ie1;->c:Ljava/lang/Object;

    iput-object v12, v2, Lads_mobile_sdk/ie1;->d:Ljava/lang/Object;

    iput-object v11, v2, Lads_mobile_sdk/ie1;->e:Ljava/lang/Object;

    iput-object v10, v2, Lads_mobile_sdk/ie1;->f:Ljava/lang/Object;

    iput-object v9, v2, Lads_mobile_sdk/ie1;->g:Ljava/lang/Object;

    iput-object v4, v2, Lads_mobile_sdk/ie1;->h:Ljava/lang/Object;

    iput-object v0, v2, Lads_mobile_sdk/ie1;->i:Ljava/lang/Object;

    move-object/from16 v16, v0

    const/4 v0, 0x3

    iput v0, v2, Lads_mobile_sdk/ie1;->q:I

    invoke-virtual {v1, v2}, Lads_mobile_sdk/md1;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_5

    goto/16 :goto_2

    :cond_5
    move-object/from16 v1, v16

    .line 3201
    :goto_8
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4067
    invoke-interface {v9, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_6
    move-object/from16 v1, p0

    goto :goto_7

    .line 4068
    :cond_7
    check-cast v9, Ljava/util/List;

    .line 4069
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v4, v0

    move-object v0, v10

    move-object v10, v11

    move-object v11, v15

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/md1;

    .line 4070
    iput-object v11, v2, Lads_mobile_sdk/ie1;->a:Lads_mobile_sdk/if1;

    iput-object v14, v2, Lads_mobile_sdk/ie1;->b:Lcom/google/gson/JsonObject;

    iput-object v13, v2, Lads_mobile_sdk/ie1;->c:Ljava/lang/Object;

    iput-object v12, v2, Lads_mobile_sdk/ie1;->d:Ljava/lang/Object;

    iput-object v10, v2, Lads_mobile_sdk/ie1;->e:Ljava/lang/Object;

    iput-object v0, v2, Lads_mobile_sdk/ie1;->f:Ljava/lang/Object;

    iput-object v4, v2, Lads_mobile_sdk/ie1;->g:Ljava/lang/Object;

    iput-object v0, v2, Lads_mobile_sdk/ie1;->h:Ljava/lang/Object;

    const/4 v9, 0x0

    iput-object v9, v2, Lads_mobile_sdk/ie1;->i:Ljava/lang/Object;

    const/4 v9, 0x4

    iput v9, v2, Lads_mobile_sdk/ie1;->q:I

    invoke-virtual {v1, v2}, Lads_mobile_sdk/md1;->s(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_8

    goto/16 :goto_2

    :cond_8
    move-object v9, v0

    move-object/from16 v16, v1

    .line 4071
    :goto_a
    move-object/from16 v1, v16

    check-cast v1, Lcom/google/gson/JsonElement;

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    move-object v0, v9

    goto :goto_9

    .line 4073
    :cond_9
    invoke-virtual {v13, v10, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    move-object/from16 v1, p0

    move-object v10, v12

    move-object v4, v13

    move-object v0, v14

    goto/16 :goto_6

    .line 4075
    :cond_a
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 4078
    iget-object v9, v11, Lads_mobile_sdk/if1;->r:Lads_mobile_sdk/l43;

    invoke-virtual {v9}, Lads_mobile_sdk/l43;->a()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->getTagForChildDirectedTreatment()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;->getValue()I

    move-result v9

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v9

    .line 4079
    const-string v10, "tfcd"

    invoke-virtual {v1, v10, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 4085
    iget-object v9, v11, Lads_mobile_sdk/if1;->r:Lads_mobile_sdk/l43;

    invoke-virtual {v9}, Lads_mobile_sdk/l43;->a()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->getTagForUnderAgeOfConsent()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;->getValue()I

    move-result v9

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v9

    .line 4086
    const-string v10, "tfua"

    invoke-virtual {v1, v10, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 4091
    iget-object v9, v11, Lads_mobile_sdk/if1;->x:Lkotlinx/coroutines/sync/Mutex;

    .line 4949
    iput-object v11, v2, Lads_mobile_sdk/ie1;->a:Lads_mobile_sdk/if1;

    iput-object v0, v2, Lads_mobile_sdk/ie1;->b:Lcom/google/gson/JsonObject;

    iput-object v4, v2, Lads_mobile_sdk/ie1;->c:Ljava/lang/Object;

    iput-object v1, v2, Lads_mobile_sdk/ie1;->d:Ljava/lang/Object;

    iput-object v9, v2, Lads_mobile_sdk/ie1;->e:Ljava/lang/Object;

    const/4 v10, 0x0

    iput-object v10, v2, Lads_mobile_sdk/ie1;->f:Ljava/lang/Object;

    iput-object v10, v2, Lads_mobile_sdk/ie1;->g:Ljava/lang/Object;

    iput-object v10, v2, Lads_mobile_sdk/ie1;->h:Ljava/lang/Object;

    iput-object v10, v2, Lads_mobile_sdk/ie1;->i:Ljava/lang/Object;

    const/4 v12, 0x5

    iput v12, v2, Lads_mobile_sdk/ie1;->q:I

    invoke-interface {v9, v10, v2}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v3, :cond_b

    goto/16 :goto_2

    :cond_b
    move-object v14, v0

    move-object v12, v1

    move-object v13, v4

    .line 4950
    :goto_b
    :try_start_5
    iget-object v0, v11, Lads_mobile_sdk/if1;->B:Lcom/google/gson/JsonObject;

    .line 4951
    iget-object v10, v11, Lads_mobile_sdk/if1;->e:Ljava/lang/String;

    .line 4952
    iget-object v1, v11, Lads_mobile_sdk/if1;->y:Lads_mobile_sdk/og1;

    if-nez v1, :cond_c

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 4953
    :cond_c
    invoke-virtual {v1}, Lads_mobile_sdk/og1;->y()Lads_mobile_sdk/vd1;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 4954
    iget-object v4, v11, Lads_mobile_sdk/if1;->y:Lads_mobile_sdk/og1;

    if-nez v4, :cond_d

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 4955
    :cond_d
    invoke-virtual {v4}, Lads_mobile_sdk/og1;->A()Z

    move-result v4

    .line 4956
    sget-object v15, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    .line 4957
    invoke-static {}, Lads_mobile_sdk/jn0;->a()Z

    move-result v15

    move-object/from16 v16, v6

    .line 4958
    iget-object v6, v11, Lads_mobile_sdk/if1;->t:Lads_mobile_sdk/rd1;

    iput-object v11, v2, Lads_mobile_sdk/ie1;->a:Lads_mobile_sdk/if1;

    iput-object v14, v2, Lads_mobile_sdk/ie1;->b:Lcom/google/gson/JsonObject;

    iput-object v13, v2, Lads_mobile_sdk/ie1;->c:Ljava/lang/Object;

    iput-object v12, v2, Lads_mobile_sdk/ie1;->d:Ljava/lang/Object;

    iput-object v9, v2, Lads_mobile_sdk/ie1;->e:Ljava/lang/Object;

    iput-object v1, v2, Lads_mobile_sdk/ie1;->f:Ljava/lang/Object;

    iput-object v10, v2, Lads_mobile_sdk/ie1;->g:Ljava/lang/Object;

    iput-object v0, v2, Lads_mobile_sdk/ie1;->h:Ljava/lang/Object;

    iput-boolean v15, v2, Lads_mobile_sdk/ie1;->m:Z

    iput-boolean v4, v2, Lads_mobile_sdk/ie1;->n:Z

    move-object/from16 v17, v0

    const/4 v0, 0x6

    iput v0, v2, Lads_mobile_sdk/ie1;->q:I

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4959
    invoke-static {v6, v2}, Lads_mobile_sdk/rd1;->a(Lads_mobile_sdk/rd1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-ne v0, v3, :cond_e

    goto/16 :goto_2

    :cond_e
    move-object v6, v1

    move-object v1, v0

    move-object v0, v11

    move-object v11, v6

    move-object v6, v9

    move-object/from16 v9, v17

    .line 4960
    :goto_c
    :try_start_6
    check-cast v1, Lcom/google/gson/JsonArray;

    .line 4992
    iput-object v0, v2, Lads_mobile_sdk/ie1;->a:Lads_mobile_sdk/if1;

    iput-object v14, v2, Lads_mobile_sdk/ie1;->b:Lcom/google/gson/JsonObject;

    iput-object v13, v2, Lads_mobile_sdk/ie1;->c:Ljava/lang/Object;

    iput-object v12, v2, Lads_mobile_sdk/ie1;->d:Ljava/lang/Object;

    iput-object v6, v2, Lads_mobile_sdk/ie1;->e:Ljava/lang/Object;

    iput-object v11, v2, Lads_mobile_sdk/ie1;->f:Ljava/lang/Object;

    iput-object v10, v2, Lads_mobile_sdk/ie1;->g:Ljava/lang/Object;

    iput-object v9, v2, Lads_mobile_sdk/ie1;->h:Ljava/lang/Object;

    iput-object v1, v2, Lads_mobile_sdk/ie1;->i:Ljava/lang/Object;

    iput-boolean v15, v2, Lads_mobile_sdk/ie1;->m:Z

    iput-boolean v4, v2, Lads_mobile_sdk/ie1;->n:Z

    move-object/from16 v17, v0

    const/4 v0, 0x7

    iput v0, v2, Lads_mobile_sdk/ie1;->q:I

    invoke-virtual/range {v17 .. v17}, Lads_mobile_sdk/if1;->g()Ljava/lang/String;

    move-result-object v0

    if-ne v0, v3, :cond_f

    goto/16 :goto_2

    :cond_f
    move-object/from16 v18, v13

    move-object v13, v1

    move-object/from16 v1, v17

    move-object/from16 v17, v7

    move-object/from16 v7, v18

    move-object/from16 v18, v10

    move-object v10, v9

    move-object v9, v11

    move-object/from16 v11, v18

    goto/16 :goto_1

    .line 4993
    :goto_d
    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    move-object/from16 v19, v5

    .line 5026
    iget-object v5, v1, Lads_mobile_sdk/if1;->A:Lcom/google/gson/JsonObject;

    .line 5028
    sget-object v0, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 5029
    :try_start_7
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    move-object/from16 v20, v3

    .line 5031
    iget-object v3, v1, Lads_mobile_sdk/if1;->n:Lads_mobile_sdk/pn;

    iput-object v1, v2, Lads_mobile_sdk/ie1;->a:Lads_mobile_sdk/if1;

    iput-object v14, v2, Lads_mobile_sdk/ie1;->b:Lcom/google/gson/JsonObject;

    iput-object v7, v2, Lads_mobile_sdk/ie1;->c:Ljava/lang/Object;

    iput-object v12, v2, Lads_mobile_sdk/ie1;->d:Ljava/lang/Object;

    iput-object v6, v2, Lads_mobile_sdk/ie1;->e:Ljava/lang/Object;

    iput-object v9, v2, Lads_mobile_sdk/ie1;->f:Ljava/lang/Object;

    iput-object v11, v2, Lads_mobile_sdk/ie1;->g:Ljava/lang/Object;

    iput-object v10, v2, Lads_mobile_sdk/ie1;->h:Ljava/lang/Object;

    iput-object v13, v2, Lads_mobile_sdk/ie1;->i:Ljava/lang/Object;

    iput-object v8, v2, Lads_mobile_sdk/ie1;->j:Ljava/lang/String;

    iput-object v5, v2, Lads_mobile_sdk/ie1;->k:Lcom/google/gson/JsonObject;

    iput-object v0, v2, Lads_mobile_sdk/ie1;->l:Lcom/google/gson/Gson;

    iput-boolean v15, v2, Lads_mobile_sdk/ie1;->m:Z

    iput-boolean v4, v2, Lads_mobile_sdk/ie1;->n:Z

    move-object/from16 v21, v0

    const/16 v0, 0x8

    iput v0, v2, Lads_mobile_sdk/ie1;->q:I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5032
    invoke-static {v3, v2}, Lads_mobile_sdk/pn;->a(Lads_mobile_sdk/pn;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object/from16 v2, v20

    if-ne v0, v2, :cond_10

    :goto_e
    return-object v2

    :cond_10
    move-object v2, v1

    move v3, v4

    move-object v1, v10

    move v4, v15

    move-object/from16 v10, v21

    move-object v15, v11

    move-object v11, v5

    move-object v5, v12

    move-object v12, v8

    .line 5033
    :goto_f
    :try_start_8
    check-cast v0, Lads_mobile_sdk/jm;

    invoke-virtual {v0}, Lads_mobile_sdk/jm;->B()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_11

    move-object/from16 v0, v16

    .line 5034
    :cond_11
    const-class v8, Lcom/google/gson/JsonObject;

    .line 5035
    invoke-virtual {v10, v0, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object/from16 v8, v19

    :try_start_9
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/gson/JsonObject;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-object/from16 v19, v1

    move-object v1, v2

    move/from16 v22, v3

    move/from16 v23, v4

    move-object/from16 v36, v5

    move-object v2, v8

    move-object/from16 v26, v11

    move-object/from16 v25, v12

    move-object/from16 v20, v15

    move-object/from16 v3, v18

    :goto_10
    move-object/from16 v31, v7

    move-object/from16 v21, v9

    move-object/from16 v24, v13

    move-object/from16 v29, v14

    goto/16 :goto_15

    :catch_2
    move-exception v0

    goto :goto_11

    :catch_3
    move-exception v0

    move-object/from16 v8, v19

    :goto_11
    move-object/from16 v19, v7

    :goto_12
    move-object v10, v1

    move-object v1, v2

    move-object v2, v8

    move-object v8, v12

    move-object/from16 v7, v19

    move-object v12, v5

    move-object v5, v11

    move-object v11, v15

    move v15, v4

    move v4, v3

    :goto_13
    move-object/from16 v3, v18

    goto :goto_14

    :catch_4
    move-exception v0

    move-object/from16 v2, v19

    goto :goto_13

    .line 5036
    :goto_14
    :try_start_a
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v18, v1

    .line 5208
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v1

    .line 5209
    invoke-virtual {v1, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 5210
    invoke-virtual {v1}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v1

    .line 5211
    iget-object v1, v1, Lads_mobile_sdk/uj2;->s:Ljava/util/List;

    .line 5212
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v19

    if-nez v19, :cond_12

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    :cond_12
    move-object/from16 v0, v19

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v22, v4

    move-object/from16 v26, v5

    move-object/from16 v25, v8

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    move-object/from16 v36, v12

    move/from16 v23, v15

    move-object/from16 v1, v18

    const/4 v0, 0x0

    goto :goto_10

    :goto_15
    if-nez v0, :cond_13

    .line 5213
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    :cond_13
    move-object/from16 v27, v0

    .line 5215
    sget-object v0, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 5216
    :try_start_b
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 5217
    iget-object v4, v1, Lads_mobile_sdk/if1;->y:Lads_mobile_sdk/og1;

    if-nez v4, :cond_14

    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 5218
    :cond_14
    invoke-virtual {v4}, Lads_mobile_sdk/og1;->E()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_15

    move-object/from16 v4, v16

    .line 5219
    :cond_15
    const-class v5, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/gson/JsonObject;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_16

    :catch_5
    move-exception v0

    .line 5220
    :try_start_c
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5392
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v2

    .line 5393
    invoke-virtual {v2, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 5394
    invoke-virtual {v2}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v2

    .line 5395
    iget-object v2, v2, Lads_mobile_sdk/uj2;->s:Ljava/util/List;

    .line 5396
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_16

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    :cond_16
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :goto_16
    if-nez v0, :cond_17

    .line 5397
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    :cond_17
    move-object/from16 v28, v0

    .line 5399
    iget-object v0, v1, Lads_mobile_sdk/if1;->C:Lads_mobile_sdk/ae1;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v30

    .line 5401
    iget-object v0, v1, Lads_mobile_sdk/if1;->v:Lads_mobile_sdk/km;

    .line 5402
    iget v2, v0, Lads_mobile_sdk/km;->c:F

    .line 5403
    iget-boolean v0, v0, Lads_mobile_sdk/km;->d:Z

    .line 5404
    iget-object v3, v1, Lads_mobile_sdk/if1;->r:Lads_mobile_sdk/l43;

    invoke-virtual {v3}, Lads_mobile_sdk/l43;->a()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->getMaxAdContentRating()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;->getValue()Ljava/lang/String;

    move-result-object v34

    .line 5406
    iget-object v3, v1, Lads_mobile_sdk/if1;->r:Lads_mobile_sdk/l43;

    invoke-virtual {v3}, Lads_mobile_sdk/l43;->a()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->getPublisherPrivacyPersonalizationState()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$PublisherPrivacyPersonalizationState;

    move-result-object v3

    .line 5407
    invoke-virtual {v3}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$PublisherPrivacyPersonalizationState;->getValue()I

    move-result v35

    .line 5409
    iget-object v1, v1, Lads_mobile_sdk/if1;->w:Lads_mobile_sdk/ja1;

    invoke-virtual {v1}, Lads_mobile_sdk/ja1;->a()Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_19

    .line 5410
    :cond_18
    const-string v1, ""

    :cond_19
    move-object/from16 v37, v1

    .line 5411
    new-instance v18, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;

    move/from16 v33, v0

    move/from16 v32, v2

    invoke-direct/range {v18 .. v37}, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;-><init>(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;ZZLcom/google/gson/JsonArray;Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonObject;FZLjava/lang/String;ILcom/google/gson/JsonObject;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    const/4 v10, 0x0

    .line 6281
    invoke-interface {v6, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v18

    :catchall_1
    move-exception v0

    goto :goto_17

    :catchall_2
    move-exception v0

    move-object v6, v9

    :goto_17
    const/4 v10, 0x0

    .line 6282
    invoke-interface {v6, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0

    :catchall_3
    move-exception v0

    .line 6283
    invoke-interface {v4, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final z(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    instance-of v2, v0, Lads_mobile_sdk/le1;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/le1;

    iget v3, v2, Lads_mobile_sdk/le1;->f:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/le1;->f:I

    goto :goto_0

    :cond_0
    new-instance v2, Lads_mobile_sdk/le1;

    invoke-direct {v2, v1, v0}, Lads_mobile_sdk/le1;-><init>(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v13, v2

    iget-object v0, v13, Lads_mobile_sdk/le1;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 184
    iget v3, v13, Lads_mobile_sdk/le1;->f:I

    const-string v15, "storedInspectorSettings"

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v3, :cond_5

    if-eq v3, v7, :cond_4

    if-eq v3, v6, :cond_3

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    iget-object v2, v13, Lads_mobile_sdk/le1;->a:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v8

    goto/16 :goto_9

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_2
    iget-object v3, v13, Lads_mobile_sdk/le1;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v5, v13, Lads_mobile_sdk/le1;->a:Ljava/lang/Object;

    check-cast v5, Lads_mobile_sdk/if1;

    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v0, v4

    move-object v1, v8

    goto/16 :goto_6

    :catchall_1
    move-exception v0

    move-object v2, v3

    :goto_1
    move-object v1, v8

    goto/16 :goto_b

    .line 186
    :cond_3
    iget-object v3, v13, Lads_mobile_sdk/le1;->c:Lads_mobile_sdk/if1;

    iget-object v6, v13, Lads_mobile_sdk/le1;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v7, v13, Lads_mobile_sdk/le1;->a:Ljava/lang/Object;

    check-cast v7, Lads_mobile_sdk/if1;

    :try_start_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :goto_2
    move-object v1, v8

    goto/16 :goto_c

    .line 187
    :cond_4
    iget-object v3, v13, Lads_mobile_sdk/le1;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v7, v13, Lads_mobile_sdk/le1;->a:Ljava/lang/Object;

    check-cast v7, Lads_mobile_sdk/if1;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v18, v7

    move-object v7, v3

    move-object/from16 v3, v18

    goto :goto_3

    :cond_5
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 188
    iget-object v0, v1, Lads_mobile_sdk/if1;->x:Lkotlinx/coroutines/sync/Mutex;

    .line 846
    iput-object v1, v13, Lads_mobile_sdk/le1;->a:Ljava/lang/Object;

    iput-object v0, v13, Lads_mobile_sdk/le1;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v7, v13, Lads_mobile_sdk/le1;->f:I

    invoke-interface {v0, v8, v13}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_6

    goto/16 :goto_8

    :cond_6
    move-object v7, v0

    move-object v3, v1

    .line 847
    :goto_3
    :try_start_3
    iget-object v0, v3, Lads_mobile_sdk/if1;->l:Lads_mobile_sdk/qg1;

    .line 848
    iget-object v0, v0, Lads_mobile_sdk/qg1;->a:Lads_mobile_sdk/ks1;

    .line 849
    invoke-interface {v0}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/core/DataStore;

    invoke-interface {v0}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 850
    iput-object v3, v13, Lads_mobile_sdk/le1;->a:Ljava/lang/Object;

    iput-object v7, v13, Lads_mobile_sdk/le1;->b:Lkotlinx/coroutines/sync/Mutex;

    iput-object v3, v13, Lads_mobile_sdk/le1;->c:Lads_mobile_sdk/if1;

    iput v6, v13, Lads_mobile_sdk/le1;->f:I

    invoke-static {v0, v13}, Lkotlinx/coroutines/flow/FlowKt;->firstOrNull(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_9

    if-ne v0, v2, :cond_7

    goto/16 :goto_8

    :cond_7
    move-object v6, v7

    move-object v7, v3

    .line 851
    :goto_4
    :try_start_4
    check-cast v0, Lads_mobile_sdk/og1;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-nez v0, :cond_8

    .line 852
    :try_start_5
    invoke-static {}, Lads_mobile_sdk/og1;->w()Lads_mobile_sdk/og1;

    move-result-object v0

    const-string v9, "getDefaultInstance(...)"

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_2

    .line 853
    :cond_8
    :goto_5
    :try_start_6
    iput-object v0, v3, Lads_mobile_sdk/if1;->y:Lads_mobile_sdk/og1;

    .line 858
    iget-object v0, v7, Lads_mobile_sdk/if1;->r:Lads_mobile_sdk/l43;

    invoke-virtual {v0}, Lads_mobile_sdk/l43;->a()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;

    move-result-object v0

    iget-object v3, v7, Lads_mobile_sdk/if1;->c:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->isTestDevice(Landroid/content/Context;)Z

    move-result v0

    .line 859
    iget-object v3, v7, Lads_mobile_sdk/if1;->y:Lads_mobile_sdk/og1;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-nez v3, :cond_9

    :try_start_7
    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object v3, v8

    .line 860
    :cond_9
    :try_start_8
    invoke-virtual {v3}, Lads_mobile_sdk/og1;->B()Z

    move-result v3

    if-eq v0, v3, :cond_a

    .line 861
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v7, v13, Lads_mobile_sdk/le1;->a:Ljava/lang/Object;

    iput-object v6, v13, Lads_mobile_sdk/le1;->b:Lkotlinx/coroutines/sync/Mutex;

    iput-object v8, v13, Lads_mobile_sdk/le1;->c:Lads_mobile_sdk/if1;

    iput v5, v13, Lads_mobile_sdk/le1;->f:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    const/4 v5, 0x0

    move-object v3, v6

    const/4 v6, 0x0

    move-object v9, v3

    move-object v3, v7

    const/4 v7, 0x0

    move-object v10, v8

    const/4 v8, 0x0

    move-object v11, v9

    const/4 v9, 0x0

    move-object v12, v10

    const/4 v10, 0x0

    move-object v14, v11

    const/4 v11, 0x0

    move-object/from16 v16, v12

    const/4 v12, 0x0

    move-object/from16 v17, v14

    const/16 v14, 0x1fe

    move v1, v4

    move-object v4, v0

    move v0, v1

    move-object/from16 v1, v16

    :try_start_9
    invoke-static/range {v3 .. v14}, Lads_mobile_sdk/if1;->a(Lads_mobile_sdk/if1;Ljava/lang/Boolean;Ljava/lang/Boolean;Lads_mobile_sdk/vd1;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-ne v4, v2, :cond_b

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object/from16 v6, v17

    goto/16 :goto_c

    :catchall_4
    move-exception v0

    move-object/from16 v17, v6

    goto/16 :goto_2

    :cond_a
    move v0, v4

    move-object/from16 v17, v6

    move-object v3, v7

    move-object v1, v8

    :cond_b
    move-object v5, v3

    move-object/from16 v3, v17

    .line 865
    :goto_6
    :try_start_a
    iget-object v8, v5, Lads_mobile_sdk/if1;->y:Lads_mobile_sdk/og1;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    if-nez v8, :cond_c

    :try_start_b
    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    move-object v8, v1

    goto :goto_7

    :catchall_5
    move-exception v0

    move-object v2, v3

    goto :goto_b

    .line 866
    :cond_c
    :goto_7
    :try_start_c
    invoke-virtual {v8}, Lads_mobile_sdk/og1;->x()Ljava/lang/String;

    move-result-object v4

    const-string v6, "getDeviceIdForDebugging(...)"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_d

    .line 867
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v3, v13, Lads_mobile_sdk/le1;->a:Ljava/lang/Object;

    iput-object v1, v13, Lads_mobile_sdk/le1;->b:Lkotlinx/coroutines/sync/Mutex;

    iput-object v1, v13, Lads_mobile_sdk/le1;->c:Lads_mobile_sdk/if1;

    iput v0, v13, Lads_mobile_sdk/le1;->f:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    const/4 v4, 0x0

    move-object/from16 v17, v3

    move-object v3, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v14, 0x1df

    :try_start_d
    invoke-static/range {v3 .. v14}, Lads_mobile_sdk/if1;->a(Lads_mobile_sdk/if1;Ljava/lang/Boolean;Ljava/lang/Boolean;Lads_mobile_sdk/vd1;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    if-ne v0, v2, :cond_e

    :goto_8
    return-object v2

    :catchall_6
    move-exception v0

    goto :goto_a

    :cond_d
    move-object/from16 v17, v3

    :cond_e
    move-object/from16 v2, v17

    .line 869
    :goto_9
    :try_start_e
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 1516
    invoke-interface {v2, v1}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    :catchall_7
    move-exception v0

    goto :goto_b

    :catchall_8
    move-exception v0

    move-object/from16 v17, v3

    :goto_a
    move-object/from16 v2, v17

    :goto_b
    move-object v6, v2

    goto :goto_c

    :catchall_9
    move-exception v0

    move-object v1, v8

    move-object v6, v7

    .line 1517
    :goto_c
    invoke-interface {v6, v1}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method
