.class public final Lcom/ironsource/pb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/pb$a;
    }
.end annotation


# static fields
.field public static final d:Lcom/ironsource/pb$a;

.field private static e:Lcom/ironsource/pb;


# instance fields
.field private final a:Lcom/ironsource/yb;

.field private final b:Lcom/ironsource/mediationsdk/c;

.field private final c:Lcom/ironsource/Tb;


# direct methods
.method public static synthetic $r8$lambda$dddALrJbWHtME9pGWCG5gsigjyw(Lcom/ironsource/pb;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/ironsource/pb;->a(Lcom/ironsource/pb;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$fR0BJgKkMLnl9cjrzXTOrXXszrE(Lcom/ironsource/pb;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/ironsource/pb;->b(Lcom/ironsource/pb;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$pP2q-_rEJ6emujWDGc33xPmt8C0(Lcom/ironsource/pb;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/ironsource/pb;->a(Lcom/ironsource/pb;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uO1LcMn5QpplE0U-_yfB4e9Gms4(Lcom/ironsource/pb;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/ironsource/pb;->c(Lcom/ironsource/pb;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/ironsource/pb$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/pb$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ironsource/pb;->d:Lcom/ironsource/pb$a;

    .line 1
    new-instance v0, Lcom/ironsource/pb;

    .line 2
    new-instance v1, Lcom/ironsource/yb;

    invoke-direct {v1}, Lcom/ironsource/yb;-><init>()V

    invoke-static {}, Lcom/ironsource/mediationsdk/c;->c()Lcom/ironsource/mediationsdk/c;

    move-result-object v2

    const-string v3, "getInstance(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/ironsource/Tb;

    const/16 v10, 0x1f

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v11}, Lcom/ironsource/Tb;-><init>(Lcom/ironsource/mediationsdk/c;Lcom/ironsource/ta;Lcom/ironsource/ba;Lcom/ironsource/W6;Lcom/ironsource/r4;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    invoke-direct {v0, v1, v2, v4}, Lcom/ironsource/pb;-><init>(Lcom/ironsource/yb;Lcom/ironsource/mediationsdk/c;Lcom/ironsource/Tb;)V

    sput-object v0, Lcom/ironsource/pb;->e:Lcom/ironsource/pb;

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/yb;Lcom/ironsource/mediationsdk/c;Lcom/ironsource/Tb;)V
    .locals 1

    const-string v0, "tools"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapterRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metaDataManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/pb;->a:Lcom/ironsource/yb;

    .line 3
    iput-object p2, p0, Lcom/ironsource/pb;->b:Lcom/ironsource/mediationsdk/c;

    .line 4
    iput-object p3, p0, Lcom/ironsource/pb;->c:Lcom/ironsource/Tb;

    return-void
.end method

.method public static final synthetic a()Lcom/ironsource/pb;
    .locals 1

    .line 1
    sget-object v0, Lcom/ironsource/pb;->e:Lcom/ironsource/pb;

    return-object v0
.end method

.method public static final synthetic a(Lcom/ironsource/pb;)V
    .locals 0

    .line 2
    sput-object p0, Lcom/ironsource/pb;->e:Lcom/ironsource/pb;

    return-void
.end method

.method private static final a(Lcom/ironsource/pb;Ljava/util/Map;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/ironsource/pb;->a:Lcom/ironsource/yb;

    invoke-virtual {v0, p1}, Lcom/ironsource/yb;->a(Ljava/util/Map;)V

    .line 5
    iget-object p0, p0, Lcom/ironsource/pb;->b:Lcom/ironsource/mediationsdk/c;

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/c;->a(Ljava/util/Map;)V

    return-void
.end method

.method private static final a(Lcom/ironsource/pb;Z)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/ironsource/pb;->a:Lcom/ironsource/yb;

    invoke-virtual {v0, p1}, Lcom/ironsource/yb;->a(Z)V

    .line 8
    iget-object p0, p0, Lcom/ironsource/pb;->c:Lcom/ironsource/Tb;

    invoke-virtual {p0, p1}, Lcom/ironsource/Tb;->a(Z)V

    return-void
.end method

.method private static final b(Lcom/ironsource/pb;Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ironsource/pb;->a:Lcom/ironsource/yb;

    invoke-virtual {v0, p1}, Lcom/ironsource/yb;->b(Z)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/pb;->a:Lcom/ironsource/yb;

    invoke-virtual {v0}, Lcom/ironsource/yb;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/ironsource/pb;->a:Lcom/ironsource/yb;

    invoke-virtual {p0}, Lcom/ironsource/yb;->b()V

    .line 5
    sget-object p0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p1, "LevelPlayPrivacySettings.setCOPPA() must be called before LevelPlay.init()"

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    return-void

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/ironsource/pb;->c:Lcom/ironsource/Tb;

    invoke-virtual {p0, p1}, Lcom/ironsource/Tb;->b(Z)V

    return-void
.end method

.method private static final c(Lcom/ironsource/pb;Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ironsource/pb;->a:Lcom/ironsource/yb;

    invoke-virtual {v0, p1}, Lcom/ironsource/yb;->c(Z)V

    .line 3
    iget-object p0, p0, Lcom/ironsource/pb;->b:Lcom/ironsource/mediationsdk/c;

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/c;->c(Z)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "networkConsents"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/pb;->a:Lcom/ironsource/yb;

    new-instance v1, Lcom/ironsource/pb$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/pb$$ExternalSyntheticLambda2;-><init>(Lcom/ironsource/pb;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/yb;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Z)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/ironsource/pb;->a:Lcom/ironsource/yb;

    new-instance v1, Lcom/ironsource/pb$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/pb$$ExternalSyntheticLambda3;-><init>(Lcom/ironsource/pb;Z)V

    invoke-virtual {v0, v1}, Lcom/ironsource/yb;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/pb;->a:Lcom/ironsource/yb;

    new-instance v1, Lcom/ironsource/pb$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/pb$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/pb;Z)V

    invoke-virtual {v0, v1}, Lcom/ironsource/yb;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/pb;->a:Lcom/ironsource/yb;

    new-instance v1, Lcom/ironsource/pb$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/pb$$ExternalSyntheticLambda1;-><init>(Lcom/ironsource/pb;Z)V

    invoke-virtual {v0, v1}, Lcom/ironsource/yb;->a(Ljava/lang/Runnable;)V

    return-void
.end method
