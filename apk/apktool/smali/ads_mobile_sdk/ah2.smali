.class public final Lads_mobile_sdk/ah2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/r41;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lads_mobile_sdk/ex0;

.field public final c:Lads_mobile_sdk/o21;

.field public final d:Lads_mobile_sdk/rb;

.field public final e:Lads_mobile_sdk/v3;

.field public final f:Lads_mobile_sdk/f0;

.field public final g:Lads_mobile_sdk/cw2;

.field public final h:Lads_mobile_sdk/cw2;

.field public final i:Lads_mobile_sdk/bz1;

.field public final j:Lads_mobile_sdk/j53;

.field public final k:Lads_mobile_sdk/zc0;

.field public final l:Lads_mobile_sdk/qs0;

.field public final m:Lads_mobile_sdk/i2;

.field public final n:Lads_mobile_sdk/s93;

.field public final o:Lads_mobile_sdk/gc2;

.field public final p:Lads_mobile_sdk/ap2;

.field public final q:Lads_mobile_sdk/p61;

.field public final r:Lads_mobile_sdk/ur3;

.field public final s:Lads_mobile_sdk/zy;

.field public final t:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lads_mobile_sdk/ex0;Lads_mobile_sdk/o21;Lads_mobile_sdk/rb;Lads_mobile_sdk/v3;Lads_mobile_sdk/f0;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/bz1;Lads_mobile_sdk/j53;Lads_mobile_sdk/zc0;Lads_mobile_sdk/qs0;Lads_mobile_sdk/i2;Lads_mobile_sdk/s93;Lads_mobile_sdk/gc2;Lads_mobile_sdk/ap2;Lads_mobile_sdk/p61;Lads_mobile_sdk/ur3;Lads_mobile_sdk/zy;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 16

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    .line 1
    const-string v0, "applicationContext"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gmaUtil"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adSpamClient"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adEventEmitter"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityTracker"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onePieceExpandableContentPresenter"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "twoPieceExpandableContentPresenter"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mraidResizeHandler"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestType"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customTabsConnection"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseAnalyticsEventHandler"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeBrowsingManager"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineOpenHandler"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "postClickLifecycleMonitor"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hsdpDeepLinkServiceWrapper"

    move-object/from16 v15, p17

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceLogger"

    move-object/from16 v15, p18

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commonConfiguration"

    move-object/from16 v15, p19

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundScope"

    move-object/from16 v15, p20

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    .line 6
    iput-object v1, v0, Lads_mobile_sdk/ah2;->a:Landroid/content/Context;

    .line 7
    iput-object v2, v0, Lads_mobile_sdk/ah2;->b:Lads_mobile_sdk/ex0;

    .line 8
    iput-object v3, v0, Lads_mobile_sdk/ah2;->c:Lads_mobile_sdk/o21;

    .line 9
    iput-object v4, v0, Lads_mobile_sdk/ah2;->d:Lads_mobile_sdk/rb;

    .line 10
    iput-object v5, v0, Lads_mobile_sdk/ah2;->e:Lads_mobile_sdk/v3;

    .line 11
    iput-object v6, v0, Lads_mobile_sdk/ah2;->f:Lads_mobile_sdk/f0;

    .line 12
    iput-object v7, v0, Lads_mobile_sdk/ah2;->g:Lads_mobile_sdk/cw2;

    .line 13
    iput-object v8, v0, Lads_mobile_sdk/ah2;->h:Lads_mobile_sdk/cw2;

    .line 14
    iput-object v9, v0, Lads_mobile_sdk/ah2;->i:Lads_mobile_sdk/bz1;

    .line 15
    iput-object v10, v0, Lads_mobile_sdk/ah2;->j:Lads_mobile_sdk/j53;

    .line 16
    iput-object v11, v0, Lads_mobile_sdk/ah2;->k:Lads_mobile_sdk/zc0;

    .line 17
    iput-object v12, v0, Lads_mobile_sdk/ah2;->l:Lads_mobile_sdk/qs0;

    .line 18
    iput-object v13, v0, Lads_mobile_sdk/ah2;->m:Lads_mobile_sdk/i2;

    .line 19
    iput-object v14, v0, Lads_mobile_sdk/ah2;->n:Lads_mobile_sdk/s93;

    move-object/from16 v1, p15

    .line 20
    iput-object v1, v0, Lads_mobile_sdk/ah2;->o:Lads_mobile_sdk/gc2;

    move-object/from16 v1, p16

    .line 21
    iput-object v1, v0, Lads_mobile_sdk/ah2;->p:Lads_mobile_sdk/ap2;

    move-object/from16 v1, p17

    .line 22
    iput-object v1, v0, Lads_mobile_sdk/ah2;->q:Lads_mobile_sdk/p61;

    move-object/from16 v1, p18

    .line 23
    iput-object v1, v0, Lads_mobile_sdk/ah2;->r:Lads_mobile_sdk/ur3;

    move-object/from16 v1, p19

    .line 24
    iput-object v1, v0, Lads_mobile_sdk/ah2;->s:Lads_mobile_sdk/zy;

    .line 25
    iput-object v15, v0, Lads_mobile_sdk/ah2;->t:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method

.method public static b(Ljava/util/Map;)I
    .locals 2

    .line 1643
    const-string v0, "o"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_5

    .line 1644
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x63

    if-eq v0, v1, :cond_3

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_2

    const/16 v1, 0x70

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "p"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x7

    return p0

    :cond_2
    const-string v0, "l"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x6

    return p0

    :cond_3
    const-string v0, "c"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/16 p0, 0xe

    return p0

    :cond_5
    :goto_0
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/Map;Lads_mobile_sdk/r31;)Landroid/content/Intent;
    .locals 5

    .line 1340
    const-string v0, "m"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1341
    const-string v1, "p"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1342
    const-string v2, "c"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1343
    const-string v3, "f"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 1345
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1346
    iget-object v4, p0, Lads_mobile_sdk/ah2;->d:Lads_mobile_sdk/rb;

    .line 1696
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 1697
    invoke-virtual {v4, p1, p3}, Lads_mobile_sdk/rb;->a(Landroid/net/Uri;Landroid/view/View;)Landroid/net/Uri;

    move-result-object p1

    if-eqz v0, :cond_1

    .line 1698
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 1701
    :cond_0
    invoke-virtual {v3, p1, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1702
    :cond_1
    :goto_0
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1706
    :goto_1
    const-string p1, "android.intent.action.VIEW"

    invoke-virtual {v3, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v1, :cond_3

    .line 1708
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    .line 1709
    :cond_2
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    :goto_2
    if-eqz v2, :cond_6

    .line 1712
    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_3

    .line 1713
    :cond_4
    new-instance p1, Lkotlin/text/Regex;

    const-string p3, "/"

    invoke-direct {p1, p3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const/4 p3, 0x2

    invoke-virtual {p1, v2, p3}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 2052
    new-array v1, v0, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 2053
    check-cast p1, [Ljava/lang/String;

    .line 2054
    array-length v1, p1

    if-ge v1, p3, :cond_5

    .line 2055
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Could not parse component name from open GMSG: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x6

    const/4 p3, 0x0

    invoke-static {p1, p3, p2}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    return-object p3

    .line 2058
    :cond_5
    aget-object p3, p1, v0

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-virtual {v3, p3, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_6
    :goto_3
    if-eqz p2, :cond_8

    .line 2061
    invoke-static {p2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_4

    .line 2063
    :cond_7
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception p1

    .line 2065
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Could not parse intent flags ("

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "): "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;)V

    :cond_8
    :goto_4
    return-object v3
.end method

.method public final a(Ljava/util/Map;)Landroid/content/Intent;
    .locals 2

    .line 2407
    const-string v0, "p"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2409
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Package name missing from open app action: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    return-object v1

    .line 2413
    :cond_0
    iget-object p1, p0, Lads_mobile_sdk/ah2;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/Map;Lads_mobile_sdk/r31;)Landroid/content/Intent;
    .locals 6

    .line 2929
    const-string v0, "intent_url"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2930
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 2932
    :try_start_0
    invoke-static {v0, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2934
    :try_start_1
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2936
    iget-object v4, p0, Lads_mobile_sdk/ah2;->d:Lads_mobile_sdk/rb;

    invoke-virtual {v4, v3, p2}, Lads_mobile_sdk/rb;->a(Landroid/net/Uri;Landroid/view/View;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    move-object v2, v1

    .line 2939
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error parsing the intent url ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "): "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    :goto_1
    move-object v2, v1

    :cond_2
    :goto_2
    if-nez v2, :cond_5

    .line 2945
    const-string v0, "u"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 2946
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    .line 2949
    :cond_3
    invoke-virtual {p0, v0, p1, p2}, Lads_mobile_sdk/ah2;->a(Ljava/lang/String;Ljava/util/Map;Lads_mobile_sdk/r31;)Landroid/content/Intent;

    move-result-object v2

    goto :goto_4

    .line 2950
    :cond_4
    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Blank URL and invalid intent URL for an open GMSG: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x6

    invoke-static {p1, v1, p2}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    :cond_5
    :goto_4
    return-object v2
.end method

.method public final a(Landroid/content/Intent;Ljava/util/List;)Landroid/content/pm/ResolveInfo;
    .locals 4

    .line 3392
    iget-object v0, p0, Lads_mobile_sdk/ah2;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 3866
    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 3867
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_3

    return-object p1

    :cond_3
    return-object v0
.end method

.method public final a(Lads_mobile_sdk/r31;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Boolean;
    .locals 9

    .line 8884
    instance-of v0, p3, Lads_mobile_sdk/wg2;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/wg2;

    iget v1, v0, Lads_mobile_sdk/wg2;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/wg2;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/wg2;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/wg2;-><init>(Lads_mobile_sdk/ah2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lads_mobile_sdk/wg2;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 8885
    iget v0, v0, Lads_mobile_sdk/wg2;->c:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-ne v0, v1, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 8891
    iget-object p3, p0, Lads_mobile_sdk/ah2;->o:Lads_mobile_sdk/gc2;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8892
    const-string v0, "webView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_e

    .line 8920
    iget-object p1, p3, Lads_mobile_sdk/gc2;->a:Lads_mobile_sdk/i2;

    invoke-virtual {p1}, Lads_mobile_sdk/i2;->f()Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_4

    .line 8923
    :cond_3
    sget-object p1, Lads_mobile_sdk/s11;->v1:Lads_mobile_sdk/s11;

    .line 8953
    sget-object p2, Lads_mobile_sdk/hs3;->a:Ljava/util/WeakHashMap;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2, v1}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object p1

    .line 8954
    :try_start_0
    iget-object p2, p3, Lads_mobile_sdk/gc2;->c:Lads_mobile_sdk/ca2;

    .line 8955
    iget-object p2, p2, Lads_mobile_sdk/ca2;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8956
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 8957
    iget-object p2, p3, Lads_mobile_sdk/gc2;->d:Lads_mobile_sdk/ac2;

    iget-object p3, p3, Lads_mobile_sdk/gc2;->b:Lads_mobile_sdk/zy;

    iget-object p3, p3, Lads_mobile_sdk/zy;->h:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8958
    const-string v1, "gwsQueryId"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9020
    new-instance v1, Lads_mobile_sdk/zb2;

    invoke-direct {v1, p2, p3, v0}, Lads_mobile_sdk/zb2;-><init>(Lads_mobile_sdk/ac2;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 9021
    iget-object v3, p2, Lads_mobile_sdk/ac2;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance v6, Lads_mobile_sdk/xb2;

    invoke-direct {v6, p2, v1, v0}, Lads_mobile_sdk/xb2;-><init>(Lads_mobile_sdk/ac2;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_3

    .line 9022
    :cond_4
    iget-object p2, p3, Lads_mobile_sdk/gc2;->a:Lads_mobile_sdk/i2;

    iget-object v3, p2, Lads_mobile_sdk/i2;->u0:Lads_mobile_sdk/qb2;

    if-eqz v3, :cond_5

    iget-boolean v3, v3, Lads_mobile_sdk/qb2;->c:Z

    goto :goto_1

    :cond_5
    move v3, v2

    .line 9024
    :goto_1
    iget-object p2, p2, Lads_mobile_sdk/i2;->w0:Lads_mobile_sdk/uo2;

    if-eqz p2, :cond_6

    .line 9025
    iget-boolean v4, p2, Lads_mobile_sdk/uo2;->a:Z

    if-eqz v4, :cond_6

    iget-object v4, p2, Lads_mobile_sdk/uo2;->b:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_6

    iget-boolean p2, p2, Lads_mobile_sdk/uo2;->c:Z

    if-eqz p2, :cond_6

    goto :goto_2

    :cond_6
    move v1, v2

    :goto_2
    if-eqz v3, :cond_7

    if-eqz v1, :cond_7

    .line 9030
    iget-object p2, p3, Lads_mobile_sdk/gc2;->e:Lads_mobile_sdk/ex0;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9031
    const-string p3, "gads:skip_offline_notification_flow:enabled"

    .line 9032
    const-string v1, "key"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9048
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v3, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {p2, p3, v1, v3}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9049
    :cond_7
    :goto_3
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 9061
    instance-of p3, p2, Lads_mobile_sdk/i01;

    if-eqz p3, :cond_8

    .line 9062
    check-cast p2, Lads_mobile_sdk/i01;

    .line 9063
    invoke-static {p2, v2}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9064
    :cond_8
    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object p2, v0

    .line 9072
    :try_start_1
    invoke-virtual {p1, p2}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 9076
    instance-of p3, p2, Lads_mobile_sdk/v24;

    if-nez p3, :cond_d

    .line 9078
    instance-of p3, p2, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez p3, :cond_9

    instance-of p3, p2, Ljava/util/concurrent/CancellationException;

    if-nez p3, :cond_9

    .line 9084
    invoke-virtual {p1, p2}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 9090
    :cond_9
    instance-of p3, p2, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez p3, :cond_c

    .line 9091
    instance-of p3, p2, Ljava/util/concurrent/CancellationException;

    if-nez p3, :cond_b

    .line 9092
    instance-of p3, p2, Lads_mobile_sdk/w01;

    if-eqz p3, :cond_a

    throw p2

    .line 9093
    :cond_a
    new-instance p3, Lads_mobile_sdk/b01;

    invoke-direct {p3, p2}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw p3

    .line 9094
    :cond_b
    new-instance p3, Lads_mobile_sdk/wz0;

    check-cast p2, Ljava/util/concurrent/CancellationException;

    invoke-direct {p3, p2}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw p3

    .line 9095
    :cond_c
    new-instance p3, Lads_mobile_sdk/i21;

    check-cast p2, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {p3, p2}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw p3

    .line 9096
    :cond_d
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object p2, v0

    .line 9097
    :try_start_2
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v0

    move-object p3, v0

    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3

    .line 9098
    :cond_e
    :goto_4
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lads_mobile_sdk/r31;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 9099
    instance-of v3, v2, Lads_mobile_sdk/xg2;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lads_mobile_sdk/xg2;

    iget v4, v3, Lads_mobile_sdk/xg2;->k:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lads_mobile_sdk/xg2;->k:I

    goto :goto_0

    :cond_0
    new-instance v3, Lads_mobile_sdk/xg2;

    invoke-direct {v3, v0, v2}, Lads_mobile_sdk/xg2;-><init>(Lads_mobile_sdk/ah2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v5, v3

    iget-object v2, v5, Lads_mobile_sdk/xg2;->i:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v12

    .line 9184
    iget v3, v5, Lads_mobile_sdk/xg2;->k:I

    const-string v4, "open_app"

    const/4 v6, 0x6

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v13, 0x0

    packed-switch v3, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1f

    :pswitch_1
    iget v1, v5, Lads_mobile_sdk/xg2;->g:I

    iget-boolean v3, v5, Lads_mobile_sdk/xg2;->h:Z

    iget v4, v5, Lads_mobile_sdk/xg2;->f:I

    iget-object v6, v5, Lads_mobile_sdk/xg2;->d:Ljava/lang/Object;

    check-cast v6, Landroid/content/Intent;

    iget-object v7, v5, Lads_mobile_sdk/xg2;->c:Ljava/util/Map;

    iget-object v8, v5, Lads_mobile_sdk/xg2;->b:Lads_mobile_sdk/r31;

    iget-object v9, v5, Lads_mobile_sdk/xg2;->a:Ljava/lang/Object;

    check-cast v9, Lads_mobile_sdk/ah2;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v10, v9

    move-object v9, v5

    move-object v5, v7

    move-object v7, v10

    move-object v10, v6

    move-object v6, v2

    move v2, v11

    goto/16 :goto_1a

    :pswitch_2
    iget v1, v5, Lads_mobile_sdk/xg2;->g:I

    iget-boolean v3, v5, Lads_mobile_sdk/xg2;->h:Z

    iget v4, v5, Lads_mobile_sdk/xg2;->f:I

    iget-object v6, v5, Lads_mobile_sdk/xg2;->d:Ljava/lang/Object;

    check-cast v6, Landroid/content/Intent;

    iget-object v7, v5, Lads_mobile_sdk/xg2;->c:Ljava/util/Map;

    iget-object v8, v5, Lads_mobile_sdk/xg2;->b:Lads_mobile_sdk/r31;

    iget-object v9, v5, Lads_mobile_sdk/xg2;->a:Ljava/lang/Object;

    check-cast v9, Lads_mobile_sdk/ah2;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v10, v7

    move v7, v3

    move v3, v4

    move-object v4, v10

    move-object v10, v6

    move-object v14, v8

    move-object v8, v2

    move v2, v11

    goto/16 :goto_18

    :pswitch_3
    iget v1, v5, Lads_mobile_sdk/xg2;->g:I

    iget-boolean v3, v5, Lads_mobile_sdk/xg2;->h:Z

    iget v6, v5, Lads_mobile_sdk/xg2;->f:I

    iget-object v7, v5, Lads_mobile_sdk/xg2;->e:Landroid/content/Intent;

    iget-object v8, v5, Lads_mobile_sdk/xg2;->d:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v9, v5, Lads_mobile_sdk/xg2;->c:Ljava/util/Map;

    iget-object v14, v5, Lads_mobile_sdk/xg2;->b:Lads_mobile_sdk/r31;

    iget-object v15, v5, Lads_mobile_sdk/xg2;->a:Ljava/lang/Object;

    check-cast v15, Lads_mobile_sdk/ah2;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v9

    move-object v9, v4

    move-object v4, v2

    move v2, v11

    goto/16 :goto_16

    :pswitch_4
    iget v1, v5, Lads_mobile_sdk/xg2;->g:I

    iget-boolean v3, v5, Lads_mobile_sdk/xg2;->h:Z

    iget v6, v5, Lads_mobile_sdk/xg2;->f:I

    iget-object v7, v5, Lads_mobile_sdk/xg2;->d:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v8, v5, Lads_mobile_sdk/xg2;->c:Ljava/util/Map;

    iget-object v9, v5, Lads_mobile_sdk/xg2;->b:Lads_mobile_sdk/r31;

    iget-object v14, v5, Lads_mobile_sdk/xg2;->a:Ljava/lang/Object;

    check-cast v14, Lads_mobile_sdk/ah2;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v10, v9

    move-object v9, v4

    move-object v4, v10

    move v10, v6

    move-object v6, v2

    move v2, v1

    move-object v1, v8

    goto/16 :goto_14

    :pswitch_5
    iget v1, v5, Lads_mobile_sdk/xg2;->g:I

    iget-boolean v3, v5, Lads_mobile_sdk/xg2;->h:Z

    iget v6, v5, Lads_mobile_sdk/xg2;->f:I

    iget-object v7, v5, Lads_mobile_sdk/xg2;->d:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v8, v5, Lads_mobile_sdk/xg2;->c:Ljava/util/Map;

    iget-object v9, v5, Lads_mobile_sdk/xg2;->b:Lads_mobile_sdk/r31;

    iget-object v14, v5, Lads_mobile_sdk/xg2;->a:Ljava/lang/Object;

    check-cast v14, Lads_mobile_sdk/ah2;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v10, v9

    move-object v9, v4

    move-object v4, v10

    move v10, v6

    move-object v6, v2

    move v2, v1

    move-object v1, v8

    goto/16 :goto_11

    :pswitch_6
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_7
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_8
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_9
    iget-object v1, v5, Lads_mobile_sdk/xg2;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_a
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 9185
    const-string v2, "a"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_33

    .line 9186
    invoke-static {v7}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_20

    .line 9190
    :cond_1
    sget-object v2, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Handling \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" open GMSG"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lads_mobile_sdk/f01;->b(Ljava/lang/String;)V

    .line 9192
    iget-object v2, v0, Lads_mobile_sdk/ah2;->n:Lads_mobile_sdk/s93;

    invoke-virtual {v2}, Lads_mobile_sdk/s93;->f()Z

    move-result v2

    if-nez v2, :cond_4

    .line 9193
    const-string v2, "u"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, "NO_URL"

    .line 9194
    :cond_2
    iget-object v2, v0, Lads_mobile_sdk/ah2;->n:Lads_mobile_sdk/s93;

    iput-object v1, v5, Lads_mobile_sdk/xg2;->a:Ljava/lang/Object;

    iput v11, v5, Lads_mobile_sdk/xg2;->k:I

    invoke-virtual {v2, v1, v5}, Lads_mobile_sdk/s93;->b(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v12, :cond_3

    goto/16 :goto_1e

    .line 9195
    :cond_3
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Safe browsing blocked auto click: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v13, v6}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 9196
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 9208
    :cond_4
    iget-object v2, v0, Lads_mobile_sdk/ah2;->s:Lads_mobile_sdk/zy;

    iget-boolean v3, v2, Lads_mobile_sdk/zy;->u:Z

    .line 9209
    const-string v2, "sc"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v8, "0"

    const/4 v9, 0x2

    invoke-static {v2, v8, v10, v9, v13}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    const-string v8, "true"

    if-eqz v2, :cond_5

    goto :goto_2

    .line 9211
    :cond_5
    const-string v2, "ig_cl"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v8, v10, v9, v13}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_2

    .line 9218
    :cond_6
    iget-object v2, v0, Lads_mobile_sdk/ah2;->j:Lads_mobile_sdk/j53;

    sget-object v14, Lads_mobile_sdk/j53;->i:Lads_mobile_sdk/j53;

    if-eq v2, v14, :cond_8

    sget-object v14, Lads_mobile_sdk/j53;->g:Lads_mobile_sdk/j53;

    if-ne v2, v14, :cond_7

    goto :goto_2

    :cond_7
    move v2, v11

    goto :goto_3

    :cond_8
    :goto_2
    move v2, v10

    .line 9239
    :goto_3
    const-string v14, "expand"

    invoke-static {v14, v7, v11}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 9240
    iget-object v3, v0, Lads_mobile_sdk/ah2;->i:Lads_mobile_sdk/bz1;

    invoke-virtual {v3, v10}, Lads_mobile_sdk/bz1;->a(Z)V

    .line 9241
    iput v9, v5, Lads_mobile_sdk/xg2;->k:I

    .line 9242
    iget-object v3, v0, Lads_mobile_sdk/ah2;->g:Lads_mobile_sdk/cw2;

    .line 9243
    invoke-interface {v3}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lads_mobile_sdk/pg2;

    .line 9244
    const-string v4, "custom_close"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v7, "1"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    .line 9245
    invoke-static {v1}, Lads_mobile_sdk/ah2;->b(Ljava/util/Map;)I

    move-result v1

    .line 9246
    iget-object v7, v3, Lads_mobile_sdk/pg2;->T:Ljava/util/Optional;

    .line 9247
    invoke-static {v7}, Lkotlin/jvm/optionals/OptionalsKt;->getOrNull(Ljava/util/Optional;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lads_mobile_sdk/h41;

    if-eqz v7, :cond_e

    .line 9248
    const-string v8, "<set-?>"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9369
    iput-object v7, v3, Lads_mobile_sdk/yy0;->r:Landroid/view/View;

    .line 9370
    iget-object v7, v3, Lads_mobile_sdk/pg2;->T:Ljava/util/Optional;

    invoke-static {v7}, Lkotlin/jvm/optionals/OptionalsKt;->getOrNull(Ljava/util/Optional;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lads_mobile_sdk/h41;

    if-nez v7, :cond_9

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_5

    .line 9371
    :cond_9
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9427
    iput-object v7, v3, Lads_mobile_sdk/yx0;->I:Lads_mobile_sdk/h41;

    .line 9428
    iget-object v7, v3, Lads_mobile_sdk/yx0;->J:Lkotlin/Lazy;

    invoke-interface {v7}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lads_mobile_sdk/r31;

    .line 9429
    iget-object v7, v7, Lads_mobile_sdk/r31;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9430
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-nez v7, :cond_d

    .line 9431
    iget-object v7, v3, Lads_mobile_sdk/yx0;->J:Lkotlin/Lazy;

    invoke-interface {v7}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lads_mobile_sdk/r31;

    .line 9432
    invoke-virtual {v7}, Lads_mobile_sdk/r31;->e()Lads_mobile_sdk/v14;

    move-result-object v7

    iget-object v7, v7, Lads_mobile_sdk/v14;->a:Lads_mobile_sdk/u14;

    sget-object v8, Lads_mobile_sdk/u14;->d:Lads_mobile_sdk/u14;

    if-ne v7, v8, :cond_a

    goto :goto_4

    .line 9433
    :cond_a
    iput-boolean v4, v3, Lads_mobile_sdk/yy0;->u:Z

    .line 9434
    iput v1, v3, Lads_mobile_sdk/yx0;->L:I

    .line 9435
    iput-boolean v10, v3, Lads_mobile_sdk/yy0;->v:Z

    .line 9436
    iput-boolean v2, v3, Lads_mobile_sdk/ez0;->R:Z

    .line 9437
    iget-object v1, v3, Lads_mobile_sdk/yx0;->J:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/r31;

    .line 9438
    iget-object v1, v1, Lads_mobile_sdk/r31;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9439
    invoke-virtual {v1, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 9442
    invoke-virtual {v3}, Lads_mobile_sdk/yy0;->g()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 9443
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_c

    .line 9445
    new-instance v2, Lads_mobile_sdk/i04;

    .line 9446
    invoke-virtual {v3}, Lads_mobile_sdk/yy0;->g()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const-string v6, "getLayoutParams(...)"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9447
    move-object v6, v1

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Lads_mobile_sdk/yy0;->g()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v7

    .line 9448
    iget-object v8, v3, Lads_mobile_sdk/yx0;->J:Lkotlin/Lazy;

    invoke-interface {v8}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lads_mobile_sdk/r31;

    .line 9449
    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "getContext(...)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9450
    invoke-direct {v2, v4, v7, v6, v8}, Lads_mobile_sdk/i04;-><init>(Landroid/view/ViewGroup$LayoutParams;ILandroid/view/ViewGroup;Landroid/content/Context;)V

    .line 9451
    iput-object v2, v3, Lads_mobile_sdk/pg2;->U:Lads_mobile_sdk/i04;

    .line 9452
    iget-object v2, v3, Lads_mobile_sdk/yy0;->c:Lkotlin/coroutines/CoroutineContext;

    .line 9453
    new-instance v4, Lads_mobile_sdk/og2;

    invoke-direct {v4, v1, v3, v13}, Lads_mobile_sdk/og2;-><init>(Landroid/view/ViewParent;Lads_mobile_sdk/pg2;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v4, v5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_b

    goto :goto_5

    :cond_b
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_5

    .line 9459
    :cond_c
    const-string v1, "Could not get parent of webview for one-piece expandable"

    invoke-static {v1, v13, v6}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 9461
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_5

    .line 9462
    :cond_d
    :goto_4
    const-string v1, "Tried to one-piece expand an expanded webview"

    invoke-static {v1, v13, v6}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 9463
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_5

    .line 9464
    :cond_e
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 9465
    :goto_5
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_f

    goto :goto_6

    :cond_f
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_6
    if-ne v1, v12, :cond_10

    goto/16 :goto_1e

    .line 9466
    :cond_10
    :goto_7
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 9467
    :cond_11
    const-string v9, "webapp"

    invoke-static {v9, v7, v11}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 9468
    iget-object v4, v0, Lads_mobile_sdk/ah2;->i:Lads_mobile_sdk/bz1;

    invoke-virtual {v4, v10}, Lads_mobile_sdk/bz1;->a(Z)V

    const/4 v4, 0x3

    .line 9469
    iput v4, v5, Lads_mobile_sdk/xg2;->k:I

    move-object/from16 v4, p1

    invoke-virtual/range {v0 .. v5}, Lads_mobile_sdk/ah2;->b(Ljava/util/Map;ZZLads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v12, :cond_12

    goto/16 :goto_1e

    .line 9475
    :cond_12
    :goto_8
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 9479
    :cond_13
    iget-object v9, v0, Lads_mobile_sdk/ah2;->i:Lads_mobile_sdk/bz1;

    invoke-virtual {v9, v11}, Lads_mobile_sdk/bz1;->a(Z)V

    .line 9491
    const-string v9, "intent_async"

    invoke-static {v9, v7, v11}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 9492
    const-string v9, "event_id"

    invoke-interface {v1, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    move-object v9, v4

    move v4, v3

    move v3, v2

    move v2, v11

    goto :goto_9

    :cond_14
    move-object v9, v4

    move v4, v3

    move v3, v2

    move v2, v10

    .line 9495
    :goto_9
    const-string v14, "chrome_custom_tab"

    invoke-static {v14, v7, v11}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v15

    if-eqz v15, :cond_1f

    .line 9496
    iget-object v15, v0, Lads_mobile_sdk/ah2;->b:Lads_mobile_sdk/ex0;

    invoke-virtual {v15}, Lads_mobile_sdk/ex0;->I()Z

    move-result v15

    if-eqz v15, :cond_17

    .line 9498
    iget-object v15, v0, Lads_mobile_sdk/ah2;->a:Landroid/content/Context;

    invoke-static {v15, v13}, Landroidx/browser/customtabs/CustomTabsClient;->getPackageName(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_15

    goto :goto_a

    .line 9504
    :cond_15
    iget-object v11, v0, Lads_mobile_sdk/ah2;->a:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_16

    goto :goto_a

    :cond_16
    move-object v10, v13

    goto :goto_c

    .line 9511
    :cond_17
    iget-object v11, v0, Lads_mobile_sdk/ah2;->a:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 9512
    new-instance v15, Landroid/content/Intent;

    .line 9928
    const-string v16, "http://"

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 9929
    const-string v13, "android.intent.action.VIEW"

    invoke-direct {v15, v13, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 9930
    invoke-virtual {v11, v15, v10}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    if-nez v6, :cond_19

    :cond_18
    :goto_a
    move v10, v3

    move v3, v4

    move-object/from16 v4, p1

    goto/16 :goto_f

    :cond_19
    const/high16 v13, 0x10000

    .line 9932
    invoke-virtual {v11, v15, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    const-string v13, "queryIntentActivities(...)"

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10346
    instance-of v13, v11, Ljava/util/Collection;

    if-eqz v13, :cond_1a

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_1a

    goto :goto_a

    .line 10347
    :cond_1a
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_18

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    .line 10348
    iget-object v15, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v13, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v15, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1e

    .line 10349
    iget-object v13, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 10350
    iget-object v15, v0, Lads_mobile_sdk/ah2;->a:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-static {v15, v10}, Landroidx/browser/customtabs/CustomTabsClient;->getPackageName(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1e

    .line 10351
    :goto_c
    iget-object v6, v0, Lads_mobile_sdk/ah2;->f:Lads_mobile_sdk/f0;

    invoke-virtual {v6}, Lads_mobile_sdk/f0;->g()Landroid/app/Activity;

    move-result-object v6

    if-nez v6, :cond_1b

    .line 10352
    const-string v6, "Chrome Custom Tabs can only be launched from an Activity context."

    const/4 v11, 0x6

    invoke-static {v6, v10, v11}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    :goto_d
    move v10, v3

    move v3, v4

    const/4 v6, 0x1

    move-object/from16 v4, p1

    goto :goto_10

    :cond_1b
    const/4 v11, 0x6

    .line 10356
    iget-object v6, v0, Lads_mobile_sdk/ah2;->b:Lads_mobile_sdk/ex0;

    invoke-virtual {v6}, Lads_mobile_sdk/ex0;->J()Z

    move-result v6

    if-nez v6, :cond_1c

    iget-object v6, v0, Lads_mobile_sdk/ah2;->b:Lads_mobile_sdk/ex0;

    invoke-virtual {v6}, Lads_mobile_sdk/ex0;->I()Z

    move-result v6

    if-nez v6, :cond_1c

    .line 10357
    const-string v6, "None of the CCT Connection and optimization experiments are enabled."

    invoke-static {v6, v10, v11}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    goto :goto_d

    :cond_1c
    const/4 v6, 0x4

    .line 10358
    iput v6, v5, Lads_mobile_sdk/xg2;->k:I

    move-object v6, v5

    move-object/from16 v5, p1

    invoke-virtual/range {v0 .. v6}, Lads_mobile_sdk/ah2;->a(Ljava/util/Map;ZZZLads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v12, :cond_1d

    goto/16 :goto_1e

    .line 10365
    :cond_1d
    :goto_e
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :cond_1e
    move v10, v3

    move v3, v4

    move-object/from16 v4, p1

    move v4, v3

    move v3, v10

    const/4 v10, 0x0

    goto :goto_b

    .line 10366
    :goto_f
    const-string v6, "Chrome Custom Tabs is not supported."

    const/4 v11, 0x6

    const/4 v13, 0x0

    invoke-static {v6, v13, v11}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    const/4 v6, 0x1

    goto :goto_10

    :cond_1f
    move v10, v3

    move v3, v4

    move-object/from16 v4, p1

    move v6, v11

    .line 10367
    :goto_10
    invoke-static {v9, v7, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_20

    .line 10368
    invoke-virtual {v0, v1}, Lads_mobile_sdk/ah2;->a(Ljava/util/Map;)Landroid/content/Intent;

    move-result-object v8

    move-object v6, v8

    move-object v8, v7

    move-object v7, v6

    move-object v14, v0

    goto :goto_13

    .line 10370
    :cond_20
    const-string v11, "app"

    invoke-static {v11, v7, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_23

    .line 10371
    const-string v11, "system_browser"

    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v8, v11, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_22

    .line 10373
    iput-object v0, v5, Lads_mobile_sdk/xg2;->a:Ljava/lang/Object;

    iput-object v4, v5, Lads_mobile_sdk/xg2;->b:Lads_mobile_sdk/r31;

    iput-object v1, v5, Lads_mobile_sdk/xg2;->c:Ljava/util/Map;

    iput-object v7, v5, Lads_mobile_sdk/xg2;->d:Ljava/lang/Object;

    iput v10, v5, Lads_mobile_sdk/xg2;->f:I

    iput-boolean v3, v5, Lads_mobile_sdk/xg2;->h:Z

    iput v2, v5, Lads_mobile_sdk/xg2;->g:I

    const/4 v6, 0x5

    iput v6, v5, Lads_mobile_sdk/xg2;->k:I

    invoke-virtual {v0, v4, v1, v5}, Lads_mobile_sdk/ah2;->b(Lads_mobile_sdk/r31;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v12, :cond_21

    goto/16 :goto_1e

    :cond_21
    move-object v14, v0

    .line 10374
    :goto_11
    check-cast v6, Landroid/content/Intent;

    :goto_12
    move-object v8, v7

    move-object v7, v6

    :goto_13
    move v6, v10

    goto :goto_15

    :cond_22
    const/4 v6, 0x1

    .line 10375
    :cond_23
    invoke-static {v14, v7, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_25

    .line 10378
    invoke-static {v1}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    .line 10379
    const-string v11, "use_first_package"

    invoke-interface {v6, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10380
    const-string v11, "use_running_process"

    invoke-interface {v6, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10381
    iput-object v0, v5, Lads_mobile_sdk/xg2;->a:Ljava/lang/Object;

    iput-object v4, v5, Lads_mobile_sdk/xg2;->b:Lads_mobile_sdk/r31;

    iput-object v1, v5, Lads_mobile_sdk/xg2;->c:Ljava/util/Map;

    iput-object v7, v5, Lads_mobile_sdk/xg2;->d:Ljava/lang/Object;

    iput v10, v5, Lads_mobile_sdk/xg2;->f:I

    iput-boolean v3, v5, Lads_mobile_sdk/xg2;->h:Z

    iput v2, v5, Lads_mobile_sdk/xg2;->g:I

    const/4 v11, 0x6

    iput v11, v5, Lads_mobile_sdk/xg2;->k:I

    invoke-virtual {v0, v4, v6, v5}, Lads_mobile_sdk/ah2;->b(Lads_mobile_sdk/r31;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v12, :cond_24

    goto/16 :goto_1e

    :cond_24
    move-object v14, v0

    .line 10382
    :goto_14
    check-cast v6, Landroid/content/Intent;

    goto :goto_12

    .line 10390
    :cond_25
    invoke-virtual {v0, v1, v4}, Lads_mobile_sdk/ah2;->a(Ljava/util/Map;Lads_mobile_sdk/r31;)Landroid/content/Intent;

    move-result-object v6

    move-object v14, v0

    goto :goto_12

    :goto_15
    if-eqz v7, :cond_26

    .line 10393
    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    if-eqz v10, :cond_26

    iget-object v11, v14, Lads_mobile_sdk/ah2;->n:Lads_mobile_sdk/s93;

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v13, "toString(...)"

    invoke-static {v10, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v14, v5, Lads_mobile_sdk/xg2;->a:Ljava/lang/Object;

    iput-object v4, v5, Lads_mobile_sdk/xg2;->b:Lads_mobile_sdk/r31;

    iput-object v1, v5, Lads_mobile_sdk/xg2;->c:Ljava/util/Map;

    iput-object v8, v5, Lads_mobile_sdk/xg2;->d:Ljava/lang/Object;

    iput-object v7, v5, Lads_mobile_sdk/xg2;->e:Landroid/content/Intent;

    iput v6, v5, Lads_mobile_sdk/xg2;->f:I

    iput-boolean v3, v5, Lads_mobile_sdk/xg2;->h:Z

    iput v2, v5, Lads_mobile_sdk/xg2;->g:I

    const/4 v13, 0x7

    iput v13, v5, Lads_mobile_sdk/xg2;->k:I

    invoke-virtual {v11, v10, v5}, Lads_mobile_sdk/s93;->a(Ljava/lang/String;Lads_mobile_sdk/xg2;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v12, :cond_26

    goto/16 :goto_1e

    :cond_26
    move-object v15, v14

    move-object v14, v4

    move-object v4, v1

    move v1, v2

    const/4 v2, 0x1

    .line 10396
    :goto_16
    invoke-static {v9, v8, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_27

    .line 10397
    const-string v8, "p"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    goto :goto_17

    :cond_27
    if-eqz v7, :cond_28

    .line 10399
    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    if-eqz v8, :cond_28

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_17

    :cond_28
    const/4 v8, 0x0

    .line 10401
    :goto_17
    iput-object v15, v5, Lads_mobile_sdk/xg2;->a:Ljava/lang/Object;

    iput-object v14, v5, Lads_mobile_sdk/xg2;->b:Lads_mobile_sdk/r31;

    iput-object v4, v5, Lads_mobile_sdk/xg2;->c:Ljava/util/Map;

    iput-object v7, v5, Lads_mobile_sdk/xg2;->d:Ljava/lang/Object;

    const/4 v13, 0x0

    iput-object v13, v5, Lads_mobile_sdk/xg2;->e:Landroid/content/Intent;

    iput v6, v5, Lads_mobile_sdk/xg2;->f:I

    iput-boolean v3, v5, Lads_mobile_sdk/xg2;->h:Z

    iput v1, v5, Lads_mobile_sdk/xg2;->g:I

    const/16 v9, 0x8

    iput v9, v5, Lads_mobile_sdk/xg2;->k:I

    invoke-virtual {v15, v14, v8, v5}, Lads_mobile_sdk/ah2;->a(Lads_mobile_sdk/r31;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Boolean;

    move-result-object v8

    if-ne v8, v12, :cond_29

    goto/16 :goto_1e

    :cond_29
    move-object v10, v7

    move-object v9, v15

    move v7, v3

    move v3, v6

    .line 10402
    :goto_18
    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 10403
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 10405
    :cond_2a
    iget-object v6, v9, Lads_mobile_sdk/ah2;->b:Lads_mobile_sdk/ex0;

    invoke-virtual {v6}, Lads_mobile_sdk/ex0;->M()Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 10406
    iget-object v6, v9, Lads_mobile_sdk/ah2;->p:Lads_mobile_sdk/ap2;

    invoke-virtual {v6}, Lads_mobile_sdk/ap2;->g()V

    :cond_2b
    if-eqz v3, :cond_2c

    move v6, v2

    goto :goto_19

    :cond_2c
    const/4 v6, 0x0

    .line 10410
    :goto_19
    iput-object v9, v5, Lads_mobile_sdk/xg2;->a:Ljava/lang/Object;

    iput-object v14, v5, Lads_mobile_sdk/xg2;->b:Lads_mobile_sdk/r31;

    iput-object v4, v5, Lads_mobile_sdk/xg2;->c:Ljava/util/Map;

    iput-object v10, v5, Lads_mobile_sdk/xg2;->d:Ljava/lang/Object;

    iput v3, v5, Lads_mobile_sdk/xg2;->f:I

    iput-boolean v7, v5, Lads_mobile_sdk/xg2;->h:Z

    iput v1, v5, Lads_mobile_sdk/xg2;->g:I

    const/16 v8, 0x9

    iput v8, v5, Lads_mobile_sdk/xg2;->k:I

    move-object v8, v5

    move-object v5, v4

    move-object v4, v9

    move-object v9, v8

    move-object v8, v14

    invoke-virtual/range {v4 .. v9}, Lads_mobile_sdk/ah2;->a(Ljava/util/Map;ZZLads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v12, :cond_2d

    goto :goto_1e

    :cond_2d
    move-object/from16 v18, v4

    move v4, v3

    move v3, v7

    move-object/from16 v7, v18

    .line 10411
    :goto_1a
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 10418
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :cond_2e
    if-eqz v1, :cond_2f

    move v6, v2

    goto :goto_1b

    :cond_2f
    const/4 v6, 0x0

    :goto_1b
    if-eqz v4, :cond_30

    move/from16 v17, v2

    goto :goto_1c

    :cond_30
    const/16 v17, 0x0

    :goto_1c
    const/4 v13, 0x0

    .line 10420
    iput-object v13, v9, Lads_mobile_sdk/xg2;->a:Ljava/lang/Object;

    iput-object v13, v9, Lads_mobile_sdk/xg2;->b:Lads_mobile_sdk/r31;

    iput-object v13, v9, Lads_mobile_sdk/xg2;->c:Ljava/util/Map;

    iput-object v13, v9, Lads_mobile_sdk/xg2;->d:Ljava/lang/Object;

    const/16 v1, 0xa

    iput v1, v9, Lads_mobile_sdk/xg2;->k:I

    .line 10421
    iget-object v1, v7, Lads_mobile_sdk/ah2;->c:Lads_mobile_sdk/o21;

    .line 10422
    invoke-virtual {v1, v10}, Lads_mobile_sdk/o21;->a(Landroid/content/Intent;)Z

    move-result v1

    move-object v4, v7

    move-object v10, v8

    move-object v11, v9

    move/from16 v8, v17

    move v9, v3

    move v7, v6

    move v6, v1

    .line 10423
    invoke-virtual/range {v4 .. v11}, Lads_mobile_sdk/ah2;->a(Ljava/util/Map;ZZZZLads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_31

    goto :goto_1d

    :cond_31
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_1d
    if-ne v1, v12, :cond_32

    :goto_1e
    return-object v12

    .line 10424
    :cond_32
    :goto_1f
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 10425
    :cond_33
    :goto_20
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Action is missing from an open GMSG: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v11, 0x6

    const/4 v13, 0x0

    invoke-static {v1, v13, v11}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 10426
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public final a(Ljava/util/Map;ZZLads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p5

    .line 5205
    const-string v3, "HSDP service parameters missing."

    instance-of v4, v2, Lads_mobile_sdk/vg2;

    if-eqz v4, :cond_0

    move-object v4, v2

    check-cast v4, Lads_mobile_sdk/vg2;

    iget v5, v4, Lads_mobile_sdk/vg2;->i:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Lads_mobile_sdk/vg2;->i:I

    goto :goto_0

    :cond_0
    new-instance v4, Lads_mobile_sdk/vg2;

    invoke-direct {v4, v1, v2}, Lads_mobile_sdk/vg2;-><init>(Lads_mobile_sdk/ah2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v10, v4

    iget-object v2, v10, Lads_mobile_sdk/vg2;->g:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 5446
    iget v5, v10, Lads_mobile_sdk/vg2;->i:I

    const-string v11, "key"

    const/4 v13, 0x2

    const-string v14, "build(...)"

    const-string v15, "builder"

    const-string v6, "newBuilder(...)"

    const-string v8, "value"

    const/4 v9, 0x1

    if-eqz v5, :cond_4

    if-eq v5, v9, :cond_3

    if-eq v5, v13, :cond_2

    const/4 v0, 0x3

    if-ne v5, v0, :cond_1

    iget-object v3, v10, Lads_mobile_sdk/vg2;->c:Ljava/io/Closeable;

    iget-object v0, v10, Lads_mobile_sdk/vg2;->b:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lads_mobile_sdk/rr3;

    iget-object v5, v10, Lads_mobile_sdk/vg2;->a:Lads_mobile_sdk/ah2;

    :try_start_0
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v3

    move-object v2, v6

    move-object v3, v8

    move v0, v9

    const/16 v16, 0x0

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    goto/16 :goto_12

    :catch_0
    move-exception v0

    move-object v12, v4

    move-object v13, v5

    move-object v2, v6

    goto/16 :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5447
    :cond_2
    iget-boolean v0, v10, Lads_mobile_sdk/vg2;->e:Z

    iget-object v3, v10, Lads_mobile_sdk/vg2;->d:Ljava/io/Closeable;

    iget-object v5, v10, Lads_mobile_sdk/vg2;->c:Ljava/io/Closeable;

    check-cast v5, Lads_mobile_sdk/rr3;

    iget-object v13, v10, Lads_mobile_sdk/vg2;->b:Ljava/lang/Object;

    check-cast v13, Lads_mobile_sdk/r31;

    iget-object v7, v10, Lads_mobile_sdk/vg2;->a:Lads_mobile_sdk/ah2;

    :try_start_1
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v6

    move-object v12, v13

    const/16 v16, 0x0

    move v6, v0

    move-object v13, v7

    move v0, v9

    move-object v7, v3

    move-object v3, v8

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    goto/16 :goto_14

    :catch_1
    move-exception v0

    move-object v12, v5

    move-object v2, v6

    move-object v13, v7

    goto :goto_1

    .line 5448
    :cond_3
    iget-boolean v0, v10, Lads_mobile_sdk/vg2;->f:Z

    iget-boolean v3, v10, Lads_mobile_sdk/vg2;->e:Z

    iget-object v5, v10, Lads_mobile_sdk/vg2;->d:Ljava/io/Closeable;

    iget-object v7, v10, Lads_mobile_sdk/vg2;->c:Ljava/io/Closeable;

    check-cast v7, Lads_mobile_sdk/rr3;

    iget-object v12, v10, Lads_mobile_sdk/vg2;->b:Ljava/lang/Object;

    check-cast v12, Lads_mobile_sdk/r31;

    iget-object v13, v10, Lads_mobile_sdk/vg2;->a:Lads_mobile_sdk/ah2;

    :try_start_2
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v2, v5

    move v5, v3

    move-object v3, v8

    move-object v8, v7

    move-object v7, v2

    move-object v2, v6

    const/16 v16, 0x0

    move v6, v0

    move v0, v9

    goto/16 :goto_2

    :catchall_2
    move-exception v0

    move-object v3, v5

    move-object v4, v7

    goto/16 :goto_12

    :catch_2
    move-exception v0

    move-object v3, v5

    move-object v2, v6

    move-object v12, v7

    :goto_1
    move-object v5, v8

    const/4 v4, 0x0

    goto/16 :goto_e

    .line 5449
    :cond_4
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 5456
    iget-object v2, v1, Lads_mobile_sdk/ah2;->b:Lads_mobile_sdk/ex0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5458
    const-string v5, "gads:hsdp_service:enabled"

    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5474
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v12, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v2, v5, v7, v12}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 5475
    iget-object v2, v1, Lads_mobile_sdk/ah2;->m:Lads_mobile_sdk/i2;

    iget-object v2, v2, Lads_mobile_sdk/i2;->w0:Lads_mobile_sdk/uo2;

    if-eqz v2, :cond_18

    iget-boolean v2, v2, Lads_mobile_sdk/uo2;->d:Z

    if-ne v2, v9, :cond_18

    .line 5476
    const-string v2, "hf"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v5, "2"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 5477
    const-string v2, "hstp"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_18

    .line 5479
    sget-object v5, Lads_mobile_sdk/s11;->V1:Lads_mobile_sdk/s11;

    .line 6093
    sget-object v7, Lads_mobile_sdk/hs3;->a:Ljava/util/WeakHashMap;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v7

    invoke-static {v5, v7, v9}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v12

    .line 6094
    :try_start_3
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6095
    const-string v5, "hsr"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/lang/String;

    .line 6096
    const-string v5, "hseqp"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 6097
    const-string v13, "hsat"

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v13, "true"

    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    if-eqz v2, :cond_b

    if-eqz v7, :cond_b

    if-nez v5, :cond_5

    goto/16 :goto_a

    .line 6106
    :cond_5
    :try_start_4
    invoke-virtual {v1, v5}, Lads_mobile_sdk/ah2;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 6108
    iget-object v5, v1, Lads_mobile_sdk/ah2;->q:Lads_mobile_sdk/p61;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    :try_start_5
    iput-object v1, v10, Lads_mobile_sdk/vg2;->a:Lads_mobile_sdk/ah2;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    move-object/from16 v13, p4

    :try_start_6
    iput-object v13, v10, Lads_mobile_sdk/vg2;->b:Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    :try_start_7
    iput-object v12, v10, Lads_mobile_sdk/vg2;->c:Ljava/io/Closeable;

    iput-object v12, v10, Lads_mobile_sdk/vg2;->d:Ljava/io/Closeable;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    move/from16 v9, p2

    :try_start_8
    iput-boolean v9, v10, Lads_mobile_sdk/vg2;->e:Z

    move/from16 p1, v0

    move/from16 v0, p3

    iput-boolean v0, v10, Lads_mobile_sdk/vg2;->f:Z

    const/4 v0, 0x1

    iput v0, v10, Lads_mobile_sdk/vg2;->i:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    move-object v9, v6

    move-object v6, v2

    move-object v2, v9

    move-object v9, v8

    move-object v8, v3

    move-object v3, v9

    move/from16 v9, p1

    const/16 v16, 0x0

    :try_start_9
    invoke-virtual/range {v5 .. v10}, Lads_mobile_sdk/p61;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLads_mobile_sdk/vg2;)Ljava/lang/Object;

    move-result-object v5
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    if-ne v5, v4, :cond_6

    goto :goto_4

    :cond_6
    move/from16 v5, p2

    move/from16 v6, p3

    move-object v7, v12

    move-object v8, v7

    move-object v12, v13

    move-object v13, v1

    .line 6109
    :goto_2
    :try_start_a
    iget-object v9, v13, Lads_mobile_sdk/ah2;->b:Lads_mobile_sdk/ex0;

    invoke-virtual {v9}, Lads_mobile_sdk/ex0;->X()Z

    move-result v9

    if-eqz v9, :cond_7

    if-eqz v5, :cond_7

    .line 6110
    iget-object v5, v13, Lads_mobile_sdk/ah2;->e:Lads_mobile_sdk/v3;

    iput-object v13, v10, Lads_mobile_sdk/vg2;->a:Lads_mobile_sdk/ah2;

    iput-object v12, v10, Lads_mobile_sdk/vg2;->b:Ljava/lang/Object;

    iput-object v8, v10, Lads_mobile_sdk/vg2;->c:Ljava/io/Closeable;

    iput-object v7, v10, Lads_mobile_sdk/vg2;->d:Ljava/io/Closeable;

    iput-boolean v6, v10, Lads_mobile_sdk/vg2;->e:Z

    const/4 v9, 0x2

    iput v9, v10, Lads_mobile_sdk/vg2;->i:I

    invoke-virtual {v5, v10}, Lads_mobile_sdk/v3;->o(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    if-ne v5, v4, :cond_7

    goto :goto_4

    :cond_7
    move-object v5, v8

    :goto_3
    if-eqz v6, :cond_8

    .line 6111
    :try_start_b
    iget-object v6, v12, Lads_mobile_sdk/r31;->p:Lads_mobile_sdk/ay0;

    if-eqz v6, :cond_8

    .line 6112
    iput-object v13, v10, Lads_mobile_sdk/vg2;->a:Lads_mobile_sdk/ah2;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :try_start_c
    iput-object v5, v10, Lads_mobile_sdk/vg2;->b:Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    iput-object v7, v10, Lads_mobile_sdk/vg2;->c:Ljava/io/Closeable;

    const/4 v8, 0x0

    iput-object v8, v10, Lads_mobile_sdk/vg2;->d:Ljava/io/Closeable;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    const/4 v8, 0x3

    :try_start_e
    iput v8, v10, Lads_mobile_sdk/vg2;->i:I

    invoke-interface {v6, v10}, Lads_mobile_sdk/ay0;->a(Lkotlin/coroutines/Continuation;)Lkotlin/Unit;

    move-result-object v6
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    if-ne v6, v4, :cond_8

    :goto_4
    return-object v4

    :catchall_3
    move-exception v0

    move-object v3, v7

    goto/16 :goto_14

    :catchall_4
    move-exception v0

    move-object v12, v5

    move-object v3, v7

    goto/16 :goto_15

    :catch_3
    move-exception v0

    move-object v12, v5

    :goto_5
    move/from16 v4, v16

    move-object v5, v3

    move-object v3, v7

    goto/16 :goto_e

    :cond_8
    move-object v4, v5

    move-object v5, v13

    .line 6113
    :goto_6
    :try_start_f
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v6

    .line 6114
    iget-object v6, v6, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-eqz v6, :cond_9

    .line 6115
    invoke-virtual {v6}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v6

    goto :goto_7

    :catchall_5
    move-exception v0

    goto/16 :goto_13

    :cond_9
    const/4 v6, 0x0

    :goto_7
    if-nez v6, :cond_a

    goto :goto_8

    .line 6714
    :cond_a
    invoke-static {}, Lads_mobile_sdk/u61;->v()Lads_mobile_sdk/s61;

    move-result-object v8

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6715
    invoke-static {v8, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6716
    sget-object v9, Lads_mobile_sdk/t61;->d:Lads_mobile_sdk/t61;

    .line 6717
    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6762
    invoke-virtual {v8, v9}, Lads_mobile_sdk/s61;->a(Lads_mobile_sdk/t61;)Lads_mobile_sdk/s61;

    .line 6763
    invoke-virtual {v8}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v8

    invoke-static {v8, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Lads_mobile_sdk/u61;

    .line 6764
    iput-object v8, v6, Lads_mobile_sdk/uj2;->I:Lads_mobile_sdk/u61;

    .line 6767
    :goto_8
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catch_4
    move-exception v0

    move-object v12, v4

    move-object v13, v5

    goto :goto_5

    :catchall_6
    move-exception v0

    move-object v12, v8

    goto/16 :goto_16

    :catch_5
    move-exception v0

    move-object v5, v3

    move-object v3, v7

    move-object v12, v8

    move/from16 v4, v16

    goto/16 :goto_e

    :catch_6
    move-exception v0

    goto :goto_9

    :catch_7
    move-exception v0

    move-object v2, v6

    move-object v3, v8

    const/16 v16, 0x0

    goto :goto_9

    :catch_8
    move-exception v0

    move-object v2, v6

    move-object v3, v8

    const/16 v16, 0x0

    :goto_9
    move-object v5, v3

    move/from16 v4, v16

    goto :goto_d

    :cond_b
    :goto_a
    move-object v2, v6

    move-object v5, v8

    const/4 v4, 0x0

    .line 6768
    :try_start_10
    sget-object v0, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    const/4 v8, 0x0

    .line 6769
    invoke-static {v3, v8}, Lads_mobile_sdk/f01;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6770
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v0

    .line 6771
    iget-object v0, v0, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-eqz v0, :cond_c

    .line 6772
    invoke-virtual {v0}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v8

    goto :goto_b

    :cond_c
    const/4 v8, 0x0

    :goto_b
    if-nez v8, :cond_d

    goto :goto_c

    .line 7383
    :cond_d
    invoke-static {}, Lads_mobile_sdk/u61;->v()Lads_mobile_sdk/s61;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7384
    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7385
    sget-object v6, Lads_mobile_sdk/t61;->d:Lads_mobile_sdk/t61;

    .line 7386
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7431
    invoke-virtual {v0, v6}, Lads_mobile_sdk/s61;->a(Lads_mobile_sdk/t61;)Lads_mobile_sdk/s61;

    .line 7433
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7502
    invoke-virtual {v0, v3}, Lads_mobile_sdk/s61;->a(Ljava/lang/String;)Lads_mobile_sdk/s61;

    .line 7503
    invoke-virtual {v0}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v0

    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lads_mobile_sdk/u61;

    .line 7504
    iput-object v0, v8, Lads_mobile_sdk/uj2;->I:Lads_mobile_sdk/u61;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_9
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    :goto_c
    move-object v3, v12

    goto/16 :goto_11

    :catch_9
    move-exception v0

    goto :goto_d

    :catchall_7
    move-exception v0

    move-object v7, v12

    goto/16 :goto_16

    :catch_a
    move-exception v0

    move-object v2, v6

    move-object v5, v8

    const/4 v4, 0x0

    :goto_d
    move-object v13, v1

    move-object v3, v12

    .line 7505
    :goto_e
    :try_start_11
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v6

    .line 7506
    iget-object v6, v6, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    if-eqz v6, :cond_e

    .line 7507
    :try_start_12
    invoke-virtual {v6}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v8

    goto :goto_f

    :catchall_8
    move-exception v0

    move-object v5, v12

    goto/16 :goto_14

    :cond_e
    const/4 v8, 0x0

    :goto_f
    if-nez v8, :cond_f

    goto :goto_10

    .line 8102
    :cond_f
    invoke-static {}, Lads_mobile_sdk/u61;->v()Lads_mobile_sdk/s61;

    move-result-object v6

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    .line 8103
    :try_start_13
    invoke-static {v6, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    .line 8104
    :try_start_14
    sget-object v2, Lads_mobile_sdk/t61;->d:Lads_mobile_sdk/t61;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    .line 8105
    :try_start_15
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8150
    invoke-virtual {v6, v2}, Lads_mobile_sdk/s61;->a(Lads_mobile_sdk/t61;)Lads_mobile_sdk/s61;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    .line 8151
    :try_start_16
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_10

    const-string v2, ""
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    .line 8152
    :cond_10
    :try_start_17
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8221
    invoke-virtual {v6, v2}, Lads_mobile_sdk/s61;->a(Ljava/lang/String;)Lads_mobile_sdk/s61;

    .line 8222
    invoke-virtual {v6}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v2

    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lads_mobile_sdk/u61;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    .line 8223
    :try_start_18
    iput-object v2, v8, Lads_mobile_sdk/uj2;->I:Lads_mobile_sdk/u61;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    .line 8224
    :goto_10
    :try_start_19
    const-string v2, "exception"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8225
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v2

    .line 8228
    invoke-virtual {v2}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v5

    iput-boolean v4, v5, Lads_mobile_sdk/uj2;->m:Z

    .line 8229
    invoke-virtual {v2, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_a

    .line 8230
    :try_start_1a
    iget-object v2, v13, Lads_mobile_sdk/ah2;->b:Lads_mobile_sdk/ex0;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    :try_start_1b
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8231
    const-string v5, "gads:hsdp_unsampled_crash_reporting:enabled"

    .line 8232
    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8248
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v7, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v2, v5, v6, v7}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_a

    if-eqz v2, :cond_11

    .line 8249
    :try_start_1c
    iget-object v2, v13, Lads_mobile_sdk/ah2;->r:Lads_mobile_sdk/ur3;

    const-string v5, "HsdpServiceUnsampled.open"
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_8

    :try_start_1d
    check-cast v2, Lads_mobile_sdk/as3;

    invoke-virtual {v2, v5, v0}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_a

    goto :goto_11

    .line 8251
    :cond_11
    :try_start_1e
    iget-object v2, v13, Lads_mobile_sdk/ah2;->r:Lads_mobile_sdk/ur3;

    const-string v5, "HsdpService.open"
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_8

    :try_start_1f
    check-cast v2, Lads_mobile_sdk/as3;

    invoke-virtual {v2, v5, v0}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_a

    .line 8254
    :goto_11
    :try_start_20
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 8840
    instance-of v2, v0, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_12

    .line 8841
    check-cast v0, Lads_mobile_sdk/i01;

    .line 8842
    invoke-static {v0, v4}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_9

    :cond_12
    const/4 v8, 0x0

    .line 8843
    invoke-static {v3, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_17

    :catchall_9
    move-exception v0

    move-object v4, v12

    :goto_12
    move-object v7, v3

    :goto_13
    move-object v12, v4

    goto :goto_16

    :goto_14
    move-object v7, v3

    move-object v12, v5

    goto :goto_16

    :catchall_a
    move-exception v0

    :goto_15
    move-object v7, v3

    .line 8857
    :goto_16
    :try_start_21
    invoke-virtual {v12, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 8861
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_17

    .line 8863
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_13

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_13

    .line 8869
    invoke-virtual {v12, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 8875
    :cond_13
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_16

    .line 8876
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_15

    .line 8877
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_14

    throw v0

    .line 8878
    :cond_14
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 8879
    :cond_15
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 8880
    :cond_16
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 8881
    :cond_17
    throw v0
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_b

    :catchall_b
    move-exception v0

    move-object v2, v0

    .line 8882
    :try_start_22
    throw v2
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_c

    :catchall_c
    move-exception v0

    invoke-static {v7, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_18
    const/4 v4, 0x0

    .line 8883
    :goto_17
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/Map;ZZZLads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    .line 3868
    instance-of v3, v2, Lads_mobile_sdk/sg2;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lads_mobile_sdk/sg2;

    iget v4, v3, Lads_mobile_sdk/sg2;->m:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lads_mobile_sdk/sg2;->m:I

    goto :goto_0

    :cond_0
    new-instance v3, Lads_mobile_sdk/sg2;

    invoke-direct {v3, v0, v2}, Lads_mobile_sdk/sg2;-><init>(Lads_mobile_sdk/ah2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v11, v3

    iget-object v2, v11, Lads_mobile_sdk/sg2;->k:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 4493
    iget v4, v11, Lads_mobile_sdk/sg2;->m:I

    const/4 v5, 0x6

    const/4 v6, 0x0

    packed-switch v4, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_1
    iget-boolean v1, v11, Lads_mobile_sdk/sg2;->j:Z

    iget-boolean v4, v11, Lads_mobile_sdk/sg2;->i:Z

    iget-boolean v7, v11, Lads_mobile_sdk/sg2;->h:Z

    iget-object v8, v11, Lads_mobile_sdk/sg2;->c:Lads_mobile_sdk/r31;

    iget-object v9, v11, Lads_mobile_sdk/sg2;->b:Ljava/util/Map;

    iget-object v10, v11, Lads_mobile_sdk/sg2;->a:Lads_mobile_sdk/ah2;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v8

    move v8, v4

    move-object v4, v10

    move-object v10, v2

    move-object v2, v6

    move-object v5, v9

    :goto_1
    move v9, v1

    goto/16 :goto_7

    :pswitch_2
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_3
    iget-boolean v1, v11, Lads_mobile_sdk/sg2;->j:Z

    iget-boolean v4, v11, Lads_mobile_sdk/sg2;->i:Z

    iget-boolean v5, v11, Lads_mobile_sdk/sg2;->h:Z

    iget-object v7, v11, Lads_mobile_sdk/sg2;->c:Lads_mobile_sdk/r31;

    iget-object v8, v11, Lads_mobile_sdk/sg2;->b:Ljava/util/Map;

    iget-object v9, v11, Lads_mobile_sdk/sg2;->a:Lads_mobile_sdk/ah2;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v6

    move-object v10, v7

    move v7, v5

    move-object v5, v8

    move v8, v4

    move-object v4, v9

    :goto_2
    move v9, v1

    goto/16 :goto_5

    :pswitch_4
    iget-boolean v1, v11, Lads_mobile_sdk/sg2;->j:Z

    iget-boolean v4, v11, Lads_mobile_sdk/sg2;->i:Z

    iget-boolean v7, v11, Lads_mobile_sdk/sg2;->h:Z

    iget-object v8, v11, Lads_mobile_sdk/sg2;->g:Ljava/lang/String;

    iget-object v9, v11, Lads_mobile_sdk/sg2;->f:Landroid/net/Uri;

    iget-object v10, v11, Lads_mobile_sdk/sg2;->e:Landroid/app/Activity;

    iget-object v12, v11, Lads_mobile_sdk/sg2;->d:Ljava/lang/String;

    iget-object v13, v11, Lads_mobile_sdk/sg2;->c:Lads_mobile_sdk/r31;

    iget-object v14, v11, Lads_mobile_sdk/sg2;->b:Ljava/util/Map;

    iget-object v15, v11, Lads_mobile_sdk/sg2;->a:Lads_mobile_sdk/ah2;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v16, v15

    move-object v15, v9

    move-object v9, v12

    move-object/from16 v12, v16

    move-object/from16 v16, v8

    move-object v8, v13

    move-object/from16 v17, v14

    move-object v14, v10

    goto/16 :goto_4

    :pswitch_5
    iget-boolean v1, v11, Lads_mobile_sdk/sg2;->j:Z

    iget-boolean v4, v11, Lads_mobile_sdk/sg2;->i:Z

    iget-boolean v7, v11, Lads_mobile_sdk/sg2;->h:Z

    iget-object v8, v11, Lads_mobile_sdk/sg2;->e:Landroid/app/Activity;

    iget-object v9, v11, Lads_mobile_sdk/sg2;->d:Ljava/lang/String;

    iget-object v10, v11, Lads_mobile_sdk/sg2;->c:Lads_mobile_sdk/r31;

    iget-object v12, v11, Lads_mobile_sdk/sg2;->b:Ljava/util/Map;

    iget-object v13, v11, Lads_mobile_sdk/sg2;->a:Lads_mobile_sdk/ah2;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v15, v1

    move v14, v4

    move-object v4, v8

    move-object v1, v13

    move v13, v7

    goto :goto_3

    :pswitch_6
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4500
    const-string v2, "u"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_e

    .line 4501
    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_a

    .line 4507
    :cond_1
    iget-object v4, v0, Lads_mobile_sdk/ah2;->f:Lads_mobile_sdk/f0;

    invoke-virtual {v4}, Lads_mobile_sdk/f0;->g()Landroid/app/Activity;

    move-result-object v4

    if-nez v4, :cond_2

    .line 4508
    const-string v1, "Chrome Custom Tabs can only be launched from an Activity context."

    invoke-static {v1, v6, v5}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 4515
    :cond_2
    iget-object v7, v0, Lads_mobile_sdk/ah2;->l:Lads_mobile_sdk/qs0;

    .line 4792
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 4793
    sget-object v9, Lads_mobile_sdk/is0;->b:Lads_mobile_sdk/is0;

    .line 4794
    iget-object v10, v0, Lads_mobile_sdk/ah2;->m:Lads_mobile_sdk/i2;

    iget-object v10, v10, Lads_mobile_sdk/i2;->q:Landroid/os/Bundle;

    .line 4795
    iput-object v0, v11, Lads_mobile_sdk/sg2;->a:Lads_mobile_sdk/ah2;

    iput-object v1, v11, Lads_mobile_sdk/sg2;->b:Ljava/util/Map;

    move-object/from16 v12, p5

    iput-object v12, v11, Lads_mobile_sdk/sg2;->c:Lads_mobile_sdk/r31;

    iput-object v2, v11, Lads_mobile_sdk/sg2;->d:Ljava/lang/String;

    iput-object v4, v11, Lads_mobile_sdk/sg2;->e:Landroid/app/Activity;

    move/from16 v13, p2

    iput-boolean v13, v11, Lads_mobile_sdk/sg2;->h:Z

    move/from16 v14, p3

    iput-boolean v14, v11, Lads_mobile_sdk/sg2;->i:Z

    move/from16 v15, p4

    iput-boolean v15, v11, Lads_mobile_sdk/sg2;->j:Z

    const/4 v5, 0x1

    iput v5, v11, Lads_mobile_sdk/sg2;->m:I

    invoke-virtual {v7, v8, v9, v10, v11}, Lads_mobile_sdk/qs0;->a(Landroid/net/Uri;Lads_mobile_sdk/is0;Landroid/os/Bundle;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_3

    goto/16 :goto_8

    :cond_3
    move-object v9, v2

    move-object v2, v5

    move-object v10, v12

    move-object v12, v1

    move-object v1, v0

    .line 4796
    :goto_3
    check-cast v2, Landroid/net/Uri;

    .line 4824
    iget-object v5, v1, Lads_mobile_sdk/ah2;->d:Lads_mobile_sdk/rb;

    invoke-virtual {v5, v2, v10}, Lads_mobile_sdk/rb;->a(Landroid/net/Uri;Landroid/view/View;)Landroid/net/Uri;

    move-result-object v2

    .line 4825
    invoke-static {v4, v6}, Landroidx/browser/customtabs/CustomTabsClient;->getPackageName(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_4

    .line 4827
    const-string v1, "Unable to get package name for Custom Tabs."

    const/4 v2, 0x6

    invoke-static {v1, v6, v2}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 4828
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 4831
    :cond_4
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v1, v11, Lads_mobile_sdk/sg2;->a:Lads_mobile_sdk/ah2;

    iput-object v12, v11, Lads_mobile_sdk/sg2;->b:Ljava/util/Map;

    iput-object v10, v11, Lads_mobile_sdk/sg2;->c:Lads_mobile_sdk/r31;

    iput-object v9, v11, Lads_mobile_sdk/sg2;->d:Ljava/lang/String;

    iput-object v4, v11, Lads_mobile_sdk/sg2;->e:Landroid/app/Activity;

    iput-object v2, v11, Lads_mobile_sdk/sg2;->f:Landroid/net/Uri;

    iput-object v8, v11, Lads_mobile_sdk/sg2;->g:Ljava/lang/String;

    iput-boolean v13, v11, Lads_mobile_sdk/sg2;->h:Z

    iput-boolean v14, v11, Lads_mobile_sdk/sg2;->i:Z

    iput-boolean v15, v11, Lads_mobile_sdk/sg2;->j:Z

    const/4 v7, 0x2

    iput v7, v11, Lads_mobile_sdk/sg2;->m:I

    invoke-virtual {v1, v10, v5, v11}, Lads_mobile_sdk/ah2;->a(Lads_mobile_sdk/r31;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Boolean;

    move-result-object v5

    if-ne v5, v3, :cond_5

    goto/16 :goto_8

    :cond_5
    move v7, v14

    move-object v14, v4

    move v4, v7

    move-object/from16 v16, v8

    move-object v8, v10

    move-object/from16 v17, v12

    move v7, v13

    move-object v12, v1

    move v1, v15

    move-object v15, v2

    move-object v2, v5

    .line 4832
    :goto_4
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4833
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 4836
    :cond_6
    iget-object v2, v12, Lads_mobile_sdk/ah2;->b:Lads_mobile_sdk/ex0;

    invoke-virtual {v2}, Lads_mobile_sdk/ex0;->I()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 4838
    iget-object v2, v12, Lads_mobile_sdk/ah2;->k:Lads_mobile_sdk/zc0;

    .line 4839
    iget-object v5, v2, Lads_mobile_sdk/zc0;->e:Landroidx/browser/customtabs/CustomTabsSession;

    if-nez v5, :cond_7

    .line 4840
    iget-object v5, v2, Lads_mobile_sdk/zc0;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance v10, Lads_mobile_sdk/wc0;

    invoke-direct {v10, v2, v6}, Lads_mobile_sdk/wc0;-><init>(Lads_mobile_sdk/zc0;Lkotlin/coroutines/Continuation;)V

    .line 4841
    sget-object v13, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 4842
    const-string v6, "<this>"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "context"

    invoke-static {v13, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "block"

    invoke-static {v10, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5100
    new-instance v6, Lads_mobile_sdk/ws3;

    const/4 v0, 0x0

    invoke-direct {v6, v10, v0}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x2

    const/4 v10, 0x0

    const/16 v18, 0x0

    move/from16 p5, v0

    move-object/from16 p1, v5

    move-object/from16 p4, v6

    move-object/from16 p6, v10

    move-object/from16 p2, v13

    move-object/from16 p3, v18

    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 5101
    :cond_7
    iget-object v13, v2, Lads_mobile_sdk/zc0;->e:Landroidx/browser/customtabs/CustomTabsSession;

    .line 5102
    invoke-virtual/range {v12 .. v17}, Lads_mobile_sdk/ah2;->a(Landroidx/browser/customtabs/CustomTabsSession;Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V

    move-object v13, v12

    move-object/from16 v12, v17

    .line 5109
    iget-object v0, v13, Lads_mobile_sdk/ah2;->n:Lads_mobile_sdk/s93;

    iput-object v13, v11, Lads_mobile_sdk/sg2;->a:Lads_mobile_sdk/ah2;

    iput-object v12, v11, Lads_mobile_sdk/sg2;->b:Ljava/util/Map;

    iput-object v8, v11, Lads_mobile_sdk/sg2;->c:Lads_mobile_sdk/r31;

    const/4 v2, 0x0

    iput-object v2, v11, Lads_mobile_sdk/sg2;->d:Ljava/lang/String;

    iput-object v2, v11, Lads_mobile_sdk/sg2;->e:Landroid/app/Activity;

    iput-object v2, v11, Lads_mobile_sdk/sg2;->f:Landroid/net/Uri;

    iput-object v2, v11, Lads_mobile_sdk/sg2;->g:Ljava/lang/String;

    iput-boolean v7, v11, Lads_mobile_sdk/sg2;->h:Z

    iput-boolean v4, v11, Lads_mobile_sdk/sg2;->i:Z

    iput-boolean v1, v11, Lads_mobile_sdk/sg2;->j:Z

    const/4 v5, 0x3

    iput v5, v11, Lads_mobile_sdk/sg2;->m:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5110
    invoke-static {v0, v9, v11}, Lads_mobile_sdk/s93;->a(Lads_mobile_sdk/s93;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_8

    goto/16 :goto_8

    :cond_8
    move-object v10, v8

    move-object v5, v12

    move v8, v4

    move-object v4, v13

    goto/16 :goto_2

    .line 5111
    :goto_5
    iput-object v2, v11, Lads_mobile_sdk/sg2;->a:Lads_mobile_sdk/ah2;

    iput-object v2, v11, Lads_mobile_sdk/sg2;->b:Ljava/util/Map;

    iput-object v2, v11, Lads_mobile_sdk/sg2;->c:Lads_mobile_sdk/r31;

    const/4 v0, 0x4

    iput v0, v11, Lads_mobile_sdk/sg2;->m:I

    const/4 v6, 0x1

    invoke-virtual/range {v4 .. v11}, Lads_mobile_sdk/ah2;->a(Ljava/util/Map;ZZZZLads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_9

    goto :goto_8

    .line 5158
    :cond_9
    :goto_6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_a
    move-object v13, v12

    move-object/from16 v12, v17

    .line 5159
    iget-object v0, v13, Lads_mobile_sdk/ah2;->b:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Lads_mobile_sdk/ex0;->J()Z

    move-result v0

    if-eqz v0, :cond_d

    move-object/from16 v17, v12

    .line 5161
    new-instance v12, Lads_mobile_sdk/ug2;

    invoke-direct/range {v12 .. v17}, Lads_mobile_sdk/ug2;-><init>(Lads_mobile_sdk/ah2;Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V

    move-object v2, v12

    move-object/from16 v0, v16

    move-object/from16 v12, v17

    .line 5185
    invoke-static {v14, v0, v2}, Landroidx/browser/customtabs/CustomTabsClient;->bindCustomTabsService(Landroid/content/Context;Ljava/lang/String;Landroidx/browser/customtabs/CustomTabsServiceConnection;)Z

    .line 5186
    iget-object v0, v13, Lads_mobile_sdk/ah2;->n:Lads_mobile_sdk/s93;

    iput-object v13, v11, Lads_mobile_sdk/sg2;->a:Lads_mobile_sdk/ah2;

    iput-object v12, v11, Lads_mobile_sdk/sg2;->b:Ljava/util/Map;

    iput-object v8, v11, Lads_mobile_sdk/sg2;->c:Lads_mobile_sdk/r31;

    const/4 v2, 0x0

    iput-object v2, v11, Lads_mobile_sdk/sg2;->d:Ljava/lang/String;

    iput-object v2, v11, Lads_mobile_sdk/sg2;->e:Landroid/app/Activity;

    iput-object v2, v11, Lads_mobile_sdk/sg2;->f:Landroid/net/Uri;

    iput-object v2, v11, Lads_mobile_sdk/sg2;->g:Ljava/lang/String;

    iput-boolean v7, v11, Lads_mobile_sdk/sg2;->h:Z

    iput-boolean v4, v11, Lads_mobile_sdk/sg2;->i:Z

    iput-boolean v1, v11, Lads_mobile_sdk/sg2;->j:Z

    const/4 v5, 0x5

    iput v5, v11, Lads_mobile_sdk/sg2;->m:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5187
    invoke-static {v0, v9, v11}, Lads_mobile_sdk/s93;->a(Lads_mobile_sdk/s93;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_b

    goto :goto_8

    :cond_b
    move-object v10, v8

    move-object v5, v12

    move v8, v4

    move-object v4, v13

    goto/16 :goto_1

    .line 5188
    :goto_7
    iput-object v2, v11, Lads_mobile_sdk/sg2;->a:Lads_mobile_sdk/ah2;

    iput-object v2, v11, Lads_mobile_sdk/sg2;->b:Ljava/util/Map;

    iput-object v2, v11, Lads_mobile_sdk/sg2;->c:Lads_mobile_sdk/r31;

    const/4 v0, 0x6

    iput v0, v11, Lads_mobile_sdk/sg2;->m:I

    const/4 v6, 0x1

    invoke-virtual/range {v4 .. v11}, Lads_mobile_sdk/ah2;->a(Ljava/util/Map;ZZZZLads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_c

    :goto_8
    return-object v3

    .line 5199
    :cond_c
    :goto_9
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_d
    const/4 v0, 0x6

    const/4 v2, 0x0

    .line 5200
    const-string v1, "launchCustomTabs invoked when neither experiment arm is enabled."

    invoke-static {v1, v2, v0}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 5202
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_e
    :goto_a
    move v0, v5

    move-object v2, v6

    .line 5203
    const-string v1, "Blank URL for browser open GMSG."

    invoke-static {v1, v2, v0}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 5204
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

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
.end method

.method public final a(Ljava/util/Map;ZZZZLads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    .line 10427
    instance-of v0, p7, Lads_mobile_sdk/yg2;

    if-eqz v0, :cond_0

    move-object v0, p7

    check-cast v0, Lads_mobile_sdk/yg2;

    iget v1, v0, Lads_mobile_sdk/yg2;->h:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/yg2;->h:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/yg2;

    invoke-direct {v0, p0, p7}, Lads_mobile_sdk/yg2;-><init>(Lads_mobile_sdk/ah2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p7, v0, Lads_mobile_sdk/yg2;->f:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 11195
    iget v2, v0, Lads_mobile_sdk/yg2;->h:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p7}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-boolean p1, v0, Lads_mobile_sdk/yg2;->d:Z

    iget-boolean p2, v0, Lads_mobile_sdk/yg2;->c:Z

    iget-object p3, v0, Lads_mobile_sdk/yg2;->b:Lads_mobile_sdk/r31;

    iget-object p4, v0, Lads_mobile_sdk/yg2;->a:Ljava/util/Map;

    invoke-static {p7}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-boolean p5, v0, Lads_mobile_sdk/yg2;->e:Z

    iget-boolean p3, v0, Lads_mobile_sdk/yg2;->d:Z

    iget-boolean p2, v0, Lads_mobile_sdk/yg2;->c:Z

    iget-object p6, v0, Lads_mobile_sdk/yg2;->b:Lads_mobile_sdk/r31;

    iget-object p1, v0, Lads_mobile_sdk/yg2;->a:Ljava/util/Map;

    invoke-static {p7}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p7}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    if-eqz p2, :cond_5

    if-eqz p4, :cond_5

    .line 11204
    iget-object p4, p0, Lads_mobile_sdk/ah2;->e:Lads_mobile_sdk/v3;

    iput-object p1, v0, Lads_mobile_sdk/yg2;->a:Ljava/util/Map;

    iput-object p6, v0, Lads_mobile_sdk/yg2;->b:Lads_mobile_sdk/r31;

    iput-boolean p2, v0, Lads_mobile_sdk/yg2;->c:Z

    iput-boolean p3, v0, Lads_mobile_sdk/yg2;->d:Z

    iput-boolean p5, v0, Lads_mobile_sdk/yg2;->e:Z

    iput v5, v0, Lads_mobile_sdk/yg2;->h:I

    invoke-virtual {p4, v0}, Lads_mobile_sdk/v3;->o(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_5

    goto :goto_3

    :cond_5
    :goto_1
    if-eqz p2, :cond_6

    if-eqz p5, :cond_6

    .line 11205
    iget-object p4, p6, Lads_mobile_sdk/r31;->p:Lads_mobile_sdk/ay0;

    if-eqz p4, :cond_6

    .line 11206
    iput-object p1, v0, Lads_mobile_sdk/yg2;->a:Ljava/util/Map;

    iput-object p6, v0, Lads_mobile_sdk/yg2;->b:Lads_mobile_sdk/r31;

    iput-boolean p2, v0, Lads_mobile_sdk/yg2;->c:Z

    iput-boolean p3, v0, Lads_mobile_sdk/yg2;->d:Z

    iput v4, v0, Lads_mobile_sdk/yg2;->h:I

    invoke-interface {p4, v0}, Lads_mobile_sdk/ay0;->a(Lkotlin/coroutines/Continuation;)Lkotlin/Unit;

    move-result-object p4

    if-ne p4, v1, :cond_6

    goto :goto_3

    :cond_6
    move-object p4, p1

    move p1, p3

    move-object p3, p6

    :goto_2
    if-eqz p1, :cond_8

    .line 11212
    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    const-string p5, "event_id"

    invoke-interface {p4, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p4, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 p2, 0x0

    .line 11213
    iput-object p2, v0, Lads_mobile_sdk/yg2;->a:Ljava/util/Map;

    iput-object p2, v0, Lads_mobile_sdk/yg2;->b:Lads_mobile_sdk/r31;

    iput v3, v0, Lads_mobile_sdk/yg2;->h:I

    const-string p2, "openIntentAsync"

    invoke-virtual {p3, p1, p2, v0}, Lads_mobile_sdk/r31;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    :goto_3
    return-object v1

    .line 11218
    :cond_7
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_8
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(Landroidx/browser/customtabs/CustomTabsSession;Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4

    .line 730
    new-instance v0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {v0, p1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>(Landroidx/browser/customtabs/CustomTabsSession;)V

    .line 731
    iget-object p1, p0, Lads_mobile_sdk/ah2;->b:Lads_mobile_sdk/ex0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 733
    const-string v1, "key"

    const-string v2, "gads:cct_v2_partial_custom_tab_config:enabled"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 749
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v3, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {p1, v2, v1, v3}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 750
    :cond_0
    const-string p1, "cct_init_h"

    invoke-interface {p5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 751
    const-string v1, "cct_bp"

    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 752
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_2

    .line 753
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setInitialActivityHeightPx(I)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    :cond_2
    :goto_0
    if-eqz p5, :cond_4

    .line 767
    invoke-static {p5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    .line 768
    :cond_3
    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_4

    .line 769
    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x2

    if-gt p1, v1, :cond_4

    .line 771
    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setCloseButtonPosition(I)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 772
    :cond_4
    :goto_1
    invoke-virtual {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object p1

    const-string p5, "build(...)"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 773
    iget-object p5, p1, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    invoke-virtual {p5, p4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 774
    invoke-virtual {p1, p2, p3}, Landroidx/browser/customtabs/CustomTabsIntent;->launchUrl(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public final b(Lads_mobile_sdk/r31;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11

    .line 1
    instance-of v0, p3, Lads_mobile_sdk/rg2;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/rg2;

    iget v1, v0, Lads_mobile_sdk/rg2;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/rg2;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/rg2;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/rg2;-><init>(Lads_mobile_sdk/ah2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lads_mobile_sdk/rg2;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 2
    iget v2, v0, Lads_mobile_sdk/rg2;->f:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Lads_mobile_sdk/rg2;->c:Lads_mobile_sdk/r31;

    iget-object p2, v0, Lads_mobile_sdk/rg2;->b:Ljava/util/Map;

    iget-object v0, v0, Lads_mobile_sdk/rg2;->a:Lads_mobile_sdk/ah2;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6
    const-string p3, "u"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-eqz p3, :cond_f

    .line 7
    invoke-static {p3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_5

    .line 15
    :cond_3
    iget-object v2, p0, Lads_mobile_sdk/ah2;->l:Lads_mobile_sdk/qs0;

    .line 560
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 561
    sget-object v5, Lads_mobile_sdk/is0;->b:Lads_mobile_sdk/is0;

    .line 562
    iget-object v6, p0, Lads_mobile_sdk/ah2;->m:Lads_mobile_sdk/i2;

    iget-object v6, v6, Lads_mobile_sdk/i2;->q:Landroid/os/Bundle;

    .line 563
    iput-object p0, v0, Lads_mobile_sdk/rg2;->a:Lads_mobile_sdk/ah2;

    iput-object p2, v0, Lads_mobile_sdk/rg2;->b:Ljava/util/Map;

    iput-object p1, v0, Lads_mobile_sdk/rg2;->c:Lads_mobile_sdk/r31;

    iput v4, v0, Lads_mobile_sdk/rg2;->f:I

    invoke-virtual {v2, p3, v5, v6, v0}, Lads_mobile_sdk/qs0;->a(Landroid/net/Uri;Lads_mobile_sdk/is0;Landroid/os/Bundle;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_4
    move-object v0, p0

    .line 564
    :goto_1
    check-cast p3, Landroid/net/Uri;

    .line 583
    iget-object v1, v0, Lads_mobile_sdk/ah2;->d:Lads_mobile_sdk/rb;

    invoke-virtual {v1, p3, p1}, Lads_mobile_sdk/rb;->a(Landroid/net/Uri;Landroid/view/View;)Landroid/net/Uri;

    move-result-object p1

    .line 584
    new-instance p3, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    .line 585
    invoke-virtual {p3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 586
    invoke-virtual {p3, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 587
    invoke-virtual {p3, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 588
    iget-object v5, v0, Lads_mobile_sdk/ah2;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/high16 v6, 0x10000

    invoke-virtual {v5, p3, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    const-string v7, "queryIntentActivities(...)"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 589
    invoke-virtual {v0, p3, v5}, Lads_mobile_sdk/ah2;->a(Landroid/content/Intent;Ljava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 590
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 591
    iget-object p2, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p3, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p1

    .line 592
    :cond_5
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    const-string v9, "http"

    invoke-static {v9, v8, v4}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    const-string v10, "https"

    if-eqz v8, :cond_6

    .line 593
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1, v10}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    goto :goto_2

    .line 594
    :cond_6
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8, v4}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 595
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1, v9}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 600
    :goto_2
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 601
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 602
    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 603
    invoke-virtual {v4, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 604
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 605
    iget-object p1, v0, Lads_mobile_sdk/ah2;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, v4, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 606
    invoke-virtual {v0, v4, p1}, Lads_mobile_sdk/ah2;->a(Landroid/content/Intent;Ljava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 607
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 608
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 609
    iget-object p1, v0, Lads_mobile_sdk/ah2;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, v1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 610
    invoke-virtual {v0, v1, p1}, Lads_mobile_sdk/ah2;->a(Landroid/content/Intent;Ljava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_7

    return-object v1

    .line 611
    :cond_7
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    goto/16 :goto_4

    .line 615
    :cond_8
    const-string p1, "use_running_process"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 617
    iget-object p1, v0, Lads_mobile_sdk/ah2;->a:Landroid/content/Context;

    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    .line 618
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p1

    .line 1125
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 1126
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1631
    instance-of v4, p1, Ljava/util/Collection;

    if-eqz v4, :cond_a

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_3

    .line 1632
    :cond_a
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1633
    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    move-object v3, v1

    .line 1634
    :cond_c
    check-cast v3, Landroid/content/pm/ResolveInfo;

    if-eqz v3, :cond_d

    .line 1635
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1636
    iget-object p2, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p3, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p1

    .line 1637
    :cond_d
    const-string p1, "use_first_package"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x0

    .line 1638
    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "get(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 1639
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1640
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p3, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p2

    :cond_e
    :goto_4
    return-object p3

    .line 1641
    :cond_f
    :goto_5
    const-string p1, "Blank URL for browser open GMSG."

    const/4 p2, 0x6

    invoke-static {p1, v3, p2}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    return-object v3
.end method

.method public final b(Ljava/util/Map;ZZLads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    .line 2465
    instance-of v3, v2, Lads_mobile_sdk/zg2;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lads_mobile_sdk/zg2;

    iget v4, v3, Lads_mobile_sdk/zg2;->m:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lads_mobile_sdk/zg2;->m:I

    goto :goto_0

    :cond_0
    new-instance v3, Lads_mobile_sdk/zg2;

    invoke-direct {v3, v0, v2}, Lads_mobile_sdk/zg2;-><init>(Lads_mobile_sdk/ah2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v14, v3

    iget-object v2, v14, Lads_mobile_sdk/zg2;->k:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 2776
    iget v4, v14, Lads_mobile_sdk/zg2;->m:I

    const/4 v5, 0x2

    const/4 v7, 0x1

    if-eqz v4, :cond_3

    if-eq v4, v7, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget v1, v14, Lads_mobile_sdk/zg2;->j:I

    iget v4, v14, Lads_mobile_sdk/zg2;->i:I

    iget-boolean v8, v14, Lads_mobile_sdk/zg2;->c:Z

    iget-boolean v9, v14, Lads_mobile_sdk/zg2;->b:Z

    iget-boolean v10, v14, Lads_mobile_sdk/zg2;->a:Z

    iget-object v11, v14, Lads_mobile_sdk/zg2;->h:Lads_mobile_sdk/nu3;

    iget-object v12, v14, Lads_mobile_sdk/zg2;->g:Ljava/lang/String;

    iget-object v13, v14, Lads_mobile_sdk/zg2;->f:Ljava/lang/String;

    iget-object v15, v14, Lads_mobile_sdk/zg2;->e:Ljava/lang/String;

    iget-object v6, v14, Lads_mobile_sdk/zg2;->d:Lads_mobile_sdk/r31;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v16, v6

    move v6, v4

    move-object v4, v11

    move-object/from16 v11, v16

    move-object/from16 v16, v13

    move v13, v9

    move-object/from16 v9, v16

    goto/16 :goto_2

    :cond_3
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2777
    const-string v2, "custom_close"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "1"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    .line 2778
    invoke-static {v1}, Lads_mobile_sdk/ah2;->b(Ljava/util/Map;)I

    move-result v2

    .line 2779
    const-string v6, "u"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v15, v6

    check-cast v15, Ljava/lang/String;

    .line 2780
    const-string v6, "html"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v13, v6

    check-cast v13, Ljava/lang/String;

    .line 2781
    const-string v6, "baseurl"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v12, v6

    check-cast v12, Ljava/lang/String;

    .line 2783
    iget-object v6, v0, Lads_mobile_sdk/ah2;->b:Lads_mobile_sdk/ex0;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2785
    const-string v9, "key"

    const-string v10, "gads:lockscreen_custom_webview:enabled"

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2801
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v11, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v6, v10, v9, v11}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2802
    const-string v6, "is_allowed_for_lock_screen"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v7

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 2803
    :goto_1
    iget-object v4, v0, Lads_mobile_sdk/ah2;->h:Lads_mobile_sdk/cw2;

    invoke-interface {v4}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Lads_mobile_sdk/nu3;

    if-eqz v15, :cond_5

    .line 2804
    iget-object v4, v0, Lads_mobile_sdk/ah2;->n:Lads_mobile_sdk/s93;

    move-object/from16 v6, p4

    iput-object v6, v14, Lads_mobile_sdk/zg2;->d:Lads_mobile_sdk/r31;

    iput-object v15, v14, Lads_mobile_sdk/zg2;->e:Ljava/lang/String;

    iput-object v13, v14, Lads_mobile_sdk/zg2;->f:Ljava/lang/String;

    iput-object v12, v14, Lads_mobile_sdk/zg2;->g:Ljava/lang/String;

    iput-object v11, v14, Lads_mobile_sdk/zg2;->h:Lads_mobile_sdk/nu3;

    move/from16 v9, p2

    iput-boolean v9, v14, Lads_mobile_sdk/zg2;->a:Z

    move/from16 v10, p3

    iput-boolean v10, v14, Lads_mobile_sdk/zg2;->b:Z

    iput-boolean v8, v14, Lads_mobile_sdk/zg2;->c:Z

    iput v2, v14, Lads_mobile_sdk/zg2;->i:I

    iput v1, v14, Lads_mobile_sdk/zg2;->j:I

    iput v7, v14, Lads_mobile_sdk/zg2;->m:I

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2805
    invoke-static {v4, v15, v14}, Lads_mobile_sdk/s93;->a(Lads_mobile_sdk/s93;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_6

    goto :goto_4

    :cond_5
    move/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v6, p4

    :cond_6
    move v4, v10

    move v10, v9

    move-object v9, v13

    move v13, v4

    move-object v4, v11

    move-object v11, v6

    move v6, v2

    :goto_2
    if-eqz v1, :cond_7

    goto :goto_3

    :cond_7
    const/4 v7, 0x0

    :goto_3
    const/4 v1, 0x0

    .line 2806
    iput-object v1, v14, Lads_mobile_sdk/zg2;->d:Lads_mobile_sdk/r31;

    iput-object v1, v14, Lads_mobile_sdk/zg2;->e:Ljava/lang/String;

    iput-object v1, v14, Lads_mobile_sdk/zg2;->f:Ljava/lang/String;

    iput-object v1, v14, Lads_mobile_sdk/zg2;->g:Ljava/lang/String;

    iput-object v1, v14, Lads_mobile_sdk/zg2;->h:Lads_mobile_sdk/nu3;

    iput v5, v14, Lads_mobile_sdk/zg2;->m:I

    move-object v5, v12

    move v12, v7

    move v7, v10

    move-object v10, v5

    move v5, v8

    move-object v8, v15

    invoke-virtual/range {v4 .. v14}, Lads_mobile_sdk/nu3;->a(ZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lads_mobile_sdk/r31;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_8

    :goto_4
    return-object v3

    .line 2817
    :cond_8
    :goto_5
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method public final b(Ljava/lang/String;)Ljava/util/Map;
    .locals 4

    .line 1645
    const-string v0, "<this>"

    .line 2454
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 2456
    :cond_0
    :try_start_0
    sget-object v1, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2457
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/google/gson/JsonObject;

    invoke-virtual {v1, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "fromJson(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/google/gson/JsonObject;

    .line 2458
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2459
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2460
    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    .line 2461
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "getAsString(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-object v0

    :catch_0
    move-exception p1

    .line 2462
    sget-object v0, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    const-string v0, "Failed to parse extra query params"

    invoke-static {v0, p1}, Lads_mobile_sdk/f01;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2463
    iget-object v0, p0, Lads_mobile_sdk/ah2;->r:Lads_mobile_sdk/ur3;

    check-cast v0, Lads_mobile_sdk/as3;

    const-string v1, "OpenGmsgHandler.parseHsdpExtraQueryParams"

    invoke-virtual {v0, v1, p1}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2464
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final g()Lads_mobile_sdk/u11;
    .locals 1

    .line 1
    sget-object v0, Lads_mobile_sdk/u11;->e:Lads_mobile_sdk/u11;

    return-object v0
.end method
