.class public final synthetic Lcom/unity3d/ads/core/domain/CleanUpWhenOpportunityExpires$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lkotlinx/coroutines/Job;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/Job;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/CleanUpWhenOpportunityExpires$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/CleanUpWhenOpportunityExpires$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/Job;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p1}, Lcom/unity3d/ads/core/domain/CleanUpWhenOpportunityExpires;->$r8$lambda$gNpEiI5yb29lRnMqnYIdeWo5wGk(Lkotlinx/coroutines/Job;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
