.class public final synthetic Lcom/unity3d/ads/core/data/repository/AndroidDiagnosticEventRepository$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/core/data/repository/AndroidDiagnosticEventRepository;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/core/data/repository/AndroidDiagnosticEventRepository;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/data/repository/AndroidDiagnosticEventRepository$$ExternalSyntheticLambda1;->f$0:Lcom/unity3d/ads/core/data/repository/AndroidDiagnosticEventRepository;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/AndroidDiagnosticEventRepository$$ExternalSyntheticLambda1;->f$0:Lcom/unity3d/ads/core/data/repository/AndroidDiagnosticEventRepository;

    check-cast p1, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent;

    invoke-static {v0, p1}, Lcom/unity3d/ads/core/data/repository/AndroidDiagnosticEventRepository;->$r8$lambda$k_FZCP-nb4tGKieHS_658WMyFpI(Lcom/unity3d/ads/core/data/repository/AndroidDiagnosticEventRepository;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent;)Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent;

    move-result-object p1

    return-object p1
.end method
