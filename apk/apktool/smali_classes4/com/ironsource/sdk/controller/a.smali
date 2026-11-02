.class public Lcom/ironsource/sdk/controller/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/l8;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/sdk/controller/a$a;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String; = "loadWithUrl"

.field private static final e:Ljava/lang/String; = "sendMessage"

.field public static final f:Ljava/lang/String; = "removeAdView"

.field public static final g:Ljava/lang/String; = "webviewAction"

.field public static final h:Ljava/lang/String; = "handleGetViewVisibility"

.field private static final i:Ljava/lang/String; = "functionName"

.field private static final j:Ljava/lang/String; = "functionParams"

.field private static final k:Ljava/lang/String; = "success"

.field private static final l:Ljava/lang/String; = "fail"

.field public static final m:Ljava/lang/String; = "errMsg"

.field private static final n:Ljava/lang/String; = "%s | unsupported AdViews API"


# instance fields
.field private a:Lcom/ironsource/dh;

.field private b:Lcom/ironsource/q8;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/ironsource/q8;->a()Lcom/ironsource/q8;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/sdk/controller/a;->b:Lcom/ironsource/q8;

    .line 3
    iput-object p1, p0, Lcom/ironsource/sdk/controller/a;->c:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/ironsource/sdk/controller/a$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 62
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 64
    new-instance p1, Lcom/ironsource/sdk/controller/a$a;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lcom/ironsource/sdk/controller/a$a;-><init>(Lcom/ironsource/sdk/controller/a-IA;)V

    .line 65
    const-string v1, "functionName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/ironsource/sdk/controller/a$a;->a:Ljava/lang/String;

    .line 66
    const-string v1, "functionParams"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p1, Lcom/ironsource/sdk/controller/a$a;->b:Lorg/json/JSONObject;

    .line 67
    const-string v1, "success"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/ironsource/sdk/controller/a$a;->c:Ljava/lang/String;

    .line 68
    const-string v1, "fail"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/ironsource/sdk/controller/a$a;->d:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public a(Lcom/ironsource/dh;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ironsource/sdk/controller/a;->a:Lcom/ironsource/dh;

    return-void
.end method

.method a(Ljava/lang/String;Lcom/ironsource/ua;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/a;->a(Ljava/lang/String;)Lcom/ironsource/sdk/controller/a$a;

    move-result-object p1

    .line 7
    new-instance v1, Lcom/ironsource/me;

    invoke-direct {v1}, Lcom/ironsource/me;-><init>()V

    const/4 v2, 0x0

    .line 9
    :try_start_0
    iget-object v0, p1, Lcom/ironsource/sdk/controller/a$a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "webviewAction"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_1
    const-string v3, "handleGetViewVisibility"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_1

    :sswitch_2
    const-string v3, "loadWithUrl"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_3
    const-string v3, "sendMessage"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v7

    goto :goto_1

    :sswitch_4
    const-string v3, "removeAdView"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_5

    if-eq v0, v7, :cond_4

    if-eq v0, v6, :cond_3

    if-eq v0, v5, :cond_2

    if-ne v0, v4, :cond_1

    .line 30
    iget-object v0, p0, Lcom/ironsource/sdk/controller/a;->b:Lcom/ironsource/q8;

    iget-object v3, p1, Lcom/ironsource/sdk/controller/a$a;->b:Lorg/json/JSONObject;

    iget-object v4, p1, Lcom/ironsource/sdk/controller/a$a;->c:Ljava/lang/String;

    iget-object v5, p1, Lcom/ironsource/sdk/controller/a$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v3, v4, v5}, Lcom/ironsource/q8;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 28
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "%s | unsupported AdViews API"

    iget-object v4, p1, Lcom/ironsource/sdk/controller/a$a;->a:Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 29
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_2
    iget-object v0, p0, Lcom/ironsource/sdk/controller/a;->b:Lcom/ironsource/q8;

    iget-object v3, p1, Lcom/ironsource/sdk/controller/a$a;->b:Lorg/json/JSONObject;

    iget-object v4, p1, Lcom/ironsource/sdk/controller/a$a;->c:Ljava/lang/String;

    iget-object v5, p1, Lcom/ironsource/sdk/controller/a$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v3, v4, v5}, Lcom/ironsource/q8;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 32
    :cond_3
    iget-object v0, p0, Lcom/ironsource/sdk/controller/a;->b:Lcom/ironsource/q8;

    iget-object v3, p1, Lcom/ironsource/sdk/controller/a$a;->b:Lorg/json/JSONObject;

    iget-object v4, p1, Lcom/ironsource/sdk/controller/a$a;->c:Ljava/lang/String;

    iget-object v5, p1, Lcom/ironsource/sdk/controller/a$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v3, v4, v5}, Lcom/ironsource/q8;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 33
    :cond_4
    iget-object v0, p0, Lcom/ironsource/sdk/controller/a;->b:Lcom/ironsource/q8;

    iget-object v3, p1, Lcom/ironsource/sdk/controller/a$a;->b:Lorg/json/JSONObject;

    iget-object v4, p1, Lcom/ironsource/sdk/controller/a$a;->c:Ljava/lang/String;

    iget-object v5, p1, Lcom/ironsource/sdk/controller/a$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v3, v4, v5}, Lcom/ironsource/q8;->d(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 34
    :cond_5
    iget-object v3, p0, Lcom/ironsource/sdk/controller/a;->b:Lcom/ironsource/q8;

    iget-object v5, p1, Lcom/ironsource/sdk/controller/a$a;->b:Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/ironsource/sdk/controller/a;->c:Landroid/content/Context;

    iget-object v7, p1, Lcom/ironsource/sdk/controller/a$a;->c:Ljava/lang/String;

    iget-object v8, p1, Lcom/ironsource/sdk/controller/a$a;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v4, p0

    :try_start_1
    invoke-virtual/range {v3 .. v8}, Lcom/ironsource/q8;->a(Lcom/ironsource/l8;Lorg/json/JSONObject;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v4, p0

    .line 55
    :goto_2
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 56
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "errMsg"

    invoke-virtual {v1, v3, v0}, Lcom/ironsource/me;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, v4, Lcom/ironsource/sdk/controller/a;->b:Lcom/ironsource/q8;

    iget-object v3, p1, Lcom/ironsource/sdk/controller/a$a;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, v3}, Lcom/ironsource/q8;->c(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 59
    const-string v3, "adViewId"

    invoke-virtual {v1, v3, v0}, Lcom/ironsource/me;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_6
    iget-object p1, p1, Lcom/ironsource/sdk/controller/a$a;->d:Ljava/lang/String;

    invoke-interface {p2, v2, p1, v1}, Lcom/ironsource/ua;->a(ZLjava/lang/String;Lcom/ironsource/me;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x52839cf4 -> :sswitch_4
        0x2936bf5f -> :sswitch_3
        0x32354303 -> :sswitch_2
        0x4674e345 -> :sswitch_1
        0x58e7078f -> :sswitch_0
    .end sparse-switch
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-static {p2, p3}, Lcom/ironsource/Gg;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/ironsource/sdk/controller/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ironsource/sdk/controller/a;->a:Lcom/ironsource/dh;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ironsource/sdk/controller/a;->a:Lcom/ironsource/dh;

    invoke-interface {v0, p1, p2}, Lcom/ironsource/dh;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method
