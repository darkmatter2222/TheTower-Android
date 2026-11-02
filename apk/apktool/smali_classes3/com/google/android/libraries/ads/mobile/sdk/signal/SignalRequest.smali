.class public abstract Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;
.super Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\"\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008&\u0018\u00002\u00020\u0001B\u0093\u0001\u0008\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0002\u0012\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00020\t\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00020\t\u0012\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00020\t\u0012\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000e0\u000c\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;",
        "",
        "m",
        "Ljava/lang/String;",
        "getSignalType",
        "()Ljava/lang/String;",
        "signalType",
        "adUnitId",
        "",
        "categoryExclusions",
        "contentUrl",
        "",
        "customTargeting",
        "Landroid/os/Bundle;",
        "googleExtrasBundle",
        "keywords",
        "neighboringContentUrls",
        "adSourceExtrasBundles",
        "publisherProvidedId",
        "requestAgent",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/util/Map;Landroid/os/Bundle;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V",
        "ads-mobile-sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field private final m:Ljava/lang/String;

.field private final n:Lads_mobile_sdk/x11;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/util/Map;Landroid/os/Bundle;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "signalType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "categoryExclusions"

    move-object/from16 v2, p3

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "customTargeting"

    move-object/from16 v4, p5

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "googleExtrasBundle"

    move-object/from16 v5, p6

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "keywords"

    move-object/from16 v6, p7

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "neighboringContentUrls"

    move-object/from16 v7, p8

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adSourceExtrasBundles"

    move-object/from16 v8, p9

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v14, 0x800

    const/4 v15, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v3, p4

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    .line 1
    invoke-direct/range {v0 .. v15}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/util/Map;Landroid/os/Bundle;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;JZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, p1

    .line 2
    iput-object v1, v0, Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;->m:Ljava/lang/String;

    .line 31
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x166affec

    if-eq v2, v3, :cond_8

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string v2, "requester_type_7"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 39
    :cond_0
    sget-object v1, Lads_mobile_sdk/x11;->j:Lads_mobile_sdk/x11;

    goto/16 :goto_1

    .line 40
    :pswitch_1
    const-string v2, "requester_type_6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 47
    :cond_1
    sget-object v1, Lads_mobile_sdk/x11;->i:Lads_mobile_sdk/x11;

    goto :goto_1

    .line 48
    :pswitch_2
    const-string v2, "requester_type_5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 54
    :cond_2
    sget-object v1, Lads_mobile_sdk/x11;->h:Lads_mobile_sdk/x11;

    goto :goto_1

    .line 55
    :pswitch_3
    const-string v2, "requester_type_4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 60
    :cond_3
    sget-object v1, Lads_mobile_sdk/x11;->g:Lads_mobile_sdk/x11;

    goto :goto_1

    .line 61
    :pswitch_4
    const-string v2, "requester_type_3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 65
    :cond_4
    sget-object v1, Lads_mobile_sdk/x11;->f:Lads_mobile_sdk/x11;

    goto :goto_1

    .line 66
    :pswitch_5
    const-string v2, "requester_type_2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    .line 69
    :cond_5
    sget-object v1, Lads_mobile_sdk/x11;->e:Lads_mobile_sdk/x11;

    goto :goto_1

    .line 70
    :pswitch_6
    const-string v2, "requester_type_1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    .line 72
    :cond_6
    sget-object v1, Lads_mobile_sdk/x11;->d:Lads_mobile_sdk/x11;

    goto :goto_1

    .line 73
    :pswitch_7
    const-string v2, "requester_type_0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    .line 74
    :cond_7
    sget-object v1, Lads_mobile_sdk/x11;->b:Lads_mobile_sdk/x11;

    goto :goto_1

    .line 75
    :cond_8
    const-string v2, "signal_type_ad_manager_s2s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 85
    :goto_0
    sget-object v1, Lads_mobile_sdk/x11;->c:Lads_mobile_sdk/x11;

    goto :goto_1

    .line 86
    :cond_9
    sget-object v1, Lads_mobile_sdk/x11;->k:Lads_mobile_sdk/x11;

    .line 87
    :goto_1
    iput-object v1, v0, Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;->n:Lads_mobile_sdk/x11;

    return-void

    :pswitch_data_0
    .packed-switch 0x67ecf68e
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a()Lads_mobile_sdk/x11;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;->n:Lads_mobile_sdk/x11;

    return-object v0
.end method

.method public final getSignalType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;->m:Ljava/lang/String;

    return-object v0
.end method
