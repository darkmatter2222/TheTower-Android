.class final Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$44;
.super Ljava/lang/Object;
.source "ServiceProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/core/di/ServiceProvider;->initialize()Lcom/unity3d/services/core/di/IServicesRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/unity3d/ads/core/data/model/GatewayUrl;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nServiceProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ServiceProvider.kt\ncom/unity3d/services/core/di/ServiceProvider$initialize$1$44\n+ 2 ServicesRegistry.kt\ncom/unity3d/services/core/di/ServicesRegistry\n*L\n1#1,1456:1\n57#2,3:1457\n*S KotlinDebug\n*F\n+ 1 ServiceProvider.kt\ncom/unity3d/services/core/di/ServiceProvider$initialize$1$44\n*L\n556#1:1457,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $this_registry:Lcom/unity3d/services/core/di/ServicesRegistry;


# direct methods
.method constructor <init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$44;->$this_registry:Lcom/unity3d/services/core/di/ServicesRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 556
    invoke-virtual {p0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$44;->invoke-BZg6m_U()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/core/data/model/GatewayUrl;->box-impl(Ljava/lang/String;)Lcom/unity3d/ads/core/data/model/GatewayUrl;

    move-result-object v0

    return-object v0
.end method

.method public final invoke-BZg6m_U()Ljava/lang/String;
    .locals 4

    .line 556
    iget-object v0, p0, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$44;->$this_registry:Lcom/unity3d/services/core/di/ServicesRegistry;

    .line 1458
    new-instance v1, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v2, Lcom/unity3d/ads/core/configuration/AndroidManifestStringPropertyReader;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, ""

    invoke-direct {v1, v3, v2}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    .line 1459
    invoke-virtual {v0, v1}, Lcom/unity3d/services/core/di/ServicesRegistry;->resolveService(Lcom/unity3d/services/core/di/ServiceKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/core/configuration/AndroidManifestStringPropertyReader;

    .line 556
    invoke-static {v0}, Lcom/unity3d/services/core/di/ServiceProviderKt;->access$provideGatewayUrl(Lcom/unity3d/ads/core/configuration/AndroidManifestStringPropertyReader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
