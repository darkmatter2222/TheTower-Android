.class public final Lads_mobile_sdk/kp;
.super Lads_mobile_sdk/xt2;
.source "SourceFile"


# instance fields
.field public final b:Lads_mobile_sdk/wy2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ck1;Lads_mobile_sdk/wy2;)V
    .locals 1

    .line 1
    const-string v0, "ad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adLoader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 646
    invoke-direct {p0, p1}, Lads_mobile_sdk/xt2;-><init>(Lads_mobile_sdk/zh1;)V

    .line 647
    iput-object p2, p0, Lads_mobile_sdk/kp;->b:Lads_mobile_sdk/wy2;

    return-void
.end method
