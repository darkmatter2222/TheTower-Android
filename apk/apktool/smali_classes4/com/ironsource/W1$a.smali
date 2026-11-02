.class public final Lcom/ironsource/W1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/W1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ironsource/U1;Lcom/ironsource/I7;)Lcom/ironsource/X1;
    .locals 6

    const-string v0, "featureAvailabilityService"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    .line 3
    invoke-interface {p2}, Lcom/ironsource/I7;->a()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isAndroidxApplicationLifecycleAvailable: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p1}, Lcom/ironsource/U1;->l()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isAndroidxApplicationLifecycleEnabled: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 14
    invoke-interface {p2}, Lcom/ironsource/I7;->a()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 16
    invoke-static {}, Lcom/ironsource/ke;->i()Lcom/ironsource/ke;

    move-result-object v1

    .line 18
    new-instance v3, Lcom/ironsource/C5;

    .line 19
    sget-object v4, Lcom/ironsource/D5;->J3:Lcom/ironsource/D5;

    .line 20
    invoke-static {v2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->b(Z)Lorg/json/JSONObject;

    move-result-object v5

    .line 21
    invoke-direct {v3, v4, v5}, Lcom/ironsource/C5;-><init>(Lcom/ironsource/D5;Lorg/json/JSONObject;)V

    .line 22
    invoke-virtual {v1, v3}, Lcom/ironsource/r3;->a(Lcom/ironsource/C5;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 29
    invoke-virtual {p1}, Lcom/ironsource/U1;->l()Z

    move-result p1

    goto :goto_1

    :cond_2
    move p1, v2

    :goto_1
    if-eqz p1, :cond_3

    .line 30
    invoke-interface {p2}, Lcom/ironsource/I7;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    .line 32
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "isAndroidxEnabled: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    if-eqz v2, :cond_4

    .line 34
    new-instance p1, Lcom/ironsource/w1;

    invoke-direct {p1}, Lcom/ironsource/w1;-><init>()V

    return-object p1

    .line 35
    :cond_4
    new-instance p1, Lcom/ironsource/X7;

    invoke-direct {p1}, Lcom/ironsource/X7;-><init>()V

    return-object p1
.end method
