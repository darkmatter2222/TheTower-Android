.class Lcom/unity3d/coherence/Coherence$1;
.super Landroid/content/BroadcastReceiver;
.source "Coherence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/coherence/Coherence;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/coherence/Coherence;


# direct methods
.method constructor <init>(Lcom/unity3d/coherence/Coherence;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/unity3d/coherence/Coherence$1;->this$0:Lcom/unity3d/coherence/Coherence;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 127
    iget-object p1, p0, Lcom/unity3d/coherence/Coherence$1;->this$0:Lcom/unity3d/coherence/Coherence;

    invoke-static {p1, p2}, Lcom/unity3d/coherence/Coherence;->-$$Nest$fputbatteryIntent(Lcom/unity3d/coherence/Coherence;Landroid/content/Intent;)V

    return-void
.end method
