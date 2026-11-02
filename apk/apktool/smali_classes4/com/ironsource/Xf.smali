.class public final Lcom/ironsource/Xf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/ironsource/Sf;


# direct methods
.method public constructor <init>(Lcom/ironsource/Sf;)V
    .locals 1

    const-string v0, "javaScriptEvaluator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/ironsource/Xf;->a:Lcom/ironsource/Sf;

    return-void
.end method

.method public static final synthetic a(Lcom/ironsource/Xf;Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/Xf;->a(Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;Ljava/util/List;)V

    return-void
.end method

.method private final a(Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/unity3d/mediation/LevelPlay$AdFormat;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/ironsource/Xf;->a:Lcom/ironsource/Sf;

    invoke-interface {v0, p1, p2, p3}, Lcom/ironsource/Sf;->a(Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;Ljava/util/List;)V

    return-void
.end method

.method private final b()V
    .locals 2

    .line 1
    sget-object v0, Lcom/ironsource/Wf;->a:Lcom/ironsource/Wf;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ironsource/Wf;->a(Lcom/ironsource/hb;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/ironsource/Wf;->a(Lcom/ironsource/tb;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/ironsource/Wf;->a(Lcom/ironsource/Ia;)V

    return-void
.end method

.method private final c()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ironsource/mediationsdk/c;->c()Lcom/ironsource/mediationsdk/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/c;->d(Z)V

    .line 2
    sget-object v0, Lcom/ironsource/Wf;->a:Lcom/ironsource/Wf;

    invoke-virtual {v0}, Lcom/ironsource/Wf;->e()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/ironsource/Xf;->b()V

    .line 3
    invoke-direct {p0}, Lcom/ironsource/Xf;->c()V

    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    sget-object v0, Lcom/ironsource/Wf;->a:Lcom/ironsource/Wf;

    .line 2
    new-instance v1, Lcom/ironsource/Xf$a;

    invoke-direct {v1, p0}, Lcom/ironsource/Xf$a;-><init>(Lcom/ironsource/Xf;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/ironsource/Wf;->a(Lcom/ironsource/hb;)V

    .line 54
    new-instance v1, Lcom/ironsource/Xf$b;

    invoke-direct {v1, p0}, Lcom/ironsource/Xf$b;-><init>(Lcom/ironsource/Xf;)V

    .line 55
    invoke-virtual {v0, v1}, Lcom/ironsource/Wf;->a(Lcom/ironsource/tb;)V

    .line 114
    new-instance v1, Lcom/ironsource/Xf$c;

    invoke-direct {v1, p0}, Lcom/ironsource/Xf$c;-><init>(Lcom/ironsource/Xf;)V

    .line 115
    invoke-virtual {v0, v1}, Lcom/ironsource/Wf;->a(Lcom/ironsource/Ia;)V

    return-void
.end method
