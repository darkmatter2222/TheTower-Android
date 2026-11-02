.class public final synthetic Lcom/ironsource/wb$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lcom/unity3d/mediation/LevelPlayInitRequest;

.field public final synthetic f$2:Lcom/unity3d/mediation/LevelPlayInitListener;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/unity3d/mediation/LevelPlayInitRequest;Lcom/unity3d/mediation/LevelPlayInitListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/wb$$ExternalSyntheticLambda6;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/ironsource/wb$$ExternalSyntheticLambda6;->f$1:Lcom/unity3d/mediation/LevelPlayInitRequest;

    iput-object p3, p0, Lcom/ironsource/wb$$ExternalSyntheticLambda6;->f$2:Lcom/unity3d/mediation/LevelPlayInitListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/ironsource/wb$$ExternalSyntheticLambda6;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/ironsource/wb$$ExternalSyntheticLambda6;->f$1:Lcom/unity3d/mediation/LevelPlayInitRequest;

    iget-object v2, p0, Lcom/ironsource/wb$$ExternalSyntheticLambda6;->f$2:Lcom/unity3d/mediation/LevelPlayInitListener;

    invoke-static {v0, v1, v2}, Lcom/ironsource/wb;->$r8$lambda$4gPUpMGeQnw2kVrEhaQ78rBcgIY(Landroid/content/Context;Lcom/unity3d/mediation/LevelPlayInitRequest;Lcom/unity3d/mediation/LevelPlayInitListener;)V

    return-void
.end method
