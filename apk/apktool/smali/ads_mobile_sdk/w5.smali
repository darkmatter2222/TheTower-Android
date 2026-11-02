.class public final Lads_mobile_sdk/w5;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Lads_mobile_sdk/h6;

.field public b:Lads_mobile_sdk/rr3;

.field public c:Ljava/io/Closeable;

.field public d:Ljava/lang/Object;

.field public e:Lads_mobile_sdk/yt2;

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lads_mobile_sdk/h6;

.field public h:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/w5;->g:Lads_mobile_sdk/h6;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/w5;->f:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/w5;->h:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/w5;->h:I

    iget-object p1, p0, Lads_mobile_sdk/w5;->g:Lads_mobile_sdk/h6;

    invoke-virtual {p1, p0}, Lads_mobile_sdk/h6;->w(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
