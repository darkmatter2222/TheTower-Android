.class Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$11;
.super Ljava/lang/Object;
.source "UnityNativeTemplateAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->destroy()V
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

    .line 417
    iput-object p1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$11;->this$0:Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 420
    iget-object v0, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$11;->this$0:Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;

    invoke-static {v0}, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->-$$Nest$fgettemplateView(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;)Lcom/google/android/ads/nativetemplates/TemplateView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$11;->this$0:Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;

    invoke-static {v0}, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->-$$Nest$fgettemplateView(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;)Lcom/google/android/ads/nativetemplates/TemplateView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/ads/nativetemplates/TemplateView;->destroyNativeAd()V

    .line 422
    iget-object v0, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$11;->this$0:Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;

    invoke-static {v0}, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->-$$Nest$fgettemplateView(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;)Lcom/google/android/ads/nativetemplates/TemplateView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/ads/nativetemplates/TemplateView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 423
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 424
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$11;->this$0:Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;

    invoke-static {v1}, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->-$$Nest$fgettemplateView(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;)Lcom/google/android/ads/nativetemplates/TemplateView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
