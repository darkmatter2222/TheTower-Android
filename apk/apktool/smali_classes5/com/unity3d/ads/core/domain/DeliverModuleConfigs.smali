.class public interface abstract Lcom/unity3d/ads/core/domain/DeliverModuleConfigs;
.super Ljava/lang/Object;
.source "DeliverModuleConfigs.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008`\u0018\u00002\u00020\u0001J\u0011\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u00a6\u0002J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H&\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/unity3d/ads/core/domain/DeliverModuleConfigs;",
        "",
        "invoke",
        "",
        "initResponse",
        "Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;",
        "notifyFailure",
        "reason",
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


# virtual methods
.method public abstract invoke(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;)V
.end method

.method public abstract notifyFailure(Ljava/lang/String;)V
.end method
