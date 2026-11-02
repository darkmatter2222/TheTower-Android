.class public final synthetic Lcom/unity3d/ads/InterstitialAd$Companion$load$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/LoadListener;

.field public final synthetic f$1:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/LoadListener;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/InterstitialAd$Companion$load$1$$ExternalSyntheticLambda0;->f$0:Lcom/unity3d/ads/LoadListener;

    iput-object p2, p0, Lcom/unity3d/ads/InterstitialAd$Companion$load$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/InterstitialAd$Companion$load$1$$ExternalSyntheticLambda0;->f$0:Lcom/unity3d/ads/LoadListener;

    iget-object v1, p0, Lcom/unity3d/ads/InterstitialAd$Companion$load$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Throwable;

    invoke-static {v0, v1}, Lcom/unity3d/ads/InterstitialAd$Companion$load$1;->$r8$lambda$pLoRI_BgPII6rqYgZNXgT9za8S4(Lcom/unity3d/ads/LoadListener;Ljava/lang/Throwable;)V

    return-void
.end method
