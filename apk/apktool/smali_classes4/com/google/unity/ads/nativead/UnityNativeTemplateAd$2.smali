.class Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$2;
.super Ljava/lang/Object;
.source "UnityNativeTemplateAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->setPositionCode(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;

.field final synthetic val$positionCode:I


# direct methods
.method constructor <init>(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$positionCode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 185
    iput p2, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$2;->val$positionCode:I

    iput-object p1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$2;->this$0:Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$2;->this$0:Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;

    iget v1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$2;->val$positionCode:I

    invoke-static {v0, v1}, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->-$$Nest$fputmPositionCode(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;I)V

    .line 189
    iget-object v0, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$2;->this$0:Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;

    invoke-static {v0}, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->-$$Nest$mupdatePosition(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;)V

    return-void
.end method
