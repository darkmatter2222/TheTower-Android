.class public final Lads_mobile_sdk/a6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 122
    check-cast p2, Lads_mobile_sdk/yt2;

    .line 123
    iget-object p2, p2, Lads_mobile_sdk/yt2;->a:Lads_mobile_sdk/xt2;

    .line 124
    iget-object p2, p2, Lads_mobile_sdk/xt2;->a:Lads_mobile_sdk/zh1;

    .line 125
    invoke-interface {p2}, Lads_mobile_sdk/zh1;->e()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    .line 126
    check-cast p1, Lads_mobile_sdk/yt2;

    .line 127
    iget-object p1, p1, Lads_mobile_sdk/yt2;->a:Lads_mobile_sdk/xt2;

    .line 128
    iget-object p1, p1, Lads_mobile_sdk/xt2;->a:Lads_mobile_sdk/zh1;

    .line 129
    invoke-interface {p1}, Lads_mobile_sdk/zh1;->e()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 130
    invoke-static {p2, p1}, Lkotlin/comparisons/ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method
