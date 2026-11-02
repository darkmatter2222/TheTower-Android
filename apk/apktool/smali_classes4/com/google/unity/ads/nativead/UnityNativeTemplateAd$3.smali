.class Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$3;
.super Ljava/lang/Object;
.source "UnityNativeTemplateAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->setPosition(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;

.field final synthetic val$positionX:I

.field final synthetic val$positionY:I


# direct methods
.method constructor <init>(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$positionX",
            "val$positionY"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 202
    iput p2, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$3;->val$positionX:I

    iput p3, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$3;->val$positionY:I

    iput-object p1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$3;->this$0:Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$3;->this$0:Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->-$$Nest$fputmPositionCode(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;I)V

    .line 206
    iget-object v0, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$3;->this$0:Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;

    iget v1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$3;->val$positionX:I

    invoke-static {v0, v1}, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->-$$Nest$fputmHorizontalOffset(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;I)V

    .line 207
    iget-object v0, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$3;->this$0:Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;

    iget v1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$3;->val$positionY:I

    invoke-static {v0, v1}, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->-$$Nest$fputmVerticalOffset(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;I)V

    .line 208
    iget-object v0, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$3;->this$0:Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;

    invoke-static {v0}, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->-$$Nest$mupdatePosition(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;)V

    return-void
.end method
