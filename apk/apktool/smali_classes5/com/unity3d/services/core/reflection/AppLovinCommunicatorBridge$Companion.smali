.class public final Lcom/unity3d/services/core/reflection/AppLovinCommunicatorBridge$Companion;
.super Ljava/lang/Object;
.source "AppLovinCommunicatorBridge.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/core/reflection/AppLovinCommunicatorBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010$\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001e\u0010\t\u001a\u0018\u0012\u0004\u0012\u00020\u0005\u0012\u000e\u0012\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u000c0\u000b0\nH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/unity3d/services/core/reflection/AppLovinCommunicatorBridge$Companion;",
        "",
        "<init>",
        "()V",
        "CLASS_NAME",
        "",
        "GET_INSTANCE",
        "SUBSCRIBE",
        "UNSUBSCRIBE",
        "buildFunctionMap",
        "",
        "",
        "Ljava/lang/Class;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/unity3d/services/core/reflection/AppLovinCommunicatorBridge$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$buildFunctionMap(Lcom/unity3d/services/core/reflection/AppLovinCommunicatorBridge$Companion;)Ljava/util/Map;
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/unity3d/services/core/reflection/AppLovinCommunicatorBridge$Companion;->buildFunctionMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private final buildFunctionMap()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 46
    const-class v0, Landroid/content/Context;

    .line 47
    const-class v1, Ljava/lang/String;

    const/4 v2, 0x1

    .line 48
    new-array v3, v2, [Lkotlin/Pair;

    new-array v4, v2, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const-string v0, "getInstance"

    invoke-static {v0, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v3}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 50
    :try_start_0
    const-string v3, "com.applovin.communicator.AppLovinCommunicatorSubscriber"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "forName(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    const-string v4, "subscribe"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    aput-object v3, v7, v5

    aput-object v1, v7, v2

    invoke-interface {v0, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v4, "unsubscribe"

    new-array v6, v6, [Ljava/lang/Class;

    aput-object v3, v6, v5

    aput-object v1, v6, v2

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method
