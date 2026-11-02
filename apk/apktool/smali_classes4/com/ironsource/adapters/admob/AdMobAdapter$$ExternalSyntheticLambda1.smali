.class public final synthetic Lcom/ironsource/adapters/admob/AdMobAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;

.field public final synthetic f$3:Lcom/ironsource/adapters/admob/AdMobAdapter;


# direct methods
.method public synthetic constructor <init>(ZLandroid/content/Context;Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;Lcom/ironsource/adapters/admob/AdMobAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$$ExternalSyntheticLambda1;->f$0:Z

    iput-object p2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$$ExternalSyntheticLambda1;->f$2:Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;

    iput-object p4, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$$ExternalSyntheticLambda1;->f$3:Lcom/ironsource/adapters/admob/AdMobAdapter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-boolean v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$$ExternalSyntheticLambda1;->f$0:Z

    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$$ExternalSyntheticLambda1;->f$2:Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;

    iget-object v3, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$$ExternalSyntheticLambda1;->f$3:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-static {v0, v1, v2, v3}, Lcom/ironsource/adapters/admob/AdMobAdapter;->$r8$lambda$hEWWA7kiN1vBc1jTAGLJhQ7DUos(ZLandroid/content/Context;Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;Lcom/ironsource/adapters/admob/AdMobAdapter;)V

    return-void
.end method
