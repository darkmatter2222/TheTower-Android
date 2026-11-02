.class public final synthetic Lcom/unity3d/ads/core/domain/attribution/AndroidAttribution$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/core/domain/attribution/AndroidAttribution;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/core/domain/attribution/AndroidAttribution;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/attribution/AndroidAttribution$$ExternalSyntheticLambda0;->f$0:Lcom/unity3d/ads/core/domain/attribution/AndroidAttribution;

    iput-object p2, p0, Lcom/unity3d/ads/core/domain/attribution/AndroidAttribution$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/attribution/AndroidAttribution$$ExternalSyntheticLambda0;->f$0:Lcom/unity3d/ads/core/domain/attribution/AndroidAttribution;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/attribution/AndroidAttribution$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/unity3d/ads/core/domain/attribution/AndroidAttribution;->$r8$lambda$niUhoVZWX3FuqyBoYJYw3pJBemo(Lcom/unity3d/ads/core/domain/attribution/AndroidAttribution;Landroid/content/Context;)Landroid/adservices/measurement/MeasurementManager;

    move-result-object v0

    return-object v0
.end method
