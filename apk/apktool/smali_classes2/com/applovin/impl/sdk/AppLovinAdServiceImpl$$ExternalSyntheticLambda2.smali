.class public final synthetic Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/applovin/impl/sdk/e$a;


# instance fields
.field public final synthetic f$0:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

.field public final synthetic f$1:Lcom/applovin/sdk/AppLovinAdLoadListener;

.field public final synthetic f$2:Lorg/json/JSONObject;

.field public final synthetic f$3:Lcom/applovin/impl/u;

.field public final synthetic f$4:J


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;Lcom/applovin/sdk/AppLovinAdLoadListener;Lorg/json/JSONObject;Lcom/applovin/impl/u;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$$ExternalSyntheticLambda2;->f$0:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    iput-object p2, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$$ExternalSyntheticLambda2;->f$1:Lcom/applovin/sdk/AppLovinAdLoadListener;

    iput-object p3, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$$ExternalSyntheticLambda2;->f$2:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$$ExternalSyntheticLambda2;->f$3:Lcom/applovin/impl/u;

    iput-wide p5, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$$ExternalSyntheticLambda2;->f$4:J

    return-void
.end method


# virtual methods
.method public final a(Lcom/applovin/impl/sdk/ad/b;)V
    .locals 7

    .line 0
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$$ExternalSyntheticLambda2;->f$0:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$$ExternalSyntheticLambda2;->f$1:Lcom/applovin/sdk/AppLovinAdLoadListener;

    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$$ExternalSyntheticLambda2;->f$2:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$$ExternalSyntheticLambda2;->f$3:Lcom/applovin/impl/u;

    iget-wide v4, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$$ExternalSyntheticLambda2;->f$4:J

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->$r8$lambda$LfzPPKXfgQyk48bCkKl0QUtJcF8(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;Lcom/applovin/sdk/AppLovinAdLoadListener;Lorg/json/JSONObject;Lcom/applovin/impl/u;JLcom/applovin/impl/sdk/ad/b;)V

    return-void
.end method
