.class public final synthetic Lcom/unity3d/ads/core/domain/CommonTokenNumberProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/core/data/repository/SessionRepository;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/core/data/repository/SessionRepository;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/CommonTokenNumberProvider$$ExternalSyntheticLambda0;->f$0:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/CommonTokenNumberProvider$$ExternalSyntheticLambda0;->f$0:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    invoke-static {v0}, Lcom/unity3d/ads/core/domain/CommonTokenNumberProvider;->$r8$lambda$4yc9VXWNHliGBj2hQv5Kqbro7i0(Lcom/unity3d/ads/core/data/repository/SessionRepository;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
