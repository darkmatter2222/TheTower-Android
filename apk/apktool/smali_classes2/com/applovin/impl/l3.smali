.class public abstract Lcom/applovin/impl/l3;
.super Lcom/applovin/impl/c3;
.source "SourceFile"


# direct methods
.method protected constructor <init>(Lcom/applovin/impl/e3;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/mediation/h;Lcom/applovin/impl/sdk/l;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/applovin/impl/c3;-><init>(Lcom/applovin/impl/e3;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/mediation/h;Lcom/applovin/impl/sdk/l;)V

    return-void
.end method


# virtual methods
.method public m0()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/o3;->a:Lcom/applovin/impl/sdk/l;

    sget-object v1, Lcom/applovin/impl/c5;->D1:Lcom/applovin/impl/c5;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    const-string v1, "viewability_min_alpha"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/o3;->b(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public n0()I
    .locals 2

    .line 1
    const-string v0, "viewability_min_pixels"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/o3;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public o0()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/applovin/impl/c3;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/applovin/mediation/MaxAdFormat;->BANNER:Lcom/applovin/mediation/MaxAdFormat;

    if-ne v0, v1, :cond_0

    .line 4
    sget-object v0, Lcom/applovin/impl/c5;->w1:Lcom/applovin/impl/c5;

    goto :goto_0

    .line 6
    :cond_0
    sget-object v1, Lcom/applovin/mediation/MaxAdFormat;->MREC:Lcom/applovin/mediation/MaxAdFormat;

    if-ne v0, v1, :cond_1

    .line 8
    sget-object v0, Lcom/applovin/impl/c5;->y1:Lcom/applovin/impl/c5;

    goto :goto_0

    .line 10
    :cond_1
    sget-object v1, Lcom/applovin/mediation/MaxAdFormat;->LEADER:Lcom/applovin/mediation/MaxAdFormat;

    if-ne v0, v1, :cond_2

    .line 12
    sget-object v0, Lcom/applovin/impl/c5;->A1:Lcom/applovin/impl/c5;

    goto :goto_0

    .line 14
    :cond_2
    sget-object v1, Lcom/applovin/mediation/MaxAdFormat;->NATIVE:Lcom/applovin/mediation/MaxAdFormat;

    if-ne v0, v1, :cond_3

    .line 16
    sget-object v0, Lcom/applovin/impl/c5;->C1:Lcom/applovin/impl/c5;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 21
    iget-object v1, p0, Lcom/applovin/impl/o3;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "viewability_min_height"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/o3;->a(Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public p0()F
    .locals 2

    .line 1
    const-string v0, "viewability_min_percentage_dp"

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/o3;->b(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public q0()F
    .locals 2

    .line 1
    const-string v0, "viewability_min_percentage_pixels"

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/o3;->b(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public r0()J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/o3;->a:Lcom/applovin/impl/sdk/l;

    sget-object v1, Lcom/applovin/impl/c5;->E1:Lcom/applovin/impl/c5;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, "viewability_timer_min_visible_ms"

    invoke-virtual {p0, v2, v0, v1}, Lcom/applovin/impl/o3;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public s0()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/applovin/impl/c3;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/applovin/mediation/MaxAdFormat;->BANNER:Lcom/applovin/mediation/MaxAdFormat;

    if-ne v0, v1, :cond_0

    .line 4
    sget-object v0, Lcom/applovin/impl/c5;->v1:Lcom/applovin/impl/c5;

    goto :goto_0

    .line 6
    :cond_0
    sget-object v1, Lcom/applovin/mediation/MaxAdFormat;->MREC:Lcom/applovin/mediation/MaxAdFormat;

    if-ne v0, v1, :cond_1

    .line 8
    sget-object v0, Lcom/applovin/impl/c5;->x1:Lcom/applovin/impl/c5;

    goto :goto_0

    .line 10
    :cond_1
    sget-object v1, Lcom/applovin/mediation/MaxAdFormat;->LEADER:Lcom/applovin/mediation/MaxAdFormat;

    if-ne v0, v1, :cond_2

    .line 12
    sget-object v0, Lcom/applovin/impl/c5;->z1:Lcom/applovin/impl/c5;

    goto :goto_0

    .line 14
    :cond_2
    sget-object v1, Lcom/applovin/mediation/MaxAdFormat;->NATIVE:Lcom/applovin/mediation/MaxAdFormat;

    if-ne v0, v1, :cond_3

    .line 16
    sget-object v0, Lcom/applovin/impl/c5;->B1:Lcom/applovin/impl/c5;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 21
    iget-object v1, p0, Lcom/applovin/impl/o3;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "viewability_min_width"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/o3;->a(Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public t0()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/applovin/impl/l3;->n0()I

    move-result v0

    if-gez v0, :cond_1

    invoke-virtual {p0}, Lcom/applovin/impl/l3;->p0()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gez v0, :cond_1

    invoke-virtual {p0}, Lcom/applovin/impl/l3;->q0()F

    move-result v0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
