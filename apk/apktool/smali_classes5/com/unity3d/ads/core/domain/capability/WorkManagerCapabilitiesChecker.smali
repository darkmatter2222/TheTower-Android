.class public final Lcom/unity3d/ads/core/domain/capability/WorkManagerCapabilitiesChecker;
.super Ljava/lang/Object;
.source "WorkManagerCapabilitiesChecker.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/capability/CapabilitiesChecker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/domain/capability/WorkManagerCapabilitiesChecker$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0014\u0008\u0002\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u0096\u0002J\u0008\u0010\r\u001a\u00020\u0007H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/unity3d/ads/core/domain/capability/WorkManagerCapabilitiesChecker;",
        "Lcom/unity3d/ads/core/domain/capability/CapabilitiesChecker;",
        "context",
        "Landroid/content/Context;",
        "isClassPresent",
        "Lkotlin/Function1;",
        "",
        "",
        "<init>",
        "(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V",
        "invoke",
        "",
        "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Capability;",
        "isStartupProviderRegistered",
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
.field public static final Companion:Lcom/unity3d/ads/core/domain/capability/WorkManagerCapabilitiesChecker$Companion;

.field private static final NO_MATCH_FLAGS:I = 0x0

.field public static final STARTUP_PROVIDER_CLASS:Ljava/lang/String; = "androidx.startup.InitializationProvider"

.field public static final WORK_DATABASE_IMPL:Ljava/lang/String; = "androidx.work.impl.WorkDatabase_Impl"

.field public static final WORK_MANAGER:Ljava/lang/String; = "androidx.work.WorkManager"


# instance fields
.field private final context:Landroid/content/Context;

.field private final isClassPresent:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/unity3d/ads/core/domain/capability/WorkManagerCapabilitiesChecker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/domain/capability/WorkManagerCapabilitiesChecker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/unity3d/ads/core/domain/capability/WorkManagerCapabilitiesChecker;->Companion:Lcom/unity3d/ads/core/domain/capability/WorkManagerCapabilitiesChecker$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isClassPresent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/capability/WorkManagerCapabilitiesChecker;->context:Landroid/content/Context;

    .line 17
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/capability/WorkManagerCapabilitiesChecker;->isClassPresent:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 17
    sget-object p2, Lcom/unity3d/ads/core/domain/capability/WorkManagerCapabilitiesChecker$1;->INSTANCE:Lcom/unity3d/ads/core/domain/capability/WorkManagerCapabilitiesChecker$1;

    check-cast p2, Lkotlin/jvm/functions/Function1;

    .line 15
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/unity3d/ads/core/domain/capability/WorkManagerCapabilitiesChecker;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final isStartupProviderRegistered()Z
    .locals 4

    .line 38
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/unity3d/ads/core/domain/capability/WorkManagerCapabilitiesChecker;

    .line 40
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/capability/WorkManagerCapabilitiesChecker;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 41
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/unity3d/ads/core/domain/capability/WorkManagerCapabilitiesChecker;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "androidx.startup.InitializationProvider"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 38
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 44
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public invoke()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Capability;",
            ">;"
        }
    .end annotation

    .line 20
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/capability/WorkManagerCapabilitiesChecker;->isClassPresent:Lkotlin/jvm/functions/Function1;

    const-string v2, "androidx.work.WorkManager"

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Capability;->CAPABILITY_WORK_MANAGER:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Capability;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_0
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/capability/WorkManagerCapabilitiesChecker;->isClassPresent:Lkotlin/jvm/functions/Function1;

    const-string v2, "androidx.work.impl.WorkDatabase_Impl"

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 23
    sget-object v1, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Capability;->CAPABILITY_WORK_MANAGER_DATABASE_IMPL:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Capability;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_1
    invoke-direct {p0}, Lcom/unity3d/ads/core/domain/capability/WorkManagerCapabilitiesChecker;->isStartupProviderRegistered()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 26
    sget-object v1, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Capability;->CAPABILITY_ANDROIDX_STARTUP_PROVIDER:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Capability;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_2
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
