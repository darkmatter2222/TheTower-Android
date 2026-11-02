.class public final synthetic Lcom/unity3d/services/core/di/ServiceProvider$$ExternalSyntheticLambda88;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/services/core/di/ServicesRegistry;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/services/core/di/ServiceProvider$$ExternalSyntheticLambda88;->f$0:Lcom/unity3d/services/core/di/ServicesRegistry;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/unity3d/services/core/di/ServiceProvider$$ExternalSyntheticLambda88;->f$0:Lcom/unity3d/services/core/di/ServicesRegistry;

    invoke-static {v0}, Lcom/unity3d/services/core/di/ServiceProvider;->$r8$lambda$_um3QehU0oXR5xxdvT4wk2JZ1oQ(Lcom/unity3d/services/core/di/ServicesRegistry;)Lcom/unity3d/ads/core/domain/GetInitializationRequestPayload;

    move-result-object v0

    return-object v0
.end method
