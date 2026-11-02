.class public final Lcom/unity3d/ads/core/data/datasource/AndroidMediationDataSource;
.super Ljava/lang/Object;
.source "AndroidMediationDataSource.kt"

# interfaces
.implements Lcom/unity3d/ads/core/data/datasource/MediationDataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/data/datasource/AndroidMediationDataSource$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0016\u0010\n\u001a\u0004\u0018\u00010\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\tR\u0016\u0010\u000c\u001a\u0004\u0018\u00010\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\t\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/unity3d/ads/core/data/datasource/AndroidMediationDataSource;",
        "Lcom/unity3d/ads/core/data/datasource/MediationDataSource;",
        "storage",
        "Lcom/unity3d/services/core/misc/JsonStorage;",
        "<init>",
        "(Lcom/unity3d/services/core/misc/JsonStorage;)V",
        "name",
        "",
        "getName",
        "()Ljava/lang/String;",
        "version",
        "getVersion",
        "adapterVersion",
        "getAdapterVersion",
        "Companion",
        "unity-ads_defaultRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/unity3d/ads/core/data/datasource/AndroidMediationDataSource$Companion;

.field private static final MEDIATION_ADAPTER_VERSION:Ljava/lang/String; = "adapter_version"

.field public static final MEDIATION_ADAPTER_VERSION_KEY:Ljava/lang/String; = "mediation.adapter_version.value"

.field private static final MEDIATION_NAME:Ljava/lang/String; = "name"

.field public static final MEDIATION_NAME_KEY:Ljava/lang/String; = "mediation.name.value"

.field private static final MEDIATION_STORAGE_NAME:Ljava/lang/String; = "mediation"

.field private static final MEDIATION_VALUE:Ljava/lang/String; = "value"

.field private static final MEDIATION_VERSION:Ljava/lang/String; = "version"

.field public static final MEDIATION_VERSION_KEY:Ljava/lang/String; = "mediation.version.value"


# instance fields
.field private final storage:Lcom/unity3d/services/core/misc/JsonStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/unity3d/ads/core/data/datasource/AndroidMediationDataSource$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/data/datasource/AndroidMediationDataSource$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/unity3d/ads/core/data/datasource/AndroidMediationDataSource;->Companion:Lcom/unity3d/ads/core/data/datasource/AndroidMediationDataSource$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/unity3d/services/core/misc/JsonStorage;)V
    .locals 1

    const-string v0, "storage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/unity3d/ads/core/data/datasource/AndroidMediationDataSource;->storage:Lcom/unity3d/services/core/misc/JsonStorage;

    return-void
.end method


# virtual methods
.method public getAdapterVersion()Ljava/lang/String;
    .locals 2

    .line 15
    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/AndroidMediationDataSource;->storage:Lcom/unity3d/services/core/misc/JsonStorage;

    const-string v1, "mediation.adapter_version.value"

    invoke-virtual {v0, v1}, Lcom/unity3d/services/core/misc/JsonStorage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/AndroidMediationDataSource;->storage:Lcom/unity3d/services/core/misc/JsonStorage;

    const-string v1, "mediation.name.value"

    invoke-virtual {v0, v1}, Lcom/unity3d/services/core/misc/JsonStorage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/AndroidMediationDataSource;->storage:Lcom/unity3d/services/core/misc/JsonStorage;

    const-string v1, "mediation.version.value"

    invoke-virtual {v0, v1}, Lcom/unity3d/services/core/misc/JsonStorage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
