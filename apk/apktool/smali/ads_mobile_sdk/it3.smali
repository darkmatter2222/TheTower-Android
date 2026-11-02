.class public final Lads_mobile_sdk/it3;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Lads_mobile_sdk/lt3;

.field public b:Lads_mobile_sdk/lt3;

.field public c:Lads_mobile_sdk/du1;

.field public d:Ljava/util/List;

.field public e:Lads_mobile_sdk/ec3;

.field public f:Lads_mobile_sdk/i2;

.field public g:Ljava/lang/Integer;

.field public synthetic h:Ljava/lang/Object;

.field public final synthetic i:Lads_mobile_sdk/lt3;

.field public j:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/lt3;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/it3;->i:Lads_mobile_sdk/lt3;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/it3;->h:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/it3;->j:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/it3;->j:I

    iget-object p1, p0, Lads_mobile_sdk/it3;->i:Lads_mobile_sdk/lt3;

    invoke-virtual {p1, p0}, Lads_mobile_sdk/lt3;->q(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
