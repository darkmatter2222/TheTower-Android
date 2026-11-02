.class public final Lcom/ironsource/W$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/W;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/W;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAdNetworkAppConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdNetworkAppConfig.kt\ncom/ironsource/mediationsdk/AdNetworkAppConfig$Base\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,47:1\n1#2:48\n*E\n"
.end annotation


# instance fields
.field private final a:Lorg/json/JSONObject;

.field private final b:Lcom/ironsource/D7;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/ironsource/D7;)V
    .locals 1

    const-string v0, "applicationConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "epService"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/W$a;->a:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/ironsource/W$a;->b:Lcom/ironsource/D7;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/W$a;->b:Lcom/ironsource/D7;

    invoke-interface {v0}, Lcom/ironsource/u5;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/ironsource/W$a;->a:Lorg/json/JSONObject;

    const-string v1, "controllerUrl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v2, v0

    :cond_1
    if-nez v2, :cond_2

    .line 3
    const-string v0, ""

    return-object v0

    :cond_2
    return-object v2

    :cond_3
    return-object v0
.end method

.method public b()Lorg/json/JSONObject;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/W$a;->a:Lorg/json/JSONObject;

    const-string v1, "controllerConfig"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    return-object v0
.end method

.method public c()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/W$a;->a:Lorg/json/JSONObject;

    const-string v1, "debugMode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/ironsource/W$a;->a:Lorg/json/JSONObject;

    const-string v3, "adptDebugMode"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    :cond_0
    return v0
.end method
