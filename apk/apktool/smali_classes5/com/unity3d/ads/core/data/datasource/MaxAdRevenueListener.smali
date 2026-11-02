.class public final Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;
.super Ljava/lang/Object;
.source "MaxAdRevenueListener.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMaxAdRevenueListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MaxAdRevenueListener.kt\ncom/unity3d/ads/core/data/datasource/MaxAdRevenueListener\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,144:1\n1#2:145\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rJ\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\rH\u0002J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0010\u001a\u00020\rH\u0002J\u000e\u0010\u0013\u001a\u0004\u0018\u00010\u0012*\u00020\u0012H\u0002J\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0012H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;",
        "",
        "handleAdRevenueEvent",
        "Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent;",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "logger",
        "Lcom/unity3d/ads/core/log/Logger;",
        "<init>",
        "(Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent;Lkotlinx/coroutines/CoroutineScope;Lcom/unity3d/ads/core/log/Logger;)V",
        "onMessageReceived",
        "",
        "messageData",
        "Landroid/os/Bundle;",
        "parseRevenueBundle",
        "Lcom/unity3d/ads/core/data/model/AdRevenueData;",
        "bundle",
        "bundleToTraceString",
        "",
        "validateString",
        "parseMaxAdFormatString",
        "Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;",
        "formatStr",
        "Companion",
        "unity-ads_defaultRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$Companion;

.field private static final KEY_AD_FORMAT:Ljava/lang/String; = "ad_format"

.field private static final KEY_COUNTRY_CODE:Ljava/lang/String; = "country_code"

.field private static final KEY_MAX_AD_UNIT_ID:Ljava/lang/String; = "max_ad_unit_id"

.field private static final KEY_NETWORK_NAME:Ljava/lang/String; = "network_name"

.field private static final KEY_REVENUE:Ljava/lang/String; = "revenue"

.field private static final KEY_THIRD_PARTY_AD_PLACEMENT_ID:Ljava/lang/String; = "third_party_ad_placement_id"

.field private static final MAX_STRING_LENGTH:I = 0x1f4


# instance fields
.field private final handleAdRevenueEvent:Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent;

.field private final logger:Lcom/unity3d/ads/core/log/Logger;

.field private final scope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public static synthetic $r8$lambda$3sXbRgGWhxdlFuRHJOy10-msa_w(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0, p1}, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;->bundleToTraceString$lambda$1(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qKoJWYEa1Ts8W9eUiHzXD3-6pno(Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;->onMessageReceived$lambda$0(Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;->Companion:Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent;Lkotlinx/coroutines/CoroutineScope;Lcom/unity3d/ads/core/log/Logger;)V
    .locals 1

    const-string v0, "handleAdRevenueEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;->handleAdRevenueEvent:Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent;

    .line 20
    iput-object p2, p0, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 21
    iput-object p3, p0, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;->logger:Lcom/unity3d/ads/core/log/Logger;

    return-void
.end method

.method public static final synthetic access$getHandleAdRevenueEvent$p(Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;)Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;->handleAdRevenueEvent:Lcom/unity3d/ads/core/domain/events/HandleAdRevenueEvent;

    return-object p0
.end method

.method public static final synthetic access$getLogger$p(Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;)Lcom/unity3d/ads/core/log/Logger;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;->logger:Lcom/unity3d/ads/core/log/Logger;

    return-object p0
.end method

.method public static final synthetic access$parseRevenueBundle(Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;Landroid/os/Bundle;)Lcom/unity3d/ads/core/data/model/AdRevenueData;
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;->parseRevenueBundle(Landroid/os/Bundle;)Lcom/unity3d/ads/core/data/model/AdRevenueData;

    move-result-object p0

    return-object p0
.end method

.method private final bundleToTraceString(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 11

    .line 104
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "{}"

    return-object p1

    .line 105
    :cond_0
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "keySet(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    const-string v0, "{"

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "}"

    move-object v5, v0

    check-cast v5, Ljava/lang/CharSequence;

    new-instance v8, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$$ExternalSyntheticLambda1;

    invoke-direct {v8, p1}, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$$ExternalSyntheticLambda1;-><init>(Landroid/os/Bundle;)V

    const/16 v9, 0x19

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 103
    :catchall_0
    const-string p1, "<error serializing bundle>"

    return-object p1
.end method

.method private static final bundleToTraceString$lambda$1(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3

    .line 108
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    .line 110
    const-string p0, "null"

    goto :goto_1

    .line 111
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x1f4

    const-string v2, "\""

    if-gt v0, v1, :cond_1

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/String;

    invoke-static {p0, v1}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "...\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    goto :goto_0

    .line 112
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 114
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    .line 116
    :catchall_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "=<error>"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method private static final onMessageReceived$lambda$0(Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ad revenue subscribed event (raw): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;->bundleToTraceString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final parseMaxAdFormatString(Ljava/lang/String;)Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;
    .locals 2

    .line 133
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 134
    :cond_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "toUpperCase(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "BANNER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 135
    :cond_1
    sget-object p1, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;->BANNER:Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    return-object p1

    .line 134
    :sswitch_1
    const-string v1, "REWARDED_INTERSTITIAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :sswitch_2
    const-string v1, "REWARDED_INTER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :sswitch_3
    const-string v1, "REWARDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 138
    :cond_2
    sget-object p1, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;->REWARDED:Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    return-object p1

    .line 134
    :sswitch_4
    const-string v1, "INTER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :sswitch_5
    const-string v1, "MREC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 136
    :cond_3
    sget-object p1, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;->MREC:Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    return-object p1

    .line 134
    :sswitch_6
    const-string v1, "INTERSTITIAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 137
    :cond_4
    sget-object p1, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;->INTERSTITIAL:Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    return-object p1

    .line 134
    :sswitch_7
    const-string v1, "NATIVE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    .line 139
    :cond_5
    sget-object p1, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;->NATIVE:Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    return-object p1

    .line 140
    :goto_0
    sget-object v0, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;->Companion:Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat$Companion;

    invoke-virtual {v0, p1}, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat$Companion;->fromString(Ljava/lang/String;)Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_1
    const/4 p1, 0x0

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x772abbe9 -> :sswitch_7
        -0x51d5b0d4 -> :sswitch_6
        0x243d03 -> :sswitch_5
        0x4296cbc -> :sswitch_4
        0x205e3c0e -> :sswitch_3
        0x629e494b -> :sswitch_2
        0x6e8e03bd -> :sswitch_1
        0x7458732c -> :sswitch_0
    .end sparse-switch
.end method

.method private final parseRevenueBundle(Landroid/os/Bundle;)Lcom/unity3d/ads/core/data/model/AdRevenueData;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 66
    const-string v2, "revenue"

    .line 0
    const-string v3, "Invalid or missing revenue in revenue event: "

    const/4 v4, 0x0

    .line 68
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x2

    if-nez v5, :cond_0

    .line 69
    iget-object v2, v1, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;->logger:Lcom/unity3d/ads/core/log/Logger;

    const-string v3, "Missing revenue key in revenue event"

    invoke-static {v2, v3, v4, v6, v4}, Lcom/unity3d/ads/core/log/Logger$DefaultImpls;->trace$default(Lcom/unity3d/ads/core/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :goto_0
    move-object v9, v4

    goto :goto_1

    .line 73
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v2, v7, v9

    if-ltz v2, :cond_1

    .line 74
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    const-wide v11, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpg-double v2, v9, v11

    if-gtz v2, :cond_1

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    move-object v9, v2

    goto :goto_1

    .line 75
    :cond_1
    iget-object v2, v1, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;->logger:Lcom/unity3d/ads/core/log/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4, v6, v4}, Lcom/unity3d/ads/core/log/Logger$DefaultImpls;->trace$default(Lcom/unity3d/ads/core/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_0

    .line 81
    :goto_1
    const-string v2, "country_code"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-direct {v1, v2}, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v10, v2

    goto :goto_2

    :cond_2
    move-object v10, v4

    .line 82
    :goto_2
    const-string v2, "network_name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-direct {v1, v2}, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v11, v2

    goto :goto_3

    :cond_3
    move-object v11, v4

    .line 83
    :goto_3
    const-string v2, "max_ad_unit_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-direct {v1, v2}, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v12, v2

    goto :goto_4

    :cond_4
    move-object v12, v4

    .line 84
    :goto_4
    const-string v2, "third_party_ad_placement_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-direct {v1, v2}, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v13, v2

    goto :goto_5

    :cond_5
    move-object v13, v4

    .line 85
    :goto_5
    const-string v2, "ad_format"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-direct {v1, v0}, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;->parseMaxAdFormatString(Ljava/lang/String;)Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    move-result-object v14

    .line 88
    new-instance v7, Lcom/unity3d/ads/core/data/model/AdRevenueData;

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v7 .. v16}, Lcom/unity3d/ads/core/data/model/AdRevenueData;-><init>(Ljava/util/UUID;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    :catch_0
    move-exception v0

    .line 97
    iget-object v2, v1, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;->logger:Lcom/unity3d/ads/core/log/Logger;

    const-string v3, "Failed to parse revenue Bundle"

    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {v2, v3, v0}, Lcom/unity3d/ads/core/log/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v4
.end method

.method private final validateString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 125
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f4

    if-gt v0, v1, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final onMessageReceived(Landroid/os/Bundle;)V
    .locals 8

    const-string v0, "messageData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;->logger:Lcom/unity3d/ads/core/log/Logger;

    new-instance v1, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$$ExternalSyntheticLambda0;-><init>(Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Lcom/unity3d/ads/core/log/Logger;->trace(Lkotlin/jvm/functions/Function0;)V

    .line 41
    iget-object v2, p0, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$onMessageReceived$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener$onMessageReceived$2;-><init>(Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;Landroid/os/Bundle;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
