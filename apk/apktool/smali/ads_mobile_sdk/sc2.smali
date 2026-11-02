.class public final Lads_mobile_sdk/sc2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/k9;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lads_mobile_sdk/tx0;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/k9;Landroid/view/View;Lads_mobile_sdk/tx0;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/sc2;->a:Lads_mobile_sdk/k9;

    iput-object p2, p0, Lads_mobile_sdk/sc2;->b:Landroid/view/View;

    iput-object p3, p0, Lads_mobile_sdk/sc2;->c:Lads_mobile_sdk/tx0;

    iput-object p4, p0, Lads_mobile_sdk/sc2;->d:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/sc2;->a:Lads_mobile_sdk/k9;

    iget-object v1, p0, Lads_mobile_sdk/sc2;->b:Landroid/view/View;

    iget-object v2, p0, Lads_mobile_sdk/sc2;->c:Lads_mobile_sdk/tx0;

    iget-object v3, p0, Lads_mobile_sdk/sc2;->d:Ljava/lang/String;

    check-cast v0, Lads_mobile_sdk/p9;

    .line 3
    iget-boolean v4, v0, Lads_mobile_sdk/p9;->f:Z

    if-eqz v4, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, v0, Lads_mobile_sdk/p9;->b:Lads_mobile_sdk/ux0;

    invoke-virtual {v0, v1, v2, v3}, Lads_mobile_sdk/ux0;->a(Landroid/view/View;Lads_mobile_sdk/tx0;Ljava/lang/String;)V

    .line 7
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
