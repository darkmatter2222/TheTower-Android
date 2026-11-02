.class public final Lads_mobile_sdk/x5;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Lads_mobile_sdk/h6;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Lkotlinx/coroutines/sync/Mutex;

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lads_mobile_sdk/h6;

.field public g:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/x5;->f:Lads_mobile_sdk/h6;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/x5;->e:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/x5;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/x5;->g:I

    iget-object p1, p0, Lads_mobile_sdk/x5;->f:Lads_mobile_sdk/h6;

    invoke-static {p1, p0}, Lads_mobile_sdk/h6;->b(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
