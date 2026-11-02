.class public final Lcom/unity3d/ads/core/domain/capability/AndroidGatherQuickCapabilities;
.super Ljava/lang/Object;
.source "AndroidGatherQuickCapabilities.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/capability/GatherQuickCapabilities;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidGatherQuickCapabilities.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidGatherQuickCapabilities.kt\ncom/unity3d/ads/core/domain/capability/AndroidGatherQuickCapabilities\n+ 2 QuickCapabilitiesKt.kt\ngatewayprotocol/v1/QuickCapabilitiesKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 QuickCapabilitiesKt.kt\ngatewayprotocol/v1/QuickCapabilitiesKt$AndroidKt$Dsl\n*L\n1#1,23:1\n95#2:24\n1#3:25\n1374#4:26\n1460#4,5:27\n192#5,2:32\n*S KotlinDebug\n*F\n+ 1 AndroidGatherQuickCapabilities.kt\ncom/unity3d/ads/core/domain/capability/AndroidGatherQuickCapabilities\n*L\n16#1:24\n16#1:25\n17#1:26\n17#1:27,5\n17#1:32,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\t\u0010\r\u001a\u00020\u0008H\u0096\u0002R\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0007\u001a\u00020\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/unity3d/ads/core/domain/capability/AndroidGatherQuickCapabilities;",
        "Lcom/unity3d/ads/core/domain/capability/GatherQuickCapabilities;",
        "checkers",
        "",
        "Lcom/unity3d/ads/core/domain/capability/CapabilitiesChecker;",
        "<init>",
        "(Ljava/util/List;)V",
        "capabilities",
        "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;",
        "getCapabilities",
        "()Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;",
        "capabilities$delegate",
        "Lkotlin/Lazy;",
        "invoke",
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


# instance fields
.field private final capabilities$delegate:Lkotlin/Lazy;

.field private final checkers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/unity3d/ads/core/domain/capability/CapabilitiesChecker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$gV5s8hZpIBB7D0sYDhBKEZr5uU0(Lcom/unity3d/ads/core/domain/capability/AndroidGatherQuickCapabilities;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;
    .locals 0

    invoke-static {p0}, Lcom/unity3d/ads/core/domain/capability/AndroidGatherQuickCapabilities;->capabilities_delegate$lambda$2(Lcom/unity3d/ads/core/domain/capability/AndroidGatherQuickCapabilities;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/unity3d/ads/core/domain/capability/CapabilitiesChecker;",
            ">;)V"
        }
    .end annotation

    const-string v0, "checkers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/capability/AndroidGatherQuickCapabilities;->checkers:Ljava/util/List;

    .line 15
    new-instance p1, Lcom/unity3d/ads/core/domain/capability/AndroidGatherQuickCapabilities$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/unity3d/ads/core/domain/capability/AndroidGatherQuickCapabilities$$ExternalSyntheticLambda0;-><init>(Lcom/unity3d/ads/core/domain/capability/AndroidGatherQuickCapabilities;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/capability/AndroidGatherQuickCapabilities;->capabilities$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private static final capabilities_delegate$lambda$2(Lcom/unity3d/ads/core/domain/capability/AndroidGatherQuickCapabilities;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;
    .locals 4

    .line 16
    sget-object v0, Lgatewayprotocol/v1/QuickCapabilitiesKt;->INSTANCE:Lgatewayprotocol/v1/QuickCapabilitiesKt;

    .line 24
    sget-object v0, Lgatewayprotocol/v1/QuickCapabilitiesKt$AndroidKt$Dsl;->Companion:Lgatewayprotocol/v1/QuickCapabilitiesKt$AndroidKt$Dsl$Companion;

    invoke-static {}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->newBuilder()Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Builder;

    move-result-object v1

    const-string v2, "newBuilder(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lgatewayprotocol/v1/QuickCapabilitiesKt$AndroidKt$Dsl$Companion;->_create(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Builder;)Lgatewayprotocol/v1/QuickCapabilitiesKt$AndroidKt$Dsl;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lgatewayprotocol/v1/QuickCapabilitiesKt$AndroidKt$Dsl;->getCapabilities()Lcom/google/protobuf/kotlin/DslList;

    move-result-object v1

    iget-object p0, p0, Lcom/unity3d/ads/core/domain/capability/AndroidGatherQuickCapabilities;->checkers:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    .line 26
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 27
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 28
    check-cast v3, Lcom/unity3d/ads/core/domain/capability/CapabilitiesChecker;

    .line 17
    invoke-interface {v3}, Lcom/unity3d/ads/core/domain/capability/CapabilitiesChecker;->invoke()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 29
    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 31
    :cond_0
    check-cast v2, Ljava/util/List;

    .line 26
    check-cast v2, Ljava/lang/Iterable;

    .line 17
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 32
    invoke-virtual {v0, v1, p0}, Lgatewayprotocol/v1/QuickCapabilitiesKt$AndroidKt$Dsl;->addAllCapabilities(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V

    .line 24
    invoke-virtual {v0}, Lgatewayprotocol/v1/QuickCapabilitiesKt$AndroidKt$Dsl;->_build()Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;

    move-result-object p0

    return-object p0
.end method

.method private final getCapabilities()Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/capability/AndroidGatherQuickCapabilities;->capabilities$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;

    return-object v0
.end method


# virtual methods
.method public invoke()Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/unity3d/ads/core/domain/capability/AndroidGatherQuickCapabilities;->getCapabilities()Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;

    move-result-object v0

    return-object v0
.end method
