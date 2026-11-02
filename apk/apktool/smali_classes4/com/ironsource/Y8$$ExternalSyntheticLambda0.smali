.class public final synthetic Lcom/ironsource/Y8$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/Y8$$ExternalSyntheticLambda0;->f$0:Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/ironsource/Y8$$ExternalSyntheticLambda0;->f$0:Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;

    check-cast p1, Lkotlin/Pair;

    invoke-static {v0, p1}, Lcom/ironsource/Y8;->$r8$lambda$5HyqYRCUsaBKCGftHYYaV3zA3bQ(Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;Lkotlin/Pair;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
