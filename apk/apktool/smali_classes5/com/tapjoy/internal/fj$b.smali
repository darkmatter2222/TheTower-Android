.class final Lcom/tapjoy/internal/fj$b;
.super Lcom/tapjoy/internal/el;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/fj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/el<",
        "Lcom/tapjoy/internal/fj;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 602
    sget-object v0, Lcom/tapjoy/internal/ei;->c:Lcom/tapjoy/internal/ei;

    const-class v1, Lcom/tapjoy/internal/fj;

    invoke-direct {p0, v0, v1}, Lcom/tapjoy/internal/el;-><init>(Lcom/tapjoy/internal/ei;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)I
    .locals 5

    .line 600
    check-cast p1, Lcom/tapjoy/internal/fj;

    .line 4607
    iget-object v0, p1, Lcom/tapjoy/internal/fj;->s:Ljava/lang/Long;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tapjoy/internal/el;->i:Lcom/tapjoy/internal/el;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/tapjoy/internal/fj;->s:Ljava/lang/Long;

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/el;->a(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p1, Lcom/tapjoy/internal/fj;->t:Ljava/lang/String;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/tapjoy/internal/el;->p:Lcom/tapjoy/internal/el;

    const/4 v3, 0x2

    iget-object v4, p1, Lcom/tapjoy/internal/fj;->t:Ljava/lang/String;

    .line 4608
    invoke-virtual {v2, v3, v4}, Lcom/tapjoy/internal/el;->a(ILjava/lang/Object;)I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    iget-object v2, p1, Lcom/tapjoy/internal/fj;->u:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/tapjoy/internal/el;->d:Lcom/tapjoy/internal/el;

    const/16 v3, 0xd

    iget-object v4, p1, Lcom/tapjoy/internal/fj;->u:Ljava/lang/Integer;

    .line 4609
    invoke-virtual {v2, v3, v4}, Lcom/tapjoy/internal/el;->a(ILjava/lang/Object;)I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    iget-object v2, p1, Lcom/tapjoy/internal/fj;->v:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/tapjoy/internal/el;->d:Lcom/tapjoy/internal/el;

    const/16 v3, 0xe

    iget-object v4, p1, Lcom/tapjoy/internal/fj;->v:Ljava/lang/Integer;

    .line 4610
    invoke-virtual {v2, v3, v4}, Lcom/tapjoy/internal/el;->a(ILjava/lang/Object;)I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    sget-object v2, Lcom/tapjoy/internal/fg;->c:Lcom/tapjoy/internal/el;

    .line 4611
    invoke-virtual {v2}, Lcom/tapjoy/internal/el;->a()Lcom/tapjoy/internal/el;

    move-result-object v2

    const/16 v3, 0xf

    iget-object v4, p1, Lcom/tapjoy/internal/fj;->w:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Lcom/tapjoy/internal/el;->a(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p1, Lcom/tapjoy/internal/fj;->x:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    sget-object v2, Lcom/tapjoy/internal/el;->d:Lcom/tapjoy/internal/el;

    const/16 v3, 0x10

    iget-object v4, p1, Lcom/tapjoy/internal/fj;->x:Ljava/lang/Integer;

    .line 4612
    invoke-virtual {v2, v3, v4}, Lcom/tapjoy/internal/el;->a(ILjava/lang/Object;)I

    move-result v2

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    iget-object v2, p1, Lcom/tapjoy/internal/fj;->y:Ljava/lang/Long;

    if-eqz v2, :cond_5

    sget-object v2, Lcom/tapjoy/internal/el;->i:Lcom/tapjoy/internal/el;

    const/16 v3, 0x11

    iget-object v4, p1, Lcom/tapjoy/internal/fj;->y:Ljava/lang/Long;

    .line 4613
    invoke-virtual {v2, v3, v4}, Lcom/tapjoy/internal/el;->a(ILjava/lang/Object;)I

    move-result v2

    goto :goto_5

    :cond_5
    move v2, v1

    :goto_5
    add-int/2addr v0, v2

    iget-object v2, p1, Lcom/tapjoy/internal/fj;->z:Ljava/lang/Long;

    if-eqz v2, :cond_6

    sget-object v2, Lcom/tapjoy/internal/el;->i:Lcom/tapjoy/internal/el;

    const/16 v3, 0x12

    iget-object v4, p1, Lcom/tapjoy/internal/fj;->z:Ljava/lang/Long;

    .line 4614
    invoke-virtual {v2, v3, v4}, Lcom/tapjoy/internal/el;->a(ILjava/lang/Object;)I

    move-result v2

    goto :goto_6

    :cond_6
    move v2, v1

    :goto_6
    add-int/2addr v0, v2

    iget-object v2, p1, Lcom/tapjoy/internal/fj;->A:Ljava/lang/Long;

    if-eqz v2, :cond_7

    sget-object v2, Lcom/tapjoy/internal/el;->i:Lcom/tapjoy/internal/el;

    const/16 v3, 0x13

    iget-object v4, p1, Lcom/tapjoy/internal/fj;->A:Ljava/lang/Long;

    .line 4615
    invoke-virtual {v2, v3, v4}, Lcom/tapjoy/internal/el;->a(ILjava/lang/Object;)I

    move-result v2

    goto :goto_7

    :cond_7
    move v2, v1

    :goto_7
    add-int/2addr v0, v2

    iget-object v2, p1, Lcom/tapjoy/internal/fj;->B:Ljava/lang/String;

    if-eqz v2, :cond_8

    sget-object v2, Lcom/tapjoy/internal/el;->p:Lcom/tapjoy/internal/el;

    const/16 v3, 0x14

    iget-object v4, p1, Lcom/tapjoy/internal/fj;->B:Ljava/lang/String;

    .line 4616
    invoke-virtual {v2, v3, v4}, Lcom/tapjoy/internal/el;->a(ILjava/lang/Object;)I

    move-result v2

    goto :goto_8

    :cond_8
    move v2, v1

    :goto_8
    add-int/2addr v0, v2

    iget-object v2, p1, Lcom/tapjoy/internal/fj;->C:Ljava/lang/Integer;

    if-eqz v2, :cond_9

    sget-object v2, Lcom/tapjoy/internal/el;->d:Lcom/tapjoy/internal/el;

    const/4 v3, 0x3

    iget-object v4, p1, Lcom/tapjoy/internal/fj;->C:Ljava/lang/Integer;

    .line 4617
    invoke-virtual {v2, v3, v4}, Lcom/tapjoy/internal/el;->a(ILjava/lang/Object;)I

    move-result v2

    goto :goto_9

    :cond_9
    move v2, v1

    :goto_9
    add-int/2addr v0, v2

    iget-object v2, p1, Lcom/tapjoy/internal/fj;->D:Ljava/lang/Double;

    if-eqz v2, :cond_a

    sget-object v2, Lcom/tapjoy/internal/el;->o:Lcom/tapjoy/internal/el;

    const/16 v3, 0x15

    iget-object v4, p1, Lcom/tapjoy/internal/fj;->D:Ljava/lang/Double;

    .line 4618
    invoke-virtual {v2, v3, v4}, Lcom/tapjoy/internal/el;->a(ILjava/lang/Object;)I

    move-result v2

    goto :goto_a

    :cond_a
    move v2, v1

    :goto_a
    add-int/2addr v0, v2

    iget-object v2, p1, Lcom/tapjoy/internal/fj;->E:Ljava/lang/Long;

    if-eqz v2, :cond_b

    sget-object v2, Lcom/tapjoy/internal/el;->i:Lcom/tapjoy/internal/el;

    const/4 v3, 0x4

    iget-object v4, p1, Lcom/tapjoy/internal/fj;->E:Ljava/lang/Long;

    .line 4619
    invoke-virtual {v2, v3, v4}, Lcom/tapjoy/internal/el;->a(ILjava/lang/Object;)I

    move-result v2

    goto :goto_b

    :cond_b
    move v2, v1

    :goto_b
    add-int/2addr v0, v2

    iget-object v2, p1, Lcom/tapjoy/internal/fj;->F:Ljava/lang/Double;

    if-eqz v2, :cond_c

    sget-object v2, Lcom/tapjoy/internal/el;->o:Lcom/tapjoy/internal/el;

    const/16 v3, 0x16

    iget-object v4, p1, Lcom/tapjoy/internal/fj;->F:Ljava/lang/Double;

    .line 4620
    invoke-virtual {v2, v3, v4}, Lcom/tapjoy/internal/el;->a(ILjava/lang/Object;)I

    move-result v2

    goto :goto_c

    :cond_c
    move v2, v1

    :goto_c
    add-int/2addr v0, v2

    iget-object v2, p1, Lcom/tapjoy/internal/fj;->G:Ljava/lang/String;

    if-eqz v2, :cond_d

    sget-object v2, Lcom/tapjoy/internal/el;->p:Lcom/tapjoy/internal/el;

    const/16 v3, 0x17

    iget-object v4, p1, Lcom/tapjoy/internal/fj;->G:Ljava/lang/String;

    .line 4621
    invoke-virtual {v2, v3, v4}, Lcom/tapjoy/internal/el;->a(ILjava/lang/Object;)I

    move-result v2

    goto :goto_d

    :cond_d
    move v2, v1

    :goto_d
    add-int/2addr v0, v2

    iget-object v2, p1, Lcom/tapjoy/internal/fj;->H:Ljava/lang/Boolean;

    if-eqz v2, :cond_e

    sget-object v2, Lcom/tapjoy/internal/el;->c:Lcom/tapjoy/internal/el;

    const/16 v3, 0x18

    iget-object v4, p1, Lcom/tapjoy/internal/fj;->H:Ljava/lang/Boolean;

    .line 4622
    invoke-virtual {v2, v3, v4}, Lcom/tapjoy/internal/el;->a(ILjava/lang/Object;)I

    move-result v2

    goto :goto_e

    :cond_e
    move v2, v1

    :goto_e
    add-int/2addr v0, v2

    iget-object v2, p1, Lcom/tapjoy/internal/fj;->I:Ljava/lang/String;

    if-eqz v2, :cond_f

    sget-object v2, Lcom/tapjoy/internal/el;->p:Lcom/tapjoy/internal/el;

    const/4 v3, 0x5

    iget-object v4, p1, Lcom/tapjoy/internal/fj;->I:Ljava/lang/String;

    .line 4623
    invoke-virtual {v2, v3, v4}, Lcom/tapjoy/internal/el;->a(ILjava/lang/Object;)I

    move-result v2

    goto :goto_f

    :cond_f
    move v2, v1

    :goto_f
    add-int/2addr v0, v2

    iget-object v2, p1, Lcom/tapjoy/internal/fj;->J:Ljava/lang/Integer;

    if-eqz v2, :cond_10

    sget-object v2, Lcom/tapjoy/internal/el;->d:Lcom/tapjoy/internal/el;

    const/4 v3, 0x6

    iget-object v4, p1, Lcom/tapjoy/internal/fj;->J:Ljava/lang/Integer;

    .line 4624
    invoke-virtual {v2, v3, v4}, Lcom/tapjoy/internal/el;->a(ILjava/lang/Object;)I

    move-result v2

    goto :goto_10

    :cond_10
    move v2, v1

    :goto_10
    add-int/2addr v0, v2

    iget-object v2, p1, Lcom/tapjoy/internal/fj;->K:Ljava/lang/Integer;

    if-eqz v2, :cond_11

    sget-object v2, Lcom/tapjoy/internal/el;->d:Lcom/tapjoy/internal/el;

    const/4 v3, 0x7

    iget-object v4, p1, Lcom/tapjoy/internal/fj;->K:Ljava/lang/Integer;

    .line 4625
    invoke-virtual {v2, v3, v4}, Lcom/tapjoy/internal/el;->a(ILjava/lang/Object;)I

    move-result v2

    goto :goto_11

    :cond_11
    move v2, v1

    :goto_11
    add-int/2addr v0, v2

    iget-object v2, p1, Lcom/tapjoy/internal/fj;->L:Ljava/lang/String;

    if-eqz v2, :cond_12

    sget-object v2, Lcom/tapjoy/internal/el;->p:Lcom/tapjoy/internal/el;

    const/16 v3, 0x8

    iget-object v4, p1, Lcom/tapjoy/internal/fj;->L:Ljava/lang/String;

    .line 4626
    invoke-virtual {v2, v3, v4}, Lcom/tapjoy/internal/el;->a(ILjava/lang/Object;)I

    move-result v2

    goto :goto_12

    :cond_12
    move v2, v1

    :goto_12
    add-int/2addr v0, v2

    iget-object v2, p1, Lcom/tapjoy/internal/fj;->M:Ljava/lang/String;

    if-eqz v2, :cond_13

    sget-object v2, Lcom/tapjoy/internal/el;->p:Lcom/tapjoy/internal/el;

    const/16 v3, 0x9

    iget-object v4, p1, Lcom/tapjoy/internal/fj;->M:Ljava/lang/String;

    .line 4627
    invoke-virtual {v2, v3, v4}, Lcom/tapjoy/internal/el;->a(ILjava/lang/Object;)I

    move-result v2

    goto :goto_13

    :cond_13
    move v2, v1

    :goto_13
    add-int/2addr v0, v2

    iget-object v2, p1, Lcom/tapjoy/internal/fj;->N:Ljava/lang/String;

    if-eqz v2, :cond_14

    sget-object v2, Lcom/tapjoy/internal/el;->p:Lcom/tapjoy/internal/el;

    const/16 v3, 0xa

    iget-object v4, p1, Lcom/tapjoy/internal/fj;->N:Ljava/lang/String;

    .line 4628
    invoke-virtual {v2, v3, v4}, Lcom/tapjoy/internal/el;->a(ILjava/lang/Object;)I

    move-result v2

    goto :goto_14

    :cond_14
    move v2, v1

    :goto_14
    add-int/2addr v0, v2

    iget-object v2, p1, Lcom/tapjoy/internal/fj;->O:Ljava/lang/String;

    if-eqz v2, :cond_15

    sget-object v2, Lcom/tapjoy/internal/el;->p:Lcom/tapjoy/internal/el;

    const/16 v3, 0xb

    iget-object v4, p1, Lcom/tapjoy/internal/fj;->O:Ljava/lang/String;

    .line 4629
    invoke-virtual {v2, v3, v4}, Lcom/tapjoy/internal/el;->a(ILjava/lang/Object;)I

    move-result v2

    goto :goto_15

    :cond_15
    move v2, v1

    :goto_15
    add-int/2addr v0, v2

    iget-object v2, p1, Lcom/tapjoy/internal/fj;->P:Ljava/lang/String;

    if-eqz v2, :cond_16

    sget-object v2, Lcom/tapjoy/internal/el;->p:Lcom/tapjoy/internal/el;

    const/16 v3, 0xc

    iget-object v4, p1, Lcom/tapjoy/internal/fj;->P:Ljava/lang/String;

    .line 4630
    invoke-virtual {v2, v3, v4}, Lcom/tapjoy/internal/el;->a(ILjava/lang/Object;)I

    move-result v2

    goto :goto_16

    :cond_16
    move v2, v1

    :goto_16
    add-int/2addr v0, v2

    sget-object v2, Lcom/tapjoy/internal/el;->p:Lcom/tapjoy/internal/el;

    .line 4631
    invoke-virtual {v2}, Lcom/tapjoy/internal/el;->a()Lcom/tapjoy/internal/el;

    move-result-object v2

    const/16 v3, 0x1a

    iget-object v4, p1, Lcom/tapjoy/internal/fj;->Q:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Lcom/tapjoy/internal/el;->a(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p1, Lcom/tapjoy/internal/fj;->R:Ljava/lang/Boolean;

    if-eqz v2, :cond_17

    sget-object v1, Lcom/tapjoy/internal/el;->c:Lcom/tapjoy/internal/el;

    const/16 v2, 0x19

    iget-object v3, p1, Lcom/tapjoy/internal/fj;->R:Ljava/lang/Boolean;

    .line 4632
    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/internal/el;->a(ILjava/lang/Object;)I

    move-result v1

    :cond_17
    add-int/2addr v0, v1

    .line 4633
    invoke-virtual {p1}, Lcom/tapjoy/internal/fj;->a()Lcom/tapjoy/internal/je;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tapjoy/internal/je;->c()I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public final synthetic a(Lcom/tapjoy/internal/em;)Ljava/lang/Object;
    .locals 6

    .line 1669
    new-instance v0, Lcom/tapjoy/internal/fj$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/fj$a;-><init>()V

    .line 1670
    invoke-virtual {p1}, Lcom/tapjoy/internal/em;->a()J

    move-result-wide v1

    .line 1671
    :goto_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/em;->b()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    packed-switch v3, :pswitch_data_0

    .line 3188
    iget-object v4, p1, Lcom/tapjoy/internal/em;->b:Lcom/tapjoy/internal/ei;

    .line 1701
    invoke-virtual {v4}, Lcom/tapjoy/internal/ei;->a()Lcom/tapjoy/internal/el;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/em;)Ljava/lang/Object;

    move-result-object v5

    .line 1702
    invoke-virtual {v0, v3, v4, v5}, Lcom/tapjoy/internal/fj$a;->a(ILcom/tapjoy/internal/ei;Ljava/lang/Object;)Lcom/tapjoy/internal/ej$a;

    goto :goto_0

    .line 1697
    :pswitch_0
    iget-object v3, v0, Lcom/tapjoy/internal/fj$a;->A:Ljava/util/List;

    sget-object v4, Lcom/tapjoy/internal/el;->p:Lcom/tapjoy/internal/el;

    invoke-virtual {v4, p1}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/em;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1698
    :pswitch_1
    sget-object v3, Lcom/tapjoy/internal/el;->c:Lcom/tapjoy/internal/el;

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/em;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 2590
    iput-object v3, v0, Lcom/tapjoy/internal/fj$a;->B:Ljava/lang/Boolean;

    goto :goto_0

    .line 1688
    :pswitch_2
    sget-object v3, Lcom/tapjoy/internal/el;->c:Lcom/tapjoy/internal/el;

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/em;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 2539
    iput-object v3, v0, Lcom/tapjoy/internal/fj$a;->r:Ljava/lang/Boolean;

    goto :goto_0

    .line 1687
    :pswitch_3
    sget-object v3, Lcom/tapjoy/internal/el;->p:Lcom/tapjoy/internal/el;

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/em;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2534
    iput-object v3, v0, Lcom/tapjoy/internal/fj$a;->q:Ljava/lang/String;

    goto :goto_0

    .line 1686
    :pswitch_4
    sget-object v3, Lcom/tapjoy/internal/el;->o:Lcom/tapjoy/internal/el;

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/em;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    .line 2529
    iput-object v3, v0, Lcom/tapjoy/internal/fj$a;->p:Ljava/lang/Double;

    goto :goto_0

    .line 1684
    :pswitch_5
    sget-object v3, Lcom/tapjoy/internal/el;->o:Lcom/tapjoy/internal/el;

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/em;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    .line 2519
    iput-object v3, v0, Lcom/tapjoy/internal/fj$a;->n:Ljava/lang/Double;

    goto :goto_0

    .line 1682
    :pswitch_6
    sget-object v3, Lcom/tapjoy/internal/el;->p:Lcom/tapjoy/internal/el;

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/em;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2509
    iput-object v3, v0, Lcom/tapjoy/internal/fj$a;->l:Ljava/lang/String;

    goto :goto_0

    .line 1681
    :pswitch_7
    sget-object v3, Lcom/tapjoy/internal/el;->i:Lcom/tapjoy/internal/el;

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/em;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 2504
    iput-object v3, v0, Lcom/tapjoy/internal/fj$a;->k:Ljava/lang/Long;

    goto :goto_0

    .line 1680
    :pswitch_8
    sget-object v3, Lcom/tapjoy/internal/el;->i:Lcom/tapjoy/internal/el;

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/em;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 2499
    iput-object v3, v0, Lcom/tapjoy/internal/fj$a;->j:Ljava/lang/Long;

    goto :goto_0

    .line 1679
    :pswitch_9
    sget-object v3, Lcom/tapjoy/internal/el;->i:Lcom/tapjoy/internal/el;

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/em;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 2494
    iput-object v3, v0, Lcom/tapjoy/internal/fj$a;->i:Ljava/lang/Long;

    goto/16 :goto_0

    .line 1678
    :pswitch_a
    sget-object v3, Lcom/tapjoy/internal/el;->d:Lcom/tapjoy/internal/el;

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/em;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 2489
    iput-object v3, v0, Lcom/tapjoy/internal/fj$a;->h:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 1677
    :pswitch_b
    iget-object v3, v0, Lcom/tapjoy/internal/fj$a;->g:Ljava/util/List;

    sget-object v4, Lcom/tapjoy/internal/fg;->c:Lcom/tapjoy/internal/el;

    invoke-virtual {v4, p1}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/em;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1676
    :pswitch_c
    sget-object v3, Lcom/tapjoy/internal/el;->d:Lcom/tapjoy/internal/el;

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/em;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 2478
    iput-object v3, v0, Lcom/tapjoy/internal/fj$a;->f:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 1675
    :pswitch_d
    sget-object v3, Lcom/tapjoy/internal/el;->d:Lcom/tapjoy/internal/el;

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/em;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 2473
    iput-object v3, v0, Lcom/tapjoy/internal/fj$a;->e:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 1696
    :pswitch_e
    sget-object v3, Lcom/tapjoy/internal/el;->p:Lcom/tapjoy/internal/el;

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/em;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2579
    iput-object v3, v0, Lcom/tapjoy/internal/fj$a;->z:Ljava/lang/String;

    goto/16 :goto_0

    .line 1695
    :pswitch_f
    sget-object v3, Lcom/tapjoy/internal/el;->p:Lcom/tapjoy/internal/el;

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/em;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2574
    iput-object v3, v0, Lcom/tapjoy/internal/fj$a;->y:Ljava/lang/String;

    goto/16 :goto_0

    .line 1694
    :pswitch_10
    sget-object v3, Lcom/tapjoy/internal/el;->p:Lcom/tapjoy/internal/el;

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/em;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2569
    iput-object v3, v0, Lcom/tapjoy/internal/fj$a;->x:Ljava/lang/String;

    goto/16 :goto_0

    .line 1693
    :pswitch_11
    sget-object v3, Lcom/tapjoy/internal/el;->p:Lcom/tapjoy/internal/el;

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/em;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2564
    iput-object v3, v0, Lcom/tapjoy/internal/fj$a;->w:Ljava/lang/String;

    goto/16 :goto_0

    .line 1692
    :pswitch_12
    sget-object v3, Lcom/tapjoy/internal/el;->p:Lcom/tapjoy/internal/el;

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/em;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2559
    iput-object v3, v0, Lcom/tapjoy/internal/fj$a;->v:Ljava/lang/String;

    goto/16 :goto_0

    .line 1691
    :pswitch_13
    sget-object v3, Lcom/tapjoy/internal/el;->d:Lcom/tapjoy/internal/el;

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/em;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 2554
    iput-object v3, v0, Lcom/tapjoy/internal/fj$a;->u:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 1690
    :pswitch_14
    sget-object v3, Lcom/tapjoy/internal/el;->d:Lcom/tapjoy/internal/el;

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/em;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 2549
    iput-object v3, v0, Lcom/tapjoy/internal/fj$a;->t:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 1689
    :pswitch_15
    sget-object v3, Lcom/tapjoy/internal/el;->p:Lcom/tapjoy/internal/el;

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/em;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2544
    iput-object v3, v0, Lcom/tapjoy/internal/fj$a;->s:Ljava/lang/String;

    goto/16 :goto_0

    .line 1685
    :pswitch_16
    sget-object v3, Lcom/tapjoy/internal/el;->i:Lcom/tapjoy/internal/el;

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/em;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 2524
    iput-object v3, v0, Lcom/tapjoy/internal/fj$a;->o:Ljava/lang/Long;

    goto/16 :goto_0

    .line 1683
    :pswitch_17
    sget-object v3, Lcom/tapjoy/internal/el;->d:Lcom/tapjoy/internal/el;

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/em;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 2514
    iput-object v3, v0, Lcom/tapjoy/internal/fj$a;->m:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 1674
    :pswitch_18
    sget-object v3, Lcom/tapjoy/internal/el;->p:Lcom/tapjoy/internal/el;

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/em;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2468
    iput-object v3, v0, Lcom/tapjoy/internal/fj$a;->d:Ljava/lang/String;

    goto/16 :goto_0

    .line 1673
    :pswitch_19
    sget-object v3, Lcom/tapjoy/internal/el;->i:Lcom/tapjoy/internal/el;

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/em;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 2463
    iput-object v3, v0, Lcom/tapjoy/internal/fj$a;->c:Ljava/lang/Long;

    goto/16 :goto_0

    .line 1706
    :cond_0
    invoke-virtual {p1, v1, v2}, Lcom/tapjoy/internal/em;->a(J)V

    .line 1707
    invoke-virtual {v0}, Lcom/tapjoy/internal/fj$a;->b()Lcom/tapjoy/internal/fj;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic a(Lcom/tapjoy/internal/en;Ljava/lang/Object;)V
    .locals 3

    .line 600
    check-cast p2, Lcom/tapjoy/internal/fj;

    .line 3638
    iget-object v0, p2, Lcom/tapjoy/internal/fj;->s:Ljava/lang/Long;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tapjoy/internal/el;->i:Lcom/tapjoy/internal/el;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/tapjoy/internal/fj;->s:Ljava/lang/Long;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/en;ILjava/lang/Object;)V

    .line 3639
    :cond_0
    iget-object v0, p2, Lcom/tapjoy/internal/fj;->t:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tapjoy/internal/el;->p:Lcom/tapjoy/internal/el;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/tapjoy/internal/fj;->t:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/en;ILjava/lang/Object;)V

    .line 3640
    :cond_1
    iget-object v0, p2, Lcom/tapjoy/internal/fj;->u:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tapjoy/internal/el;->d:Lcom/tapjoy/internal/el;

    const/16 v1, 0xd

    iget-object v2, p2, Lcom/tapjoy/internal/fj;->u:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/en;ILjava/lang/Object;)V

    .line 3641
    :cond_2
    iget-object v0, p2, Lcom/tapjoy/internal/fj;->v:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/tapjoy/internal/el;->d:Lcom/tapjoy/internal/el;

    const/16 v1, 0xe

    iget-object v2, p2, Lcom/tapjoy/internal/fj;->v:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/en;ILjava/lang/Object;)V

    .line 3642
    :cond_3
    sget-object v0, Lcom/tapjoy/internal/fg;->c:Lcom/tapjoy/internal/el;

    invoke-virtual {v0}, Lcom/tapjoy/internal/el;->a()Lcom/tapjoy/internal/el;

    move-result-object v0

    const/16 v1, 0xf

    iget-object v2, p2, Lcom/tapjoy/internal/fj;->w:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/en;ILjava/lang/Object;)V

    .line 3643
    iget-object v0, p2, Lcom/tapjoy/internal/fj;->x:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/tapjoy/internal/el;->d:Lcom/tapjoy/internal/el;

    const/16 v1, 0x10

    iget-object v2, p2, Lcom/tapjoy/internal/fj;->x:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/en;ILjava/lang/Object;)V

    .line 3644
    :cond_4
    iget-object v0, p2, Lcom/tapjoy/internal/fj;->y:Ljava/lang/Long;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/tapjoy/internal/el;->i:Lcom/tapjoy/internal/el;

    const/16 v1, 0x11

    iget-object v2, p2, Lcom/tapjoy/internal/fj;->y:Ljava/lang/Long;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/en;ILjava/lang/Object;)V

    .line 3645
    :cond_5
    iget-object v0, p2, Lcom/tapjoy/internal/fj;->z:Ljava/lang/Long;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/tapjoy/internal/el;->i:Lcom/tapjoy/internal/el;

    const/16 v1, 0x12

    iget-object v2, p2, Lcom/tapjoy/internal/fj;->z:Ljava/lang/Long;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/en;ILjava/lang/Object;)V

    .line 3646
    :cond_6
    iget-object v0, p2, Lcom/tapjoy/internal/fj;->A:Ljava/lang/Long;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/tapjoy/internal/el;->i:Lcom/tapjoy/internal/el;

    const/16 v1, 0x13

    iget-object v2, p2, Lcom/tapjoy/internal/fj;->A:Ljava/lang/Long;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/en;ILjava/lang/Object;)V

    .line 3647
    :cond_7
    iget-object v0, p2, Lcom/tapjoy/internal/fj;->B:Ljava/lang/String;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/tapjoy/internal/el;->p:Lcom/tapjoy/internal/el;

    const/16 v1, 0x14

    iget-object v2, p2, Lcom/tapjoy/internal/fj;->B:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/en;ILjava/lang/Object;)V

    .line 3648
    :cond_8
    iget-object v0, p2, Lcom/tapjoy/internal/fj;->C:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/tapjoy/internal/el;->d:Lcom/tapjoy/internal/el;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/tapjoy/internal/fj;->C:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/en;ILjava/lang/Object;)V

    .line 3649
    :cond_9
    iget-object v0, p2, Lcom/tapjoy/internal/fj;->D:Ljava/lang/Double;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/tapjoy/internal/el;->o:Lcom/tapjoy/internal/el;

    const/16 v1, 0x15

    iget-object v2, p2, Lcom/tapjoy/internal/fj;->D:Ljava/lang/Double;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/en;ILjava/lang/Object;)V

    .line 3650
    :cond_a
    iget-object v0, p2, Lcom/tapjoy/internal/fj;->E:Ljava/lang/Long;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/tapjoy/internal/el;->i:Lcom/tapjoy/internal/el;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/tapjoy/internal/fj;->E:Ljava/lang/Long;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/en;ILjava/lang/Object;)V

    .line 3651
    :cond_b
    iget-object v0, p2, Lcom/tapjoy/internal/fj;->F:Ljava/lang/Double;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/tapjoy/internal/el;->o:Lcom/tapjoy/internal/el;

    const/16 v1, 0x16

    iget-object v2, p2, Lcom/tapjoy/internal/fj;->F:Ljava/lang/Double;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/en;ILjava/lang/Object;)V

    .line 3652
    :cond_c
    iget-object v0, p2, Lcom/tapjoy/internal/fj;->G:Ljava/lang/String;

    if-eqz v0, :cond_d

    sget-object v0, Lcom/tapjoy/internal/el;->p:Lcom/tapjoy/internal/el;

    const/16 v1, 0x17

    iget-object v2, p2, Lcom/tapjoy/internal/fj;->G:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/en;ILjava/lang/Object;)V

    .line 3653
    :cond_d
    iget-object v0, p2, Lcom/tapjoy/internal/fj;->H:Ljava/lang/Boolean;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/tapjoy/internal/el;->c:Lcom/tapjoy/internal/el;

    const/16 v1, 0x18

    iget-object v2, p2, Lcom/tapjoy/internal/fj;->H:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/en;ILjava/lang/Object;)V

    .line 3654
    :cond_e
    iget-object v0, p2, Lcom/tapjoy/internal/fj;->I:Ljava/lang/String;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/tapjoy/internal/el;->p:Lcom/tapjoy/internal/el;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/tapjoy/internal/fj;->I:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/en;ILjava/lang/Object;)V

    .line 3655
    :cond_f
    iget-object v0, p2, Lcom/tapjoy/internal/fj;->J:Ljava/lang/Integer;

    if-eqz v0, :cond_10

    sget-object v0, Lcom/tapjoy/internal/el;->d:Lcom/tapjoy/internal/el;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/tapjoy/internal/fj;->J:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/en;ILjava/lang/Object;)V

    .line 3656
    :cond_10
    iget-object v0, p2, Lcom/tapjoy/internal/fj;->K:Ljava/lang/Integer;

    if-eqz v0, :cond_11

    sget-object v0, Lcom/tapjoy/internal/el;->d:Lcom/tapjoy/internal/el;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/tapjoy/internal/fj;->K:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/en;ILjava/lang/Object;)V

    .line 3657
    :cond_11
    iget-object v0, p2, Lcom/tapjoy/internal/fj;->L:Ljava/lang/String;

    if-eqz v0, :cond_12

    sget-object v0, Lcom/tapjoy/internal/el;->p:Lcom/tapjoy/internal/el;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/tapjoy/internal/fj;->L:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/en;ILjava/lang/Object;)V

    .line 3658
    :cond_12
    iget-object v0, p2, Lcom/tapjoy/internal/fj;->M:Ljava/lang/String;

    if-eqz v0, :cond_13

    sget-object v0, Lcom/tapjoy/internal/el;->p:Lcom/tapjoy/internal/el;

    const/16 v1, 0x9

    iget-object v2, p2, Lcom/tapjoy/internal/fj;->M:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/en;ILjava/lang/Object;)V

    .line 3659
    :cond_13
    iget-object v0, p2, Lcom/tapjoy/internal/fj;->N:Ljava/lang/String;

    if-eqz v0, :cond_14

    sget-object v0, Lcom/tapjoy/internal/el;->p:Lcom/tapjoy/internal/el;

    const/16 v1, 0xa

    iget-object v2, p2, Lcom/tapjoy/internal/fj;->N:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/en;ILjava/lang/Object;)V

    .line 3660
    :cond_14
    iget-object v0, p2, Lcom/tapjoy/internal/fj;->O:Ljava/lang/String;

    if-eqz v0, :cond_15

    sget-object v0, Lcom/tapjoy/internal/el;->p:Lcom/tapjoy/internal/el;

    const/16 v1, 0xb

    iget-object v2, p2, Lcom/tapjoy/internal/fj;->O:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/en;ILjava/lang/Object;)V

    .line 3661
    :cond_15
    iget-object v0, p2, Lcom/tapjoy/internal/fj;->P:Ljava/lang/String;

    if-eqz v0, :cond_16

    sget-object v0, Lcom/tapjoy/internal/el;->p:Lcom/tapjoy/internal/el;

    const/16 v1, 0xc

    iget-object v2, p2, Lcom/tapjoy/internal/fj;->P:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/en;ILjava/lang/Object;)V

    .line 3662
    :cond_16
    sget-object v0, Lcom/tapjoy/internal/el;->p:Lcom/tapjoy/internal/el;

    invoke-virtual {v0}, Lcom/tapjoy/internal/el;->a()Lcom/tapjoy/internal/el;

    move-result-object v0

    const/16 v1, 0x1a

    iget-object v2, p2, Lcom/tapjoy/internal/fj;->Q:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/en;ILjava/lang/Object;)V

    .line 3663
    iget-object v0, p2, Lcom/tapjoy/internal/fj;->R:Ljava/lang/Boolean;

    if-eqz v0, :cond_17

    sget-object v0, Lcom/tapjoy/internal/el;->c:Lcom/tapjoy/internal/el;

    const/16 v1, 0x19

    iget-object v2, p2, Lcom/tapjoy/internal/fj;->R:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/en;ILjava/lang/Object;)V

    .line 3664
    :cond_17
    invoke-virtual {p2}, Lcom/tapjoy/internal/fj;->a()Lcom/tapjoy/internal/je;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/en;->a(Lcom/tapjoy/internal/je;)V

    return-void
.end method
