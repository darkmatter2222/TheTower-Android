.class public final synthetic Lcom/unity3d/services/core/properties/SdkProperties$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/InitializationListener;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/InitializationListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/services/core/properties/SdkProperties$$ExternalSyntheticLambda3;->f$0:Lcom/unity3d/ads/InitializationListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/unity3d/services/core/properties/SdkProperties$$ExternalSyntheticLambda3;->f$0:Lcom/unity3d/ads/InitializationListener;

    invoke-static {v0}, Lcom/unity3d/services/core/properties/SdkProperties;->lambda$notifyInitializationComplete$4(Lcom/unity3d/ads/InitializationListener;)V

    return-void
.end method
