.class Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$13;
.super Ljava/lang/Object;
.source "UnityNativeTemplateAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->updatePosition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;


# direct methods
.method constructor <init>(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 483
    iput-object p1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$13;->this$0:Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 486
    iget-object v0, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$13;->this$0:Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;

    invoke-virtual {v0}, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->getLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    .line 487
    iget-object v1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$13;->this$0:Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;

    invoke-static {v1}, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->-$$Nest$fgetmAdSize(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;)Lcom/google/android/gms/ads/AdSize;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 488
    iget-object v1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$13;->this$0:Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;

    invoke-static {v1}, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->-$$Nest$fgetmAdSize(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;)Lcom/google/android/gms/ads/AdSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 489
    iget-object v1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$13;->this$0:Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;

    invoke-static {v1}, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->-$$Nest$fgetmAdSize(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;)Lcom/google/android/gms/ads/AdSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 491
    :cond_0
    iget-object v1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$13;->this$0:Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;

    invoke-static {v1}, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->-$$Nest$fgettemplateView(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;)Lcom/google/android/ads/nativetemplates/TemplateView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/ads/nativetemplates/TemplateView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
