.class public final synthetic Lads_mobile_sdk/b51;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/f51;)V
    .locals 7

    .line 2
    const-class v3, Lads_mobile_sdk/f51;

    const-string v5, "interstitialAd(Ljava/lang/String;J)Lcom/google/android/libraries/ads/mobile/sdk/internal/h5/H5InterstitialAd;"

    const/4 v6, 0x0

    const/4 v1, 0x2

    const-string v4, "interstitialAd"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 73
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const-string p2, "p0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object p2, p0, Lkotlin/jvm/internal/FunctionReferenceImpl;->receiver:Ljava/lang/Object;

    check-cast p2, Lads_mobile_sdk/f51;

    .line 75
    iget-object p2, p2, Lads_mobile_sdk/f51;->d:Lads_mobile_sdk/cw2;

    .line 76
    invoke-interface {p2}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lads_mobile_sdk/n51;

    .line 77
    check-cast p2, Lads_mobile_sdk/zf0;

    .line 78
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 79
    iput-object v0, p2, Lads_mobile_sdk/zf0;->d:Ljava/lang/Long;

    .line 80
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    iput-object p1, p2, Lads_mobile_sdk/zf0;->c:Ljava/lang/String;

    .line 82
    iget-object p1, p2, Lads_mobile_sdk/zf0;->d:Ljava/lang/Long;

    const-class v0, Ljava/lang/Long;

    invoke-static {p1, v0}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 83
    iget-object p1, p2, Lads_mobile_sdk/zf0;->a:Lads_mobile_sdk/vf0;

    iget-object v0, p2, Lads_mobile_sdk/zf0;->b:Lads_mobile_sdk/yf0;

    iget-object v2, p2, Lads_mobile_sdk/zf0;->c:Ljava/lang/String;

    iget-object p2, p2, Lads_mobile_sdk/zf0;->d:Ljava/lang/Long;

    .line 84
    new-instance v1, Lads_mobile_sdk/q51;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 85
    new-instance v5, Lads_mobile_sdk/h51;

    .line 86
    iget-object p2, v0, Lads_mobile_sdk/yf0;->a:Lcom/google/android/libraries/ads/mobile/sdk/h5/OnH5AdsEventListener;

    .line 87
    iget-object v6, v0, Lads_mobile_sdk/yf0;->b:Lads_mobile_sdk/vf0;

    iget-object v6, v6, Lads_mobile_sdk/vf0;->t:Lads_mobile_sdk/dw2;

    invoke-interface {v6}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lads_mobile_sdk/ex0;

    iget-object v0, v0, Lads_mobile_sdk/yf0;->b:Lads_mobile_sdk/vf0;

    iget-object v0, v0, Lads_mobile_sdk/vf0;->x:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-direct {v5, p2, v6, v0}, Lads_mobile_sdk/h51;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/h5/OnH5AdsEventListener;Lads_mobile_sdk/ex0;Lkotlinx/coroutines/CoroutineScope;)V

    .line 88
    iget-object v6, p1, Lads_mobile_sdk/vf0;->X0:Lads_mobile_sdk/pf0;

    iget-object p2, p1, Lads_mobile_sdk/vf0;->E:Lads_mobile_sdk/dw2;

    invoke-interface {p2}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object p2

    move-object v7, p2

    check-cast v7, Lads_mobile_sdk/f0;

    iget-object v8, p1, Lads_mobile_sdk/vf0;->b:Landroid/content/Context;

    invoke-direct/range {v1 .. v8}, Lads_mobile_sdk/q51;-><init>(Ljava/lang/String;JLads_mobile_sdk/h51;Lads_mobile_sdk/pf0;Lads_mobile_sdk/f0;Landroid/content/Context;)V

    return-object v1
.end method
