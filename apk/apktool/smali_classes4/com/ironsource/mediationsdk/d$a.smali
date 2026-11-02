.class public Lcom/ironsource/mediationsdk/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ironsource/y2;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/ironsource/y2;

.field private d:Lorg/json/JSONObject;

.field private e:Lorg/json/JSONObject;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Lcom/ironsource/f2;


# direct methods
.method static bridge synthetic -$$Nest$fgetb(Lcom/ironsource/mediationsdk/d$a;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/mediationsdk/d$a;->b:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputb(Lcom/ironsource/mediationsdk/d$a;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/mediationsdk/d$a;->b:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputc(Lcom/ironsource/mediationsdk/d$a;Lcom/ironsource/y2;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/mediationsdk/d$a;->c:Lcom/ironsource/y2;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputd(Lcom/ironsource/mediationsdk/d$a;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/mediationsdk/d$a;->d:Lorg/json/JSONObject;

    return-void
.end method

.method static bridge synthetic -$$Nest$fpute(Lcom/ironsource/mediationsdk/d$a;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/mediationsdk/d$a;->e:Lorg/json/JSONObject;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputf(Lcom/ironsource/mediationsdk/d$a;I)V
    .locals 0

    iput p1, p0, Lcom/ironsource/mediationsdk/d$a;->f:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputg(Lcom/ironsource/mediationsdk/d$a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/mediationsdk/d$a;->g:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputh(Lcom/ironsource/mediationsdk/d$a;Lcom/ironsource/f2;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/mediationsdk/d$a;->h:Lcom/ironsource/f2;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/mediationsdk/d$a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/ironsource/mediationsdk/demandOnly/p;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ironsource/mediationsdk/d$a;->h:Lcom/ironsource/f2;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/ironsource/f2;->a(Ljava/lang/String;)Lcom/ironsource/mediationsdk/demandOnly/p;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Lcom/ironsource/mediationsdk/demandOnly/p$b;

    invoke-direct {p1}, Lcom/ironsource/mediationsdk/demandOnly/p$b;-><init>()V

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/d$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/d$a;->e:Lorg/json/JSONObject;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ironsource/mediationsdk/d$a;->f:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/d$a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lcom/ironsource/y2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/d$a;->c:Lcom/ironsource/y2;

    return-object v0
.end method

.method public f()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/d$a;->d:Lorg/json/JSONObject;

    return-object v0
.end method

.method public g()Lcom/ironsource/f2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/d$a;->h:Lcom/ironsource/f2;

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ironsource/y2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/d$a;->b:Ljava/util/List;

    return-object v0
.end method
