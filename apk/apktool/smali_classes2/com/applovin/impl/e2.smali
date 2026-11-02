.class public Lcom/applovin/impl/e2;
.super Lcom/applovin/impl/x1;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/ad/b;Landroid/app/Activity;Lcom/applovin/impl/sdk/l;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/x1;-><init>(Lcom/applovin/impl/sdk/ad/b;Landroid/app/Activity;Lcom/applovin/impl/sdk/l;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/view/View;)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/applovin/impl/x1;->a(Landroid/view/View;)V

    return-void
.end method

.method public a(Landroid/widget/ImageView;Lcom/applovin/impl/adview/g;Lcom/applovin/impl/a;Landroid/widget/ProgressBar;Lcom/applovin/impl/k0;Landroid/view/View;Landroid/view/View;Lcom/applovin/adview/AppLovinAdView;Lcom/applovin/impl/adview/k;Landroid/widget/ImageView;Landroid/view/ViewGroup;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    .line 3
    iget-object v12, v0, Lcom/applovin/impl/x1;->c:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v12}, Lcom/applovin/impl/sdk/ad/b;->k0()Lcom/applovin/impl/sdk/ad/b$e;

    move-result-object v12

    sget-object v13, Lcom/applovin/impl/sdk/ad/b$e;->b:Lcom/applovin/impl/sdk/ad/b$e;

    const/16 v15, 0x30

    const/4 v14, -0x1

    if-ne v12, v13, :cond_0

    .line 5
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v13, -0x2

    invoke-direct {v12, v14, v13, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move/from16 v16, v15

    :goto_0
    const/4 v15, 0x5

    goto :goto_1

    :cond_0
    const/4 v13, -0x2

    .line 9
    iget-object v12, v0, Lcom/applovin/impl/x1;->c:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v12}, Lcom/applovin/impl/sdk/ad/b;->k0()Lcom/applovin/impl/sdk/ad/b$e;

    move-result-object v12

    move/from16 v16, v15

    sget-object v15, Lcom/applovin/impl/sdk/ad/b$e;->c:Lcom/applovin/impl/sdk/ad/b$e;

    if-ne v12, v15, :cond_1

    .line 11
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v15, 0x50

    invoke-direct {v12, v14, v13, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    goto :goto_0

    .line 15
    :cond_1
    iget-object v12, v0, Lcom/applovin/impl/x1;->c:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v12}, Lcom/applovin/impl/sdk/ad/b;->k0()Lcom/applovin/impl/sdk/ad/b$e;

    move-result-object v12

    sget-object v15, Lcom/applovin/impl/sdk/ad/b$e;->d:Lcom/applovin/impl/sdk/ad/b$e;

    if-ne v12, v15, :cond_2

    .line 17
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v15, 0x3

    invoke-direct {v12, v13, v14, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    goto :goto_0

    :cond_2
    const/4 v15, 0x3

    .line 21
    iget-object v12, v0, Lcom/applovin/impl/x1;->c:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v12}, Lcom/applovin/impl/sdk/ad/b;->k0()Lcom/applovin/impl/sdk/ad/b$e;

    move-result-object v12

    sget-object v15, Lcom/applovin/impl/sdk/ad/b$e;->e:Lcom/applovin/impl/sdk/ad/b$e;

    if-ne v12, v15, :cond_3

    .line 23
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v15, 0x5

    invoke-direct {v12, v13, v14, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    goto :goto_1

    :cond_3
    const/4 v15, 0x5

    .line 29
    iget-object v12, v0, Lcom/applovin/impl/x1;->e:Landroid/widget/FrameLayout$LayoutParams;

    .line 33
    :goto_1
    iget-object v13, v0, Lcom/applovin/impl/x1;->e:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v8, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    iget-object v13, v0, Lcom/applovin/impl/x1;->d:Landroid/view/ViewGroup;

    invoke-virtual {v13, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 37
    iget-object v8, v0, Lcom/applovin/impl/x1;->e:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    iget-object v8, v0, Lcom/applovin/impl/x1;->d:Landroid/view/ViewGroup;

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 41
    invoke-virtual {v6, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    iget-object v7, v0, Lcom/applovin/impl/x1;->d:Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-eqz v2, :cond_5

    .line 47
    iget-object v6, v0, Lcom/applovin/impl/x1;->c:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v6}, Lcom/applovin/impl/sdk/ad/b;->B0()Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v15, 0x3

    :cond_4
    or-int/lit8 v6, v15, 0x30

    .line 48
    iget-object v7, v0, Lcom/applovin/impl/x1;->c:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v7}, Lcom/applovin/impl/sdk/ad/b;->o()Lcom/applovin/impl/sdk/ad/b$d;

    move-result-object v7

    invoke-virtual {v0, v7, v6, v2}, Lcom/applovin/impl/x1;->a(Lcom/applovin/impl/sdk/ad/b$d;ILcom/applovin/impl/adview/g;)V

    :cond_5
    if-eqz v1, :cond_6

    .line 54
    iget-object v2, v0, Lcom/applovin/impl/x1;->b:Landroid/app/Activity;

    iget-object v6, v0, Lcom/applovin/impl/x1;->a:Lcom/applovin/impl/sdk/l;

    sget-object v7, Lcom/applovin/impl/c5;->l2:Lcom/applovin/impl/c5;

    invoke-virtual {v6, v7}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v2, v6}, Lcom/applovin/sdk/AppLovinSdkUtils;->dpToPx(Landroid/content/Context;I)I

    move-result v2

    .line 55
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v7, v0, Lcom/applovin/impl/x1;->a:Lcom/applovin/impl/sdk/l;

    sget-object v8, Lcom/applovin/impl/c5;->n2:Lcom/applovin/impl/c5;

    invoke-virtual {v7, v8}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v6, v2, v2, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 56
    iget-object v2, v0, Lcom/applovin/impl/x1;->b:Landroid/app/Activity;

    iget-object v7, v0, Lcom/applovin/impl/x1;->a:Lcom/applovin/impl/sdk/l;

    sget-object v8, Lcom/applovin/impl/c5;->m2:Lcom/applovin/impl/c5;

    invoke-virtual {v7, v8}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v2, v7}, Lcom/applovin/sdk/AppLovinSdkUtils;->dpToPx(Landroid/content/Context;I)I

    move-result v2

    .line 57
    invoke-virtual {v6, v2, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 58
    iget-object v2, v0, Lcom/applovin/impl/x1;->d:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    if-eqz v3, :cond_7

    .line 64
    iget-object v1, v0, Lcom/applovin/impl/x1;->d:Landroid/view/ViewGroup;

    iget-object v2, v0, Lcom/applovin/impl/x1;->e:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    if-eqz v5, :cond_8

    .line 70
    iget-object v1, v0, Lcom/applovin/impl/x1;->b:Landroid/app/Activity;

    iget-object v2, v0, Lcom/applovin/impl/x1;->a:Lcom/applovin/impl/sdk/l;

    sget-object v3, Lcom/applovin/impl/c5;->Y1:Lcom/applovin/impl/c5;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/applovin/sdk/AppLovinSdkUtils;->dpToPx(Landroid/content/Context;I)I

    move-result v1

    .line 71
    iget-object v2, v0, Lcom/applovin/impl/x1;->a:Lcom/applovin/impl/sdk/l;

    sget-object v3, Lcom/applovin/impl/c5;->X1:Lcom/applovin/impl/c5;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 72
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 73
    iget-object v1, v0, Lcom/applovin/impl/x1;->b:Landroid/app/Activity;

    iget-object v2, v0, Lcom/applovin/impl/x1;->a:Lcom/applovin/impl/sdk/l;

    sget-object v6, Lcom/applovin/impl/c5;->W1:Lcom/applovin/impl/c5;

    invoke-virtual {v2, v6}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/applovin/sdk/AppLovinSdkUtils;->dpToPx(Landroid/content/Context;I)I

    move-result v1

    .line 74
    invoke-virtual {v3, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 76
    iget-object v1, v0, Lcom/applovin/impl/x1;->d:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    if-eqz v4, :cond_9

    .line 82
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x14

    const/16 v15, 0x50

    invoke-direct {v1, v14, v2, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 83
    iget-object v2, v0, Lcom/applovin/impl/x1;->a:Lcom/applovin/impl/sdk/l;

    sget-object v3, Lcom/applovin/impl/c5;->q2:Lcom/applovin/impl/c5;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v3, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 85
    iget-object v2, v0, Lcom/applovin/impl/x1;->d:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    if-eqz v10, :cond_a

    .line 91
    iget-object v1, v0, Lcom/applovin/impl/x1;->c:Lcom/applovin/impl/sdk/ad/b;

    check-cast v1, Lcom/applovin/impl/v7;

    .line 93
    invoke-virtual {v1}, Lcom/applovin/impl/v7;->r1()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 95
    iget-object v2, v0, Lcom/applovin/impl/x1;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Lcom/applovin/impl/v7;->l1()Lcom/applovin/impl/b8;

    move-result-object v3

    invoke-virtual {v3}, Lcom/applovin/impl/b8;->g()I

    move-result v3

    invoke-static {v2, v3}, Lcom/applovin/sdk/AppLovinSdkUtils;->dpToPx(Landroid/content/Context;I)I

    move-result v2

    .line 96
    iget-object v3, v0, Lcom/applovin/impl/x1;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Lcom/applovin/impl/v7;->l1()Lcom/applovin/impl/b8;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/b8;->d()I

    move-result v1

    invoke-static {v3, v1}, Lcom/applovin/sdk/AppLovinSdkUtils;->dpToPx(Landroid/content/Context;I)I

    move-result v1

    .line 97
    iget-object v3, v0, Lcom/applovin/impl/x1;->b:Landroid/app/Activity;

    iget-object v4, v0, Lcom/applovin/impl/x1;->a:Lcom/applovin/impl/sdk/l;

    sget-object v5, Lcom/applovin/impl/c5;->k5:Lcom/applovin/impl/c5;

    invoke-virtual {v4, v5}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Lcom/applovin/sdk/AppLovinSdkUtils;->dpToPx(Landroid/content/Context;I)I

    move-result v3

    .line 98
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x53

    invoke-direct {v4, v2, v1, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 99
    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 101
    iget-object v1, v0, Lcom/applovin/impl/x1;->d:Landroid/view/ViewGroup;

    invoke-virtual {v1, v10, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    if-eqz v9, :cond_b

    .line 108
    iget-object v1, v0, Lcom/applovin/impl/x1;->d:Landroid/view/ViewGroup;

    iget-object v2, v0, Lcom/applovin/impl/x1;->e:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v9, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_b
    if-eqz v11, :cond_c

    .line 114
    iget-object v1, v0, Lcom/applovin/impl/x1;->d:Landroid/view/ViewGroup;

    invoke-virtual {v11, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    .line 118
    :cond_c
    iget-object v1, v0, Lcom/applovin/impl/x1;->b:Landroid/app/Activity;

    iget-object v2, v0, Lcom/applovin/impl/x1;->d:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/applovin/impl/adview/g;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/applovin/impl/x1;->a(Lcom/applovin/impl/adview/g;)V

    return-void
.end method

.method public a(Lcom/applovin/impl/adview/g;Lcom/applovin/impl/adview/k;Landroid/view/View;Landroid/widget/ProgressBar;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 119
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/x1;->a:Lcom/applovin/impl/sdk/l;

    sget-object v2, Lcom/applovin/impl/c5;->e7:Lcom/applovin/impl/c5;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    iget-object v1, p0, Lcom/applovin/impl/x1;->d:Landroid/view/ViewGroup;

    invoke-static {v1, p3}, Lcom/applovin/impl/s;->b(Landroid/view/ViewGroup;Landroid/view/View;)V

    goto :goto_0

    .line 129
    :cond_1
    iget-object v1, p0, Lcom/applovin/impl/x1;->d:Landroid/view/ViewGroup;

    invoke-static {v1, p3}, Lcom/applovin/impl/s;->a(Landroid/view/ViewGroup;Landroid/view/View;)V

    :goto_0
    const/16 p3, 0x30

    if-eqz p1, :cond_3

    .line 135
    iget-object v1, p0, Lcom/applovin/impl/x1;->c:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/b;->v0()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    goto :goto_1

    :cond_2
    const/4 v1, 0x5

    :goto_1
    or-int/2addr v1, p3

    .line 136
    iget-object v2, p0, Lcom/applovin/impl/x1;->c:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/ad/b;->o()Lcom/applovin/impl/sdk/ad/b$d;

    move-result-object v2

    invoke-virtual {p0, v2, v1, p1}, Lcom/applovin/impl/x1;->a(Lcom/applovin/impl/sdk/ad/b$d;ILcom/applovin/impl/adview/g;)V

    :cond_3
    if-eqz p4, :cond_5

    .line 141
    iget-object p1, p0, Lcom/applovin/impl/x1;->a:Lcom/applovin/impl/sdk/l;

    sget-object v1, Lcom/applovin/impl/c5;->x2:Lcom/applovin/impl/c5;

    invoke-virtual {p1, v1}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    const/16 p3, 0x50

    .line 142
    :cond_4
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/16 v2, 0x14

    invoke-direct {p1, v1, v2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 143
    iget-object p3, p0, Lcom/applovin/impl/x1;->a:Lcom/applovin/impl/sdk/l;

    sget-object v1, Lcom/applovin/impl/c5;->y2:Lcom/applovin/impl/c5;

    invoke-virtual {p3, v1}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, v0, v0, v0, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 145
    iget-object p3, p0, Lcom/applovin/impl/x1;->d:Landroid/view/ViewGroup;

    invoke-virtual {p3, p4, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    if-eqz p2, :cond_6

    .line 151
    iget-object p1, p0, Lcom/applovin/impl/x1;->d:Landroid/view/ViewGroup;

    iget-object p3, p0, Lcom/applovin/impl/x1;->e:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    return-void
.end method
