.class public final Lads_mobile_sdk/hs2;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Lads_mobile_sdk/pt2;

.field public b:Ljava/lang/String;

.field public c:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;

.field public d:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;

.field public e:Lkotlinx/coroutines/sync/Mutex;

.field public f:Lads_mobile_sdk/pt2;

.field public g:Ljava/lang/String;

.field public synthetic h:Ljava/lang/Object;

.field public final synthetic i:Lads_mobile_sdk/pt2;

.field public j:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/pt2;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/hs2;->i:Lads_mobile_sdk/pt2;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/hs2;->h:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/hs2;->j:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/hs2;->j:I

    iget-object p1, p0, Lads_mobile_sdk/hs2;->i:Lads_mobile_sdk/pt2;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, v0, p0}, Lads_mobile_sdk/pt2;->a(Lads_mobile_sdk/pt2;Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
