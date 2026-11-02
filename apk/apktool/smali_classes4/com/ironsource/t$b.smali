.class public final Lcom/ironsource/t$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/ironsource/H3;

.field private final b:Lcom/ironsource/hd;

.field private final c:Lcom/ironsource/Q4;

.field private final d:Ljava/lang/Long;

.field private final e:Lcom/ironsource/Ud;

.field private final f:Lcom/ironsource/Ud;

.field private final g:Lcom/ironsource/Hd;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 6

    const-string v0, "features"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "capping"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "getJSONObject(...)"

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Lcom/ironsource/H3;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lcom/ironsource/H3;-><init>(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_0
    move-object v1, v3

    .line 5
    :goto_0
    iput-object v1, p0, Lcom/ironsource/t$b;->a:Lcom/ironsource/H3;

    .line 11
    const-string v0, "pacing"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/ironsource/hd;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lcom/ironsource/hd;-><init>(Lorg/json/JSONObject;)V

    goto :goto_1

    :cond_1
    move-object v1, v3

    .line 12
    :goto_1
    iput-object v1, p0, Lcom/ironsource/t$b;->b:Lcom/ironsource/hd;

    .line 17
    const-string v0, "delivery"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/ironsource/Q4;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {v1, v0}, Lcom/ironsource/Q4;-><init>(Z)V

    goto :goto_2

    :cond_2
    move-object v1, v3

    .line 18
    :goto_2
    iput-object v1, p0, Lcom/ironsource/t$b;->c:Lcom/ironsource/Q4;

    .line 23
    const-string v0, "expiredDurationInMinutes"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_3

    :cond_3
    move-object v0, v3

    .line 24
    :goto_3
    iput-object v0, p0, Lcom/ironsource/t$b;->d:Ljava/lang/Long;

    .line 29
    const-string v0, "reward"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 30
    new-instance v1, Lcom/ironsource/Ud;

    const-string v4, "name"

    const-string v5, "amount"

    invoke-direct {v1, v0, v4, v5}, Lcom/ironsource/Ud;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    move-object v1, v3

    .line 31
    :goto_4
    iput-object v1, p0, Lcom/ironsource/t$b;->e:Lcom/ironsource/Ud;

    .line 36
    new-instance v0, Lcom/ironsource/Ud;

    const-string v1, "virtualItemName"

    const-string v4, "virtualItemCount"

    invoke-direct {v0, p1, v1, v4}, Lcom/ironsource/Ud;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0}, Lcom/ironsource/Ud;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v0}, Lcom/ironsource/Ud;->a()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_6

    goto :goto_6

    :cond_6
    :goto_5
    move-object v0, v3

    .line 38
    :goto_6
    iput-object v0, p0, Lcom/ironsource/t$b;->f:Lcom/ironsource/Ud;

    .line 44
    const-string v0, "progressiveLoadingConfig"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v3, Lcom/ironsource/Hd;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, p1}, Lcom/ironsource/Hd;-><init>(Lorg/json/JSONObject;)V

    .line 45
    :cond_7
    iput-object v3, p0, Lcom/ironsource/t$b;->g:Lcom/ironsource/Hd;

    return-void
.end method


# virtual methods
.method public final a()Lcom/ironsource/Ud;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/t$b;->e:Lcom/ironsource/Ud;

    return-object v0
.end method

.method public final b()Lcom/ironsource/H3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/t$b;->a:Lcom/ironsource/H3;

    return-object v0
.end method

.method public final c()Lcom/ironsource/Q4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/t$b;->c:Lcom/ironsource/Q4;

    return-object v0
.end method

.method public final d()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/t$b;->d:Ljava/lang/Long;

    return-object v0
.end method

.method public final e()Lcom/ironsource/hd;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/t$b;->b:Lcom/ironsource/hd;

    return-object v0
.end method

.method public final f()Lcom/ironsource/Ud;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/t$b;->f:Lcom/ironsource/Ud;

    return-object v0
.end method

.method public final g()Lcom/ironsource/Hd;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/t$b;->g:Lcom/ironsource/Hd;

    return-object v0
.end method
