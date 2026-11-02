.class Lcom/applovin/impl/sdk/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/y5$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/l;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/l;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/sdk/l$a;->a:Lcom/applovin/impl/sdk/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->isValid(Lorg/json/JSONObject;)Z

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/applovin/impl/sdk/l$a;->a:Lcom/applovin/impl/sdk/l;

    invoke-static {v1, p1}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/sdk/l;Lorg/json/JSONObject;)V

    .line 5
    iget-object v1, p0, Lcom/applovin/impl/sdk/l$a;->a:Lcom/applovin/impl/sdk/l;

    sget-object v2, Lcom/applovin/impl/v3;->u8:Lcom/applovin/impl/c5;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/applovin/impl/sdk/l$a;->a:Lcom/applovin/impl/sdk/l;

    new-instance v2, Lcom/applovin/impl/mediation/e;

    invoke-direct {v2, v1}, Lcom/applovin/impl/mediation/e;-><init>(Lcom/applovin/impl/sdk/l;)V

    invoke-static {v1, v2}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/sdk/l;Lcom/applovin/impl/mediation/e;)Lcom/applovin/impl/mediation/e;

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/l$a;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/l;->n()Lcom/applovin/impl/sdk/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/i;->a()V

    .line 14
    iget-object v1, p0, Lcom/applovin/impl/sdk/l$a;->a:Lcom/applovin/impl/sdk/l;

    invoke-static {p1, v0, v1}, Lcom/applovin/impl/s0;->a(Lorg/json/JSONObject;ZLcom/applovin/impl/sdk/l;)V

    .line 18
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "smd"

    invoke-static {p1, v2, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    .line 19
    const-string v2, "smd_delay_sec"

    const/4 v3, 0x2

    invoke-static {p1, v2, v3}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v2

    .line 20
    iget-object v3, p0, Lcom/applovin/impl/sdk/l$a;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/l;->W()Lcom/applovin/impl/t3;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v3, v1, v2}, Lcom/applovin/impl/t3;->a(ZI)V

    .line 22
    iget-object v1, p0, Lcom/applovin/impl/sdk/l$a;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/l;->E()Lcom/applovin/impl/s1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/s1;->b()V

    .line 24
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 25
    invoke-static {}, Lcom/applovin/impl/sdk/m;->K()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/StringUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "default_browser_package_name"

    invoke-static {v1, v3, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const-string v2, "init_success"

    invoke-static {v1, v2, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 27
    sget-object v2, Lcom/applovin/impl/sdk/l;->G0:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    const-string v3, "default_preferences_key_count"

    invoke-static {v1, v3, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putInt(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 28
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "details"

    invoke-static {v2, v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->map(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 29
    iget-object v2, p0, Lcom/applovin/impl/sdk/l$a;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/l;->y0()Lcom/applovin/impl/s7;

    move-result-object v2

    sget-object v3, Lcom/applovin/impl/h2;->g:Lcom/applovin/impl/h2;

    invoke-virtual {v2, v3, v1}, Lcom/applovin/impl/i2;->d(Lcom/applovin/impl/h2;Ljava/util/Map;)V

    .line 33
    iget-object v1, p0, Lcom/applovin/impl/sdk/l$a;->a:Lcom/applovin/impl/sdk/l;

    invoke-static {v1, p1}, Lcom/applovin/impl/sdk/l;->b(Lcom/applovin/impl/sdk/l;Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/sdk/l;Ljava/util/List;)Ljava/util/List;

    if-eqz v0, :cond_1

    .line 38
    const-string v1, "eaaui"

    const-string v2, ""

    invoke-static {p1, v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->explode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 39
    iget-object v2, p0, Lcom/applovin/impl/sdk/l$a;->a:Lcom/applovin/impl/sdk/l;

    invoke-static {v2}, Lcom/applovin/impl/sdk/l;->d(Lcom/applovin/impl/sdk/l;)Lcom/applovin/impl/sdk/SdkConfigurationImpl;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/applovin/impl/sdk/SdkConfigurationImpl;->setEnabledAmazonAdUnitIds(Ljava/util/List;)V

    .line 43
    :cond_1
    iget-object v1, p0, Lcom/applovin/impl/sdk/l$a;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/l;->u0()Lcom/applovin/impl/l7;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/applovin/impl/l7;->a(Lorg/json/JSONObject;)V

    .line 46
    iget-object v1, p0, Lcom/applovin/impl/sdk/l$a;->a:Lcom/applovin/impl/sdk/l;

    invoke-static {v1, p1}, Lcom/applovin/impl/sdk/l;->c(Lcom/applovin/impl/sdk/l;Lorg/json/JSONObject;)V

    .line 48
    iget-object p1, p0, Lcom/applovin/impl/sdk/l$a;->a:Lcom/applovin/impl/sdk/l;

    sget-object v1, Lcom/applovin/impl/c5;->H6:Lcom/applovin/impl/c5;

    invoke-virtual {p1, v1}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Lcom/applovin/impl/x2;->b(Z)V

    .line 49
    iget-object p1, p0, Lcom/applovin/impl/sdk/l$a;->a:Lcom/applovin/impl/sdk/l;

    sget-object v1, Lcom/applovin/impl/c5;->I6:Lcom/applovin/impl/c5;

    invoke-virtual {p1, v1}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Lcom/applovin/impl/x2;->a(Z)V

    .line 51
    iget-object p1, p0, Lcom/applovin/impl/sdk/l$a;->a:Lcom/applovin/impl/sdk/l;

    invoke-static {p1}, Lcom/applovin/impl/sdk/l;->e(Lcom/applovin/impl/sdk/l;)V

    .line 53
    iget-object p1, p0, Lcom/applovin/impl/sdk/l$a;->a:Lcom/applovin/impl/sdk/l;

    sget-object v1, Lcom/applovin/impl/c5;->n3:Lcom/applovin/impl/c5;

    invoke-virtual {p1, v1}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    if-nez v0, :cond_3

    invoke-static {}, Lcom/applovin/impl/sdk/l;->p()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/applovin/impl/s0;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 56
    iget-object p1, p0, Lcom/applovin/impl/sdk/l$a;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/applovin/impl/sdk/l$a;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    move-result-object p1

    const-string v0, "AppLovinSdk"

    const-string v1, "SDK initialized with no internet connection - listening for connection"

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_2
    iget-object p1, p0, Lcom/applovin/impl/sdk/l$a;->a:Lcom/applovin/impl/sdk/l;

    invoke-static {p1}, Lcom/applovin/impl/sdk/l;->f(Lcom/applovin/impl/sdk/l;)V

    return-void

    .line 61
    :cond_3
    iget-object p1, p0, Lcom/applovin/impl/sdk/l$a;->a:Lcom/applovin/impl/sdk/l;

    invoke-static {p1}, Lcom/applovin/impl/sdk/l;->g(Lcom/applovin/impl/sdk/l;)V

    return-void
.end method
