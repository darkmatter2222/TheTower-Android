.class public final Lcom/ironsource/a3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/a3$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/ironsource/a3$a;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ironsource/a3$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$R1UQAkDDl2a3p4hGf6NoHCgz1WQ(Lorg/json/JSONObject;)Lcom/ironsource/a3$a;
    .locals 0

    invoke-static {p0}, Lcom/ironsource/a3;->a(Lorg/json/JSONObject;)Lcom/ironsource/a3$a;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "bannerConfigurations"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/ironsource/a3$a;

    invoke-direct {v0, p1}, Lcom/ironsource/a3$a;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/ironsource/a3;->a:Lcom/ironsource/a3$a;

    .line 45
    new-instance v0, Lcom/ironsource/Y0;

    invoke-direct {v0, p1}, Lcom/ironsource/Y0;-><init>(Lorg/json/JSONObject;)V

    new-instance p1, Lcom/ironsource/a3$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/ironsource/a3$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, p1}, Lcom/ironsource/Y0;->a(Lkotlin/jvm/functions/Function1;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/a3;->b:Ljava/util/Map;

    return-void
.end method

.method private static final a(Lorg/json/JSONObject;)Lcom/ironsource/a3$a;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/ironsource/a3$a;

    invoke-direct {v0, p0}, Lcom/ironsource/a3$a;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ironsource/a3$a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/a3;->b:Ljava/util/Map;

    return-object v0
.end method

.method public final b()Lcom/ironsource/a3$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/a3;->a:Lcom/ironsource/a3$a;

    return-object v0
.end method
