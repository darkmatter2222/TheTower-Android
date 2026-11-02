.class Lcom/ironsource/unity/androidbridge/BannerAd$4;
.super Ljava/lang/Object;
.source "BannerAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/unity/androidbridge/BannerAd;->setPosition(Ljava/lang/String;FFZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/unity/androidbridge/BannerAd;

.field final synthetic val$position:Ljava/lang/String;

.field final synthetic val$respectSafeArea:Z

.field final synthetic val$x:F

.field final synthetic val$y:F


# direct methods
.method constructor <init>(Lcom/ironsource/unity/androidbridge/BannerAd;Ljava/lang/String;FFZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 187
    iput-object p1, p0, Lcom/ironsource/unity/androidbridge/BannerAd$4;->this$0:Lcom/ironsource/unity/androidbridge/BannerAd;

    iput-object p2, p0, Lcom/ironsource/unity/androidbridge/BannerAd$4;->val$position:Ljava/lang/String;

    iput p3, p0, Lcom/ironsource/unity/androidbridge/BannerAd$4;->val$x:F

    iput p4, p0, Lcom/ironsource/unity/androidbridge/BannerAd$4;->val$y:F

    iput-boolean p5, p0, Lcom/ironsource/unity/androidbridge/BannerAd$4;->val$respectSafeArea:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 190
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/BannerAd$4;->this$0:Lcom/ironsource/unity/androidbridge/BannerAd;

    iget-object v0, v0, Lcom/ironsource/unity/androidbridge/BannerAd;->mBannerAdView:Lcom/unity3d/mediation/banner/LevelPlayBannerAdView;

    invoke-virtual {v0}, Lcom/unity3d/mediation/banner/LevelPlayBannerAdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/BannerAd$4;->this$0:Lcom/ironsource/unity/androidbridge/BannerAd;

    iget-object v0, v0, Lcom/ironsource/unity/androidbridge/BannerAd;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/ironsource/unity/androidbridge/BannerAd$4;->this$0:Lcom/ironsource/unity/androidbridge/BannerAd;

    iget-object v1, v1, Lcom/ironsource/unity/androidbridge/BannerAd;->mBannerAdView:Lcom/unity3d/mediation/banner/LevelPlayBannerAdView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/BannerAd$4;->this$0:Lcom/ironsource/unity/androidbridge/BannerAd;

    iget-object v1, p0, Lcom/ironsource/unity/androidbridge/BannerAd$4;->val$position:Ljava/lang/String;

    iget v2, p0, Lcom/ironsource/unity/androidbridge/BannerAd$4;->val$x:F

    iget v3, p0, Lcom/ironsource/unity/androidbridge/BannerAd$4;->val$y:F

    iget-boolean v4, p0, Lcom/ironsource/unity/androidbridge/BannerAd$4;->val$respectSafeArea:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ironsource/unity/androidbridge/BannerAd;->access$000(Lcom/ironsource/unity/androidbridge/BannerAd;Ljava/lang/String;FFZ)V

    .line 197
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/BannerAd$4;->this$0:Lcom/ironsource/unity/androidbridge/BannerAd;

    iget-object v0, v0, Lcom/ironsource/unity/androidbridge/BannerAd;->mBannerAdView:Lcom/unity3d/mediation/banner/LevelPlayBannerAdView;

    new-instance v1, Lcom/ironsource/unity/androidbridge/BannerAd$4$1;

    invoke-direct {v1, p0}, Lcom/ironsource/unity/androidbridge/BannerAd$4$1;-><init>(Lcom/ironsource/unity/androidbridge/BannerAd$4;)V

    invoke-virtual {v0, v1}, Lcom/unity3d/mediation/banner/LevelPlayBannerAdView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method
