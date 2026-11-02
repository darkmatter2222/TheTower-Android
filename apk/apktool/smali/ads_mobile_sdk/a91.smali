.class public final synthetic Lads_mobile_sdk/a91;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    sget-object v2, Lads_mobile_sdk/mk1;->b:Lads_mobile_sdk/lk1;

    .line 2
    const-class v3, Lads_mobile_sdk/lk1;

    const-string v5, "processMultiFormatAd(Lcom/google/android/libraries/ads/mobile/sdk/internal/ad/MultiFormatAd;)Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadResult;"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-string v4, "processMultiFormatAd"

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 55
    check-cast p1, Lads_mobile_sdk/xz1;

    .line 56
    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lkotlin/jvm/internal/FunctionReferenceImpl;->receiver:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/lk1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lads_mobile_sdk/lk1;->a(Lads_mobile_sdk/xz1;)Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadResult;

    move-result-object p1

    return-object p1
.end method
