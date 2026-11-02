.class public final Lcom/ironsource/Ja$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/z0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/Ja;-><init>(Lcom/ironsource/p0;Lcom/ironsource/d3;JJLcom/ironsource/Ga;Lcom/ironsource/U2;Lcom/ironsource/Ff;Lcom/ironsource/t4;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/Ja;


# direct methods
.method constructor <init>(Lcom/ironsource/Ja;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/Ja$c;->a:Lcom/ironsource/Ja;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .locals 1

    const-string v0, "adInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ja$c;->a:Lcom/ironsource/Ja;

    invoke-virtual {v0}, Lcom/ironsource/Ja;->m()Lcom/ironsource/Ga;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ironsource/Ga;->onAdDisplayed(Lcom/unity3d/mediation/LevelPlayAdInfo;)V

    return-void
.end method

.method public c(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ja$c;->a:Lcom/ironsource/Ja;

    invoke-virtual {v0}, Lcom/ironsource/Ja;->m()Lcom/ironsource/Ga;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ironsource/Ga;->d(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method
