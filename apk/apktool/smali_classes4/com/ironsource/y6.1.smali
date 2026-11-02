.class public interface abstract Lcom/ironsource/y6;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
.end method

.method public abstract b(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
.end method

.method public abstract b(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
.end method

.method public abstract c(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
.end method

.method public onAdInfoChanged(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .locals 1

    const-string v0, "adInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
