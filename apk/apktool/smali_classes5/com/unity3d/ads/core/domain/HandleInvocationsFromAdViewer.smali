.class public final Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;
.super Ljava/lang/Object;
.source "HandleInvocationsFromAdViewer.kt"

# interfaces
.implements Lcom/unity3d/services/core/di/IServiceComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHandleInvocationsFromAdViewer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HandleInvocationsFromAdViewer.kt\ncom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer\n+ 2 IServiceComponent.kt\ncom/unity3d/services/core/di/IServiceComponentKt\n*L\n1#1,222:1\n16#2,4:223\n16#2,4:227\n16#2,4:231\n16#2,4:235\n16#2,4:239\n16#2,4:243\n16#2,4:247\n16#2,4:251\n16#2,4:255\n16#2,4:259\n16#2,4:263\n16#2,4:267\n16#2,4:271\n16#2,4:275\n16#2,4:279\n16#2,4:283\n16#2,4:287\n16#2,4:291\n16#2,4:295\n16#2,4:299\n16#2,4:303\n16#2,4:307\n16#2,4:311\n16#2,4:315\n16#2,4:319\n16#2,4:323\n16#2,4:327\n16#2,4:331\n16#2,4:335\n16#2,4:339\n16#2,4:343\n16#2,4:347\n16#2,4:351\n16#2,4:355\n16#2,4:359\n16#2,4:363\n16#2,4:367\n16#2,4:371\n16#2,4:375\n16#2,4:379\n16#2,4:383\n16#2,4:387\n16#2,4:391\n*S KotlinDebug\n*F\n+ 1 HandleInvocationsFromAdViewer.kt\ncom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer\n*L\n130#1:223,4\n131#1:227,4\n132#1:231,4\n133#1:235,4\n134#1:239,4\n135#1:243,4\n136#1:247,4\n137#1:251,4\n138#1:255,4\n140#1:259,4\n148#1:263,4\n149#1:267,4\n150#1:271,4\n151#1:275,4\n152#1:279,4\n153#1:283,4\n154#1:287,4\n155#1:291,4\n156#1:295,4\n157#1:299,4\n158#1:303,4\n160#1:307,4\n161#1:311,4\n162#1:315,4\n163#1:319,4\n164#1:323,4\n165#1:327,4\n166#1:331,4\n167#1:335,4\n168#1:339,4\n169#1:343,4\n170#1:347,4\n171#1:351,4\n172#1:355,4\n173#1:359,4\n174#1:363,4\n175#1:367,4\n176#1:371,4\n178#1:375,4\n179#1:379,4\n180#1:383,4\n181#1:387,4\n183#1:391,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J;\u0010\u0004\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u00052\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\rH\u0086\u0002\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;",
        "Lcom/unity3d/services/core/di/IServiceComponent;",
        "<init>",
        "()V",
        "invoke",
        "",
        "",
        "Lkotlin/Function0;",
        "Lcom/unity3d/ads/adplayer/ExposedFunction;",
        "adData",
        "adDataRefreshToken",
        "impressionConfig",
        "adObject",
        "Lcom/unity3d/ads/core/data/model/AdObject;",
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
.field public static final Companion:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$Companion;

.field public static final KEY_ACTION:Ljava/lang/String; = "action"

.field public static final KEY_AD_DATA:Ljava/lang/String; = "adData"

.field public static final KEY_AD_DATA_REFRESH_TOKEN:Ljava/lang/String; = "adDataRefreshToken"

.field public static final KEY_AD_REFRESH_INVALIDATION_REASON:Ljava/lang/String; = "invalidationReason"

.field public static final KEY_AD_STRING:Ljava/lang/String; = "adString"

.field public static final KEY_AD_TYPE:Ljava/lang/String; = "type"

.field public static final KEY_AD_UNIT_ID:Ljava/lang/String; = "adUnitId"

.field public static final KEY_DOWNLOAD_PRIORITY:Ljava/lang/String; = "priority"

.field public static final KEY_DOWNLOAD_URL:Ljava/lang/String; = "url"

.field public static final KEY_EXTRAS:Ljava/lang/String; = "extras"

.field public static final KEY_IMPRESSION_CONFIG:Ljava/lang/String; = "impressionConfig"

.field public static final KEY_IMPRESSION_OPPORTUNITY_ID:Ljava/lang/String; = "impressionOpportunityId"

.field public static final KEY_IS_HEADER_BIDDING:Ljava/lang/String; = "isHeaderBidding"

.field public static final KEY_LOAD_OPTIONS:Ljava/lang/String; = "loadOptions"

.field public static final KEY_NATIVE_CONTEXT:Ljava/lang/String; = "nativeContext"

.field public static final KEY_OMID:Ljava/lang/String; = "openMeasurement"

.field public static final KEY_OMJS_SERVICE:Ljava/lang/String; = "serviceFilePath"

.field public static final KEY_OMJS_SESSION:Ljava/lang/String; = "sessionFilePath"

.field public static final KEY_OM_PARTNER:Ljava/lang/String; = "partnerName"

.field public static final KEY_OM_PARTNER_VERSION:Ljava/lang/String; = "partnerVersion"

.field public static final KEY_OM_VERSION:Ljava/lang/String; = "version"

.field public static final KEY_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final KEY_PAYLOAD:Ljava/lang/String; = "payload"

.field public static final KEY_PAYLOAD_VERSION:Ljava/lang/String; = "payloadVersion"

.field public static final KEY_PLACEMENT_ID:Ljava/lang/String; = "placementId"

.field public static final KEY_PLACEMENT_NAME:Ljava/lang/String; = "placementName"

.field public static final KEY_PRIVACY_UPDATE_CONTENT:Ljava/lang/String; = "content"

.field public static final KEY_PRIVACY_UPDATE_VERSION:Ljava/lang/String; = "version"

.field public static final KEY_QUERY_ID:Ljava/lang/String; = "queryId"

.field public static final KEY_TRACKING_TOKEN:Ljava/lang/String; = "trackingToken"

.field public static final KEY_USE_ACTIVITY_FOR_RESULT:Ljava/lang/String; = "useActivityForResult"

.field public static final KEY_VIDEO_LENGTH:Ljava/lang/String; = "videoLength"


# direct methods
.method public static synthetic $r8$lambda$3y89Nsd4IrjmvrwpExjQQBAH0nA(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 0

    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$46(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$46wLnZBd2PMtcZ36t97BGIS7o80(Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 0

    invoke-static {p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$29(Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$4_mRzp8XL6qgtqSFOS4GnkcKItQ(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 0

    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$53(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$5JxCl2dFQLtRYGAMG0ONMj5dUpY(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 0

    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$33(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$5inWs1I8bc7fDjgvdinQRHguQe8(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 0

    invoke-static {p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$39(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$6z1_dopUFs8t5PKzxJQejO7yjnI(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 0

    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$10(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$7SmwzXhSBcQ8e1kgdzn4NkV5t1A()Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 1

    invoke-static {}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$14()Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$A0sZC2D-OoJV0NXVTZTeA8bgnxo(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 0

    invoke-static {p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$20(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$BgYV7GoSLByEa6W1wKYr-KaCxTE(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 0

    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$34(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$G0xh00pCgHknTDlh4kV-nAkuKBY()Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 1

    invoke-static {}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$47()Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$IDHryMgMiuPVvTWNjOE2_5BCsxY(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 0

    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$25(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$IRnqfBm2gO25ShgSMfPuu-ZWRuA(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 0

    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$28(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$K2o1EmyG-OZ__GPTNXhDNWxHXHc()Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 1

    invoke-static {}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$12()Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$K5zF-zHqPwLq94sAZRl6zHLpE4I(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 0

    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$37(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$KF27caJZxNc2wRjKhJp-Vi56ROA(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 0

    invoke-static {p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$18(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LbG17BBuVwC17BJIuh44VzaX9Do()Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 1

    invoke-static {}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$13()Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$MGoaE6hrlvScoQZb-XK45yy3430(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 0

    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$27(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$MPMAA8Lt-L13JX-Ozo1ZyoulGcM()Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 1

    invoke-static {}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$17()Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$MaAQg57ILhCSTAAbb-B2HvPquaY(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 0

    invoke-static {p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$4(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Mrq8olfjBxHhc5iU0x57Y7tCE0k(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 0

    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$31(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$N2cP6nVS1pbmyf1twX6cNcbqmyU(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 0

    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$41(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$O5vDeNiNlhuyrKIm1V5K624uZOw(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$0(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$OK2EROUXjZuMcOg9tUTYzwgt6fg(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 0

    invoke-static {p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$51(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$RSznCWi4_L1s0dHBuCNJLxXM-_Y(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 0

    invoke-static {p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$21(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$RVkQev08XhEicbMuQLcgyY8vymQ()Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 1

    invoke-static {}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$16()Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$RsAU4CNHeDBm0vi83-NQlKsDhww(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 0

    invoke-static {p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$50(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Scq1vxvH5O4jffDvGA1JFUKjm3w(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 0

    invoke-static {p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$24(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$SnaFZSZGtRbAm9_VPL7uOTOf9V8(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 0

    invoke-static {p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$5(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$SncR8IQ9FvuseNc6Nbm62r31qYk(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 0

    invoke-static {p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$1(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$SxC_58wok59Qs5P8hx6WRJvo1qU(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 0

    invoke-static {p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$45(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$T169iWjIgrGcevABIboux390VA4(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 0

    invoke-static {p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$40(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ZDsg9Js5hSwfryCljWnxys90Fac(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 0

    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$6(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Zx2QzoZq3XLJt8ySP9_ovtwq46w(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 0

    invoke-static {p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$49(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ZzlxPw9dyY0GVTl7F0P0pTbnwCs()Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 1

    invoke-static {}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$11()Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$cY7EwasS-DUMf9NIgY6vO85StB8(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 0

    invoke-static {p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$48(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$emfi_vS_Rmm_SkD_2EyhGOMPYx4(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 0

    invoke-static {p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$3(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ernJCQ5UWGpZXLuaZtyirrfAxWo(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 0

    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$43(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hXfGrmR9HTKQmxEFZTqVYPJAJwM(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 0

    invoke-static {p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$35(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ig2mC_ae0dhM1RBSKOpY3kkmmOM(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 0

    invoke-static {p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$44(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jhPujhRftw-TxUIBqZQ7H9nGysA()Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 1

    invoke-static {}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$15()Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$l_woSwFQB6DcMinMv2myP278fD4(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 0

    invoke-static {p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$23(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$o_0rZiePST1mEStDexgwYDp6hz0(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 0

    invoke-static {p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$32(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qa1orCqPn6ESLx1SlsEatWMVj5g(Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 0

    invoke-static {p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$9(Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qkX2WBClVcQHmO10via4mKYj8XY(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 0

    invoke-static {p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$22(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$r_h_3K1e33QXN3WqYbVZTAUS_fM(Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 0

    invoke-static {p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$52(Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$szMzniHXKzDqfn19uzo7yVAk4ms(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 0

    invoke-static {p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$19(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$tHeraqAA050h3KmcpS_5Eaa0xbE(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 0

    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$38(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$tO9Ws8-xszJgIQg1F_lFK4YohgA(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 0

    invoke-static {p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$2(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$u10l7CE3dn8mQwzRz-wbDaRUFdk(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 0

    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$7(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$un9zqElhxCdoTdSj0ZiFOwLIRYs(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 0

    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$42(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$v7IYFGgpqUuZXcGaOftMhaKUrho(Lcom/unity3d/ads/core/data/model/AdObject;Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 0

    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$8(Lcom/unity3d/ads/core/data/model/AdObject;Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vbc8lbqA3oxCaWKF_LisBA7tQHM(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 0

    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$36(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$yLLkk1lnclzm3RffZmbGX1VgYuQ(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 0

    invoke-static {p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$30(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$yTlltj3ZbGP_gi30SGmn5Ba_0rY(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 0

    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke$lambda$26(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->Companion:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final invoke$lambda$0(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 9

    .line 130
    check-cast p0, Lcom/unity3d/services/core/di/IServiceComponent;

    .line 226
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object v0

    const-class v1, Lcom/unity3d/ads/core/domain/AndroidGetAdPlayerContext;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v2, v1}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/unity3d/ads/core/domain/AndroidGetAdPlayerContext;

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/domain/om/IsOMActivated;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lcom/unity3d/ads/core/domain/om/IsOMActivated;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v8, p4

    .line 130
    invoke-static/range {v3 .. v8}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->getAdContext-yLuu4LI(Lcom/unity3d/ads/core/domain/AndroidGetAdPlayerContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/core/domain/om/IsOMActivated;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$1(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 2

    .line 131
    check-cast p0, Lcom/unity3d/services/core/di/IServiceComponent;

    .line 230
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    .line 131
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->getConnectionType(Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$10(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 2

    .line 140
    check-cast p0, Lcom/unity3d/services/core/di/IServiceComponent;

    .line 262
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;

    .line 140
    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->sendOperativeEvent(Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$11()Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 1

    .line 141
    invoke-static {}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->writeStorage()Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

.method private static final invoke$lambda$12()Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 1

    .line 142
    invoke-static {}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->readStorage()Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

.method private static final invoke$lambda$13()Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 1

    .line 143
    invoke-static {}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->deleteStorage()Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

.method private static final invoke$lambda$14()Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 1

    .line 144
    invoke-static {}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->clearStorage()Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

.method private static final invoke$lambda$15()Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 1

    .line 145
    invoke-static {}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->getKeysStorage()Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

.method private static final invoke$lambda$16()Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 1

    .line 146
    invoke-static {}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->getStorage()Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

.method private static final invoke$lambda$17()Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 1

    .line 147
    invoke-static {}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->setStorage()Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

.method private static final invoke$lambda$18(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 2

    .line 148
    check-cast p0, Lcom/unity3d/services/core/di/IServiceComponent;

    .line 266
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/data/repository/SessionRepository;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 148
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->getPrivacyFsm(Lcom/unity3d/ads/core/data/repository/SessionRepository;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$19(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 2

    .line 149
    check-cast p0, Lcom/unity3d/services/core/di/IServiceComponent;

    .line 270
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/data/repository/SessionRepository;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 149
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->setPrivacyFsm(Lcom/unity3d/ads/core/data/repository/SessionRepository;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$2(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 2

    .line 132
    check-cast p0, Lcom/unity3d/services/core/di/IServiceComponent;

    .line 234
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    .line 132
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->getDeviceVolume(Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$20(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 2

    .line 150
    check-cast p0, Lcom/unity3d/services/core/di/IServiceComponent;

    .line 274
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/data/repository/SessionRepository;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 150
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->getPrivacy(Lcom/unity3d/ads/core/data/repository/SessionRepository;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$21(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 2

    .line 151
    check-cast p0, Lcom/unity3d/services/core/di/IServiceComponent;

    .line 278
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/data/repository/SessionRepository;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 151
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->setPrivacy(Lcom/unity3d/ads/core/data/repository/SessionRepository;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$22(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 2

    .line 152
    check-cast p0, Lcom/unity3d/services/core/di/IServiceComponent;

    .line 282
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    .line 152
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->getAllowedPii(Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$23(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 2

    .line 153
    check-cast p0, Lcom/unity3d/services/core/di/IServiceComponent;

    .line 286
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    .line 153
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->setAllowedPii(Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$24(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 2

    .line 154
    check-cast p0, Lcom/unity3d/services/core/di/IServiceComponent;

    .line 290
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/data/repository/SessionRepository;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 154
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->getSessionToken(Lcom/unity3d/ads/core/data/repository/SessionRepository;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$25(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 2

    .line 155
    check-cast p0, Lcom/unity3d/services/core/di/IServiceComponent;

    .line 294
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/data/repository/CampaignRepository;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/data/repository/CampaignRepository;

    .line 155
    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->markCampaignStateShown(Lcom/unity3d/ads/core/data/repository/CampaignRepository;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$26(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 2

    .line 156
    check-cast p0, Lcom/unity3d/services/core/di/IServiceComponent;

    .line 298
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/domain/Refresh;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/domain/Refresh;

    .line 156
    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->refreshAdData(Lcom/unity3d/ads/core/domain/Refresh;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$27(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 2

    .line 157
    check-cast p0, Lcom/unity3d/services/core/di/IServiceComponent;

    .line 302
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/domain/SendAdViewerRequest;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/domain/SendAdViewerRequest;

    .line 157
    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->sendAdViewerRequest(Lcom/unity3d/ads/core/domain/SendAdViewerRequest;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$28(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 2

    .line 158
    check-cast p0, Lcom/unity3d/services/core/di/IServiceComponent;

    .line 306
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/data/repository/CampaignRepository;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/data/repository/CampaignRepository;

    .line 158
    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->updateCampaignState(Lcom/unity3d/ads/core/data/repository/CampaignRepository;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$29(Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 0

    .line 159
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->updateTrackingToken(Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$3(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 2

    .line 133
    check-cast p0, Lcom/unity3d/services/core/di/IServiceComponent;

    .line 238
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    .line 133
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->getDeviceMaxVolume(Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$30(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 2

    .line 160
    check-cast p0, Lcom/unity3d/services/core/di/IServiceComponent;

    .line 310
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/domain/SendPrivacyUpdateRequest;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/domain/SendPrivacyUpdateRequest;

    .line 160
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->sendPrivacyUpdateRequest(Lcom/unity3d/ads/core/domain/SendPrivacyUpdateRequest;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$31(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 2

    .line 161
    check-cast p0, Lcom/unity3d/services/core/di/IServiceComponent;

    .line 314
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 161
    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->sendDiagnosticEvent(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$32(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 2

    .line 162
    check-cast p0, Lcom/unity3d/services/core/di/IServiceComponent;

    .line 318
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/data/repository/SessionRepository;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 162
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->incrementBannerImpressionCount(Lcom/unity3d/ads/core/data/repository/SessionRepository;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$33(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 3

    .line 163
    check-cast p0, Lcom/unity3d/services/core/di/IServiceComponent;

    .line 322
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object v0

    const-class v1, Lcom/unity3d/ads/core/domain/CacheFile;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v2, v1}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/core/domain/CacheFile;

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v1, Lcom/unity3d/ads/core/data/repository/SessionRepository;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {p0, v2, v1}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 163
    invoke-static {v0, p1, p0}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->download(Lcom/unity3d/ads/core/domain/CacheFile;Lcom/unity3d/ads/core/data/model/AdObject;Lcom/unity3d/ads/core/data/repository/SessionRepository;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$34(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 2

    .line 164
    check-cast p0, Lcom/unity3d/services/core/di/IServiceComponent;

    .line 326
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/domain/CacheFile;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/domain/CacheFile;

    .line 164
    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->downloadWithProgress(Lcom/unity3d/ads/core/domain/CacheFile;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$35(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 2

    .line 165
    check-cast p0, Lcom/unity3d/services/core/di/IServiceComponent;

    .line 330
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/domain/GetIsFileCache;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/domain/GetIsFileCache;

    .line 165
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->isFileCached(Lcom/unity3d/ads/core/domain/GetIsFileCache;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$36(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 2

    .line 166
    check-cast p0, Lcom/unity3d/services/core/di/IServiceComponent;

    .line 334
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/domain/om/AndroidOmInteraction;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/domain/om/AndroidOmInteraction;

    .line 166
    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->omStartSession(Lcom/unity3d/ads/core/domain/om/AndroidOmInteraction;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$37(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 2

    .line 167
    check-cast p0, Lcom/unity3d/services/core/di/IServiceComponent;

    .line 338
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/domain/om/OmFinishSession;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/domain/om/OmFinishSession;

    .line 167
    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->omFinishSession(Lcom/unity3d/ads/core/domain/om/OmFinishSession;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$38(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 2

    .line 168
    check-cast p0, Lcom/unity3d/services/core/di/IServiceComponent;

    .line 342
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/domain/om/OmImpressionOccurred;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/domain/om/OmImpressionOccurred;

    .line 168
    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->omImpression(Lcom/unity3d/ads/core/domain/om/OmImpressionOccurred;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$39(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 2

    .line 169
    check-cast p0, Lcom/unity3d/services/core/di/IServiceComponent;

    .line 346
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/domain/om/GetOmData;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/domain/om/GetOmData;

    .line 169
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->omGetData(Lcom/unity3d/ads/core/domain/om/GetOmData;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$4(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 2

    .line 134
    check-cast p0, Lcom/unity3d/services/core/di/IServiceComponent;

    .line 242
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    .line 134
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->getScreenHeight(Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$40(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 2

    .line 170
    check-cast p0, Lcom/unity3d/services/core/di/IServiceComponent;

    .line 350
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/domain/attribution/AndroidAttribution;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/domain/attribution/AndroidAttribution;

    .line 170
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->isAttributionAvailable(Lcom/unity3d/ads/core/domain/attribution/AndroidAttribution;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$41(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 2

    .line 171
    check-cast p0, Lcom/unity3d/services/core/di/IServiceComponent;

    .line 354
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/domain/attribution/AndroidAttribution;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/domain/attribution/AndroidAttribution;

    .line 171
    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->attributionRegisterView(Lcom/unity3d/ads/core/domain/attribution/AndroidAttribution;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$42(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 2

    .line 172
    check-cast p0, Lcom/unity3d/services/core/di/IServiceComponent;

    .line 358
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/domain/attribution/AndroidAttribution;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/domain/attribution/AndroidAttribution;

    .line 172
    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->attributionRegisterClick(Lcom/unity3d/ads/core/domain/attribution/AndroidAttribution;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$43(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 2

    .line 173
    check-cast p0, Lcom/unity3d/services/core/di/IServiceComponent;

    .line 362
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/data/repository/SessionRepository;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 173
    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->hbTokenIncrementWins(Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$44(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 2

    .line 174
    check-cast p0, Lcom/unity3d/services/core/di/IServiceComponent;

    .line 366
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/data/repository/SessionRepository;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 174
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->hbTokenIncrementStarts(Lcom/unity3d/ads/core/data/repository/SessionRepository;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$45(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 2

    .line 175
    check-cast p0, Lcom/unity3d/services/core/di/IServiceComponent;

    .line 370
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/data/repository/SessionRepository;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 175
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->hbTokenReset(Lcom/unity3d/ads/core/data/repository/SessionRepository;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$46(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 2

    .line 176
    check-cast p0, Lcom/unity3d/services/core/di/IServiceComponent;

    .line 374
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/domain/offerwall/LoadOfferwallAd;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/domain/offerwall/LoadOfferwallAd;

    .line 176
    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->loadOfferwallAd(Lcom/unity3d/ads/core/domain/offerwall/LoadOfferwallAd;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$47()Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 1

    .line 177
    invoke-static {}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->showOfferwallAd()Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

.method private static final invoke$lambda$48(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 2

    .line 178
    check-cast p0, Lcom/unity3d/services/core/di/IServiceComponent;

    .line 378
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/domain/offerwall/GetIsOfferwallAdReady;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/domain/offerwall/GetIsOfferwallAdReady;

    .line 178
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->isOfferwallAdReady(Lcom/unity3d/ads/core/domain/offerwall/GetIsOfferwallAdReady;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$49(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 3

    .line 179
    sget-object v0, Lcom/unity3d/services/core/network/model/RequestType;->GET:Lcom/unity3d/services/core/network/model/RequestType;

    check-cast p0, Lcom/unity3d/services/core/di/IServiceComponent;

    .line 382
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v1, Lcom/unity3d/ads/core/domain/ExecuteAdViewerRequest;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const-string v2, ""

    invoke-interface {p0, v2, v1}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/domain/ExecuteAdViewerRequest;

    .line 179
    invoke-static {v0, p0}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->request(Lcom/unity3d/services/core/network/model/RequestType;Lcom/unity3d/ads/core/domain/ExecuteAdViewerRequest;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$5(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 2

    .line 135
    check-cast p0, Lcom/unity3d/services/core/di/IServiceComponent;

    .line 246
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    .line 135
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->getScreenWidth(Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$50(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 3

    .line 180
    sget-object v0, Lcom/unity3d/services/core/network/model/RequestType;->POST:Lcom/unity3d/services/core/network/model/RequestType;

    check-cast p0, Lcom/unity3d/services/core/di/IServiceComponent;

    .line 386
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v1, Lcom/unity3d/ads/core/domain/ExecuteAdViewerRequest;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const-string v2, ""

    invoke-interface {p0, v2, v1}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/domain/ExecuteAdViewerRequest;

    .line 180
    invoke-static {v0, p0}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->request(Lcom/unity3d/services/core/network/model/RequestType;Lcom/unity3d/ads/core/domain/ExecuteAdViewerRequest;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$51(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 3

    .line 181
    sget-object v0, Lcom/unity3d/services/core/network/model/RequestType;->HEAD:Lcom/unity3d/services/core/network/model/RequestType;

    check-cast p0, Lcom/unity3d/services/core/di/IServiceComponent;

    .line 390
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v1, Lcom/unity3d/ads/core/domain/ExecuteAdViewerRequest;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const-string v2, ""

    invoke-interface {p0, v2, v1}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/domain/ExecuteAdViewerRequest;

    .line 181
    invoke-static {v0, p0}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->request(Lcom/unity3d/services/core/network/model/RequestType;Lcom/unity3d/ads/core/domain/ExecuteAdViewerRequest;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$52(Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 0

    .line 182
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->setOpportunityTTL(Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$53(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 2

    .line 183
    check-cast p0, Lcom/unity3d/services/core/di/IServiceComponent;

    .line 394
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/data/repository/SessionRepository;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 183
    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->getExtra(Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$6(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 2

    .line 136
    check-cast p0, Lcom/unity3d/services/core/di/IServiceComponent;

    .line 250
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;

    .line 136
    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->getBlackPixelPercentage(Lcom/unity3d/ads/core/domain/WebViewScreenCapture;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$7(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 2

    .line 137
    check-cast p0, Lcom/unity3d/services/core/di/IServiceComponent;

    .line 254
    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p0

    const-class v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;

    .line 137
    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->captureScreenshot(Lcom/unity3d/ads/core/domain/WebViewScreenCapture;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$8(Lcom/unity3d/ads/core/data/model/AdObject;Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 2

    .line 138
    check-cast p1, Lcom/unity3d/services/core/di/IServiceComponent;

    .line 258
    invoke-interface {p1}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object p1

    invoke-interface {p1}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p1

    const-class v0, Lcom/unity3d/ads/core/domain/HandleOpenUrl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p1, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/domain/HandleOpenUrl;

    .line 138
    invoke-static {p0, p1}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->openUrl(Lcom/unity3d/ads/core/data/model/AdObject;Lcom/unity3d/ads/core/domain/HandleOpenUrl;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$9(Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 0

    .line 139
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->setOrientation(Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;
    .locals 1

    .line 118
    invoke-static {p0}, Lcom/unity3d/services/core/di/IServiceComponent$DefaultImpls;->getServiceProvider(Lcom/unity3d/services/core/di/IServiceComponent;)Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/core/data/model/AdObject;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/unity3d/ads/core/data/model/AdObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/unity3d/ads/adplayer/ExposedFunction;",
            ">;>;"
        }
    .end annotation

    const-string v0, "adData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adDataRefreshToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "impressionConfig"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adObject"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    invoke-static {p1}, Lcom/unity3d/ads/core/data/model/AdData;->constructor-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 126
    invoke-static {p3}, Lcom/unity3d/ads/core/data/model/ImpressionConfig;->constructor-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 127
    invoke-static {p2}, Lcom/unity3d/ads/core/data/model/AdDataRefreshToken;->constructor-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 p1, 0x36

    .line 130
    new-array p1, p1, [Lkotlin/Pair;

    new-instance v1, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda0;

    move-object v2, p0

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda0;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/core/data/model/AdObject;)V

    const-string p2, "com.unity3d.services.ads.api.AdViewer.getAdContext"

    invoke-static {p2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, p1, p3

    .line 131
    new-instance p2, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda2;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    const-string p3, "com.unity3d.services.core.api.DeviceInfo.getConnectionType"

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, p1, p3

    .line 132
    new-instance p2, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda14;

    invoke-direct {p2, p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda14;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    const-string p3, "com.unity3d.services.core.api.DeviceInfo.getDeviceVolume"

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 p3, 0x2

    aput-object p2, p1, p3

    .line 133
    new-instance p2, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda26;

    invoke-direct {p2, p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda26;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    const-string p3, "com.unity3d.services.core.api.DeviceInfo.getDeviceMaxVolume"

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 p3, 0x3

    aput-object p2, p1, p3

    .line 134
    new-instance p2, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda38;

    invoke-direct {p2, p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda38;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    const-string p3, "com.unity3d.services.core.api.DeviceInfo.getScreenHeight"

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 p3, 0x4

    aput-object p2, p1, p3

    .line 135
    new-instance p2, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda43;

    invoke-direct {p2, p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda43;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    const-string p3, "com.unity3d.services.core.api.DeviceInfo.getScreenWidth"

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 p3, 0x5

    aput-object p2, p1, p3

    .line 136
    new-instance p2, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda45;

    invoke-direct {p2, p0, v6}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda45;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V

    const-string p3, "com.unity3d.services.ads.api.AdViewer.getBlackPixelPercentage"

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 p3, 0x6

    aput-object p2, p1, p3

    .line 137
    new-instance p2, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda46;

    invoke-direct {p2, p0, v6}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda46;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V

    const-string p3, "com.unity3d.services.ads.api.AdViewer.captureScreenshot"

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 p3, 0x7

    aput-object p2, p1, p3

    .line 138
    new-instance p2, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda47;

    invoke-direct {p2, v6, p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda47;-><init>(Lcom/unity3d/ads/core/data/model/AdObject;Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    const-string p3, "com.unity3d.services.ads.api.AdViewer.openUrl"

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/16 p3, 0x8

    aput-object p2, p1, p3

    .line 139
    new-instance p2, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda48;

    invoke-direct {p2, v6}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda48;-><init>(Lcom/unity3d/ads/core/data/model/AdObject;)V

    const-string p3, "com.unity3d.services.ads.api.AdViewer.setOrientation"

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/16 p3, 0x9

    aput-object p2, p1, p3

    .line 140
    new-instance p2, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda11;

    invoke-direct {p2, p0, v6}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda11;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V

    const-string p3, "com.unity3d.services.ads.api.AdViewer.sendOperativeEvent"

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/16 p3, 0xa

    aput-object p2, p1, p3

    .line 141
    new-instance p2, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda22;

    invoke-direct {p2}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda22;-><init>()V

    const-string p3, "com.unity3d.services.core.api.Storage.write"

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/16 p3, 0xb

    aput-object p2, p1, p3

    .line 142
    new-instance p2, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda33;

    invoke-direct {p2}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda33;-><init>()V

    const-string p3, "com.unity3d.services.core.api.Storage.read"

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/16 p3, 0xc

    aput-object p2, p1, p3

    .line 143
    new-instance p2, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda44;

    invoke-direct {p2}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda44;-><init>()V

    const-string p3, "com.unity3d.services.core.api.Storage.delete"

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/16 p3, 0xd

    aput-object p2, p1, p3

    .line 144
    new-instance p2, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda49;

    invoke-direct {p2}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda49;-><init>()V

    const-string p3, "com.unity3d.services.core.api.Storage.clear"

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/16 p3, 0xe

    aput-object p2, p1, p3

    .line 145
    new-instance p2, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda50;

    invoke-direct {p2}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda50;-><init>()V

    const-string p3, "com.unity3d.services.core.api.Storage.getKeys"

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/16 p3, 0xf

    aput-object p2, p1, p3

    .line 146
    new-instance p2, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda51;

    invoke-direct {p2}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda51;-><init>()V

    const-string p3, "com.unity3d.services.core.api.Storage.get"

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/16 p3, 0x10

    aput-object p2, p1, p3

    .line 147
    new-instance p2, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda52;

    invoke-direct {p2}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda52;-><init>()V

    const-string p3, "com.unity3d.services.core.api.Storage.set"

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/16 p3, 0x11

    aput-object p2, p1, p3

    .line 148
    new-instance p2, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda53;

    invoke-direct {p2, p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda53;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    const-string p3, "com.unity3d.services.ads.api.AdViewer.getPrivacyFsm"

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/16 p3, 0x12

    aput-object p2, p1, p3

    .line 149
    new-instance p2, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda1;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    const-string p3, "com.unity3d.services.ads.api.AdViewer.setPrivacyFsm"

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/16 p3, 0x13

    aput-object p2, p1, p3

    .line 150
    new-instance p2, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda3;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    const-string p3, "com.unity3d.services.ads.api.AdViewer.getPrivacyPayload"

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/16 p3, 0x14

    aput-object p2, p1, p3

    .line 151
    new-instance p2, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda4;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    const-string p3, "com.unity3d.services.ads.api.AdViewer.setPrivacyPayload"

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/16 p3, 0x15

    aput-object p2, p1, p3

    .line 152
    new-instance p2, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda5;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    const-string p3, "com.unity3d.services.ads.api.AdViewer.getPrivacyAllowedPii"

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/16 p3, 0x16

    aput-object p2, p1, p3

    .line 153
    new-instance p2, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda6;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    const-string p3, "com.unity3d.services.ads.api.AdViewer.setPrivacyAllowedPii"

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/16 p3, 0x17

    aput-object p2, p1, p3

    .line 154
    new-instance p2, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda7;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    const-string p3, "com.unity3d.services.ads.api.AdViewer.getSessionToken"

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/16 p3, 0x18

    aput-object p2, p1, p3

    .line 155
    new-instance p2, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda8;

    invoke-direct {p2, p0, v6}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda8;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V

    const-string p3, "com.unity3d.services.ads.api.AdViewer.markCampaignStateAsShown"

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/16 p3, 0x19

    aput-object p2, p1, p3

    .line 156
    new-instance p2, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda9;

    invoke-direct {p2, p0, v6}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda9;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V

    const-string p3, "com.unity3d.services.ads.api.AdViewer.refreshAdData"

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/16 p3, 0x1a

    aput-object p2, p1, p3

    .line 157
    new-instance p2, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda10;

    invoke-direct {p2, p0, v6}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda10;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V

    const-string p3, "com.unity3d.services.ads.api.AdViewer.sendAdViewerRequest"

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/16 p3, 0x1b

    aput-object p2, p1, p3

    .line 158
    new-instance p2, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda12;

    invoke-direct {p2, p0, v6}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda12;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V

    const-string p3, "com.unity3d.services.ads.api.AdViewer.updateCampaignState"

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/16 p3, 0x1c

    aput-object p2, p1, p3

    .line 159
    new-instance p2, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda13;

    invoke-direct {p2, v6}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda13;-><init>(Lcom/unity3d/ads/core/data/model/AdObject;)V

    const-string p3, "com.unity3d.services.ads.api.AdViewer.updateTrackingToken"

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/16 p3, 0x1d

    aput-object p2, p1, p3

    .line 160
    new-instance p2, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda15;

    invoke-direct {p2, p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda15;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    const-string p3, "com.unity3d.services.ads.api.AdViewer.sendPrivacyUpdateRequest"

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/16 p3, 0x1e

    aput-object p2, p1, p3

    .line 161
    new-instance p2, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda16;

    invoke-direct {p2, p0, v6}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda16;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V

    const-string p3, "com.unity3d.services.ads.api.AdViewer.sendDiagnosticEvent"

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/16 p3, 0x1f

    aput-object p2, p1, p3

    .line 162
    new-instance p2, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda17;

    invoke-direct {p2, p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda17;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    const-string p3, "com.unity3d.services.ads.api.AdViewer.incrementBannerImpressionCount"

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/16 p3, 0x20

    aput-object p2, p1, p3

    .line 163
    new-instance p2, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda18;

    invoke-direct {p2, p0, v6}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda18;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V

    const-string p3, "com.unity3d.services.ads.api.AdViewer.download"

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/16 p3, 0x21

    aput-object p2, p1, p3

    .line 164
    new-instance p2, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda19;

    invoke-direct {p2, p0, v6}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda19;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V

    const-string p3, "com.unity3d.services.ads.api.AdViewer.downloadWithProgress"

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/16 p3, 0x22

    aput-object p2, p1, p3

    .line 165
    new-instance p2, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda20;

    invoke-direct {p2, p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda20;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    const-string p3, "com.unity3d.services.ads.api.AdViewer.isFileCached"

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/16 p3, 0x23

    aput-object p2, p1, p3

    .line 166
    new-instance p2, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda21;

    invoke-direct {p2, p0, v6}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda21;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V

    const-string p3, "com.unity3d.services.ads.api.AdViewer.omidStartSession"

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/16 p3, 0x24

    aput-object p2, p1, p3

    .line 167
    new-instance p2, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda23;

    invoke-direct {p2, p0, v6}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda23;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V

    const-string p3, "com.unity3d.services.ads.api.AdViewer.omidFinishSession"

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/16 p3, 0x25

    aput-object p2, p1, p3

    .line 168
    new-instance p2, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda24;

    invoke-direct {p2, p0, v6}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda24;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V

    const-string p3, "com.unity3d.services.ads.api.AdViewer.omidImpression"

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/16 p3, 0x26

    aput-object p2, p1, p3

    .line 169
    new-instance p2, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda25;

    invoke-direct {p2, p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda25;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    const-string p3, "com.unity3d.services.ads.api.AdViewer.omidGetData"

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/16 p3, 0x27

    aput-object p2, p1, p3

    .line 170
    new-instance p2, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda27;

    invoke-direct {p2, p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda27;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    const-string p3, "com.unity3d.services.ads.api.AdViewer.isAttributionAvailable"

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/16 p3, 0x28

    aput-object p2, p1, p3

    .line 171
    new-instance p2, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda28;

    invoke-direct {p2, p0, v6}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda28;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V

    const-string p3, "com.unity3d.services.ads.api.AdViewer.attributionRegisterView"

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/16 p3, 0x29

    aput-object p2, p1, p3

    .line 172
    new-instance p2, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda29;

    invoke-direct {p2, p0, v6}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda29;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V

    const-string p3, "com.unity3d.services.ads.api.AdViewer.attributionRegisterClick"

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/16 p3, 0x2a

    aput-object p2, p1, p3

    .line 173
    new-instance p2, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda30;

    invoke-direct {p2, p0, v6}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda30;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V

    const-string p3, "com.unity3d.services.ads.api.AdViewer.hbTokenIncrementWins"

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/16 p3, 0x2b

    aput-object p2, p1, p3

    .line 174
    new-instance p2, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda31;

    invoke-direct {p2, p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda31;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    const-string p3, "com.unity3d.services.ads.api.AdViewer.hbTokenIncrementStarts"

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/16 p3, 0x2c

    aput-object p2, p1, p3

    .line 175
    new-instance p2, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda32;

    invoke-direct {p2, p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda32;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    const-string p3, "com.unity3d.services.ads.api.AdViewer.hbTokenReset"

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/16 p3, 0x2d

    aput-object p2, p1, p3

    .line 176
    new-instance p2, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda34;

    invoke-direct {p2, p0, v6}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda34;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V

    const-string p3, "com.unity3d.services.ads.api.AdViewer.loadOfferwallAd"

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/16 p3, 0x2e

    aput-object p2, p1, p3

    .line 177
    new-instance p2, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda35;

    invoke-direct {p2}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda35;-><init>()V

    const-string p3, "com.unity3d.services.ads.api.AdViewer.showOfferwallAd"

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/16 p3, 0x2f

    aput-object p2, p1, p3

    .line 178
    new-instance p2, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda36;

    invoke-direct {p2, p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda36;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    const-string p3, "com.unity3d.services.ads.api.AdViewer.isOfferwallAdReady"

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/16 p3, 0x30

    aput-object p2, p1, p3

    .line 179
    new-instance p2, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda37;

    invoke-direct {p2, p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda37;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    const-string p3, "com.unity3d.services.core.api.Request.get"

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/16 p3, 0x31

    aput-object p2, p1, p3

    .line 180
    new-instance p2, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda39;

    invoke-direct {p2, p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda39;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    const-string p3, "com.unity3d.services.core.api.Request.post"

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/16 p3, 0x32

    aput-object p2, p1, p3

    .line 181
    new-instance p2, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda40;

    invoke-direct {p2, p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda40;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    const-string p3, "com.unity3d.services.core.api.Request.head"

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/16 p3, 0x33

    aput-object p2, p1, p3

    .line 182
    new-instance p2, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda41;

    invoke-direct {p2, v6}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda41;-><init>(Lcom/unity3d/ads/core/data/model/AdObject;)V

    const-string p3, "com.unity3d.services.ads.api.AdViewer.setOpportunityTTL"

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/16 p3, 0x34

    aput-object p2, p1, p3

    .line 183
    new-instance p2, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda42;

    invoke-direct {p2, p0, v6}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$$ExternalSyntheticLambda42;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V

    const-string p3, "com.unity3d.services.ads.api.AdViewer.getExtra"

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/16 p3, 0x35

    aput-object p2, p1, p3

    .line 129
    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
