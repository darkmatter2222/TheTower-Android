.class public final Lads_mobile_sdk/b6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/a6;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lads_mobile_sdk/b6;->a:Ljava/util/Comparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 145
    iget-object v0, p0, Lads_mobile_sdk/b6;->a:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 146
    :cond_0
    check-cast p1, Lads_mobile_sdk/yt2;

    .line 147
    iget-wide v0, p1, Lads_mobile_sdk/yt2;->b:J

    .line 148
    invoke-static {v0, v1}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object p1

    .line 149
    check-cast p2, Lads_mobile_sdk/yt2;

    .line 150
    iget-wide v0, p2, Lads_mobile_sdk/yt2;->b:J

    .line 151
    invoke-static {v0, v1}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object p2

    .line 152
    invoke-static {p1, p2}, Lkotlin/comparisons/ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method
