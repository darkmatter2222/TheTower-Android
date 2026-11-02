.class Lcom/ironsource/unity/androidbridge/LevelPlayBridge$3;
.super Ljava/lang/Object;
.source "LevelPlayBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/unity/androidbridge/LevelPlayBridge;->onImpressionSuccess(Lcom/unity3d/mediation/impression/LevelPlayImpressionData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/unity/androidbridge/LevelPlayBridge;

.field final synthetic val$impressionData:Lcom/unity3d/mediation/impression/LevelPlayImpressionData;


# direct methods
.method constructor <init>(Lcom/ironsource/unity/androidbridge/LevelPlayBridge;Lcom/unity3d/mediation/impression/LevelPlayImpressionData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 153
    iput-object p1, p0, Lcom/ironsource/unity/androidbridge/LevelPlayBridge$3;->this$0:Lcom/ironsource/unity/androidbridge/LevelPlayBridge;

    iput-object p2, p0, Lcom/ironsource/unity/androidbridge/LevelPlayBridge$3;->val$impressionData:Lcom/unity3d/mediation/impression/LevelPlayImpressionData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/LevelPlayBridge$3;->this$0:Lcom/ironsource/unity/androidbridge/LevelPlayBridge;

    invoke-static {v0}, Lcom/ironsource/unity/androidbridge/LevelPlayBridge;->access$100(Lcom/ironsource/unity/androidbridge/LevelPlayBridge;)Lcom/ironsource/unity/androidbridge/UnityImpressionDataListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/LevelPlayBridge$3;->this$0:Lcom/ironsource/unity/androidbridge/LevelPlayBridge;

    invoke-static {v0}, Lcom/ironsource/unity/androidbridge/LevelPlayBridge;->access$100(Lcom/ironsource/unity/androidbridge/LevelPlayBridge;)Lcom/ironsource/unity/androidbridge/UnityImpressionDataListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/unity/androidbridge/LevelPlayBridge$3;->val$impressionData:Lcom/unity3d/mediation/impression/LevelPlayImpressionData;

    invoke-static {v1}, Lcom/ironsource/unity/androidbridge/AndroidBridgeUtilities;->getImpressionDataString(Lcom/unity3d/mediation/impression/LevelPlayImpressionData;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ironsource/unity/androidbridge/UnityImpressionDataListener;->onImpressionSuccess(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
