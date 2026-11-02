.class public final Lcom/ironsource/kc;
.super Lcom/ironsource/q0;
.source "SourceFile"


# direct methods
.method public static synthetic $r8$lambda$Np_vehJFllKPXh01jaDaqZvDj8w(Lcom/ironsource/kc;Lcom/ironsource/B;Lcom/ironsource/H;)Lcom/ironsource/A;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/ironsource/kc;->a(Lcom/ironsource/kc;Lcom/ironsource/B;Lcom/ironsource/H;)Lcom/ironsource/A;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/ironsource/p0;Lcom/ironsource/lc;Lcom/ironsource/mc;)V
    .locals 2

    const-string v0, "adTools"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adUnitData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/q0;-><init>(Lcom/ironsource/p0;Lcom/ironsource/x0;Lcom/ironsource/J0;)V

    .line 5
    invoke-virtual {p0}, Lcom/ironsource/q0;->g()Lcom/ironsource/md;

    move-result-object p1

    .line 6
    sget-object p3, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "placement = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 11
    invoke-virtual {p1}, Lcom/ironsource/t3;->c()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/16 p2, 0x1fe

    goto :goto_2

    .line 13
    :cond_1
    :goto_0
    sget-object p3, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    if-nez p1, :cond_2

    .line 15
    const-string p1, "placement is null"

    goto :goto_1

    :cond_2
    const-string p1, "placement name is empty"

    :goto_1
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p3, 0x1

    .line 16
    invoke-static {p1, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p3, "can\'t load native ad - %s"

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "format(...)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p2}, Lcom/ironsource/lc;->b()Lcom/ironsource/g0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ironsource/g0;->a()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object p2

    invoke-static {p2}, Lcom/ironsource/A0;->b(Lcom/ironsource/mediationsdk/IronSource$a;)I

    move-result p2

    :goto_2
    if-eqz p1, :cond_3

    .line 25
    sget-object p3, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0, p1}, Lcom/ironsource/q0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0, p2, p1}, Lcom/ironsource/q0;->a(ILjava/lang/String;)V

    :cond_3
    return-void
.end method

.method private static final a(Lcom/ironsource/kc;Lcom/ironsource/B;Lcom/ironsource/H;)Lcom/ironsource/A;
    .locals 4

    const-string v0, "adInstanceData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adInstancePayload"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/ironsource/cc;

    .line 3
    new-instance v1, Lcom/ironsource/T0;

    invoke-virtual {p0}, Lcom/ironsource/q0;->f()Lcom/ironsource/T0;

    move-result-object v2

    sget-object v3, Lcom/ironsource/E0$b;->b:Lcom/ironsource/E0$b;

    invoke-direct {v1, v2, v3}, Lcom/ironsource/T0;-><init>(Lcom/ironsource/T0;Lcom/ironsource/E0$b;)V

    .line 6
    new-instance v2, Lcom/ironsource/q0$a;

    invoke-direct {v2, p0}, Lcom/ironsource/q0$a;-><init>(Lcom/ironsource/q0;)V

    .line 7
    invoke-direct {v0, v1, p1, p2, v2}, Lcom/ironsource/cc;-><init>(Lcom/ironsource/T0;Lcom/ironsource/B;Lcom/ironsource/H;Lcom/ironsource/E;)V

    return-object v0
.end method


# virtual methods
.method protected a()Lcom/ironsource/D;
    .locals 1

    .line 1
    new-instance v0, Lcom/ironsource/kc$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/ironsource/kc$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/kc;)V

    return-object v0
.end method
