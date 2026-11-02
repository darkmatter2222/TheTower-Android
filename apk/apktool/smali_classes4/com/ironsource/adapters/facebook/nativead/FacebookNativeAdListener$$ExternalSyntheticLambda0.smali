.class public final synthetic Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/facebook/ads/NativeAd;

.field public final synthetic f$1:Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdListener;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/NativeAd;Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdListener$$ExternalSyntheticLambda0;->f$0:Lcom/facebook/ads/NativeAd;

    iput-object p2, p0, Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdListener$$ExternalSyntheticLambda0;->f$1:Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdListener;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdListener$$ExternalSyntheticLambda0;->f$0:Lcom/facebook/ads/NativeAd;

    iget-object v1, p0, Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdListener$$ExternalSyntheticLambda0;->f$1:Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdListener;

    invoke-static {v0, v1}, Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdListener;->$r8$lambda$PF1UKrvpG5ITYZaC65Q8pFGfsek(Lcom/facebook/ads/NativeAd;Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdListener;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
