.class public final Lcom/tapjoy/internal/hl;
.super Lcom/tapjoy/internal/o;
.source "SourceFile"


# static fields
.field private static c:Lcom/tapjoy/internal/hl;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 88
    new-instance v0, Lcom/tapjoy/internal/hl$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/hl$1;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/tapjoy/internal/o;-><init>(Landroid/content/Context;Lcom/tapjoy/internal/q;)V

    return-void
.end method

.method private static a(Landroid/os/Bundle;Ljava/lang/String;Landroid/content/Context;)I
    .locals 2

    if-eqz p0, :cond_1

    .line 410
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 411
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 412
    move-object v0, p0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 414
    :try_start_0
    const-string v1, "drawable"

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_0

    return v0

    :catch_0
    :cond_0
    if-eqz p0, :cond_1

    .line 422
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 8055
    sget-boolean p1, Lcom/tapjoy/internal/hg;->a:Z

    if-eqz p1, :cond_1

    .line 8056
    const-string p1, "Tapjoy"

    const/4 p2, 0x4

    .line 8157
    const-string v0, "meta-data of {} invalid"

    invoke-static {p2, p1, v0, p0}, Lcom/tapjoy/internal/w;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/app/Notification;
    .locals 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 2379
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3241
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3242
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3243
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 3245
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 3246
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_0

    goto :goto_0

    .line 3250
    :cond_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 v2, 0x10000000

    .line 3251
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3252
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_1
    :goto_0
    move-object v4, v3

    :goto_1
    if-eqz v4, :cond_3

    .line 2382
    const-string v0, "com.tapjoy.PUSH_CLICK"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2383
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2384
    const-string v0, "com.tapjoy.PUSH_ID"

    invoke-virtual {v4, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p6, :cond_2

    .line 2386
    const-string p1, "com.tapjoy.PUSH_PAYLOAD"

    invoke-virtual {v4, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    if-eqz p7, :cond_3

    .line 2389
    const-string p1, "com.tapjoy.PUSH_PLACEMENT"

    invoke-virtual {v4, p1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2404
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p6, 0x4000000

    invoke-static {p1, p8, v4, p6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    if-nez p1, :cond_4

    return-object v3

    .line 301
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p6

    .line 302
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p7

    const/16 p8, 0x80

    .line 305
    :try_start_0
    invoke-virtual {p6, p7, p8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p7
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p8

    if-nez p8, :cond_5

    .line 313
    invoke-virtual {p6, p7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_2

    :cond_5
    if-eqz p4, :cond_6

    .line 315
    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    :cond_6
    :goto_2
    if-eqz p4, :cond_7

    .line 317
    invoke-static {p3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p3

    .line 322
    :cond_7
    iget-object p4, p7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string p6, "com.tapjoy.notification.icon"

    invoke-static {p4, p6, p0}, Lcom/tapjoy/internal/hl;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/content/Context;)I

    move-result p4

    if-nez p4, :cond_9

    .line 324
    iget p4, p7, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz p4, :cond_8

    iget p4, p7, Landroid/content/pm/ApplicationInfo;->icon:I

    goto :goto_3

    :cond_8
    const p4, 0x1080093

    .line 327
    :cond_9
    :goto_3
    iget-object p6, p7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string p8, "com.tapjoy.notification.icon.large"

    invoke-static {p6, p8, p0}, Lcom/tapjoy/internal/hl;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/content/Context;)I

    move-result p6

    if-eqz p6, :cond_a

    .line 329
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p8

    invoke-static {p8, p6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 332
    :cond_a
    const-string p6, "tapjoy"

    if-nez p9, :cond_b

    iget-object p8, p7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p8, :cond_b

    .line 333
    iget-object p7, p7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string p8, "com.tapjoy.notification.default_channel_id"

    invoke-virtual {p7, p8, p6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p9

    .line 3433
    :cond_b
    const-string p7, "notification"

    invoke-virtual {p0, p7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Landroid/app/NotificationManager;

    if-eqz p9, :cond_d

    .line 3437
    invoke-virtual {p7, p9}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p8

    if-nez p8, :cond_c

    goto :goto_4

    :cond_c
    move-object p6, p9

    goto :goto_5

    .line 3438
    :cond_d
    :goto_4
    new-instance p8, Landroid/app/NotificationChannel;

    const-string p9, "Tapjoy"

    const/4 v0, 0x3

    invoke-direct {p8, p6, p9, v0}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 3439
    invoke-virtual {p7, p8}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 4348
    :goto_5
    new-instance p7, Lcom/tapjoy/internal/js$c;

    invoke-direct {p7, p0, p6}, Lcom/tapjoy/internal/js$c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4773
    iget-object p0, p7, Lcom/tapjoy/internal/js$c;->M:Landroid/app/Notification;

    iput p4, p0, Landroid/app/Notification;->icon:I

    .line 4350
    invoke-virtual {p7, p2}, Lcom/tapjoy/internal/js$c;->c(Ljava/lang/CharSequence;)Lcom/tapjoy/internal/js$c;

    move-result-object p0

    .line 4351
    invoke-virtual {p0, p2}, Lcom/tapjoy/internal/js$c;->a(Ljava/lang/CharSequence;)Lcom/tapjoy/internal/js$c;

    move-result-object p0

    .line 4352
    invoke-virtual {p0, p3}, Lcom/tapjoy/internal/js$c;->b(Ljava/lang/CharSequence;)Lcom/tapjoy/internal/js$c;

    move-result-object p0

    .line 4888
    iput-object p1, p0, Lcom/tapjoy/internal/js$c;->e:Landroid/app/PendingIntent;

    .line 5135
    iget-object p1, p0, Lcom/tapjoy/internal/js$c;->M:Landroid/app/Notification;

    iget p4, p1, Landroid/app/Notification;->flags:I

    or-int/lit8 p4, p4, 0x10

    iput p4, p1, Landroid/app/Notification;->flags:I

    .line 5159
    iput v1, p0, Lcom/tapjoy/internal/js$c;->k:I

    .line 4355
    new-instance p1, Lcom/tapjoy/internal/js$b;

    invoke-direct {p1}, Lcom/tapjoy/internal/js$b;-><init>()V

    .line 4357
    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/js$b;->a(Ljava/lang/CharSequence;)Lcom/tapjoy/internal/js$b;

    move-result-object p1

    .line 4358
    invoke-virtual {p1, p3}, Lcom/tapjoy/internal/js$b;->b(Ljava/lang/CharSequence;)Lcom/tapjoy/internal/js$b;

    move-result-object p1

    .line 4356
    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/js$c;->a(Lcom/tapjoy/internal/js$d;)Lcom/tapjoy/internal/js$c;

    move-result-object p0

    if-eqz p5, :cond_e

    .line 6126
    iget-object p1, p0, Lcom/tapjoy/internal/js$c;->M:Landroid/app/Notification;

    const/4 p2, 0x1

    iput p2, p1, Landroid/app/Notification;->defaults:I

    :cond_e
    if-eqz v3, :cond_f

    .line 6954
    iput-object v3, p0, Lcom/tapjoy/internal/js$c;->h:Landroid/graphics/Bitmap;

    .line 7505
    :cond_f
    new-instance p1, Lcom/tapjoy/internal/jt;

    invoke-direct {p1, p0}, Lcom/tapjoy/internal/jt;-><init>(Lcom/tapjoy/internal/js$c;)V

    invoke-virtual {p1}, Lcom/tapjoy/internal/jt;->b()Landroid/app/Notification;

    move-result-object p0

    return-object p0

    :catch_0
    return-object v3
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tapjoy/internal/hl;
    .locals 2

    const-class v0, Lcom/tapjoy/internal/hl;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lcom/tapjoy/internal/hl;->c:Lcom/tapjoy/internal/hl;

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Lcom/tapjoy/internal/hl;

    invoke-direct {v1, p0}, Lcom/tapjoy/internal/hl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tapjoy/internal/hl;->c:Lcom/tapjoy/internal/hl;

    .line 47
    :cond_0
    sget-object p0, Lcom/tapjoy/internal/hl;->c:Lcom/tapjoy/internal/hl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static a(Ljava/lang/Object;)Z
    .locals 1

    .line 216
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static b(Ljava/lang/Object;)I
    .locals 1

    .line 220
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 221
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    .line 222
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 224
    :try_start_0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_1
    const/4 p0, 0x0

    return p0
.end method
