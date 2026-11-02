.class Lcom/google/unity/ads/Banner$3;
.super Lcom/google/android/gms/ads/AdListener;
.source "Banner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/unity/ads/Banner;->createAdView(Ljava/lang/String;Lcom/google/android/gms/ads/AdSize;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/unity/ads/Banner;


# direct methods
.method constructor <init>(Lcom/google/unity/ads/Banner;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 158
    iput-object p1, p0, Lcom/google/unity/ads/Banner$3;->this$0:Lcom/google/unity/ads/Banner;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/google/unity/ads/Banner$3;->this$0:Lcom/google/unity/ads/Banner;

    iget-object v0, v0, Lcom/google/unity/ads/Banner;->unityListener:Lcom/google/unity/ads/UnityAdListener;

    if-eqz v0, :cond_0

    .line 246
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/unity/ads/Banner$3$6;

    invoke-direct {v1, p0}, Lcom/google/unity/ads/Banner$3$6;-><init>(Lcom/google/unity/ads/Banner$3;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 255
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public onAdClosed()V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/google/unity/ads/Banner$3;->this$0:Lcom/google/unity/ads/Banner;

    iget-object v0, v0, Lcom/google/unity/ads/Banner;->unityListener:Lcom/google/unity/ads/UnityAdListener;

    if-eqz v0, :cond_0

    .line 214
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/unity/ads/Banner$3$4;

    invoke-direct {v1, p0}, Lcom/google/unity/ads/Banner$3$4;-><init>(Lcom/google/unity/ads/Banner$3;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 223
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "error"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/google/unity/ads/Banner$3;->this$0:Lcom/google/unity/ads/Banner;

    iget-object v0, v0, Lcom/google/unity/ads/Banner;->unityListener:Lcom/google/unity/ads/UnityAdListener;

    if-eqz v0, :cond_0

    .line 182
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/unity/ads/Banner$3$2;

    invoke-direct {v1, p0, p1}, Lcom/google/unity/ads/Banner$3$2;-><init>(Lcom/google/unity/ads/Banner$3;Lcom/google/android/gms/ads/LoadAdError;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 191
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public onAdImpression()V
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/google/unity/ads/Banner$3;->this$0:Lcom/google/unity/ads/Banner;

    iget-object v0, v0, Lcom/google/unity/ads/Banner;->unityListener:Lcom/google/unity/ads/UnityAdListener;

    if-eqz v0, :cond_0

    .line 230
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/unity/ads/Banner$3$5;

    invoke-direct {v1, p0}, Lcom/google/unity/ads/Banner$3$5;-><init>(Lcom/google/unity/ads/Banner$3;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 239
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/google/unity/ads/Banner$3;->this$0:Lcom/google/unity/ads/Banner;

    iget-object v0, v0, Lcom/google/unity/ads/Banner;->unityListener:Lcom/google/unity/ads/UnityAdListener;

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/google/unity/ads/Banner$3;->this$0:Lcom/google/unity/ads/Banner;

    iget-boolean v0, v0, Lcom/google/unity/ads/Banner;->hidden:Z

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/google/unity/ads/Banner$3;->this$0:Lcom/google/unity/ads/Banner;

    invoke-virtual {v0}, Lcom/google/unity/ads/Banner;->show()V

    .line 166
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/unity/ads/Banner$3$1;

    invoke-direct {v1, p0}, Lcom/google/unity/ads/Banner$3$1;-><init>(Lcom/google/unity/ads/Banner$3;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 175
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method public onAdOpened()V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/google/unity/ads/Banner$3;->this$0:Lcom/google/unity/ads/Banner;

    iget-object v0, v0, Lcom/google/unity/ads/Banner;->unityListener:Lcom/google/unity/ads/UnityAdListener;

    if-eqz v0, :cond_0

    .line 198
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/unity/ads/Banner$3$3;

    invoke-direct {v1, p0}, Lcom/google/unity/ads/Banner$3$3;-><init>(Lcom/google/unity/ads/Banner$3;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 207
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
