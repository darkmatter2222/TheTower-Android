.class public final Lgatewayprotocol/v1/CampaignStateKt$Dsl$Companion;
.super Ljava/lang/Object;
.source "CampaignStateKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/CampaignStateKt$Dsl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0001\u00a8\u0006\u0008"
    }
    d2 = {
        "Lgatewayprotocol/v1/CampaignStateKt$Dsl$Companion;",
        "",
        "<init>",
        "()V",
        "_create",
        "Lgatewayprotocol/v1/CampaignStateKt$Dsl;",
        "builder",
        "Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;",
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

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lgatewayprotocol/v1/CampaignStateKt$Dsl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic _create(Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;)Lgatewayprotocol/v1/CampaignStateKt$Dsl;
    .locals 2

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lgatewayprotocol/v1/CampaignStateKt$Dsl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lgatewayprotocol/v1/CampaignStateKt$Dsl;-><init>(Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
