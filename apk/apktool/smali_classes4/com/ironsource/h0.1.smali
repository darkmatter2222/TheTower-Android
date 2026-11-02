.class public final Lcom/ironsource/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;


# instance fields
.field private final a:Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;

.field private final b:Lcom/ironsource/yb;


# direct methods
.method public static synthetic $r8$lambda$GvgwMrwYRsBeiu40fndSjZh0FsQ(Lcom/ironsource/h0;Lcom/ironsource/c9;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/ironsource/h0;->a(Lcom/ironsource/h0;Lcom/ironsource/c9;)V

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;Lcom/ironsource/yb;)V
    .locals 1

    const-string v0, "adQualityBridge"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tools"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/h0;->a:Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;

    .line 3
    iput-object p2, p0, Lcom/ironsource/h0;->b:Lcom/ironsource/yb;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;Lcom/ironsource/yb;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 4
    new-instance p2, Lcom/ironsource/yb;

    invoke-direct {p2}, Lcom/ironsource/yb;-><init>()V

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/ironsource/h0;-><init>(Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;Lcom/ironsource/yb;)V

    return-void
.end method

.method private static final a(Lcom/ironsource/h0;Lcom/ironsource/c9;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ironsource/h0;->a:Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;->sendCustomMediationRevenue$mediationsdk_release(Lcom/ironsource/c9;)V

    return-void
.end method


# virtual methods
.method public onImpressionSuccess(Lcom/ironsource/c9;)V
    .locals 2

    const-string v0, "impressionData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/h0;->b:Lcom/ironsource/yb;

    new-instance v1, Lcom/ironsource/h0$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/h0$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/h0;Lcom/ironsource/c9;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/yb;->a(Ljava/lang/Runnable;)V

    return-void
.end method
