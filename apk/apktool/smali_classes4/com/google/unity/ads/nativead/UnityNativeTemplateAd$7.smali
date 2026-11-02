.class Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$7;
.super Ljava/lang/Object;
.source "UnityNativeTemplateAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->renderCustomSizeAtPositionCode(Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;Lcom/google/android/gms/ads/AdSize;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;

.field final synthetic val$adSize:Lcom/google/android/gms/ads/AdSize;

.field final synthetic val$templateStyle:Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;


# direct methods
.method constructor <init>(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;Lcom/google/android/gms/ads/AdSize;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$templateStyle",
            "val$adSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 334
    iput-object p2, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$7;->val$templateStyle:Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;

    iput-object p3, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$7;->val$adSize:Lcom/google/android/gms/ads/AdSize;

    iput-object p1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$7;->this$0:Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 337
    iget-object v0, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$7;->this$0:Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;

    iget-object v1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$7;->val$templateStyle:Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;

    invoke-static {v0}, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->-$$Nest$fgetactivity(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;->asTemplateView(Landroid/content/Context;)Lcom/google/android/ads/nativetemplates/TemplateView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->-$$Nest$fputtemplateView(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;Lcom/google/android/ads/nativetemplates/TemplateView;)V

    .line 338
    iget-object v0, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$7;->this$0:Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;

    invoke-static {v0}, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->-$$Nest$fgettemplateView(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;)Lcom/google/android/ads/nativetemplates/TemplateView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$7;->this$0:Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;

    invoke-static {v1}, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->-$$Nest$fgetnativeAd(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;)Lcom/google/android/gms/ads/nativead/NativeAd;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/ads/nativetemplates/TemplateView;->setNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd;)V

    .line 340
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$7;->this$0:Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;

    invoke-static {v1}, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->-$$Nest$fgetactivity(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 341
    iget-object v1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$7;->this$0:Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;

    invoke-virtual {v1}, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->getLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    .line 342
    iget-object v2, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$7;->val$adSize:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 343
    iget-object v2, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$7;->val$adSize:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 344
    iget-object v2, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$7;->this$0:Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;

    invoke-static {v2}, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->-$$Nest$fgettemplateView(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;)Lcom/google/android/ads/nativetemplates/TemplateView;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 345
    iget-object v1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$7;->this$0:Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;

    invoke-static {v1}, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->-$$Nest$fgetactivity(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 349
    iget-object v0, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$7;->this$0:Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;

    invoke-virtual {v0}, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->setLayoutChangeListener()V

    return-void
.end method
