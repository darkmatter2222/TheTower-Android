.class public final synthetic Lcom/ironsource/unity/androidbridge/BannerAd$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/unity/androidbridge/BannerAd;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:F

.field public final synthetic f$3:F


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/unity/androidbridge/BannerAd;Ljava/lang/String;FF)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/unity/androidbridge/BannerAd$$ExternalSyntheticLambda2;->f$0:Lcom/ironsource/unity/androidbridge/BannerAd;

    iput-object p2, p0, Lcom/ironsource/unity/androidbridge/BannerAd$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/ironsource/unity/androidbridge/BannerAd$$ExternalSyntheticLambda2;->f$2:F

    iput p4, p0, Lcom/ironsource/unity/androidbridge/BannerAd$$ExternalSyntheticLambda2;->f$3:F

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/BannerAd$$ExternalSyntheticLambda2;->f$0:Lcom/ironsource/unity/androidbridge/BannerAd;

    iget-object v1, p0, Lcom/ironsource/unity/androidbridge/BannerAd$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/ironsource/unity/androidbridge/BannerAd$$ExternalSyntheticLambda2;->f$2:F

    iget v3, p0, Lcom/ironsource/unity/androidbridge/BannerAd$$ExternalSyntheticLambda2;->f$3:F

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/ironsource/unity/androidbridge/BannerAd;->lambda$setup$0$com-ironsource-unity-androidbridge-BannerAd(Ljava/lang/String;FFLandroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method
