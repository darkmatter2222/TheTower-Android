.class public final Lcom/ironsource/adqualitysdk/sdk/i/丿;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/z0;


# instance fields
.field public final synthetic ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ἲ;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ἲ;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/丿;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ἲ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾇ(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final ﾒ(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ϛ;->ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/ϛ;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ϛ;->ﻐ:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-nez v1, :cond_6

    .line 3
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    .line 4
    check-cast p1, Landroid/view/ViewGroup;

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_4

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x1020002

    .line 7
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 8
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/丿;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ἲ;

    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, p1, :cond_2

    if-ne v1, v0, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v1

    goto :goto_2

    .line 18
    :cond_2
    instance-of v1, v2, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 19
    move-object v1, v2

    check-cast v1, Landroid/view/ViewGroup;

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_0

    :cond_3
    :goto_1
    move-object p1, v0

    .line 20
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/丿;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ἲ;

    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/〱;

    invoke-direct {v1, v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/〱;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ἲ;Landroid/view/ViewGroup;)V

    .line 23
    invoke-static {v0, p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ἲ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ἲ;Landroid/view/ViewGroup;Lcom/ironsource/adqualitysdk/sdk/i/〱;)V

    :cond_5
    return-void

    .line 26
    :cond_6
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/丿;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ἲ;

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ἲ;->ﻛ()V

    return-void

    :catchall_0
    move-exception p1

    .line 28
    monitor-exit v0

    throw p1
.end method
