.class public final Lads_mobile_sdk/c5;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Lads_mobile_sdk/h6;

.field public b:Lads_mobile_sdk/qx2;

.field public c:Lkotlin/jvm/internal/Ref$IntRef;

.field public d:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public e:Lkotlinx/coroutines/sync/Mutex;

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lads_mobile_sdk/h6;

.field public h:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/c5;->g:Lads_mobile_sdk/h6;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/c5;->f:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/c5;->h:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/c5;->h:I

    iget-object p1, p0, Lads_mobile_sdk/c5;->g:Lads_mobile_sdk/h6;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0, p0}, Lads_mobile_sdk/h6;->a(Lads_mobile_sdk/qx2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
