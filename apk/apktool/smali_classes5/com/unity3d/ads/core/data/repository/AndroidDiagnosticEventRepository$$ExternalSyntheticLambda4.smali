.class public final synthetic Lcom/unity3d/ads/core/data/repository/AndroidDiagnosticEventRepository$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/core/data/repository/AndroidDiagnosticEventRepository;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/core/data/repository/AndroidDiagnosticEventRepository;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/data/repository/AndroidDiagnosticEventRepository$$ExternalSyntheticLambda4;->f$0:Lcom/unity3d/ads/core/data/repository/AndroidDiagnosticEventRepository;

    iput-object p2, p0, Lcom/unity3d/ads/core/data/repository/AndroidDiagnosticEventRepository$$ExternalSyntheticLambda4;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/AndroidDiagnosticEventRepository$$ExternalSyntheticLambda4;->f$0:Lcom/unity3d/ads/core/data/repository/AndroidDiagnosticEventRepository;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/repository/AndroidDiagnosticEventRepository$$ExternalSyntheticLambda4;->f$1:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/unity3d/ads/core/data/repository/AndroidDiagnosticEventRepository;->$r8$lambda$3eNqzq6jn14pu7SdVHyaM3Co2Fc(Lcom/unity3d/ads/core/data/repository/AndroidDiagnosticEventRepository;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
