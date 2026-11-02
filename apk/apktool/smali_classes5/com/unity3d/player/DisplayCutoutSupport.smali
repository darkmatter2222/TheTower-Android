.class Lcom/unity3d/player/DisplayCutoutSupport;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CMD_ARG_FORCE_RENDER_OUTSIDE_SAFEAREA:Ljava/lang/String; = "-force-render-outside-safearea="

.field private static final RENDER_OUTSIDE_SAFEAREA:Ljava/lang/String; = "unity.render-outside-safearea"

.field private static s_DisplayCutoutSupport:I = -0x1


# direct methods
.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getDisplayCutoutSupport(Landroid/app/Activity;)Z
    .locals 5

    .line 15
    sget v0, Lcom/unity3d/player/DisplayCutoutSupport;->s_DisplayCutoutSupport:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    return v1

    .line 19
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "unity"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 21
    const-string v4, "-force-render-outside-safearea=true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 22
    sput v2, Lcom/unity3d/player/DisplayCutoutSupport;->s_DisplayCutoutSupport:I

    goto :goto_0

    .line 23
    :cond_2
    const-string v4, "-force-render-outside-safearea=false"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 24
    sput v1, Lcom/unity3d/player/DisplayCutoutSupport;->s_DisplayCutoutSupport:I

    .line 27
    :cond_3
    :goto_0
    sget v0, Lcom/unity3d/player/DisplayCutoutSupport;->s_DisplayCutoutSupport:I

    if-ne v0, v3, :cond_4

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v3, 0x80

    invoke-virtual {v0, p0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 31
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "unity.render-outside-safearea"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    sput p0, Lcom/unity3d/player/DisplayCutoutSupport;->s_DisplayCutoutSupport:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 34
    :catch_0
    sput v1, Lcom/unity3d/player/DisplayCutoutSupport;->s_DisplayCutoutSupport:I

    .line 36
    :cond_4
    :goto_1
    sget p0, Lcom/unity3d/player/DisplayCutoutSupport;->s_DisplayCutoutSupport:I

    if-ne p0, v2, :cond_5

    move v1, v2

    :cond_5
    return v1
.end method

.method public static setLayoutCutoutMode(Landroid/app/Activity;)V
    .locals 1

    if-eqz p0, :cond_3

    .line 41
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/unity3d/player/PlatformSupport;->PIE_SUPPORT:Z

    if-eqz v0, :cond_3

    .line 43
    sget-boolean v0, Lcom/unity3d/player/PlatformSupport;->VANILLA_ICE_CREAM_SUPPORT:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    sget-boolean v0, Lcom/unity3d/player/PlatformSupport;->RED_VELVET_CAKE_SUPPORT:Z

    if-eqz v0, :cond_2

    .line 49
    invoke-static {p0}, Lcom/unity3d/player/DisplayCutoutSupport;->getDisplayCutoutSupport(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    const/4 v0, 0x3

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 55
    :cond_2
    invoke-static {p0}, Lcom/unity3d/player/DisplayCutoutSupport;->getDisplayCutoutSupport(Landroid/app/Activity;)Z

    move-result v0

    .line 59
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :cond_3
    return-void
.end method
