.class public final Lcom/ironsource/mediationsdk/demandOnly/h$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/demandOnly/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDemandOnlyLoadParams.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DemandOnlyLoadParams.kt\ncom/ironsource/mediationsdk/demandOnly/DemandOnlyLoadParams$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,107:1\n1#2:108\n*E\n"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/app/Activity;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/ironsource/mediationsdk/demandOnly/h$c;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lcom/ironsource/mediationsdk/demandOnly/h$b;
    .locals 7

    .line 7
    new-instance v0, Lcom/ironsource/mediationsdk/demandOnly/h$b;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/demandOnly/h$c;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/demandOnly/h$c;->b:Landroid/app/Activity;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/demandOnly/h$c;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/demandOnly/h$c;->f:Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;

    iget-object v5, p0, Lcom/ironsource/mediationsdk/demandOnly/h$c;->e:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/ironsource/mediationsdk/demandOnly/h$c;->d:Z

    invoke-direct/range {v0 .. v6}, Lcom/ironsource/mediationsdk/demandOnly/h$b;-><init>(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public final a(Landroid/app/Activity;)Lcom/ironsource/mediationsdk/demandOnly/h$c;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ironsource/mediationsdk/demandOnly/h$c;->b:Landroid/app/Activity;

    return-object p0
.end method

.method public final a(Landroid/app/Activity;Landroid/app/Activity;)Lcom/ironsource/mediationsdk/demandOnly/h$c;
    .locals 0

    if-nez p1, :cond_0

    move-object p1, p2

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/ironsource/mediationsdk/demandOnly/h$c;->b:Landroid/app/Activity;

    return-object p0
.end method

.method public final a(Lcom/ironsource/mediationsdk/IronSource$a;)Lcom/ironsource/mediationsdk/demandOnly/h$c;
    .locals 1

    const-string v0, "adFormat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSource$a;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "toString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/demandOnly/h$c;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final a(Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;)Lcom/ironsource/mediationsdk/demandOnly/h$c;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/ironsource/mediationsdk/demandOnly/h$c;->f:Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/ironsource/mediationsdk/demandOnly/h$c;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/ironsource/mediationsdk/demandOnly/h$c;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final a(Z)Lcom/ironsource/mediationsdk/demandOnly/h$c;
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/demandOnly/h$c;->d:Z

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/ironsource/mediationsdk/demandOnly/h$c;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ironsource/mediationsdk/demandOnly/h$c;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Lcom/ironsource/mediationsdk/demandOnly/h$d;
    .locals 6

    .line 2
    new-instance v0, Lcom/ironsource/mediationsdk/demandOnly/h$d;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/demandOnly/h$c;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/demandOnly/h$c;->b:Landroid/app/Activity;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/demandOnly/h$c;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/demandOnly/h$c;->e:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/ironsource/mediationsdk/demandOnly/h$c;->d:Z

    invoke-direct/range {v0 .. v5}, Lcom/ironsource/mediationsdk/demandOnly/h$d;-><init>(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method
