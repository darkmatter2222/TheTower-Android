.class public final Lcom/ironsource/Xf$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/vb;
.implements Lcom/ironsource/ub;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/Xf;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/Xf;


# direct methods
.method constructor <init>(Lcom/ironsource/Xf;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/Xf$b;->a:Lcom/ironsource/Xf;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 9
    iget-object v0, p0, Lcom/ironsource/Xf$b;->a:Lcom/ironsource/Xf;

    .line 10
    sget-object v1, Lcom/unity3d/mediation/LevelPlay$AdFormat;->REWARDED:Lcom/unity3d/mediation/LevelPlay$AdFormat;

    sget-object v2, Lcom/ironsource/bg;->a:Lcom/ironsource/bg;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/ironsource/bg;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 11
    const-string v3, "onAdUnavailable"

    invoke-static {v0, v3, v1, v2}, Lcom/ironsource/Xf;->a(Lcom/ironsource/Xf;Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;Ljava/util/List;)V

    return-void
.end method

.method public a(Lcom/ironsource/md;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .locals 4

    .line 17
    iget-object v0, p0, Lcom/ironsource/Xf$b;->a:Lcom/ironsource/Xf;

    .line 19
    sget-object v1, Lcom/unity3d/mediation/LevelPlay$AdFormat;->REWARDED:Lcom/unity3d/mediation/LevelPlay$AdFormat;

    .line 20
    sget-object v2, Lcom/ironsource/bg;->a:Lcom/ironsource/bg;

    .line 21
    sget-object v3, Lcom/ironsource/Wf;->a:Lcom/ironsource/Wf;

    invoke-virtual {v3, p1}, Lcom/ironsource/Wf;->a(Lcom/ironsource/md;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 22
    invoke-virtual {v2, p1}, Lcom/ironsource/bg;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 23
    const-string p2, "onAdClicked"

    invoke-static {v0, p2, v1, p1}, Lcom/ironsource/Xf;->a(Lcom/ironsource/Xf;Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;Ljava/util/List;)V

    return-void
.end method

.method public a(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/Xf$b;->a:Lcom/ironsource/Xf;

    .line 2
    sget-object v1, Lcom/unity3d/mediation/LevelPlay$AdFormat;->REWARDED:Lcom/unity3d/mediation/LevelPlay$AdFormat;

    sget-object v2, Lcom/ironsource/bg;->a:Lcom/ironsource/bg;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/ironsource/bg;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 3
    const-string v2, "onAdReady"

    invoke-static {v0, v2, v1, p1}, Lcom/ironsource/Xf;->a(Lcom/ironsource/Xf;Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;Ljava/util/List;)V

    return-void
.end method

.method public a(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/ironsource/Xf$b;->a:Lcom/ironsource/Xf;

    .line 6
    sget-object v1, Lcom/unity3d/mediation/LevelPlay$AdFormat;->REWARDED:Lcom/unity3d/mediation/LevelPlay$AdFormat;

    .line 7
    sget-object v2, Lcom/ironsource/bg;->a:Lcom/ironsource/bg;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/ironsource/bg;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 8
    const-string v2, "onAdLoadFailed"

    invoke-static {v0, v2, v1, p1}, Lcom/ironsource/Xf;->a(Lcom/ironsource/Xf;Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;Ljava/util/List;)V

    return-void
.end method

.method public a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .locals 3

    .line 12
    iget-object v0, p0, Lcom/ironsource/Xf$b;->a:Lcom/ironsource/Xf;

    .line 14
    sget-object v1, Lcom/unity3d/mediation/LevelPlay$AdFormat;->REWARDED:Lcom/unity3d/mediation/LevelPlay$AdFormat;

    .line 15
    sget-object v2, Lcom/ironsource/bg;->a:Lcom/ironsource/bg;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/ironsource/bg;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 16
    const-string p2, "onAdShowFailed"

    invoke-static {v0, p2, v1, p1}, Lcom/ironsource/Xf;->a(Lcom/ironsource/Xf;Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;Ljava/util/List;)V

    return-void
.end method

.method public b(Lcom/ironsource/md;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/Xf$b;->a:Lcom/ironsource/Xf;

    .line 3
    sget-object v1, Lcom/unity3d/mediation/LevelPlay$AdFormat;->REWARDED:Lcom/unity3d/mediation/LevelPlay$AdFormat;

    .line 4
    sget-object v2, Lcom/ironsource/bg;->a:Lcom/ironsource/bg;

    .line 5
    sget-object v3, Lcom/ironsource/Wf;->a:Lcom/ironsource/Wf;

    invoke-virtual {v3, p1}, Lcom/ironsource/Wf;->a(Lcom/ironsource/md;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 6
    invoke-virtual {v2, p1}, Lcom/ironsource/bg;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 7
    const-string p2, "onAdRewarded"

    invoke-static {v0, p2, v1, p1}, Lcom/ironsource/Xf;->a(Lcom/ironsource/Xf;Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;Ljava/util/List;)V

    return-void
.end method

.method public b(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .locals 3

    .line 8
    iget-object v0, p0, Lcom/ironsource/Xf$b;->a:Lcom/ironsource/Xf;

    .line 9
    sget-object v1, Lcom/unity3d/mediation/LevelPlay$AdFormat;->REWARDED:Lcom/unity3d/mediation/LevelPlay$AdFormat;

    sget-object v2, Lcom/ironsource/bg;->a:Lcom/ironsource/bg;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/ironsource/bg;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 10
    const-string v2, "onAdClosed"

    invoke-static {v0, v2, v1, p1}, Lcom/ironsource/Xf;->a(Lcom/ironsource/Xf;Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;Ljava/util/List;)V

    return-void
.end method

.method public c(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/Xf$b;->a:Lcom/ironsource/Xf;

    .line 2
    sget-object v1, Lcom/unity3d/mediation/LevelPlay$AdFormat;->REWARDED:Lcom/unity3d/mediation/LevelPlay$AdFormat;

    sget-object v2, Lcom/ironsource/bg;->a:Lcom/ironsource/bg;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/ironsource/bg;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 3
    const-string v2, "onAdOpened"

    invoke-static {v0, v2, v1, p1}, Lcom/ironsource/Xf;->a(Lcom/ironsource/Xf;Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;Ljava/util/List;)V

    return-void
.end method

.method public d(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/Xf$b;->a:Lcom/ironsource/Xf;

    .line 2
    sget-object v1, Lcom/unity3d/mediation/LevelPlay$AdFormat;->REWARDED:Lcom/unity3d/mediation/LevelPlay$AdFormat;

    sget-object v2, Lcom/ironsource/bg;->a:Lcom/ironsource/bg;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/ironsource/bg;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 3
    const-string v2, "onAdAvailable"

    invoke-static {v0, v2, v1, p1}, Lcom/ironsource/Xf;->a(Lcom/ironsource/Xf;Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;Ljava/util/List;)V

    return-void
.end method
