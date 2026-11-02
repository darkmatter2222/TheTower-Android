.class public final Lads_mobile_sdk/dy1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/r41;


# instance fields
.field public final a:Lads_mobile_sdk/ks1;

.field public final b:Lads_mobile_sdk/ks1;

.field public final c:Lads_mobile_sdk/ks1;

.field public final d:Lads_mobile_sdk/ks1;

.field public final e:Lads_mobile_sdk/ks1;

.field public final f:Lads_mobile_sdk/f0;

.field public final g:Lads_mobile_sdk/s93;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ks1;Lads_mobile_sdk/ks1;Lads_mobile_sdk/ks1;Lads_mobile_sdk/ks1;Lads_mobile_sdk/ks1;Lads_mobile_sdk/f0;Lads_mobile_sdk/s93;)V
    .locals 1

    .line 1
    const-string v0, "mraidSetOrientationPropertiesHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mraidResizeHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mraidCalendarEventHandler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mraidStorePictureHandler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mraidUnloadHandler"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityTracker"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeBrowsingManager"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lads_mobile_sdk/dy1;->a:Lads_mobile_sdk/ks1;

    .line 22
    iput-object p2, p0, Lads_mobile_sdk/dy1;->b:Lads_mobile_sdk/ks1;

    .line 23
    iput-object p3, p0, Lads_mobile_sdk/dy1;->c:Lads_mobile_sdk/ks1;

    .line 24
    iput-object p4, p0, Lads_mobile_sdk/dy1;->d:Lads_mobile_sdk/ks1;

    .line 25
    iput-object p5, p0, Lads_mobile_sdk/dy1;->e:Lads_mobile_sdk/ks1;

    .line 26
    iput-object p6, p0, Lads_mobile_sdk/dy1;->f:Lads_mobile_sdk/f0;

    .line 27
    iput-object p7, p0, Lads_mobile_sdk/dy1;->g:Lads_mobile_sdk/s93;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/r31;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    .line 1
    instance-of v0, p3, Lads_mobile_sdk/cy1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/cy1;

    iget v1, v0, Lads_mobile_sdk/cy1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/cy1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/cy1;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/cy1;-><init>(Lads_mobile_sdk/dy1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lads_mobile_sdk/cy1;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 32
    iget v2, v0, Lads_mobile_sdk/cy1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x6

    packed-switch v2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_1
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_4
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_5
    iget-object p1, v0, Lads_mobile_sdk/cy1;->a:Ljava/lang/String;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_6
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 33
    const-string p3, "a"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v5, ""

    if-nez v2, :cond_1

    move-object v2, v5

    .line 34
    :cond_1
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v6

    invoke-virtual {v6}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v6

    .line 76
    invoke-static {}, Lads_mobile_sdk/qx1;->v()Lads_mobile_sdk/px1;

    move-result-object v7

    const-string v8, "newBuilder(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Lads_mobile_sdk/rx1;->a(Lads_mobile_sdk/px1;)Lads_mobile_sdk/sx1;

    move-result-object v7

    .line 77
    invoke-virtual {v7, v2}, Lads_mobile_sdk/sx1;->a(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v7}, Lads_mobile_sdk/sx1;->a()Lads_mobile_sdk/qx1;

    move-result-object v7

    .line 120
    iput-object v7, v6, Lads_mobile_sdk/uj2;->w:Lads_mobile_sdk/qx1;

    .line 122
    const-string v6, "setOrientationProperties"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    const-string v9, "unload"

    if-nez v7, :cond_3

    .line 123
    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 124
    iget-object v7, p0, Lads_mobile_sdk/dy1;->g:Lads_mobile_sdk/s93;

    invoke-virtual {v7}, Lads_mobile_sdk/s93;->f()Z

    move-result v7

    if-nez v7, :cond_3

    .line 126
    iget-object p1, p0, Lads_mobile_sdk/dy1;->g:Lads_mobile_sdk/s93;

    iput-object v2, v0, Lads_mobile_sdk/cy1;->a:Ljava/lang/String;

    iput v8, v0, Lads_mobile_sdk/cy1;->d:I

    invoke-virtual {p1, v5, v0}, Lads_mobile_sdk/s93;->b(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    goto/16 :goto_7

    :cond_2
    move-object p1, v2

    .line 127
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "MRAID action "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " blocked by safe browsing"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3, v4}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 128
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 131
    :cond_3
    iget-object v5, p0, Lads_mobile_sdk/dy1;->f:Lads_mobile_sdk/f0;

    invoke-virtual {v5}, Lads_mobile_sdk/f0;->g()Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 132
    :goto_2
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-eqz p3, :cond_f

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto/16 :goto_9

    :sswitch_0
    const-string v5, "storePicture"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5

    goto/16 :goto_9

    .line 135
    :cond_5
    iget-object p3, p0, Lads_mobile_sdk/dy1;->d:Lads_mobile_sdk/ks1;

    invoke-interface {p3}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lads_mobile_sdk/mz1;

    const/4 v2, 0x3

    iput v2, v0, Lads_mobile_sdk/cy1;->d:I

    invoke-virtual {p3, p1, p2}, Lads_mobile_sdk/mz1;->a(Lads_mobile_sdk/r31;Ljava/util/Map;)Lkotlin/Unit;

    move-result-object p1

    if-ne p1, v1, :cond_6

    goto/16 :goto_7

    .line 148
    :cond_6
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 149
    :sswitch_1
    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_7

    goto/16 :goto_9

    .line 156
    :cond_7
    iget-object p3, p0, Lads_mobile_sdk/dy1;->a:Lads_mobile_sdk/ks1;

    .line 157
    invoke-interface {p3}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lads_mobile_sdk/fz1;

    .line 158
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v2, 0x5

    iput v2, v0, Lads_mobile_sdk/cy1;->d:I

    invoke-virtual {p3, p2, p1}, Lads_mobile_sdk/fz1;->a(Ljava/util/Map;Lads_mobile_sdk/r31;)Lkotlin/Unit;

    move-result-object p1

    if-ne p1, v1, :cond_8

    goto :goto_7

    .line 165
    :cond_8
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 166
    :sswitch_2
    const-string v5, "createCalendarEvent"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_9

    goto :goto_9

    .line 171
    :cond_9
    iget-object p3, p0, Lads_mobile_sdk/dy1;->c:Lads_mobile_sdk/ks1;

    invoke-interface {p3}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lads_mobile_sdk/mx1;

    const/4 v2, 0x4

    iput v2, v0, Lads_mobile_sdk/cy1;->d:I

    invoke-virtual {p3, p1, p2}, Lads_mobile_sdk/mx1;->a(Lads_mobile_sdk/r31;Ljava/util/Map;)Lkotlin/Unit;

    move-result-object p1

    if-ne p1, v1, :cond_a

    goto :goto_7

    .line 182
    :cond_a
    :goto_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 183
    :sswitch_3
    invoke-virtual {p3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_9

    .line 193
    :cond_b
    iget-object p1, p0, Lads_mobile_sdk/dy1;->e:Lads_mobile_sdk/ks1;

    invoke-interface {p1}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/oz1;

    iput v4, v0, Lads_mobile_sdk/cy1;->d:I

    invoke-virtual {p1, v0}, Lads_mobile_sdk/oz1;->a(Lads_mobile_sdk/cy1;)Lkotlin/Unit;

    move-result-object p1

    if-ne p1, v1, :cond_c

    goto :goto_7

    .line 199
    :cond_c
    :goto_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 200
    :sswitch_4
    const-string p1, "resize"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 201
    iget-object p1, p0, Lads_mobile_sdk/dy1;->b:Lads_mobile_sdk/ks1;

    invoke-interface {p1}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/bz1;

    const/4 p3, 0x2

    iput p3, v0, Lads_mobile_sdk/cy1;->d:I

    invoke-virtual {p1, p2, v0}, Lads_mobile_sdk/bz1;->a(Ljava/util/Map;Lads_mobile_sdk/cy1;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_d

    :goto_7
    return-object v1

    .line 216
    :cond_d
    :goto_8
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 217
    :sswitch_5
    const-string p1, "closeResizedAd"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_9

    .line 219
    :cond_e
    iget-object p1, p0, Lads_mobile_sdk/dy1;->b:Lads_mobile_sdk/ks1;

    invoke-interface {p1}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/bz1;

    invoke-virtual {p1, v8}, Lads_mobile_sdk/bz1;->a(Z)V

    goto :goto_a

    .line 229
    :cond_f
    :goto_9
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unknown MRAID gmsg action: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3, v4}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 230
    sget-object p1, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;)V

    .line 233
    :goto_a
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x76f550a5 -> :sswitch_5
        -0x37b2634c -> :sswitch_4
        -0x32182101 -> :sswitch_3
        -0x2bba19a0 -> :sswitch_2
        0x7f3dfe1 -> :sswitch_1
        0x1b5f6cdd -> :sswitch_0
    .end sparse-switch
.end method

.method public final g()Lads_mobile_sdk/u11;
    .locals 1

    .line 1
    sget-object v0, Lads_mobile_sdk/u11;->y:Lads_mobile_sdk/u11;

    return-object v0
.end method
