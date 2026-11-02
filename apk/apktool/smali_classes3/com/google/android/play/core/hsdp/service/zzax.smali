.class final Lcom/google/android/play/core/hsdp/service/zzax;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"


# instance fields
.field zza:Landroid/view/View;

.field private final zzb:Landroid/app/Activity;

.field private final zzc:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzax;->zza:Landroid/view/View;

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzax;->zzb:Landroid/app/Activity;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzax;->zzc:Landroid/view/WindowManager;

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/play/core/hsdp/service/zzax;Landroid/view/View;)V
    .locals 2

    .line 1
    const-string v0, "hideLoading"

    const-string v1, "HsdpLoadingPanel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzax;->zzc:Landroid/view/WindowManager;

    .line 3
    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Error removing view from WindowManager"

    .line 4
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzax;->zza:Landroid/view/View;

    return-void
.end method

.method private final zze()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzax;->zzb:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method final zzb()V
    .locals 3

    .line 1
    const-string v0, "HsdpLoadingPanel"

    const-string v1, "try to hideLoading"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzax;->zza:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzax;->zzb:Landroid/app/Activity;

    new-instance v2, Lcom/google/android/play/core/hsdp/service/zzau;

    invoke-direct {v2, p0, v0}, Lcom/google/android/play/core/hsdp/service/zzau;-><init>(Lcom/google/android/play/core/hsdp/service/zzax;Landroid/view/View;)V

    .line 2
    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method final zzc()V
    .locals 17

    move-object/from16 v1, p0

    .line 1
    const-string v2, "x"

    const-string v3, "com.android.vending"

    .line 0
    const-string v4, "contentFrame size: "

    const-string v5, "Successfully added view to WindowManager. loadingView size: "

    const-string v6, "screenHeight: "

    .line 1
    const-string v0, "try to showLoading"

    const-string v7, "HsdpLoadingPanel"

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/google/android/play/core/hsdp/service/zzax;->zza:Landroid/view/View;

    if-eqz v0, :cond_0

    goto/16 :goto_b

    :cond_0
    const-string v0, "showLoading"

    .line 2
    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/google/android/play/core/hsdp/service/zzax;->zzb:Landroid/app/Activity;

    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 4
    sget v9, Lcom/google/android/play/core/hsdp/R$layout;->sdk_loading_panel:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_1

    const-string v0, "Failed to inflate loading panel layout."

    .line 5
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iput-object v8, v1, Lcom/google/android/play/core/hsdp/service/zzax;->zza:Landroid/view/View;

    .line 6
    move-object v9, v8

    check-cast v9, Lcom/google/android/play/core/hsdp/service/HsdpLoadingPanelContainer;

    new-instance v11, Lcom/google/android/play/core/hsdp/service/zzav;

    invoke-direct {v11, v1}, Lcom/google/android/play/core/hsdp/service/zzav;-><init>(Lcom/google/android/play/core/hsdp/service/zzax;)V

    .line 7
    invoke-virtual {v9, v11}, Lcom/google/android/play/core/hsdp/service/HsdpLoadingPanelContainer;->setOnConfigurationChangedListener(Ljava/lang/Runnable;)V

    .line 8
    sget v9, Lcom/google/android/play/core/hsdp/R$id;->hsdp_service_prism_with_loading_indicator:I

    .line 9
    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v11, 0x0

    if-eqz v9, :cond_2

    .line 10
    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    .line 11
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v9, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 19
    const-string v9, "Error getting resources for com.android.vending"

    .line 12
    invoke-static {v7, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v9, v10

    .line 11
    :goto_0
    sget v0, Lcom/google/android/play/core/hsdp/R$id;->play_prism:I

    .line 13
    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/ImageView;

    const-string v13, "drawable"

    if-nez v12, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v9, :cond_4

    .line 23
    :try_start_1
    const-string v0, "product_logo_play_prism_color_24"

    .line 14
    invoke-virtual {v9, v0, v13, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v14, v1, Lcom/google/android/play/core/hsdp/service/zzax;->zzb:Landroid/app/Activity;

    .line 15
    invoke-virtual {v14}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v14

    invoke-virtual {v9, v0, v14}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v0, "Successfully loaded Play Prism icon as drawable from com.android.vending."

    .line 16
    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 32
    const-string v14, "Error loading Play Prism icon from com.android.vending."

    .line 17
    invoke-static {v7, v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18
    :cond_4
    :try_start_2
    sget v0, Lcom/google/android/play/core/hsdp/R$drawable;->logo_play_prism_24dp:I

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string v0, "Successfully loaded Play Prism icon from local resources."

    .line 19
    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4

    .line 13
    :goto_1
    sget v0, Lcom/google/android/play/core/hsdp/R$id;->sdk_dismiss_button:I

    .line 22
    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/ImageButton;

    const/4 v14, 0x1

    if-nez v12, :cond_5

    goto/16 :goto_8

    .line 48
    :cond_5
    iget-object v0, v1, Lcom/google/android/play/core/hsdp/service/zzax;->zzb:Landroid/app/Activity;

    .line 23
    invoke-direct {v1}, Lcom/google/android/play/core/hsdp/service/zzax;->zze()Z

    move-result v15

    if-eqz v15, :cond_6

    sget v15, Lcom/google/android/play/core/hsdp/R$color;->dismiss_icon_grey_500:I

    goto :goto_2

    :cond_6
    sget v15, Lcom/google/android/play/core/hsdp/R$color;->dismiss_icon_grey_700:I

    .line 24
    :goto_2
    invoke-static {v0, v15}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v15

    if-eqz v9, :cond_a

    .line 25
    :try_start_3
    invoke-direct {v1}, Lcom/google/android/play/core/hsdp/service/zzax;->zze()Z

    move-result v16

    if-eqz v16, :cond_7

    const-string v16, "grey_500"

    goto :goto_3

    .line 28
    :cond_7
    const-string v16, "grey_700"

    :goto_3
    move-object/from16 v10, v16

    .line 25
    const-string v11, "color"

    .line 26
    invoke-virtual {v9, v10, v11, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_8

    .line 27
    invoke-virtual {v0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v15

    goto :goto_4

    .line 31
    :cond_8
    const-string v10, "Could not load grey_500/grey_700 color from com.android.vending, falling back to local resources."

    .line 28
    invoke-static {v7, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :goto_4
    const-string v10, "gs_close_rond100_vd_theme_24"

    .line 29
    invoke-virtual {v9, v10, v13, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_9

    .line 30
    invoke-virtual {v0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v9, v3, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v3, v0

    move v0, v14

    goto :goto_6

    .line 74
    :cond_9
    const-string v0, "Drawable resource \'gs_close_rond100_vd_theme_24\' not found in com.android.vending"

    .line 31
    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    .line 73
    const-string v3, "Error loading dismiss icon from com.android.vending."

    .line 32
    invoke-static {v7, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a
    :goto_5
    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_6
    if-nez v3, :cond_b

    .line 30
    iget-object v0, v1, Lcom/google/android/play/core/hsdp/service/zzax;->zzb:Landroid/app/Activity;

    const v3, 0x1080038

    .line 33
    invoke-static {v0, v3}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v0, 0x0

    :cond_b
    if-eqz v3, :cond_12

    .line 34
    invoke-static {v3}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 35
    invoke-static {v3, v15}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 36
    invoke-virtual {v12, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Lcom/google/android/play/core/hsdp/service/zzaw;

    .line 37
    invoke-direct {v3, v1}, Lcom/google/android/play/core/hsdp/service/zzaw;-><init>(Lcom/google/android/play/core/hsdp/service/zzax;)V

    invoke-virtual {v12, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eq v14, v0, :cond_c

    const-string v0, "local resources."

    goto :goto_7

    .line 38
    :cond_c
    const-string v0, "com.android.vending."

    .line 37
    :goto_7
    const-string v3, "Successfully loaded and tinted dismiss icon from "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :goto_8
    sget v0, Lcom/google/android/play/core/hsdp/R$id;->content_frame:I

    .line 39
    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-nez v0, :cond_d

    const-string v0, "content_frame not found in the layout."

    .line 40
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 72
    :cond_d
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    .line 41
    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v9, 0x0

    .line 42
    invoke-virtual {v3, v9}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    iget-object v9, v1, Lcom/google/android/play/core/hsdp/service/zzax;->zzb:Landroid/app/Activity;

    const/16 v10, 0x1c

    .line 43
    invoke-static {v9, v10}, Lcom/google/android/play/core/hsdp/service/zza;->zza(Landroid/app/Activity;I)I

    move-result v11

    int-to-float v11, v11

    .line 44
    invoke-static {v9, v10}, Lcom/google/android/play/core/hsdp/service/zza;->zza(Landroid/app/Activity;I)I

    move-result v12

    int-to-float v12, v12

    .line 45
    invoke-static {v9, v10}, Lcom/google/android/play/core/hsdp/service/zza;->zza(Landroid/app/Activity;I)I

    move-result v13

    int-to-float v13, v13

    .line 46
    invoke-static {v9, v10}, Lcom/google/android/play/core/hsdp/service/zza;->zza(Landroid/app/Activity;I)I

    move-result v10

    int-to-float v10, v10

    const/16 v15, 0x8

    new-array v15, v15, [F

    const/16 v16, 0x0

    aput v11, v15, v16

    aput v12, v15, v14

    const/4 v11, 0x2

    aput v13, v15, v11

    const/4 v11, 0x3

    aput v10, v15, v11

    const/4 v10, 0x4

    const/4 v11, 0x0

    aput v11, v15, v10

    const/4 v10, 0x5

    aput v11, v15, v10

    const/4 v10, 0x6

    aput v11, v15, v10

    const/4 v10, 0x7

    aput v11, v15, v10

    .line 47
    invoke-virtual {v3, v15}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 48
    invoke-direct {v1}, Lcom/google/android/play/core/hsdp/service/zzax;->zze()Z

    move-result v10

    if-eqz v10, :cond_e

    sget v10, Lcom/google/android/play/core/hsdp/R$color;->background_dark:I

    goto :goto_9

    :cond_e
    sget v10, Lcom/google/android/play/core/hsdp/R$color;->background_light:I

    .line 49
    :goto_9
    invoke-static {v9, v10}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v9

    .line 50
    invoke-virtual {v3, v9}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 51
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 52
    invoke-virtual {v0, v14}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    .line 40
    :goto_a
    sget v0, Lcom/google/android/play/core/hsdp/R$id;->placeholder_loading:I

    .line 53
    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_f

    const/4 v9, 0x0

    .line 54
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    :try_start_4
    iget-object v0, v1, Lcom/google/android/play/core/hsdp/service/zzax;->zzb:Landroid/app/Activity;

    .line 55
    invoke-static {v0}, Lcom/google/android/play/core/hsdp/service/zza;->zzb(Landroid/app/Activity;)I

    move-result v3

    .line 56
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/google/android/play/core/hsdp/R$dimen;->sdk_hsdp_loading_ui_height:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    new-instance v10, Landroid/view/WindowManager$LayoutParams;

    const/16 v14, 0x28

    const/4 v15, -0x3

    const/4 v11, -0x1

    const/4 v12, -0x2

    const/4 v13, 0x2

    .line 57
    invoke-direct/range {v10 .. v15}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 58
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/google/android/play/core/hsdp/R$dimen;->sdk_hsdp_loading_ui_height:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 59
    invoke-static {v0}, Lcom/google/android/play/core/hsdp/service/zza;->zzb(Landroid/app/Activity;)I

    move-result v12

    int-to-float v12, v12

    const v13, 0x3f19999a    # 0.6f

    mul-float/2addr v12, v13

    float-to-int v12, v12

    .line 60
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 61
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v11, v11, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v12, 0x280

    if-le v11, v12, :cond_10

    .line 62
    invoke-static {v0, v12}, Lcom/google/android/play/core/hsdp/service/zza;->zza(Landroid/app/Activity;I)I

    move-result v0

    .line 63
    iput v0, v10, Landroid/view/WindowManager$LayoutParams;->width:I

    :cond_10
    const/16 v0, 0x51

    .line 64
    iput v0, v10, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 65
    iget v0, v10, Landroid/view/WindowManager$LayoutParams;->y:I

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", loadingUiHeight: "

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", wmParams.y: "

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/google/android/play/core/hsdp/service/zzax;->zzc:Landroid/view/WindowManager;

    .line 66
    invoke-interface {v0, v8, v10}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 68
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/google/android/play/core/hsdp/R$id;->content_frame:I

    .line 70
    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_11

    .line 71
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_11
    :goto_b
    return-void

    :catch_3
    move-exception v0

    .line 12
    const-string v2, "Error adding view to WindowManager"

    .line 73
    invoke-static {v7, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/play/core/hsdp/service/zzax;->zza:Landroid/view/View;

    return-void

    :cond_12
    const/4 v2, 0x0

    .line 38
    const-string v0, "Failed to load dismiss button."

    .line 74
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, v1, Lcom/google/android/play/core/hsdp/service/zzax;->zza:Landroid/view/View;

    return-void

    :catch_4
    move-exception v0

    .line 17
    const-string v2, "Error loading Play Prism icon from local resources."

    .line 20
    invoke-static {v7, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "Failed to load Play Prism icon."

    .line 21
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/play/core/hsdp/service/zzax;->zza:Landroid/view/View;

    return-void
.end method

.method final zzd()V
    .locals 7

    .line 1
    const-string v0, "HsdpLoadingPanel"

    iget-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzax;->zza:Landroid/view/View;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/google/android/play/core/hsdp/service/zzax;->zzb:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/play/core/hsdp/service/zzax;->zzb()V

    return-void

    .line 3
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/google/android/play/core/hsdp/service/zzax;->zzb:Landroid/app/Activity;

    .line 4
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/android/play/core/hsdp/R$dimen;->sdk_hsdp_loading_ui_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 5
    invoke-static {v3}, Lcom/google/android/play/core/hsdp/service/zza;->zzb(Landroid/app/Activity;)I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3f19999a    # 0.6f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 6
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 7
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v5, 0x280

    if-le v4, v5, :cond_2

    .line 8
    invoke-static {v3, v5}, Lcom/google/android/play/core/hsdp/service/zza;->zza(Landroid/app/Activity;I)I

    move-result v3

    .line 9
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0

    :cond_2
    const/4 v3, -0x1

    .line 10
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 9
    :goto_0
    iget-object v3, p0, Lcom/google/android/play/core/hsdp/service/zzax;->zzc:Landroid/view/WindowManager;

    .line 11
    invoke-interface {v3, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "updateLoadingView: updated window size."

    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    return-void

    :catch_0
    move-exception v1

    .line 10
    const-string v2, "updateLoadingView: error updating window size."

    .line 13
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
