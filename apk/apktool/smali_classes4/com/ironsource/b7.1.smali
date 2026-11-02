.class public final Lcom/ironsource/b7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/X6;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/b7$a;
    }
.end annotation


# instance fields
.field private final a:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/ironsource/b7;->a:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/b7;->a:Lorg/json/JSONObject;

    const-string v1, "timeout"

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public b()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/b7;->a:Lorg/json/JSONObject;

    const-string v1, "enable"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public c()Lcom/ironsource/c7;
    .locals 4

    .line 1
    sget-object v0, Lcom/ironsource/c7;->b:Lcom/ironsource/c7$a;

    iget-object v1, p0, Lcom/ironsource/b7;->a:Lorg/json/JSONObject;

    sget-object v2, Lcom/ironsource/b7$a;->a:Lcom/ironsource/b7$a;

    invoke-virtual {v2}, Lcom/ironsource/b7$a;->a()I

    move-result v2

    const-string v3, "strategy"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ironsource/c7$a;->a(I)Lcom/ironsource/c7;

    move-result-object v0

    return-object v0
.end method
