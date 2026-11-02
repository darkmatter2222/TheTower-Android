.class public final Lcom/unity3d/player/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1679
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 27
    :try_start_0
    sget-object v0, Lcom/unity3d/player/a/c;->b:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2

    .line 35
    sget-object v1, Lcom/unity3d/player/a/c;->c:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 36
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 38
    sget-object v1, Lcom/unity3d/player/a/c;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 39
    sget-object v1, Lcom/unity3d/player/a/c;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    .line 41
    sput-object v0, Lcom/unity3d/player/a/c;->b:Landroid/widget/ProgressBar;

    .line 42
    sput-object v0, Lcom/unity3d/player/a/c;->c:Landroid/view/View;

    :cond_1
    const/4 v0, -0x1

    .line 44
    sput v0, Lcom/unity3d/player/a/c;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1685
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception when hiding Activity Indicator "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v1, v0}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    :cond_2
    return-void
.end method
