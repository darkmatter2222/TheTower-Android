.class public final Lads_mobile_sdk/yt2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/xt2;

.field public final b:J

.field public c:Lkotlinx/coroutines/Job;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/xt2;J)V
    .locals 1

    .line 1
    const-string v0, "preloadedAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lads_mobile_sdk/yt2;->a:Lads_mobile_sdk/xt2;

    .line 23
    iput-wide p2, p0, Lads_mobile_sdk/yt2;->b:J

    return-void
.end method
