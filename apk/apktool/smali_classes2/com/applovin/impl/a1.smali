.class public Lcom/applovin/impl/a1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/applovin/impl/sdk/l;

.field private final b:I

.field private final c:Lcom/applovin/impl/u0;

.field private d:Ljava/util/List;

.field private e:Ljava/lang/String;

.field private f:Lcom/applovin/impl/w0;

.field private g:Lcom/applovin/impl/v0$c;

.field private h:Lcom/applovin/impl/w0;

.field private i:Landroid/app/Dialog;

.field private j:J

.field private k:J

.field private l:J

.field private m:Lcom/applovin/impl/v0$b;

.field private final n:Lcom/applovin/impl/b;


# direct methods
.method public static synthetic $r8$lambda$0CYBhTqGjbSZI6Mme5wJi0fVDBg(Lcom/applovin/impl/a1;Lcom/applovin/impl/w0;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/a1;->a(Lcom/applovin/impl/w0;Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mLVBES4JrzW8N_WO_g1KOokOoOE(Lcom/applovin/impl/a1;Landroid/app/AlertDialog;Landroid/app/Activity;ZLandroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/applovin/impl/a1;->a(Landroid/app/AlertDialog;Landroid/app/Activity;ZLandroid/content/DialogInterface;)V

    return-void
.end method

.method public constructor <init>(Lcom/applovin/impl/sdk/l;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/applovin/impl/u0;

    invoke-direct {v0}, Lcom/applovin/impl/u0;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/a1;->c:Lcom/applovin/impl/u0;

    .line 20
    new-instance v0, Lcom/applovin/impl/v0$b;

    invoke-direct {v0}, Lcom/applovin/impl/v0$b;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/a1;->m:Lcom/applovin/impl/v0$b;

    .line 22
    new-instance v0, Lcom/applovin/impl/a1$a;

    invoke-direct {v0, p0}, Lcom/applovin/impl/a1$a;-><init>(Lcom/applovin/impl/a1;)V

    iput-object v0, p0, Lcom/applovin/impl/a1;->n:Lcom/applovin/impl/b;

    .line 55
    iput-object p1, p0, Lcom/applovin/impl/a1;->a:Lcom/applovin/impl/sdk/l;

    .line 57
    sget-object v0, Lcom/applovin/impl/c5;->q7:Lcom/applovin/impl/c5;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/applovin/impl/a1;->b:I

    return-void
.end method

.method private a(Landroid/app/Dialog;)Landroid/app/Activity;
    .locals 1

    .line 413
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 414
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 416
    check-cast p1, Landroid/app/Activity;

    return-object p1

    .line 420
    :cond_0
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 422
    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    .line 423
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 425
    check-cast p1, Landroid/app/Activity;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a(Lcom/applovin/impl/a1;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/applovin/impl/a1;->i:Landroid/app/Dialog;

    return-object p1
.end method

.method private a(I)Lcom/applovin/impl/w0;
    .locals 4

    .line 408
    iget-object v0, p0, Lcom/applovin/impl/a1;->d:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 410
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/impl/w0;

    .line 412
    invoke-virtual {v2}, Lcom/applovin/impl/w0;->c()I

    move-result v3

    if-ne p1, v3, :cond_1

    return-object v2

    :cond_2
    return-object v1
.end method

.method static synthetic a(Lcom/applovin/impl/a1;)Lcom/applovin/impl/w0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/a1;->h:Lcom/applovin/impl/w0;

    return-object p0
.end method

.method static synthetic a(Lcom/applovin/impl/a1;I)Lcom/applovin/impl/w0;
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/applovin/impl/a1;->a(I)Lcom/applovin/impl/w0;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/applovin/impl/a1;Lcom/applovin/impl/w0;)Lcom/applovin/impl/w0;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/applovin/impl/a1;->h:Lcom/applovin/impl/w0;

    return-object p1
.end method

.method static synthetic a(Lcom/applovin/impl/a1;Lcom/applovin/sdk/AppLovinCmpError;)Ljava/util/HashMap;
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/applovin/impl/a1;->a(Lcom/applovin/sdk/AppLovinCmpError;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/applovin/sdk/AppLovinCmpError;)Ljava/util/HashMap;
    .locals 3

    .line 437
    invoke-interface {p1}, Lcom/applovin/sdk/AppLovinCmpError;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "error_message"

    invoke-static {v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->hashMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 438
    invoke-interface {p1}, Lcom/applovin/sdk/AppLovinCmpError;->getCmpMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mediated_network_error_message"

    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 439
    invoke-interface {p1}, Lcom/applovin/sdk/AppLovinCmpError;->getCode()Lcom/applovin/sdk/AppLovinCmpError$Code;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/sdk/AppLovinCmpError$Code;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "error_code"

    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 440
    invoke-interface {p1}, Lcom/applovin/sdk/AppLovinCmpError;->getCmpCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "mediated_network_error_code"

    invoke-static {v1, p1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method private synthetic a(Landroid/app/AlertDialog;Landroid/app/Activity;ZLandroid/content/DialogInterface;)V
    .locals 2

    .line 368
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    .line 369
    const-string v0, "android:id/alertTitle"

    const/4 v1, 0x0

    invoke-virtual {p4, v0, v1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p4

    .line 370
    invoke-virtual {p1, p4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 371
    invoke-virtual {p1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p4

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 372
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 375
    iget p4, p0, Lcom/applovin/impl/a1;->b:I

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setMaxLines(I)V

    const/16 p4, 0x30

    .line 378
    invoke-static {p2, p4}, Lcom/applovin/sdk/AppLovinSdkUtils;->dpToPx(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 380
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/applovin/impl/a1;->l:J

    .line 382
    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string p2, "details"

    invoke-static {p2, p1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->hashMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    .line 383
    iget-object p2, p0, Lcom/applovin/impl/a1;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/l;->y0()Lcom/applovin/impl/s7;

    move-result-object p2

    sget-object p3, Lcom/applovin/impl/h2;->r:Lcom/applovin/impl/h2;

    invoke-virtual {p2, p3, p1}, Lcom/applovin/impl/i2;->d(Lcom/applovin/impl/h2;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/a1;Lcom/applovin/impl/w0;Landroid/app/Activity;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/a1;->b(Lcom/applovin/impl/w0;Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/a1;Lcom/applovin/impl/w0;Landroid/app/Activity;Ljava/lang/Boolean;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/a1;->a(Lcom/applovin/impl/w0;Landroid/app/Activity;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/a1;Lcom/applovin/impl/w0;Lcom/applovin/impl/w0;Landroid/app/Activity;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/a1;->a(Lcom/applovin/impl/w0;Lcom/applovin/impl/w0;Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/a1;Lcom/applovin/sdk/AppLovinCmpError;J)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/a1;->a(Lcom/applovin/sdk/AppLovinCmpError;J)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/a1;Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/applovin/impl/a1;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/applovin/impl/w0;)V
    .locals 3

    .line 384
    iget-object v0, p0, Lcom/applovin/impl/a1;->c:Lcom/applovin/impl/u0;

    invoke-virtual {v0}, Lcom/applovin/impl/u0;->b()V

    .line 386
    new-instance v0, Lcom/applovin/impl/a1$h;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/a1$h;-><init>(Lcom/applovin/impl/a1;Lcom/applovin/impl/w0;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    .line 393
    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    .line 394
    invoke-static {v0, v1, v2}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic a(Lcom/applovin/impl/w0;Landroid/app/Activity;)V
    .locals 13

    if-nez p1, :cond_0

    .line 46
    const-string v0, "Consent flow state is null"

    invoke-direct {p0, v0}, Lcom/applovin/impl/a1;->a(Ljava/lang/String;)V

    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/a1;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/a1;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Transitioning to state: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ConsentFlowStateMachine"

    invoke-virtual {v0, v3, v2}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/a1;->f:Lcom/applovin/impl/w0;

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v6, p0, Lcom/applovin/impl/a1;->k:J

    sub-long/2addr v2, v6

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x0

    .line 53
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/applovin/impl/a1;->k:J

    .line 55
    iget-object v0, p0, Lcom/applovin/impl/a1;->c:Lcom/applovin/impl/u0;

    invoke-virtual {v0, p1, v2, v3}, Lcom/applovin/impl/u0;->a(Lcom/applovin/impl/w0;J)V

    .line 57
    invoke-virtual {p1}, Lcom/applovin/impl/w0;->d()Lcom/applovin/impl/w0$b;

    move-result-object v0

    sget-object v6, Lcom/applovin/impl/w0$b;->a:Lcom/applovin/impl/w0$b;

    const-string v7, "cf_start"

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v0, v6, :cond_b

    .line 59
    invoke-static {p2}, Lcom/applovin/impl/d;->d(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 61
    invoke-direct/range {p0 .. p1}, Lcom/applovin/impl/a1;->a(Lcom/applovin/impl/w0;)V

    return-void

    .line 65
    :cond_3
    iget-object v0, p0, Lcom/applovin/impl/a1;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->G()Lcom/applovin/impl/sdk/EventServiceImpl;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/applovin/impl/sdk/EventServiceImpl;->trackEvent(Ljava/lang/String;)V

    .line 67
    move-object v6, p1

    check-cast v6, Lcom/applovin/impl/x0;

    .line 68
    iput-object v6, p0, Lcom/applovin/impl/a1;->h:Lcom/applovin/impl/w0;

    .line 70
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 71
    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 73
    iget-object v0, p0, Lcom/applovin/impl/a1;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->y()Lcom/applovin/impl/v0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/v0;->h()Landroid/net/Uri;

    move-result-object v10

    if-eqz v10, :cond_4

    move v2, v9

    goto :goto_1

    :cond_4
    move v2, v8

    .line 76
    :goto_1
    invoke-virtual {v6}, Lcom/applovin/impl/x0;->f()Ljava/util/List;

    move-result-object v0

    .line 77
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/applovin/impl/y0;

    .line 79
    new-instance v0, Lcom/applovin/impl/a1$b;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/a1$b;-><init>(Lcom/applovin/impl/a1;ZLcom/applovin/impl/y0;Lcom/applovin/impl/w0;Landroid/app/Activity;)V

    .line 109
    invoke-virtual {v3}, Lcom/applovin/impl/y0;->c()Lcom/applovin/impl/y0$a;

    move-result-object v4

    sget-object v12, Lcom/applovin/impl/y0$a;->b:Lcom/applovin/impl/y0$a;

    if-ne v4, v12, :cond_5

    .line 111
    invoke-virtual {v3}, Lcom/applovin/impl/y0;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 113
    :cond_5
    invoke-virtual {v3}, Lcom/applovin/impl/y0;->c()Lcom/applovin/impl/y0$a;

    move-result-object v4

    sget-object v12, Lcom/applovin/impl/y0$a;->c:Lcom/applovin/impl/y0$a;

    if-ne v4, v12, :cond_6

    .line 115
    invoke-virtual {v3}, Lcom/applovin/impl/y0;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 119
    :cond_6
    invoke-virtual {v3}, Lcom/applovin/impl/y0;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 123
    :cond_7
    invoke-virtual {v6}, Lcom/applovin/impl/x0;->h()Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 128
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 131
    sget v4, Lcom/applovin/sdk/R$string;->applovin_terms_of_service_text:I

    invoke-static {v4}, Lcom/applovin/impl/sdk/l;->a(I)Ljava/lang/String;

    move-result-object v4

    .line 132
    sget v11, Lcom/applovin/sdk/R$string;->applovin_privacy_policy_text:I

    invoke-static {v11}, Lcom/applovin/impl/sdk/l;->a(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x2

    .line 133
    new-array v12, v12, [Ljava/lang/String;

    aput-object v4, v12, v8

    aput-object v11, v12, v9

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 134
    invoke-static {v0, v8}, Lcom/applovin/impl/sdk/utils/StringUtils;->containsAtLeastOneSubstring(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz v2, :cond_8

    .line 138
    new-instance v0, Lcom/applovin/impl/a1$c;

    invoke-direct {v0, p0, v10, p2}, Lcom/applovin/impl/a1$c;-><init>(Lcom/applovin/impl/a1;Landroid/net/Uri;Landroid/app/Activity;)V

    .line 147
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 148
    invoke-static {v3, v4, v0, v9}, Lcom/applovin/impl/sdk/utils/StringUtils;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Landroid/text/style/ClickableSpan;Z)V

    .line 151
    :cond_8
    iget-object v0, p0, Lcom/applovin/impl/a1;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->y()Lcom/applovin/impl/v0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/v0;->f()Landroid/net/Uri;

    move-result-object v0

    .line 152
    new-instance v4, Lcom/applovin/impl/a1$d;

    invoke-direct {v4, p0, v0, p2}, Lcom/applovin/impl/a1$d;-><init>(Lcom/applovin/impl/a1;Landroid/net/Uri;Landroid/app/Activity;)V

    .line 161
    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 162
    invoke-static {v3, v0, v4, v9}, Lcom/applovin/impl/sdk/utils/StringUtils;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Landroid/text/style/ClickableSpan;Z)V

    goto :goto_3

    :cond_9
    const/4 v3, 0x0

    .line 166
    :cond_a
    :goto_3
    invoke-virtual {v7, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 167
    invoke-virtual {v6}, Lcom/applovin/impl/x0;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 170
    new-instance v3, Lcom/applovin/impl/a1$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, p2, v2}, Lcom/applovin/impl/a1$$ExternalSyntheticLambda0;-><init>(Lcom/applovin/impl/a1;Landroid/app/AlertDialog;Landroid/app/Activity;Z)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 191
    iput-object v0, p0, Lcom/applovin/impl/a1;->i:Landroid/app/Dialog;

    .line 192
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 194
    iget-object v0, p0, Lcom/applovin/impl/a1;->m:Lcom/applovin/impl/v0$b;

    invoke-virtual {v0}, Lcom/applovin/impl/v0$b;->d()V

    return-void

    .line 196
    :cond_b
    invoke-virtual {p1}, Lcom/applovin/impl/w0;->d()Lcom/applovin/impl/w0$b;

    move-result-object v0

    sget-object v4, Lcom/applovin/impl/w0$b;->b:Lcom/applovin/impl/w0$b;

    if-ne v0, v4, :cond_e

    .line 198
    iget-object v0, p0, Lcom/applovin/impl/a1;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->y()Lcom/applovin/impl/v0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/v0;->k()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/applovin/impl/a1;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->y()Lcom/applovin/impl/v0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/v0;->m()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 200
    invoke-static {p2}, Lcom/applovin/impl/d;->d(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 202
    invoke-direct/range {p0 .. p1}, Lcom/applovin/impl/a1;->a(Lcom/applovin/impl/w0;)V

    return-void

    .line 206
    :cond_c
    iget-object v0, p0, Lcom/applovin/impl/a1;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->y0()Lcom/applovin/impl/s7;

    move-result-object v0

    sget-object v2, Lcom/applovin/impl/h2;->t:Lcom/applovin/impl/h2;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/s7;->a(Lcom/applovin/impl/h2;)V

    .line 208
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 210
    iget-object v0, p0, Lcom/applovin/impl/a1;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->t()Lcom/applovin/impl/privacy/cmp/CmpServiceImpl;

    move-result-object v6

    new-instance v0, Lcom/applovin/impl/a1$e;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/a1$e;-><init>(Lcom/applovin/impl/a1;JLcom/applovin/impl/w0;Landroid/app/Activity;)V

    invoke-virtual {v6, p2, v0}, Lcom/applovin/impl/privacy/cmp/CmpServiceImpl;->loadCmp(Landroid/app/Activity;Lcom/applovin/impl/privacy/cmp/CmpServiceImpl$e;)V

    return-void

    .line 226
    :cond_d
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, p2, v0}, Lcom/applovin/impl/a1;->a(Lcom/applovin/impl/w0;Landroid/app/Activity;Ljava/lang/Boolean;)V

    return-void

    .line 229
    :cond_e
    invoke-virtual {p1}, Lcom/applovin/impl/w0;->d()Lcom/applovin/impl/w0$b;

    move-result-object v0

    sget-object v6, Lcom/applovin/impl/w0$b;->c:Lcom/applovin/impl/w0$b;

    if-ne v0, v6, :cond_10

    .line 231
    move-object v0, p1

    check-cast v0, Lcom/applovin/impl/z0;

    .line 232
    invoke-virtual {v0}, Lcom/applovin/impl/z0;->g()Ljava/lang/String;

    move-result-object v2

    .line 233
    invoke-virtual {v0}, Lcom/applovin/impl/z0;->f()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_f

    .line 236
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v9}, Ljava/util/HashMap;-><init>(I)V

    .line 238
    :cond_f
    const-string v4, "flow_type"

    const-string v6, "unified"

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object v4, p0, Lcom/applovin/impl/a1;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v4}, Lcom/applovin/impl/sdk/l;->G()Lcom/applovin/impl/sdk/EventServiceImpl;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/applovin/impl/sdk/EventServiceImpl;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 243
    invoke-direct {p0, v0, p2}, Lcom/applovin/impl/a1;->b(Lcom/applovin/impl/w0;Landroid/app/Activity;)V

    return-void

    .line 245
    :cond_10
    invoke-virtual {p1}, Lcom/applovin/impl/w0;->d()Lcom/applovin/impl/w0$b;

    move-result-object v0

    sget-object v6, Lcom/applovin/impl/w0$b;->e:Lcom/applovin/impl/w0$b;

    if-ne v0, v6, :cond_13

    .line 247
    invoke-static {p2}, Lcom/applovin/impl/d;->d(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 249
    invoke-direct/range {p0 .. p1}, Lcom/applovin/impl/a1;->a(Lcom/applovin/impl/w0;)V

    return-void

    .line 253
    :cond_11
    iget-object v0, p0, Lcom/applovin/impl/a1;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->y()Lcom/applovin/impl/v0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/v0;->m()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 256
    iget-object v0, p0, Lcom/applovin/impl/a1;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->t()Lcom/applovin/impl/privacy/cmp/CmpServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/applovin/impl/privacy/cmp/CmpServiceImpl;->preloadCmp(Landroid/app/Activity;)V

    .line 258
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, p2, v0}, Lcom/applovin/impl/a1;->a(Lcom/applovin/impl/w0;Landroid/app/Activity;Ljava/lang/Boolean;)V

    return-void

    .line 262
    :cond_12
    iget-object v0, p0, Lcom/applovin/impl/a1;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->y0()Lcom/applovin/impl/s7;

    move-result-object v0

    sget-object v2, Lcom/applovin/impl/h2;->t:Lcom/applovin/impl/h2;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/s7;->a(Lcom/applovin/impl/h2;)V

    .line 264
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 266
    iget-object v0, p0, Lcom/applovin/impl/a1;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->t()Lcom/applovin/impl/privacy/cmp/CmpServiceImpl;

    move-result-object v6

    new-instance v0, Lcom/applovin/impl/a1$f;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/a1$f;-><init>(Lcom/applovin/impl/a1;JLcom/applovin/impl/w0;Landroid/app/Activity;)V

    invoke-virtual {v6, p2, v0}, Lcom/applovin/impl/privacy/cmp/CmpServiceImpl;->loadCmp(Landroid/app/Activity;Lcom/applovin/impl/privacy/cmp/CmpServiceImpl$e;)V

    return-void

    .line 282
    :cond_13
    invoke-virtual {p1}, Lcom/applovin/impl/w0;->d()Lcom/applovin/impl/w0$b;

    move-result-object v0

    sget-object v4, Lcom/applovin/impl/w0$b;->f:Lcom/applovin/impl/w0$b;

    if-ne v0, v4, :cond_16

    .line 284
    invoke-static {p2}, Lcom/applovin/impl/d;->d(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 286
    invoke-direct/range {p0 .. p1}, Lcom/applovin/impl/a1;->a(Lcom/applovin/impl/w0;)V

    return-void

    .line 291
    :cond_14
    iget-object v0, p0, Lcom/applovin/impl/a1;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->y()Lcom/applovin/impl/v0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/v0;->m()Z

    move-result v0

    if-nez v0, :cond_15

    .line 293
    iget-object v0, p0, Lcom/applovin/impl/a1;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->G()Lcom/applovin/impl/sdk/EventServiceImpl;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/applovin/impl/sdk/EventServiceImpl;->trackEvent(Ljava/lang/String;)V

    .line 298
    :cond_15
    iget-object v0, p0, Lcom/applovin/impl/a1;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->y0()Lcom/applovin/impl/s7;

    move-result-object v0

    sget-object v2, Lcom/applovin/impl/h2;->w:Lcom/applovin/impl/h2;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/s7;->a(Lcom/applovin/impl/h2;)V

    .line 300
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 302
    iget-object v0, p0, Lcom/applovin/impl/a1;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->t()Lcom/applovin/impl/privacy/cmp/CmpServiceImpl;

    move-result-object v6

    new-instance v0, Lcom/applovin/impl/a1$g;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/a1$g;-><init>(Lcom/applovin/impl/a1;JLcom/applovin/impl/w0;Landroid/app/Activity;)V

    invoke-virtual {v6, p2, v0}, Lcom/applovin/impl/privacy/cmp/CmpServiceImpl;->showCmp(Landroid/app/Activity;Lcom/applovin/impl/privacy/cmp/CmpServiceImpl$f;)V

    return-void

    .line 329
    :cond_16
    invoke-virtual {p1}, Lcom/applovin/impl/w0;->d()Lcom/applovin/impl/w0$b;

    move-result-object v0

    sget-object v6, Lcom/applovin/impl/w0$b;->g:Lcom/applovin/impl/w0$b;

    if-ne v0, v6, :cond_1d

    .line 331
    invoke-virtual {p1}, Lcom/applovin/impl/w0;->a()Lcom/applovin/impl/w0$a;

    move-result-object v0

    .line 332
    sget-object v6, Lcom/applovin/impl/w0$a;->c:Lcom/applovin/impl/w0$a;

    if-ne v0, v6, :cond_17

    .line 334
    iget-object v0, p0, Lcom/applovin/impl/a1;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->y()Lcom/applovin/impl/v0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/v0;->k()Z

    move-result v0

    .line 336
    iget-object v6, p0, Lcom/applovin/impl/a1;->c:Lcom/applovin/impl/u0;

    invoke-virtual {v6, p1, v0, v2, v3}, Lcom/applovin/impl/u0;->a(Lcom/applovin/impl/w0;ZJ)V

    .line 337
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/applovin/impl/a1;->a(Lcom/applovin/impl/w0;Landroid/app/Activity;Ljava/lang/Boolean;)V

    return-void

    .line 339
    :cond_17
    sget-object v6, Lcom/applovin/impl/w0$a;->d:Lcom/applovin/impl/w0$a;

    if-ne v0, v6, :cond_1a

    .line 341
    iget-object v0, p0, Lcom/applovin/impl/a1;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->C0()Z

    move-result v0

    .line 342
    iget-object v6, p0, Lcom/applovin/impl/a1;->a:Lcom/applovin/impl/sdk/l;

    sget-object v7, Lcom/applovin/impl/e5;->t:Lcom/applovin/impl/e5;

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v7, v10}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/e5;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    if-eqz v0, :cond_18

    .line 343
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_18
    move v8, v9

    .line 345
    :cond_19
    iget-object v0, p0, Lcom/applovin/impl/a1;->c:Lcom/applovin/impl/u0;

    invoke-virtual {v0, p1, v8, v2, v3}, Lcom/applovin/impl/u0;->a(Lcom/applovin/impl/w0;ZJ)V

    .line 346
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/applovin/impl/a1;->a(Lcom/applovin/impl/w0;Landroid/app/Activity;Ljava/lang/Boolean;)V

    return-void

    .line 348
    :cond_1a
    sget-object v6, Lcom/applovin/impl/w0$a;->e:Lcom/applovin/impl/w0$a;

    if-ne v0, v6, :cond_1c

    .line 350
    iget-object v0, p0, Lcom/applovin/impl/a1;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->y()Lcom/applovin/impl/v0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/v0;->h()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1b

    move v8, v9

    .line 352
    :cond_1b
    iget-object v0, p0, Lcom/applovin/impl/a1;->c:Lcom/applovin/impl/u0;

    invoke-virtual {v0, p1, v8, v2, v3}, Lcom/applovin/impl/u0;->a(Lcom/applovin/impl/w0;ZJ)V

    .line 353
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/applovin/impl/a1;->a(Lcom/applovin/impl/w0;Landroid/app/Activity;Ljava/lang/Boolean;)V

    return-void

    .line 357
    :cond_1c
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid consent flow decision type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/applovin/impl/a1;->a(Ljava/lang/String;)V

    return-void

    .line 360
    :cond_1d
    invoke-virtual {p1}, Lcom/applovin/impl/w0;->d()Lcom/applovin/impl/w0$b;

    move-result-object v0

    sget-object v2, Lcom/applovin/impl/w0$b;->d:Lcom/applovin/impl/w0$b;

    if-ne v0, v2, :cond_1e

    .line 363
    invoke-direct {p0}, Lcom/applovin/impl/a1;->b()V

    return-void

    .line 367
    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Invalid consent flow destination state: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/applovin/impl/a1;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/applovin/impl/w0;Landroid/app/Activity;Ljava/lang/Boolean;)V
    .locals 0

    .line 41
    invoke-virtual {p1, p3}, Lcom/applovin/impl/w0;->a(Ljava/lang/Boolean;)I

    move-result p3

    invoke-direct {p0, p3}, Lcom/applovin/impl/a1;->a(I)Lcom/applovin/impl/w0;

    move-result-object p3

    .line 42
    invoke-direct {p0, p1, p3, p2}, Lcom/applovin/impl/a1;->a(Lcom/applovin/impl/w0;Lcom/applovin/impl/w0;Landroid/app/Activity;)V

    return-void
.end method

.method private a(Lcom/applovin/impl/w0;Lcom/applovin/impl/w0;Landroid/app/Activity;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/applovin/impl/a1;->f:Lcom/applovin/impl/w0;

    .line 45
    invoke-direct {p0, p2, p3}, Lcom/applovin/impl/a1;->c(Lcom/applovin/impl/w0;Landroid/app/Activity;)V

    return-void
.end method

.method private a(Lcom/applovin/sdk/AppLovinCmpError;J)V
    .locals 0

    .line 426
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "duration_ms"

    invoke-static {p3, p2}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->hashMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p2

    if-nez p1, :cond_0

    .line 430
    iget-object p1, p0, Lcom/applovin/impl/a1;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/l;->y0()Lcom/applovin/impl/s7;

    move-result-object p1

    sget-object p3, Lcom/applovin/impl/h2;->u:Lcom/applovin/impl/h2;

    invoke-virtual {p1, p3, p2}, Lcom/applovin/impl/i2;->d(Lcom/applovin/impl/h2;Ljava/util/Map;)V

    return-void

    .line 434
    :cond_0
    invoke-direct {p0, p1}, Lcom/applovin/impl/a1;->a(Lcom/applovin/sdk/AppLovinCmpError;)Ljava/util/HashMap;

    move-result-object p1

    .line 435
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 436
    iget-object p1, p0, Lcom/applovin/impl/a1;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/l;->y0()Lcom/applovin/impl/s7;

    move-result-object p1

    sget-object p3, Lcom/applovin/impl/h2;->v:Lcom/applovin/impl/h2;

    invoke-virtual {p1, p3, p2}, Lcom/applovin/impl/i2;->d(Lcom/applovin/impl/h2;Ljava/util/Map;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 395
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/applovin/impl/m1;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Last started states: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/a1;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nLast successful state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/a1;->f:Lcom/applovin/impl/w0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "details"

    invoke-static {v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->hashMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 398
    iget-object v1, p0, Lcom/applovin/impl/a1;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/l;->E()Lcom/applovin/impl/s1;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/h2;->d1:Lcom/applovin/impl/h2;

    invoke-virtual {v1, v2, p1, v0}, Lcom/applovin/impl/i2;->a(Lcom/applovin/impl/h2;Ljava/lang/String;Ljava/util/Map;)V

    .line 400
    iget-object v0, p0, Lcom/applovin/impl/a1;->c:Lcom/applovin/impl/u0;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/u0;->b(Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcom/applovin/impl/a1;->m:Lcom/applovin/impl/v0$b;

    if-eqz v0, :cond_0

    .line 404
    new-instance v1, Lcom/applovin/impl/t0;

    sget v2, Lcom/applovin/impl/t0;->e:I

    invoke-direct {v1, v2, p1}, Lcom/applovin/impl/t0;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/applovin/impl/v0$b;->a(Lcom/applovin/impl/t0;)V

    .line 407
    :cond_0
    invoke-direct {p0}, Lcom/applovin/impl/a1;->b()V

    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/a1;Landroid/app/Dialog;)Landroid/app/Activity;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/applovin/impl/a1;->a(Landroid/app/Dialog;)Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/applovin/impl/a1;)Landroid/app/Dialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/a1;->i:Landroid/app/Dialog;

    return-object p0
.end method

.method private b()V
    .locals 4

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/applovin/impl/a1;->j:J

    sub-long/2addr v0, v2

    .line 5
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "duration_ms"

    invoke-static {v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->hashMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/applovin/impl/a1;->c:Lcom/applovin/impl/u0;

    invoke-virtual {v1}, Lcom/applovin/impl/u0;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "details"

    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 7
    iget-object v1, p0, Lcom/applovin/impl/a1;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/l;->y0()Lcom/applovin/impl/s7;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/h2;->z:Lcom/applovin/impl/h2;

    invoke-virtual {v1, v2, v0}, Lcom/applovin/impl/i2;->d(Lcom/applovin/impl/h2;Ljava/util/Map;)V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/applovin/impl/a1;->d:Ljava/util/List;

    .line 10
    iput-object v0, p0, Lcom/applovin/impl/a1;->f:Lcom/applovin/impl/w0;

    const-wide/16 v1, 0x0

    .line 11
    iput-wide v1, p0, Lcom/applovin/impl/a1;->j:J

    .line 12
    iput-wide v1, p0, Lcom/applovin/impl/a1;->k:J

    .line 13
    iput-wide v1, p0, Lcom/applovin/impl/a1;->l:J

    .line 15
    iget-object v1, p0, Lcom/applovin/impl/a1;->c:Lcom/applovin/impl/u0;

    invoke-virtual {v1}, Lcom/applovin/impl/u0;->a()V

    .line 17
    iget-object v1, p0, Lcom/applovin/impl/a1;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/l;->e()Lcom/applovin/impl/c;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/a1;->n:Lcom/applovin/impl/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/c;->b(Lcom/applovin/impl/b;)V

    .line 19
    iget-object v1, p0, Lcom/applovin/impl/a1;->g:Lcom/applovin/impl/v0$c;

    if-eqz v1, :cond_0

    .line 21
    iget-object v2, p0, Lcom/applovin/impl/a1;->m:Lcom/applovin/impl/v0$b;

    invoke-interface {v1, v2}, Lcom/applovin/impl/v0$c;->a(Lcom/applovin/impl/v0$b;)V

    .line 22
    iput-object v0, p0, Lcom/applovin/impl/a1;->g:Lcom/applovin/impl/v0$c;

    .line 25
    :cond_0
    new-instance v0, Lcom/applovin/impl/v0$b;

    invoke-direct {v0}, Lcom/applovin/impl/v0$b;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/a1;->m:Lcom/applovin/impl/v0$b;

    return-void
.end method

.method private b(Lcom/applovin/impl/w0;Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/applovin/impl/a1;->a(Lcom/applovin/impl/w0;Landroid/app/Activity;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic c(Lcom/applovin/impl/a1;)Lcom/applovin/impl/w0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/a1;->f:Lcom/applovin/impl/w0;

    return-object p0
.end method

.method private c(Lcom/applovin/impl/w0;Landroid/app/Activity;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/applovin/impl/a1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lcom/applovin/impl/a1$$ExternalSyntheticLambda1;-><init>(Lcom/applovin/impl/a1;Lcom/applovin/impl/w0;Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic d(Lcom/applovin/impl/a1;)Lcom/applovin/impl/sdk/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/a1;->a:Lcom/applovin/impl/sdk/l;

    return-object p0
.end method

.method static synthetic e(Lcom/applovin/impl/a1;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/applovin/impl/a1;->l:J

    return-wide v0
.end method

.method static synthetic f(Lcom/applovin/impl/a1;)Lcom/applovin/impl/v0$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/a1;->m:Lcom/applovin/impl/v0$b;

    return-object p0
.end method


# virtual methods
.method public a(ILandroid/app/Activity;Lcom/applovin/impl/v0$c;)V
    .locals 3

    .line 12
    iget-object v0, p0, Lcom/applovin/impl/a1;->d:Ljava/util/List;

    const-string v1, "ConsentFlowStateMachine"

    if-eqz v0, :cond_2

    .line 14
    iget-object p1, p0, Lcom/applovin/impl/a1;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/applovin/impl/a1;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unable to start states: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/a1;->d:Ljava/util/List;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/a1;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/applovin/impl/a1;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Consent flow already in progress for states: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/a1;->d:Ljava/util/List;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_1
    new-instance p1, Lcom/applovin/impl/t0;

    sget p2, Lcom/applovin/impl/t0;->d:I

    const-string v0, "Consent flow is already in progress."

    invoke-direct {p1, p2, v0}, Lcom/applovin/impl/t0;-><init>(ILjava/lang/String;)V

    .line 18
    new-instance p2, Lcom/applovin/impl/v0$b;

    invoke-direct {p2, p1}, Lcom/applovin/impl/v0$b;-><init>(Lcom/applovin/impl/t0;)V

    .line 20
    invoke-interface {p3, p2}, Lcom/applovin/impl/v0$c;->a(Lcom/applovin/impl/v0$b;)V

    return-void

    .line 25
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/a1;->a:Lcom/applovin/impl/sdk/l;

    invoke-static {v0}, Lcom/applovin/impl/b1;->a(Lcom/applovin/impl/sdk/l;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/a1;->d:Ljava/util/List;

    .line 26
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/a1;->e:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/applovin/impl/a1;->g:Lcom/applovin/impl/v0$c;

    .line 29
    invoke-direct {p0, p1}, Lcom/applovin/impl/a1;->a(I)Lcom/applovin/impl/w0;

    move-result-object p1

    .line 30
    iget-object p3, p0, Lcom/applovin/impl/a1;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p3}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/applovin/impl/a1;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p3}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Starting consent flow with states: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/applovin/impl/a1;->d:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\nInitial state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v1, v0}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_3
    invoke-static {p2}, Lcom/applovin/impl/sdk/l;->a(Landroid/content/Context;)Lcom/applovin/impl/c;

    move-result-object p3

    iget-object v0, p0, Lcom/applovin/impl/a1;->n:Lcom/applovin/impl/b;

    invoke-virtual {p3, v0}, Lcom/applovin/impl/c;->a(Lcom/applovin/impl/b;)V

    .line 34
    iget-object p3, p0, Lcom/applovin/impl/a1;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p3}, Lcom/applovin/impl/sdk/l;->y0()Lcom/applovin/impl/s7;

    move-result-object p3

    sget-object v0, Lcom/applovin/impl/h2;->q:Lcom/applovin/impl/h2;

    invoke-virtual {p3, v0}, Lcom/applovin/impl/s7;->a(Lcom/applovin/impl/h2;)V

    .line 36
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/impl/a1;->j:J

    const/4 p3, 0x0

    .line 39
    invoke-direct {p0, p3, p1, p2}, Lcom/applovin/impl/a1;->a(Lcom/applovin/impl/w0;Lcom/applovin/impl/w0;Landroid/app/Activity;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/applovin/impl/v0$c;)V
    .locals 1

    .line 11
    sget-object v0, Lcom/applovin/impl/w0$a;->c:Lcom/applovin/impl/w0$a;

    invoke-virtual {v0}, Lcom/applovin/impl/w0$a;->b()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/applovin/impl/a1;->a(ILandroid/app/Activity;Lcom/applovin/impl/v0$c;)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/applovin/impl/a1;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
