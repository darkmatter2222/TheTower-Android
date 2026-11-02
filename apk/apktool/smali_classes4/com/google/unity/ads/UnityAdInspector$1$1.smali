.class Lcom/google/unity/ads/UnityAdInspector$1$1;
.super Ljava/lang/Object;
.source "UnityAdInspector.java"

# interfaces
.implements Lcom/google/android/gms/ads/OnAdInspectorClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/unity/ads/UnityAdInspector$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$adInspectorListener:Lcom/google/unity/ads/UnityAdInspectorListener;


# direct methods
.method constructor <init>(Lcom/google/unity/ads/UnityAdInspector$1;Lcom/google/unity/ads/UnityAdInspectorListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$adInspectorListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    iput-object p2, p0, Lcom/google/unity/ads/UnityAdInspector$1$1;->val$adInspectorListener:Lcom/google/unity/ads/UnityAdInspectorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdInspectorClosed(Lcom/google/android/gms/ads/AdInspectorError;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adInspectorError"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/google/unity/ads/UnityAdInspector$1$1;->val$adInspectorListener:Lcom/google/unity/ads/UnityAdInspectorListener;

    if-eqz v0, :cond_0

    .line 26
    invoke-interface {v0, p1}, Lcom/google/unity/ads/UnityAdInspectorListener;->onAdInspectorClosed(Lcom/google/android/gms/ads/AdInspectorError;)V

    :cond_0
    return-void
.end method
