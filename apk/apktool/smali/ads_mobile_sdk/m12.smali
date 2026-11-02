.class public final Lads_mobile_sdk/m12;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public b:I

.field public c:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic d:Lads_mobile_sdk/n12;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/n12;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/m12;->d:Lads_mobile_sdk/n12;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/m12;->a:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/m12;->b:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/m12;->b:I

    iget-object p1, p0, Lads_mobile_sdk/m12;->d:Lads_mobile_sdk/n12;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lads_mobile_sdk/n12;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
