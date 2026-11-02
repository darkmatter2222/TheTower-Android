.class public final Lcom/unity3d/services/core/reflection/AppLovinCommunicatorBridge;
.super Lcom/unity3d/services/core/reflection/GenericBridge;
.source "AppLovinCommunicatorBridge.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/services/core/reflection/AppLovinCommunicatorBridge$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H\u0014J\u0018\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0007J\u0016\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u0007J\n\u0010\u0010\u001a\u0004\u0018\u00010\tH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/unity3d/services/core/reflection/AppLovinCommunicatorBridge;",
        "Lcom/unity3d/services/core/reflection/GenericBridge;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "getClassName",
        "",
        "subscribe",
        "",
        "proxy",
        "Lcom/unity3d/services/core/reflection/CommunicatorSubscriberProxy;",
        "topic",
        "unsubscribe",
        "",
        "subscriber",
        "getCommunicatorInstance",
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
.field private static final CLASS_NAME:Ljava/lang/String; = "com.applovin.communicator.AppLovinCommunicator"

.field public static final Companion:Lcom/unity3d/services/core/reflection/AppLovinCommunicatorBridge$Companion;

.field private static final GET_INSTANCE:Ljava/lang/String; = "getInstance"

.field private static final SUBSCRIBE:Ljava/lang/String; = "subscribe"

.field private static final UNSUBSCRIBE:Ljava/lang/String; = "unsubscribe"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/unity3d/services/core/reflection/AppLovinCommunicatorBridge$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unity3d/services/core/reflection/AppLovinCommunicatorBridge$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/unity3d/services/core/reflection/AppLovinCommunicatorBridge;->Companion:Lcom/unity3d/services/core/reflection/AppLovinCommunicatorBridge$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    sget-object v0, Lcom/unity3d/services/core/reflection/AppLovinCommunicatorBridge;->Companion:Lcom/unity3d/services/core/reflection/AppLovinCommunicatorBridge$Companion;

    invoke-static {v0}, Lcom/unity3d/services/core/reflection/AppLovinCommunicatorBridge$Companion;->access$buildFunctionMap(Lcom/unity3d/services/core/reflection/AppLovinCommunicatorBridge$Companion;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/unity3d/services/core/reflection/GenericBridge;-><init>(Ljava/util/Map;Z)V

    iput-object p1, p0, Lcom/unity3d/services/core/reflection/AppLovinCommunicatorBridge;->context:Landroid/content/Context;

    return-void
.end method

.method private final getCommunicatorInstance()Ljava/lang/Object;
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/unity3d/services/core/reflection/AppLovinCommunicatorBridge;->context:Landroid/content/Context;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/unity3d/services/core/reflection/AppLovinCommunicatorBridge;->callNonVoidMethod(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected getClassName()Ljava/lang/String;
    .locals 1

    .line 11
    const-string v0, "com.applovin.communicator.AppLovinCommunicator"

    return-object v0
.end method

.method public final subscribe(Lcom/unity3d/services/core/reflection/CommunicatorSubscriberProxy;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    const-string v0, "proxy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "topic"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Lcom/unity3d/services/core/reflection/AppLovinCommunicatorBridge;->getCommunicatorInstance()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 21
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/unity3d/services/core/reflection/CommunicatorSubscriberProxy;->getProxyInstance()Ljava/lang/Object;

    move-result-object p1

    .line 22
    const-string v2, "subscribe"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v2, v0, p2}, Lcom/unity3d/services/core/reflection/AppLovinCommunicatorBridge;->callVoidMethod(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v1
.end method

.method public final unsubscribe(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    const-string v0, "subscriber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "topic"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Lcom/unity3d/services/core/reflection/AppLovinCommunicatorBridge;->getCommunicatorInstance()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 34
    :cond_0
    const-string v1, "unsubscribe"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, v0, p1}, Lcom/unity3d/services/core/reflection/AppLovinCommunicatorBridge;->callVoidMethod(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method
