.class public final Lcom/unity3d/services/core/fid/FIdStaticBridge;
.super Lcom/unity3d/services/core/reflection/GenericBridge;
.source "FIdStaticBridge.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFIdStaticBridge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FIdStaticBridge.kt\ncom/unity3d/services/core/fid/FIdStaticBridge\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,16:1\n1#2:17\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u0008\u0010\u0008\u001a\u00020\tH\u0014\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/unity3d/services/core/fid/FIdStaticBridge;",
        "Lcom/unity3d/services/core/reflection/GenericBridge;",
        "<init>",
        "()V",
        "getInstance",
        "Lcom/unity3d/services/core/fid/FIdBridge;",
        "context",
        "Landroid/content/Context;",
        "getClassName",
        "",
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
.method public constructor <init>()V
    .locals 4

    .line 7
    new-instance v0, Lkotlin/Pair;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "getInstance"

    invoke-direct {v0, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/unity3d/services/core/reflection/GenericBridge;-><init>(Ljava/util/Map;Z)V

    return-void
.end method


# virtual methods
.method protected getClassName()Ljava/lang/String;
    .locals 1

    .line 14
    sget-object v0, Lcom/unity3d/services/core/fid/Constants;->Companion:Lcom/unity3d/services/core/fid/Constants$Companion;

    invoke-virtual {v0}, Lcom/unity3d/services/core/fid/Constants$Companion;->getClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getInstance(Landroid/content/Context;)Lcom/unity3d/services/core/fid/FIdBridge;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getInstance"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/unity3d/services/core/fid/FIdStaticBridge;->callNonVoidMethod(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/unity3d/services/core/fid/FIdBridge;

    invoke-direct {v0, p1}, Lcom/unity3d/services/core/fid/FIdBridge;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    return-object v1
.end method
