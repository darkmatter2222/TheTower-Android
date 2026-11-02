.class public final Lcom/ironsource/mediationsdk/adquality/AdQualityBridge$configBuilder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/j0;ILcom/ironsource/yb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge$configBuilder$1;->this$0:Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adQualitySdkInitFailed(Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitError;Ljava/lang/String;)V
    .locals 3

    const-string v0, "isAdQualityInitError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/ironsource/D5;->D:Lcom/ironsource/D5;

    .line 3
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitError;->AD_QUALITY_ALREADY_INITIALIZED:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitError;

    if-ne p1, v1, :cond_0

    .line 5
    sget-object v0, Lcom/ironsource/D5;->C:Lcom/ironsource/D5;

    .line 6
    iget-object v1, p0, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge$configBuilder$1;->this$0:Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;->access$enableRevenueDataReporting(Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;)V

    .line 9
    :cond_0
    sget-object v1, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;->Companion:Lcom/ironsource/mediationsdk/adquality/AdQualityBridge$Companion;

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitError;->getValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1, v0, p1, p2}, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge$Companion;->access$logEvent(Lcom/ironsource/mediationsdk/adquality/AdQualityBridge$Companion;Lcom/ironsource/D5;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p1

    .line 12
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ad Quality failed to initialize: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x3

    .line 14
    invoke-virtual {p1, v0, p2, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method public adQualitySdkInitSuccess()V
    .locals 6

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;->Companion:Lcom/ironsource/mediationsdk/adquality/AdQualityBridge$Companion;

    .line 2
    sget-object v1, Lcom/ironsource/D5;->B:Lcom/ironsource/D5;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    invoke-static/range {v0 .. v5}, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge$Companion;->logEvent$default(Lcom/ironsource/mediationsdk/adquality/AdQualityBridge$Companion;Lcom/ironsource/D5;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge$configBuilder$1;->this$0:Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;->access$enableRevenueDataReporting(Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;)V

    return-void
.end method
