.class public final Lcom/unity3d/ads/adplayer/DisplayRecoverer;
.super Ljava/lang/Object;
.source "DisplayRecoverer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/adplayer/DisplayRecoverer$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDisplayRecoverer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DisplayRecoverer.kt\ncom/unity3d/ads/adplayer/DisplayRecoverer\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n+ 5 CoroutineExtensions.kt\ncom/unity3d/services/core/extensions/CoroutineExtensionsKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,250:1\n32#2:251\n17#2:252\n19#2:256\n17#2:257\n19#2:261\n46#3:253\n51#3:255\n46#3:258\n51#3:260\n105#4:254\n105#4:259\n14#5,6:262\n1#6:268\n*S KotlinDebug\n*F\n+ 1 DisplayRecoverer.kt\ncom/unity3d/ads/adplayer/DisplayRecoverer\n*L\n88#1:251\n88#1:252\n88#1:256\n89#1:257\n89#1:261\n88#1:253\n88#1:255\n89#1:258\n89#1:260\n88#1:254\n89#1:259\n109#1:262,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u0000 12\u00020\u0001:\u00011BI\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000e\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bJ\u0016\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001dH\u0086@\u00a2\u0006\u0002\u0010\u001fJ\u0006\u0010 \u001a\u00020\u0019J\u0016\u0010!\u001a\u00020\u001d2\u0006\u0010\"\u001a\u00020\u001dH\u0082@\u00a2\u0006\u0002\u0010\u001fJ\u0008\u0010#\u001a\u00020$H\u0002J\u0010\u0010%\u001a\u00020\u00192\u0006\u0010&\u001a\u00020\u0003H\u0002J\u0018\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020\r2\u0006\u0010*\u001a\u00020+H\u0002J\u001d\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u00190-2\u0006\u0010.\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008/\u00100R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00062"
    }
    d2 = {
        "Lcom/unity3d/ads/adplayer/DisplayRecoverer;",
        "",
        "opportunityId",
        "",
        "adObject",
        "Lcom/unity3d/ads/core/data/model/AdObject;",
        "sessionRepository",
        "Lcom/unity3d/ads/core/data/repository/SessionRepository;",
        "focusRepository",
        "Lcom/unity3d/ads/core/data/repository/FocusRepository;",
        "sendDiagnosticEvent",
        "Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;",
        "context",
        "Landroid/content/Context;",
        "orientationRepository",
        "Lcom/unity3d/ads/core/data/repository/OrientationRepository;",
        "showOptions",
        "Lcom/unity3d/ads/adplayer/AndroidShowOptions;",
        "<init>",
        "(Ljava/lang/String;Lcom/unity3d/ads/core/data/model/AdObject;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/FocusRepository;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Landroid/content/Context;Lcom/unity3d/ads/core/data/repository/OrientationRepository;Lcom/unity3d/ads/adplayer/AndroidShowOptions;)V",
        "incidentInProgress",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "displayHiddenAtMs",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "start",
        "",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "handleExternalDestroy",
        "",
        "sdkAlreadyDestroyed",
        "(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "stop",
        "attemptDisplayRecovery",
        "taskRemoved",
        "maxBackgroundAgeMs",
        "",
        "fail",
        "reason",
        "getIntent",
        "Landroid/content/Intent;",
        "providedContext",
        "intentFlags",
        "",
        "launchDisplay",
        "Lkotlin/Result;",
        "startContext",
        "launchDisplay-IoAF18A",
        "(Landroid/content/Context;)Ljava/lang/Object;",
        "Companion",
        "unity-ads_defaultRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/unity3d/ads/adplayer/DisplayRecoverer$Companion;

.field public static final DEFAULT_MAX_BACKGROUND_AGE_MS:J = 0x7530L

.field public static final EXTRA_RECOVERY_REATTACH:Ljava/lang/String; = "isRecoveryReattach"

.field private static final RECOVERY_TIMEOUT_MS:J = 0x1388L


# instance fields
.field private final adObject:Lcom/unity3d/ads/core/data/model/AdObject;

.field private final context:Landroid/content/Context;

.field private final displayHiddenAtMs:Ljava/util/concurrent/atomic/AtomicLong;

.field private final focusRepository:Lcom/unity3d/ads/core/data/repository/FocusRepository;

.field private final incidentInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final opportunityId:Ljava/lang/String;

.field private final orientationRepository:Lcom/unity3d/ads/core/data/repository/OrientationRepository;

.field private final sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

.field private final sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

.field private final showOptions:Lcom/unity3d/ads/adplayer/AndroidShowOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/unity3d/ads/adplayer/DisplayRecoverer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unity3d/ads/adplayer/DisplayRecoverer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/unity3d/ads/adplayer/DisplayRecoverer;->Companion:Lcom/unity3d/ads/adplayer/DisplayRecoverer$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/unity3d/ads/core/data/model/AdObject;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/FocusRepository;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Landroid/content/Context;Lcom/unity3d/ads/core/data/repository/OrientationRepository;Lcom/unity3d/ads/adplayer/AndroidShowOptions;)V
    .locals 1

    const-string v0, "opportunityId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "focusRepository"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sendDiagnosticEvent"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "orientationRepository"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "showOptions"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/unity3d/ads/adplayer/DisplayRecoverer;->opportunityId:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lcom/unity3d/ads/adplayer/DisplayRecoverer;->adObject:Lcom/unity3d/ads/core/data/model/AdObject;

    .line 70
    iput-object p3, p0, Lcom/unity3d/ads/adplayer/DisplayRecoverer;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 71
    iput-object p4, p0, Lcom/unity3d/ads/adplayer/DisplayRecoverer;->focusRepository:Lcom/unity3d/ads/core/data/repository/FocusRepository;

    .line 72
    iput-object p5, p0, Lcom/unity3d/ads/adplayer/DisplayRecoverer;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 73
    iput-object p6, p0, Lcom/unity3d/ads/adplayer/DisplayRecoverer;->context:Landroid/content/Context;

    .line 74
    iput-object p7, p0, Lcom/unity3d/ads/adplayer/DisplayRecoverer;->orientationRepository:Lcom/unity3d/ads/core/data/repository/OrientationRepository;

    .line 75
    iput-object p8, p0, Lcom/unity3d/ads/adplayer/DisplayRecoverer;->showOptions:Lcom/unity3d/ads/adplayer/AndroidShowOptions;

    .line 81
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/unity3d/ads/adplayer/DisplayRecoverer;->incidentInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 84
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 p2, 0x0

    invoke-direct {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lcom/unity3d/ads/adplayer/DisplayRecoverer;->displayHiddenAtMs:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public static final synthetic access$attemptDisplayRecovery(Lcom/unity3d/ads/adplayer/DisplayRecoverer;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/unity3d/ads/adplayer/DisplayRecoverer;->attemptDisplayRecovery(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getAdObject$p(Lcom/unity3d/ads/adplayer/DisplayRecoverer;)Lcom/unity3d/ads/core/data/model/AdObject;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/unity3d/ads/adplayer/DisplayRecoverer;->adObject:Lcom/unity3d/ads/core/data/model/AdObject;

    return-object p0
.end method

.method public static final synthetic access$getDisplayHiddenAtMs$p(Lcom/unity3d/ads/adplayer/DisplayRecoverer;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/unity3d/ads/adplayer/DisplayRecoverer;->displayHiddenAtMs:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method public static final synthetic access$getFocusRepository$p(Lcom/unity3d/ads/adplayer/DisplayRecoverer;)Lcom/unity3d/ads/core/data/repository/FocusRepository;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/unity3d/ads/adplayer/DisplayRecoverer;->focusRepository:Lcom/unity3d/ads/core/data/repository/FocusRepository;

    return-object p0
.end method

.method public static final synthetic access$getIncidentInProgress$p(Lcom/unity3d/ads/adplayer/DisplayRecoverer;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/unity3d/ads/adplayer/DisplayRecoverer;->incidentInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic access$getOpportunityId$p(Lcom/unity3d/ads/adplayer/DisplayRecoverer;)Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/unity3d/ads/adplayer/DisplayRecoverer;->opportunityId:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getSendDiagnosticEvent$p(Lcom/unity3d/ads/adplayer/DisplayRecoverer;)Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/unity3d/ads/adplayer/DisplayRecoverer;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    return-object p0
.end method

.method public static final synthetic access$launchDisplay-IoAF18A(Lcom/unity3d/ads/adplayer/DisplayRecoverer;Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/unity3d/ads/adplayer/DisplayRecoverer;->launchDisplay-IoAF18A(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final attemptDisplayRecovery(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$1;

    iget v3, v2, Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v1, v2, Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$1;->label:I

    sub-int/2addr v1, v4

    iput v1, v2, Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$1;

    invoke-direct {v2, v0, v1}, Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$1;-><init>(Lcom/unity3d/ads/adplayer/DisplayRecoverer;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 125
    iget v4, v2, Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$1;->label:I

    const-wide/16 v5, 0x1388

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz v4, :cond_3

    if-eq v4, v8, :cond_2

    if-ne v4, v7, :cond_1

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_3
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 126
    iget-object v11, v0, Lcom/unity3d/ads/adplayer/DisplayRecoverer;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    iget-object v1, v0, Lcom/unity3d/ads/adplayer/DisplayRecoverer;->adObject:Lcom/unity3d/ads/core/data/model/AdObject;

    const/16 v20, 0xee

    const/16 v21, 0x0

    const-string v12, "native_show_display_recovery_attempt"

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, v1

    invoke-static/range {v11 .. v21}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;Lcom/google/protobuf/ByteString;Lcom/unity3d/ads/MediationInfo;ILjava/lang/Object;)V

    .line 130
    iget-object v1, v0, Lcom/unity3d/ads/adplayer/DisplayRecoverer;->adObject:Lcom/unity3d/ads/core/data/model/AdObject;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/unity3d/ads/core/data/model/AdObject;->getWebViewLessLoadingRequiredData()Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;

    move-result-object v1

    goto :goto_1

    :cond_4
    move-object v1, v9

    :goto_1
    if-eqz v1, :cond_5

    .line 131
    const-string v1, "webview_less_unsupported"

    invoke-direct {v0, v1}, Lcom/unity3d/ads/adplayer/DisplayRecoverer;->fail(Ljava/lang/String;)V

    .line 132
    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :cond_5
    if-eqz p1, :cond_6

    .line 137
    const-string v1, "task_removed"

    invoke-direct {v0, v1}, Lcom/unity3d/ads/adplayer/DisplayRecoverer;->fail(Ljava/lang/String;)V

    .line 138
    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 143
    :cond_6
    iget-object v1, v0, Lcom/unity3d/ads/adplayer/DisplayRecoverer;->displayHiddenAtMs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v1, v11, v13

    if-eqz v1, :cond_7

    .line 144
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    sub-long/2addr v13, v11

    invoke-direct {v0}, Lcom/unity3d/ads/adplayer/DisplayRecoverer;->maxBackgroundAgeMs()J

    move-result-wide v11

    cmp-long v1, v13, v11

    if-lez v1, :cond_7

    .line 145
    const-string v1, "background_age_exceeded"

    invoke-direct {v0, v1}, Lcom/unity3d/ads/adplayer/DisplayRecoverer;->fail(Ljava/lang/String;)V

    .line 146
    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 151
    :cond_7
    new-instance v1, Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$foregrounded$1;

    invoke-direct {v1, v0, v9}, Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$foregrounded$1;-><init>(Lcom/unity3d/ads/adplayer/DisplayRecoverer;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    iput v8, v2, Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$1;->label:I

    invoke-static {v5, v6, v1, v2}, Lkotlinx/coroutines/TimeoutKt;->withTimeoutOrNull(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_8

    goto :goto_4

    .line 125
    :cond_8
    :goto_2
    check-cast v1, Landroid/app/Activity;

    if-nez v1, :cond_9

    .line 158
    const-string v1, "foreground_timeout"

    invoke-direct {v0, v1}, Lcom/unity3d/ads/adplayer/DisplayRecoverer;->fail(Ljava/lang/String;)V

    .line 159
    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 166
    :cond_9
    iget-object v4, v0, Lcom/unity3d/ads/adplayer/DisplayRecoverer;->adObject:Lcom/unity3d/ads/core/data/model/AdObject;

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lcom/unity3d/ads/core/data/model/AdObject;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    goto :goto_3

    :cond_a
    move-object v4, v9

    :goto_3
    if-eqz v4, :cond_b

    if-eq v4, v1, :cond_b

    .line 168
    const-string v1, "host_mismatch"

    invoke-direct {v0, v1}, Lcom/unity3d/ads/adplayer/DisplayRecoverer;->fail(Ljava/lang/String;)V

    .line 169
    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 172
    :cond_b
    new-instance v4, Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$confirmed$1;

    invoke-direct {v4, v0, v1, v9}, Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$confirmed$1;-><init>(Lcom/unity3d/ads/adplayer/DisplayRecoverer;Landroid/app/Activity;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    iput v7, v2, Lcom/unity3d/ads/adplayer/DisplayRecoverer$attemptDisplayRecovery$1;->label:I

    invoke-static {v5, v6, v4, v2}, Lkotlinx/coroutines/TimeoutKt;->withTimeoutOrNull(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_c

    :goto_4
    return-object v3

    .line 125
    :cond_c
    :goto_5
    check-cast v1, Lcom/unity3d/ads/adplayer/DisplayMessage;

    if-eqz v1, :cond_d

    .line 191
    iget-object v11, v0, Lcom/unity3d/ads/adplayer/DisplayRecoverer;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    iget-object v1, v0, Lcom/unity3d/ads/adplayer/DisplayRecoverer;->adObject:Lcom/unity3d/ads/core/data/model/AdObject;

    const/16 v20, 0xee

    const/16 v21, 0x0

    const-string v12, "native_show_display_recovery_success"

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, v1

    invoke-static/range {v11 .. v21}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;Lcom/google/protobuf/ByteString;Lcom/unity3d/ads/MediationInfo;ILjava/lang/Object;)V

    goto :goto_6

    .line 194
    :cond_d
    const-string v1, "confirm_timeout"

    invoke-direct {v0, v1}, Lcom/unity3d/ads/adplayer/DisplayRecoverer;->fail(Ljava/lang/String;)V

    move v8, v10

    .line 195
    :goto_6
    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method private final fail(Ljava/lang/String;)V
    .locals 11

    .line 204
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/DisplayRecoverer;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 206
    const-string v1, "reason"

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v3

    .line 207
    iget-object v5, p0, Lcom/unity3d/ads/adplayer/DisplayRecoverer;->adObject:Lcom/unity3d/ads/core/data/model/AdObject;

    const/16 v9, 0xea

    const/4 v10, 0x0

    .line 204
    const-string v1, "native_show_display_recovery_failure"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v0 .. v10}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;Lcom/google/protobuf/ByteString;Lcom/unity3d/ads/MediationInfo;ILjava/lang/Object;)V

    return-void
.end method

.method private final getIntent(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 2

    .line 214
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 215
    const-string p1, "opportunityId"

    iget-object v1, p0, Lcom/unity3d/ads/adplayer/DisplayRecoverer;->opportunityId:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    iget-object p1, p0, Lcom/unity3d/ads/adplayer/DisplayRecoverer;->showOptions:Lcom/unity3d/ads/adplayer/AndroidShowOptions;

    invoke-virtual {p1}, Lcom/unity3d/ads/adplayer/AndroidShowOptions;->getUnityAdsShowOptions()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 217
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "showOptions"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    :cond_0
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 220
    iget-object p1, p0, Lcom/unity3d/ads/adplayer/DisplayRecoverer;->orientationRepository:Lcom/unity3d/ads/core/data/repository/OrientationRepository;

    invoke-virtual {p1}, Lcom/unity3d/ads/core/data/repository/OrientationRepository;->getResumedActivityOrientation()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    const-string p2, "orientation"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 221
    const-string p1, "isRecoveryReattach"

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method private final launchDisplay-IoAF18A(Landroid/content/Context;)Ljava/lang/Object;
    .locals 4

    .line 227
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/DisplayRecoverer;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    invoke-interface {v0}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->getNativeConfiguration()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->getOverwriteIntentFlagActivity()I

    move-result v0

    .line 228
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/high16 v1, 0x10010000

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v1

    .line 230
    :goto_1
    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v2, p0

    check-cast v2, Lcom/unity3d/ads/adplayer/DisplayRecoverer;

    .line 231
    invoke-direct {p0, p1, v0}, Lcom/unity3d/ads/adplayer/DisplayRecoverer;->getIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 232
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 230
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 232
    :goto_2
    invoke-static {v2}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_4

    :cond_2
    :try_start_1
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    if-eq v0, v1, :cond_3

    .line 234
    invoke-direct {p0, p1, v1}, Lcom/unity3d/ads/adplayer/DisplayRecoverer;->getIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 238
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 232
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_3

    .line 236
    :cond_3
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    .line 232
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_3
    move-object v2, p1

    :goto_4
    return-object v2
.end method

.method private final maxBackgroundAgeMs()J
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/DisplayRecoverer;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    invoke-interface {v0}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->getFeatureFlags()Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->getRecoverFullscreenDisplayMaxBackgroundAgeMs()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 201
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 200
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x7530

    return-wide v0
.end method


# virtual methods
.method public final handleExternalDestroy(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    instance-of v2, v0, Lcom/unity3d/ads/adplayer/DisplayRecoverer$handleExternalDestroy$1;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/unity3d/ads/adplayer/DisplayRecoverer$handleExternalDestroy$1;

    iget v3, v2, Lcom/unity3d/ads/adplayer/DisplayRecoverer$handleExternalDestroy$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v0, v2, Lcom/unity3d/ads/adplayer/DisplayRecoverer$handleExternalDestroy$1;->label:I

    sub-int/2addr v0, v4

    iput v0, v2, Lcom/unity3d/ads/adplayer/DisplayRecoverer$handleExternalDestroy$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/unity3d/ads/adplayer/DisplayRecoverer$handleExternalDestroy$1;

    invoke-direct {v2, v1, v0}, Lcom/unity3d/ads/adplayer/DisplayRecoverer$handleExternalDestroy$1;-><init>(Lcom/unity3d/ads/adplayer/DisplayRecoverer;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v2, Lcom/unity3d/ads/adplayer/DisplayRecoverer$handleExternalDestroy$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 105
    iget v4, v2, Lcom/unity3d/ads/adplayer/DisplayRecoverer$handleExternalDestroy$1;->label:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v6, :cond_1

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 106
    iget-object v0, v1, Lcom/unity3d/ads/adplayer/DisplayRecoverer;->incidentInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 263
    :cond_3
    :try_start_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v2

    check-cast v0, Lkotlin/coroutines/Continuation;

    .line 110
    invoke-static {v1}, Lcom/unity3d/ads/adplayer/DisplayRecoverer;->access$getSendDiagnosticEvent$p(Lcom/unity3d/ads/adplayer/DisplayRecoverer;)Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    move-result-object v7

    const-string v8, "native_show_display_external_destroy"

    invoke-static {v1}, Lcom/unity3d/ads/adplayer/DisplayRecoverer;->access$getAdObject$p(Lcom/unity3d/ads/adplayer/DisplayRecoverer;)Lcom/unity3d/ads/core/data/model/AdObject;

    move-result-object v12

    const/16 v16, 0xee

    const/16 v17, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v7 .. v17}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;Lcom/google/protobuf/ByteString;Lcom/unity3d/ads/MediationInfo;ILjava/lang/Object;)V

    .line 112
    sget-object v0, Lcom/unity3d/ads/adplayer/AdTaskRemovalDetectionService;->Companion:Lcom/unity3d/ads/adplayer/AdTaskRemovalDetectionService$Companion;

    invoke-virtual {v0}, Lcom/unity3d/ads/adplayer/AdTaskRemovalDetectionService$Companion;->consumeTaskRemoved()Z

    move-result v0

    if-nez p1, :cond_5

    .line 113
    iput v6, v2, Lcom/unity3d/ads/adplayer/DisplayRecoverer$handleExternalDestroy$1;->label:I

    invoke-static {v1, v0, v2}, Lcom/unity3d/ads/adplayer/DisplayRecoverer;->access$attemptDisplayRecovery(Lcom/unity3d/ads/adplayer/DisplayRecoverer;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_4

    return-object v3

    :cond_4
    :goto_1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    move v6, v5

    :goto_2
    if-eqz v6, :cond_6

    .line 114
    invoke-static {v1}, Lcom/unity3d/ads/adplayer/DisplayRecoverer;->access$getIncidentInProgress$p(Lcom/unity3d/ads/adplayer/DisplayRecoverer;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 115
    :cond_6
    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 263
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 267
    :goto_3
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 116
    :goto_4
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object v0, v2

    :cond_7
    return-object v0

    .line 265
    :goto_5
    throw v0
.end method

.method public final start(Lkotlinx/coroutines/CoroutineScope;)V
    .locals 3

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    sget-object v0, Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer;->Companion:Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer$Companion;

    invoke-virtual {v0}, Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer$Companion;->getDisplayMessages()Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    .line 254
    new-instance v1, Lcom/unity3d/ads/adplayer/DisplayRecoverer$start$$inlined$filterIsInstance$1;

    invoke-direct {v1, v0}, Lcom/unity3d/ads/adplayer/DisplayRecoverer$start$$inlined$filterIsInstance$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v1, Lkotlinx/coroutines/flow/Flow;

    .line 259
    new-instance v0, Lcom/unity3d/ads/adplayer/DisplayRecoverer$start$$inlined$filter$1;

    invoke-direct {v0, v1, p0}, Lcom/unity3d/ads/adplayer/DisplayRecoverer$start$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/unity3d/ads/adplayer/DisplayRecoverer;)V

    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    .line 90
    new-instance v1, Lcom/unity3d/ads/adplayer/DisplayRecoverer$start$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/unity3d/ads/adplayer/DisplayRecoverer$start$2;-><init>(Lcom/unity3d/ads/adplayer/DisplayRecoverer;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->onEach(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 98
    invoke-static {v0, p1}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final stop()V
    .locals 2

    .line 121
    sget-object v0, Lcom/unity3d/ads/adplayer/AdTaskRemovalDetectionService;->Companion:Lcom/unity3d/ads/adplayer/AdTaskRemovalDetectionService$Companion;

    iget-object v1, p0, Lcom/unity3d/ads/adplayer/DisplayRecoverer;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/adplayer/AdTaskRemovalDetectionService$Companion;->stop(Landroid/content/Context;)V

    return-void
.end method
