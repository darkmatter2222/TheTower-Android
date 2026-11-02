.class public final Lcom/ironsource/de;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/yg;


# instance fields
.field private final a:Lcom/ironsource/Hb;


# direct methods
.method public static synthetic $r8$lambda$csfh55qedt9rHhWnHwsG_DKmulY()Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .locals 1

    invoke-static {}, Lcom/ironsource/de;->b()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Lcom/ironsource/Hb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/de;->a:Lcom/ironsource/Hb;

    return-void
.end method

.method private static final b()Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .locals 2

    .line 1
    sget-object v0, Lcom/ironsource/z5;->a:Lcom/ironsource/z5;

    const-string v1, "Load task config is null"

    invoke-virtual {v0, v1}, Lcom/ironsource/z5;->d(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/de;->a:Lcom/ironsource/Hb;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/ironsource/de$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/ironsource/de$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v0, v1}, Lcom/ironsource/yg;->a(ZLkotlin/jvm/functions/Function0;)V

    return-void
.end method
