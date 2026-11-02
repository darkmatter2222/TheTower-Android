.class public final Lcom/ironsource/G6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/z6;
.implements Lcom/ironsource/u6$b;
.implements Lcom/ironsource/u6$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/G6$a;
    }
.end annotation


# static fields
.field public static final f:Lcom/ironsource/G6$a;

.field public static final g:Ljava/lang/String; = "Fullscreen ProgressiveOnShown Strategy"


# instance fields
.field private final a:Lcom/ironsource/p0;

.field private final b:Lcom/ironsource/v6;

.field private final c:Lcom/ironsource/x6;

.field private final d:Lcom/ironsource/y6;

.field private e:Lcom/ironsource/M6;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/ironsource/G6$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/G6$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ironsource/G6;->f:Lcom/ironsource/G6$a;

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/p0;Lcom/ironsource/v6;Lcom/ironsource/x6;Lcom/ironsource/y6;)V
    .locals 7

    const-string v0, "adTools"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fullscreenAdUnitListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/G6;->a:Lcom/ironsource/p0;

    .line 3
    iput-object p2, p0, Lcom/ironsource/G6;->b:Lcom/ironsource/v6;

    .line 4
    iput-object p3, p0, Lcom/ironsource/G6;->c:Lcom/ironsource/x6;

    .line 5
    iput-object p4, p0, Lcom/ironsource/G6;->d:Lcom/ironsource/y6;

    .line 8
    new-instance v1, Lcom/ironsource/H6;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/ironsource/H6;-><init>(Lcom/ironsource/G6;Lcom/ironsource/u6;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v2, Lcom/ironsource/G6;->e:Lcom/ironsource/M6;

    return-void
.end method


# virtual methods
.method public final a()Lcom/ironsource/p0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/G6;->a:Lcom/ironsource/p0;

    return-object v0
.end method

.method public a(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/ironsource/G6;->e:Lcom/ironsource/M6;

    invoke-interface {v0, p1}, Lcom/ironsource/M6;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public final a(Lcom/ironsource/M6;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lcom/ironsource/G6;->e:Lcom/ironsource/M6;

    return-void
.end method

.method public a(Lcom/ironsource/u6;)V
    .locals 1

    const-string v0, "adUnit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/ironsource/G6;->e:Lcom/ironsource/M6;

    invoke-interface {p1}, Lcom/ironsource/M6;->a()V

    return-void
.end method

.method public a(Lcom/ironsource/u6;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 1

    const-string v0, "adUnit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/ironsource/G6;->e:Lcom/ironsource/M6;

    invoke-interface {p1, p2}, Lcom/ironsource/M6;->c(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method

.method public a(Lcom/ironsource/u6;Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .locals 1

    const-string v0, "adUnit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adInfo"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/ironsource/G6;->e:Lcom/ironsource/M6;

    invoke-interface {p1, p2}, Lcom/ironsource/M6;->a(Lcom/unity3d/mediation/LevelPlayAdInfo;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/ironsource/G6;->a:Lcom/ironsource/p0;

    invoke-virtual {v0}, Lcom/ironsource/p0;->f()Lcom/ironsource/E5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/E5;->h()Lcom/ironsource/pg;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fullscreen ProgressiveOnShown Strategy - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/pg;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final b()Lcom/ironsource/v6;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/G6;->b:Lcom/ironsource/v6;

    return-object v0
.end method

.method public b(Lcom/ironsource/u6;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 1

    const-string v0, "adUnit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/ironsource/G6;->e:Lcom/ironsource/M6;

    invoke-interface {p1, p2}, Lcom/ironsource/M6;->b(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method

.method public b(Lcom/ironsource/u6;Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .locals 1

    const-string v0, "adUnit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adInfo"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/ironsource/G6;->e:Lcom/ironsource/M6;

    invoke-interface {p1, p2}, Lcom/ironsource/M6;->c(Lcom/unity3d/mediation/LevelPlayAdInfo;)V

    return-void
.end method

.method public final c()Lcom/ironsource/x6;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/G6;->c:Lcom/ironsource/x6;

    return-object v0
.end method

.method public c(Lcom/ironsource/u6;Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .locals 1

    const-string v0, "adUnit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adInfo"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/ironsource/G6;->e:Lcom/ironsource/M6;

    invoke-interface {p1, p2}, Lcom/ironsource/M6;->b(Lcom/unity3d/mediation/LevelPlayAdInfo;)V

    return-void
.end method

.method public final d()Lcom/ironsource/y6;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/G6;->d:Lcom/ironsource/y6;

    return-object v0
.end method

.method public loadAd()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/G6;->e:Lcom/ironsource/M6;

    invoke-interface {v0}, Lcom/ironsource/M6;->loadAd()V

    return-void
.end method
