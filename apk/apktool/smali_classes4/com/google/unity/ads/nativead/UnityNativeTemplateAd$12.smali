.class Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$12;
.super Ljava/lang/Object;
.source "UnityNativeTemplateAd.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->setLayoutChangeListener()V
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

    .line 446
    iput-object p1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$12;->this$0:Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "left",
            "top",
            "right",
            "bottom",
            "oldLeft",
            "oldTop",
            "oldRight",
            "oldBottom"
        }
    .end annotation

    if-ne p2, p6, :cond_0

    if-ne p4, p8, :cond_0

    if-ne p5, p9, :cond_0

    if-ne p3, p7, :cond_0

    return-void

    .line 464
    :cond_0
    iget-object p1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$12;->this$0:Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;

    iget-boolean p1, p1, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->hidden:Z

    if-nez p1, :cond_1

    .line 465
    iget-object p1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$12;->this$0:Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;

    invoke-static {p1}, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->-$$Nest$mupdatePosition(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;)V

    :cond_1
    return-void
.end method
