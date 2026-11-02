.class public final Lcom/ironsource/cb$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/cb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$-KTbM_BDHzatjpQGauZB3jRsPFw(Lcom/ironsource/p0;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/ironsource/cb$a;->a(Lcom/ironsource/p0;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QdnRTXgkdB4JBJkWCIgr1NX7PD8(Lcom/ironsource/p0;Ljava/lang/String;Lcom/ironsource/L3;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/ironsource/cb$a;->a(Lcom/ironsource/p0;Ljava/lang/String;Lcom/ironsource/L3;Z)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ironsource/cb$a;-><init>()V

    return-void
.end method

.method private static final a(Lcom/ironsource/p0;Ljava/lang/String;)V
    .locals 2

    .line 14
    invoke-virtual {p0}, Lcom/ironsource/p0;->f()Lcom/ironsource/E5;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ironsource/E5;->a()Lcom/ironsource/N;

    move-result-object p0

    const-string v0, "SDK is not initialized"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/ironsource/N;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private static final a(Lcom/ironsource/p0;Ljava/lang/String;Lcom/ironsource/L3;Z)V
    .locals 0

    .line 15
    invoke-virtual {p0}, Lcom/ironsource/p0;->f()Lcom/ironsource/E5;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ironsource/E5;->a()Lcom/ironsource/N;

    move-result-object p0

    .line 16
    invoke-virtual {p2}, Lcom/ironsource/L3;->e()Ljava/lang/String;

    move-result-object p2

    .line 17
    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/N;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;)Z
    .locals 3

    const-string v0, "placementName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adFormat"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p2}, Lcom/unity3d/mediation/a;->a(Lcom/unity3d/mediation/LevelPlay$AdFormat;)Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v0

    sget-object v1, Lcom/ironsource/E0$b;->a:Lcom/ironsource/E0$b;

    invoke-static {v0, v1}, Lcom/ironsource/p0$a;->a(Lcom/ironsource/mediationsdk/IronSource$a;Lcom/ironsource/E0$b;)Lcom/ironsource/p0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/ironsource/yb;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    new-instance p2, Lcom/ironsource/cb$a$$ExternalSyntheticLambda0;

    invoke-direct {p2, v0, p1}, Lcom/ironsource/cb$a$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/p0;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/ironsource/yb;->a(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return p1

    .line 10
    :cond_0
    sget-object v1, Lcom/ironsource/Pb;->w:Lcom/ironsource/Pb$a;

    invoke-virtual {v1}, Lcom/ironsource/Pb$a;->d()Lcom/ironsource/M7;

    move-result-object v1

    invoke-interface {v1}, Lcom/ironsource/M7;->p()Lcom/ironsource/O7;

    move-result-object v1

    .line 11
    invoke-interface {v1, p1, p2}, Lcom/ironsource/O7;->a(Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;)Lcom/ironsource/L3;

    move-result-object p2

    .line 12
    invoke-virtual {p2}, Lcom/ironsource/L3;->d()Z

    move-result v1

    .line 13
    new-instance v2, Lcom/ironsource/cb$a$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, p1, p2, v1}, Lcom/ironsource/cb$a$$ExternalSyntheticLambda1;-><init>(Lcom/ironsource/p0;Ljava/lang/String;Lcom/ironsource/L3;Z)V

    invoke-virtual {v0, v2}, Lcom/ironsource/yb;->a(Ljava/lang/Runnable;)V

    return v1
.end method
