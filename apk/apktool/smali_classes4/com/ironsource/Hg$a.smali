.class public final Lcom/ironsource/Hg$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/Lg;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/Hg;->a(Lcom/ironsource/D;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWaterfall.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Waterfall.kt\ncom/unity3d/mediation/internal/ads/controllers/adunits/waterfall/Waterfall$loadWaterfall$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,216:1\n1761#2,3:217\n*S KotlinDebug\n*F\n+ 1 Waterfall.kt\ncom/unity3d/mediation/internal/ads/controllers/adunits/waterfall/Waterfall$loadWaterfall$1\n*L\n57#1:217,3\n*E\n"
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/Hg;


# direct methods
.method constructor <init>(Lcom/ironsource/Hg;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/Hg$a;->a:Lcom/ironsource/Hg;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    const-string v0, "errorReason"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/ironsource/Hg$a;->a:Lcom/ironsource/Hg;

    invoke-static {v0}, Lcom/ironsource/Hg;->b(Lcom/ironsource/Hg;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/ironsource/Hg$a;->a:Lcom/ironsource/Hg;

    invoke-static {v0}, Lcom/ironsource/Hg;->a(Lcom/ironsource/Hg;)Lcom/ironsource/Pg;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/ironsource/Pg;->a(ILjava/lang/String;)V

    return-void
.end method

.method public a(Lcom/ironsource/Mg;)V
    .locals 3

    const-string v0, "waterfallInstances"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/Hg$a;->a:Lcom/ironsource/Hg;

    invoke-static {v0}, Lcom/ironsource/Hg;->b(Lcom/ironsource/Hg;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ironsource/Hg$a;->a:Lcom/ironsource/Hg;

    invoke-virtual {p1}, Lcom/ironsource/Mg;->b()Ljava/util/List;

    move-result-object v1

    .line 164
    instance-of v2, v1, Ljava/util/Collection;

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 165
    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/A;

    .line 166
    invoke-virtual {v2}, Lcom/ironsource/A;->A()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x0

    :goto_1
    invoke-static {v0, v1}, Lcom/ironsource/Hg;->a(Lcom/ironsource/Hg;Z)V

    .line 167
    iget-object v0, p0, Lcom/ironsource/Hg$a;->a:Lcom/ironsource/Hg;

    invoke-static {v0, p1}, Lcom/ironsource/Hg;->a(Lcom/ironsource/Hg;Lcom/ironsource/Mg;)V

    return-void
.end method
