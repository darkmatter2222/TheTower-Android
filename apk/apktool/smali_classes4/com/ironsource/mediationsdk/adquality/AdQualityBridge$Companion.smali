.class public final Lcom/ironsource/mediationsdk/adquality/AdQualityBridge$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAdQualityBridge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdQualityBridge.kt\ncom/ironsource/mediationsdk/adquality/AdQualityBridge$Companion\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,342:1\n37#2:343\n36#2,3:344\n37#2:347\n36#2,3:348\n*S KotlinDebug\n*F\n+ 1 AdQualityBridge.kt\ncom/ironsource/mediationsdk/adquality/AdQualityBridge$Companion\n*L\n180#1:343\n180#1:344,3\n181#1:347\n181#1:348,3\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$isGetVersionMethodExist(Lcom/ironsource/mediationsdk/adquality/AdQualityBridge$Companion;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge$Companion;->isGetVersionMethodExist()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$logEvent(Lcom/ironsource/mediationsdk/adquality/AdQualityBridge$Companion;Lcom/ironsource/D5;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge$Companion;->logEvent(Lcom/ironsource/D5;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$versionCompare(Lcom/ironsource/mediationsdk/adquality/AdQualityBridge$Companion;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge$Companion;->versionCompare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private final isGetVersionMethodExist()Z
    .locals 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;->access$isGetVersionMethodExist$cp()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;->access$isGetVersionMethodExist$cp()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 6
    :cond_0
    const-string v0, "com.ironsource.adqualitysdk.sdk.IronSourceAdQuality"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 8
    array-length v0, v0

    const/16 v2, 0xa

    if-lt v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 10
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;->access$setGetVersionMethodExist$cp(Ljava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    .line 14
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 15
    sget-object v4, Lcom/ironsource/D5;->E:Lcom/ironsource/D5;

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge$Companion;->logEvent$default(Lcom/ironsource/mediationsdk/adquality/AdQualityBridge$Companion;Lcom/ironsource/D5;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)V

    return v1
.end method

.method private static synthetic isGetVersionMethodExist$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method private final logEvent(Lcom/ironsource/D5;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->b(Z)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const-string v1, "errorCode"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    if-eqz p3, :cond_1

    .line 6
    const-string p2, "reason"

    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    :cond_1
    sget-object p2, Lcom/ironsource/mediationsdk/adquality/a;->a:Lcom/ironsource/mediationsdk/adquality/a$b;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/adquality/a$b;->a()Lcom/ironsource/mediationsdk/adquality/a$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/adquality/a$a;->c()I

    move-result p2

    const-string p3, "ext1"

    invoke-virtual {v0, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 11
    sget-object p2, Lcom/ironsource/Pb;->w:Lcom/ironsource/Pb$a;

    invoke-virtual {p2}, Lcom/ironsource/Pb$a;->d()Lcom/ironsource/M7;

    move-result-object p2

    invoke-interface {p2}, Lcom/ironsource/M7;->q()Lcom/ironsource/G1;

    move-result-object p2

    new-instance p3, Lcom/ironsource/C5;

    invoke-direct {p3, p1, v0}, Lcom/ironsource/C5;-><init>(Lcom/ironsource/D5;Lorg/json/JSONObject;)V

    invoke-virtual {p2, p3}, Lcom/ironsource/r3;->a(Lcom/ironsource/C5;)V

    return-void
.end method

.method static synthetic logEvent$default(Lcom/ironsource/mediationsdk/adquality/AdQualityBridge$Companion;Lcom/ironsource/D5;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 1
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge$Companion;->logEvent(Lcom/ironsource/D5;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method private final versionCompare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 17
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 4
    :cond_0
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "[^0-9.]"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v2, ""

    move-object/from16 v3, p1

    invoke-virtual {v0, v3, v2}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "."

    aput-object v10, v4, v9

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 170
    new-array v4, v9, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .line 171
    check-cast v3, [Ljava/lang/String;

    .line 172
    new-instance v4, Lkotlin/text/Regex;

    invoke-direct {v4, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    move-object/from16 v1, p2

    invoke-virtual {v4, v1, v2}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-array v12, v0, [Ljava/lang/String;

    aput-object v10, v12, v9

    const/4 v15, 0x6

    const/16 v16, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 341
    new-array v1, v9, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 342
    check-cast v0, [Ljava/lang/String;

    .line 344
    :goto_0
    array-length v1, v3

    if-ge v9, v1, :cond_1

    array-length v1, v0

    if-ge v9, v1, :cond_1

    aget-object v1, v3, v9

    aget-object v2, v0, v9

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 347
    :cond_1
    array-length v1, v3

    if-ge v9, v1, :cond_2

    array-length v1, v0

    if-ge v9, v1, :cond_2

    .line 348
    aget-object v1, v3, v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "valueOf(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v0

    .line 349
    invoke-static {v0}, Ljava/lang/Integer;->signum(I)I

    move-result v0

    return v0

    .line 351
    :cond_2
    array-length v1, v3

    array-length v0, v0

    sub-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->signum(I)I

    move-result v0

    return v0

    :cond_3
    :goto_1
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public final adQualityAvailable()Z
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge$Companion;->getAdQualitySdkVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "7.9.0"

    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge$Companion;->versionCompare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getAdQualitySdkVersion()Ljava/lang/String;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge$Companion;->isGetVersionMethodExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/IronSourceAdQuality;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSDKVersion(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    return-object v0
.end method
