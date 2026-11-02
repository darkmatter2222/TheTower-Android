.class public final Lcom/ironsource/mediationsdk/demandOnly/h$b;
.super Lcom/ironsource/mediationsdk/demandOnly/h$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/demandOnly/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:Landroid/app/Activity;

.field private final f:Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "adFormat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p3, p5, p6}, Lcom/ironsource/mediationsdk/demandOnly/h$a;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3
    iput-object p1, p0, Lcom/ironsource/mediationsdk/demandOnly/h$b;->d:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/ironsource/mediationsdk/demandOnly/h$b;->e:Landroid/app/Activity;

    .line 6
    iput-object p4, p0, Lcom/ironsource/mediationsdk/demandOnly/h$b;->f:Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    and-int/lit8 p5, p7, 0x20

    if-eqz p5, :cond_1

    const/4 p6, 0x0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p6

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/ironsource/mediationsdk/demandOnly/h$b;-><init>(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public a()Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .locals 2

    .line 1
    new-instance v0, Lcom/ironsource/mediationsdk/demandOnly/q$a;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/demandOnly/h$b;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/ironsource/mediationsdk/demandOnly/q$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/demandOnly/q$a;->a(Lcom/ironsource/mediationsdk/demandOnly/h;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final f()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/demandOnly/h$b;->e:Landroid/app/Activity;

    return-object v0
.end method

.method public final g()Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/demandOnly/h$b;->f:Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;

    return-object v0
.end method
