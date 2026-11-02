.class public Lcom/tapjoy/TJCorePlacement;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/String; = "TJCorePlacement"


# instance fields
.field private A:Lcom/tapjoy/TJAdUnit$TJAdUnitVideoListener;

.field b:Landroid/content/Context;

.field c:Lcom/tapjoy/TJPlacementData;

.field d:Ljava/lang/String;

.field e:J

.field final f:Lcom/tapjoy/internal/fy;

.field g:Lcom/tapjoy/TJAdUnit;

.field h:Z

.field i:Lcom/tapjoy/internal/hq;

.field j:Z

.field volatile k:Z

.field volatile l:Z

.field volatile m:Z

.field n:Ljava/lang/String;

.field o:Ljava/lang/String;

.field p:Ljava/lang/String;

.field q:Ljava/lang/String;

.field r:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tapjoy/TJPlacement;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private u:Lcom/tapjoy/internal/fo;

.field private v:Z

.field private w:Lcom/tapjoy/internal/it;

.field private volatile x:Z

.field private y:Z

.field private z:Lcom/tapjoy/TJAdUnit$TJAdUnitWebViewListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/TJCorePlacement;->s:Ljava/util/Map;

    .line 57
    new-instance v0, Lcom/tapjoy/internal/fy;

    invoke-direct {v0}, Lcom/tapjoy/internal/fy;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/TJCorePlacement;->f:Lcom/tapjoy/internal/fy;

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->h:Z

    .line 63
    iput-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->v:Z

    const/4 v1, 0x0

    .line 66
    iput-object v1, p0, Lcom/tapjoy/TJCorePlacement;->w:Lcom/tapjoy/internal/it;

    .line 67
    iput-object v1, p0, Lcom/tapjoy/TJCorePlacement;->i:Lcom/tapjoy/internal/hq;

    .line 75
    iput-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->x:Z

    .line 76
    iput-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->k:Z

    .line 77
    iput-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->l:Z

    .line 78
    iput-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->m:Z

    .line 92
    new-instance v0, Lcom/tapjoy/TJCorePlacement$1;

    invoke-direct {v0, p0}, Lcom/tapjoy/TJCorePlacement$1;-><init>(Lcom/tapjoy/TJCorePlacement;)V

    iput-object v0, p0, Lcom/tapjoy/TJCorePlacement;->z:Lcom/tapjoy/TJAdUnit$TJAdUnitWebViewListener;

    .line 118
    new-instance v0, Lcom/tapjoy/TJCorePlacement$2;

    invoke-direct {v0, p0}, Lcom/tapjoy/TJCorePlacement$2;-><init>(Lcom/tapjoy/TJCorePlacement;)V

    iput-object v0, p0, Lcom/tapjoy/TJCorePlacement;->A:Lcom/tapjoy/TJAdUnit$TJAdUnitVideoListener;

    .line 145
    invoke-static {}, Lcom/tapjoy/internal/b;->c()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TJCorePlacement;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 147
    sget-object v0, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    const-string v1, "getVisibleActivity() is NULL. Activity can be explicitly set via `Tapjoy.setActivity(Activity)`"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_0
    iput-boolean p3, p0, Lcom/tapjoy/TJCorePlacement;->y:Z

    .line 152
    new-instance p3, Lcom/tapjoy/TJPlacementData;

    invoke-virtual {p0}, Lcom/tapjoy/TJCorePlacement;->getPlacementContentUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, p2, v0}, Lcom/tapjoy/TJPlacementData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    .line 153
    invoke-virtual {p3, p1}, Lcom/tapjoy/TJPlacementData;->setPlacementName(Ljava/lang/String;)V

    .line 156
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/TJCorePlacement;->d:Ljava/lang/String;

    .line 159
    new-instance p1, Lcom/tapjoy/TJAdUnit;

    invoke-direct {p1}, Lcom/tapjoy/TJAdUnit;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/TJCorePlacement;->g:Lcom/tapjoy/TJAdUnit;

    .line 160
    iget-object p2, p0, Lcom/tapjoy/TJCorePlacement;->z:Lcom/tapjoy/TJAdUnit$TJAdUnitWebViewListener;

    invoke-virtual {p1, p2}, Lcom/tapjoy/TJAdUnit;->setWebViewListener(Lcom/tapjoy/TJAdUnit$TJAdUnitWebViewListener;)V

    .line 161
    iget-object p1, p0, Lcom/tapjoy/TJCorePlacement;->g:Lcom/tapjoy/TJAdUnit;

    iget-object p2, p0, Lcom/tapjoy/TJCorePlacement;->A:Lcom/tapjoy/TJAdUnit$TJAdUnitVideoListener;

    invoke-virtual {p1, p2}, Lcom/tapjoy/TJAdUnit;->setVideoListener(Lcom/tapjoy/TJAdUnit$TJAdUnitVideoListener;)V

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/TJCorePlacement;J)J
    .locals 0

    .line 45
    iput-wide p1, p0, Lcom/tapjoy/TJCorePlacement;->e:J

    return-wide p1
.end method

.method static synthetic a(Lcom/tapjoy/TJCorePlacement;Lcom/tapjoy/internal/it;)Lcom/tapjoy/internal/it;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/tapjoy/TJCorePlacement;->w:Lcom/tapjoy/internal/it;

    return-object p1
.end method

.method static synthetic a(Lcom/tapjoy/TJCorePlacement;)V
    .locals 0

    .line 45
    invoke-virtual {p0}, Lcom/tapjoy/TJCorePlacement;->c()V

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/TJCorePlacement;Lcom/tapjoy/TJPlacement;)V
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/tapjoy/TJCorePlacement;->a(Lcom/tapjoy/TJPlacement;)V

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/TJCorePlacement;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 23577
    :try_start_0
    sget-object v0, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Disable preload flag is set for placement "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23829
    iget-object v2, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v2}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    .line 23577
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23579
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 23580
    iget-object p1, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    const-string v2, "redirect_url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/tapjoy/TJPlacementData;->setRedirectURL(Ljava/lang/String;)V

    .line 23581
    iget-object p1, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/tapjoy/TJPlacementData;->setPreloadDisabled(Z)V

    .line 23582
    iget-object p1, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {p1, v1}, Lcom/tapjoy/TJPlacementData;->setHasProgressSpinner(Z)V

    .line 23584
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "redirect_url:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {p0}, Lcom/tapjoy/TJPlacementData;->getRedirectURL()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 23586
    :catch_0
    new-instance p0, Lcom/tapjoy/TapjoyException;

    const-string p1, "TJPlacement request failed, malformed server response"

    invoke-direct {p0, p1}, Lcom/tapjoy/TapjoyException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 23589
    :cond_0
    new-instance p0, Lcom/tapjoy/TapjoyException;

    const-string p1, "TJPlacement request failed due to null response"

    invoke-direct {p0, p1}, Lcom/tapjoy/TapjoyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/tapjoy/TJCorePlacement;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/tapjoy/TJCorePlacement;->v:Z

    return p1
.end method

.method private b(Lcom/tapjoy/TJPlacement;)V
    .locals 3

    .line 901
    sget-object v0, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Content dismissed for placement "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16829
    iget-object v2, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v2}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    .line 901
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->f:Lcom/tapjoy/internal/fy;

    invoke-virtual {v0}, Lcom/tapjoy/internal/fy;->a()V

    if-eqz p1, :cond_0

    .line 17065
    iget-object v0, p1, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/TJPlacementListener;

    if-eqz v0, :cond_0

    .line 18065
    iget-object v0, p1, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/TJPlacementListener;

    .line 905
    invoke-interface {v0, p1}, Lcom/tapjoy/TJPlacementListener;->onContentDismiss(Lcom/tapjoy/TJPlacement;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/tapjoy/TJCorePlacement;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/tapjoy/TJCorePlacement;->h:Z

    return p0
.end method

.method static synthetic b(Lcom/tapjoy/TJCorePlacement;Ljava/lang/String;)Z
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/tapjoy/TJCorePlacement;->b(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 4

    .line 692
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 p1, 0x0

    .line 694
    :try_start_0
    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement;->w:Lcom/tapjoy/internal/it;

    iget-object v2, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    .line 695
    invoke-virtual {v2}, Lcom/tapjoy/TJPlacementData;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/tapjoy/internal/it;->a(Ljava/net/URI;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/it$a;

    .line 697
    iget-object v1, v0, Lcom/tapjoy/internal/it$a;->a:Lcom/tapjoy/internal/hq;

    iput-object v1, p0, Lcom/tapjoy/TJCorePlacement;->i:Lcom/tapjoy/internal/hq;

    .line 698
    iget-object v1, v0, Lcom/tapjoy/internal/it$a;->a:Lcom/tapjoy/internal/hq;

    invoke-virtual {v1}, Lcom/tapjoy/internal/hq;->b()V

    .line 700
    iget-object v0, v0, Lcom/tapjoy/internal/it$a;->a:Lcom/tapjoy/internal/hq;

    invoke-virtual {v0}, Lcom/tapjoy/internal/hq;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 701
    sget-object v0, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    const-string v1, "Failed to load fiverocks placement"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    .line 7720
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->i:Lcom/tapjoy/internal/hq;

    instance-of v1, v0, Lcom/tapjoy/internal/ho;

    if-eqz v1, :cond_1

    .line 7721
    new-instance v0, Lcom/tapjoy/internal/fw;

    .line 7829
    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v1}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object v1

    .line 8662
    iget-object v2, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v2}, Lcom/tapjoy/TJPlacementData;->getPlacementType()Ljava/lang/String;

    move-result-object v2

    .line 7721
    iget-object v3, p0, Lcom/tapjoy/TJCorePlacement;->u:Lcom/tapjoy/internal/fo;

    invoke-direct {v0, v1, v2, v3}, Lcom/tapjoy/internal/fw;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/fo;)V

    goto :goto_0

    .line 7722
    :cond_1
    instance-of v0, v0, Lcom/tapjoy/internal/hf;

    if-eqz v0, :cond_2

    .line 7723
    new-instance v0, Lcom/tapjoy/internal/fx;

    .line 8829
    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v1}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object v1

    .line 9662
    iget-object v2, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v2}, Lcom/tapjoy/TJPlacementData;->getPlacementType()Ljava/lang/String;

    move-result-object v2

    .line 7723
    iget-object v3, p0, Lcom/tapjoy/TJCorePlacement;->u:Lcom/tapjoy/internal/fo;

    invoke-direct {v0, v1, v2, v3}, Lcom/tapjoy/internal/fx;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/fo;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 7725
    :goto_0
    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement;->f:Lcom/tapjoy/internal/fy;

    .line 10129
    iput-object v0, v1, Lcom/tapjoy/internal/fy;->a:Lcom/tapjoy/internal/fs;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/tapjoy/internal/bv; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception v0

    .line 711
    sget-object v1, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tapjoy/internal/bv;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    invoke-virtual {v0}, Lcom/tapjoy/internal/bv;->printStackTrace()V

    return p1

    :catch_1
    move-exception v0

    .line 707
    sget-object v1, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return p1
.end method

.method static synthetic c(Lcom/tapjoy/TJCorePlacement;)Z
    .locals 1

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->h:Z

    return v0
.end method

.method static synthetic d(Lcom/tapjoy/TJCorePlacement;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/tapjoy/TJCorePlacement;->v:Z

    return p0
.end method

.method static synthetic e(Lcom/tapjoy/TJCorePlacement;)V
    .locals 4

    .line 18947
    const-string v0, "SHOW"

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJCorePlacement;->a(Ljava/lang/String;)Lcom/tapjoy/TJPlacement;

    move-result-object v0

    .line 18948
    sget-object v1, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Handle onClick for placement "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19829
    iget-object p0, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {p0}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object p0

    .line 18948
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 18949
    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->getListener()Lcom/tapjoy/TJPlacementListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 18950
    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->getListener()Lcom/tapjoy/TJPlacementListener;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/tapjoy/TJPlacementListener;->onClick(Lcom/tapjoy/TJPlacement;)V

    :cond_0
    return-void
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/tapjoy/TJCorePlacement;)Ljava/util/Map;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/tapjoy/TJCorePlacement;->t:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic g(Lcom/tapjoy/TJCorePlacement;)Ljava/lang/String;
    .locals 0

    .line 20829
    iget-object p0, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {p0}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic h(Lcom/tapjoy/TJCorePlacement;)Landroid/content/Context;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/tapjoy/TJCorePlacement;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic i(Lcom/tapjoy/TJCorePlacement;)Lcom/tapjoy/TJPlacementData;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    return-object p0
.end method

.method static synthetic j(Lcom/tapjoy/TJCorePlacement;)V
    .locals 3

    .line 21798
    new-instance v0, Lcom/tapjoy/internal/fo;

    .line 21829
    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v1}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object v1

    .line 22662
    iget-object v2, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v2}, Lcom/tapjoy/TJPlacementData;->getPlacementType()Ljava/lang/String;

    move-result-object v2

    .line 21798
    invoke-direct {v0, v1, v2}, Lcom/tapjoy/internal/fo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tapjoy/TJCorePlacement;->u:Lcom/tapjoy/internal/fo;

    .line 21799
    iget-object p0, p0, Lcom/tapjoy/TJCorePlacement;->g:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJAdUnit;->setAdContentTracker(Lcom/tapjoy/internal/fo;)V

    return-void
.end method

.method static synthetic k(Lcom/tapjoy/TJCorePlacement;)Lcom/tapjoy/internal/fo;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/tapjoy/TJCorePlacement;->u:Lcom/tapjoy/internal/fo;

    return-object p0
.end method

.method static synthetic l(Lcom/tapjoy/TJCorePlacement;)V
    .locals 1

    const/4 v0, 0x1

    .line 23848
    iput-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->l:Z

    .line 23849
    const-string v0, "REQUEST"

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJCorePlacement;->a(Ljava/lang/String;)Lcom/tapjoy/TJPlacement;

    move-result-object v0

    .line 23850
    invoke-virtual {p0, v0}, Lcom/tapjoy/TJCorePlacement;->a(Lcom/tapjoy/TJPlacement;)V

    return-void
.end method

.method static synthetic m(Lcom/tapjoy/TJCorePlacement;)Z
    .locals 1

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->x:Z

    return v0
.end method

.method static synthetic n(Lcom/tapjoy/TJCorePlacement;)Lcom/tapjoy/internal/hq;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/tapjoy/TJCorePlacement;->i:Lcom/tapjoy/internal/hq;

    return-object p0
.end method


# virtual methods
.method final a(Ljava/lang/String;)Lcom/tapjoy/TJPlacement;
    .locals 5

    .line 813
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->s:Ljava/util/Map;

    monitor-enter v0

    .line 814
    :try_start_0
    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement;->s:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/TJPlacement;

    if-eqz v1, :cond_0

    .line 816
    sget-object v2, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Returning "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, " placement: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Lcom/tapjoy/TJPlacement;->getGUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 819
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final declared-synchronized a()V
    .locals 4

    monitor-enter p0

    .line 234
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 237
    invoke-virtual {p0}, Lcom/tapjoy/TJCorePlacement;->getPlacementContentUrl()Ljava/lang/String;

    move-result-object v0

    .line 238
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    const-string v0, "TJPlacement is missing APP_ID"

    .line 241
    const-string v1, "TJPlacement.requestContent"

    invoke-static {v1}, Lcom/tapjoy/internal/gi;->b(Ljava/lang/String;)Lcom/tapjoy/internal/gi$a;

    move-result-object v1

    .line 242
    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/gi$a;->a(Ljava/lang/String;)Lcom/tapjoy/internal/gi$a;

    move-result-object v1

    .line 243
    invoke-virtual {v1}, Lcom/tapjoy/internal/gi$a;->c()V

    .line 244
    sget-object v1, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SDK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    new-instance v2, Lcom/tapjoy/TJError;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Lcom/tapjoy/TJError;-><init>(ILjava/lang/String;)V

    .line 1863
    const-string v0, "REQUEST"

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJCorePlacement;->a(Ljava/lang/String;)Lcom/tapjoy/TJPlacement;

    move-result-object v0

    .line 1864
    invoke-virtual {p0, v0, v1, v2}, Lcom/tapjoy/TJCorePlacement;->a(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Lcom/tapjoy/TJError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    monitor-exit p0

    return-void

    .line 247
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v1, v0}, Lcom/tapjoy/TJPlacementData;->updateUrl(Ljava/lang/String;)V

    .line 251
    :cond_1
    sget-object v1, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendContentRequest -- URL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2829
    iget-object v3, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v3}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object v3

    .line 251
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 252
    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/TJCorePlacement;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method final a(Lcom/tapjoy/TJPlacement;)V
    .locals 10

    .line 855
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->f:Lcom/tapjoy/internal/fy;

    .line 10829
    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v1}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object v1

    .line 11662
    iget-object v2, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v2}, Lcom/tapjoy/TJPlacementData;->getPlacementType()Ljava/lang/String;

    move-result-object v2

    .line 855
    invoke-virtual {p0}, Lcom/tapjoy/TJCorePlacement;->b()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 12025
    iput v4, v0, Lcom/tapjoy/internal/fy;->c:I

    .line 12026
    const-string v4, "PlacementContent.funnel"

    invoke-static {v4}, Lcom/tapjoy/internal/gi;->e(Ljava/lang/String;)Lcom/tapjoy/internal/gi$a;

    move-result-object v4

    .line 12027
    invoke-virtual {v4}, Lcom/tapjoy/internal/gi$a;->a()Lcom/tapjoy/internal/gi$a;

    move-result-object v4

    .line 12028
    const-string v5, "placement"

    invoke-virtual {v4, v5, v1}, Lcom/tapjoy/internal/gi$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/gi$a;

    move-result-object v4

    .line 12029
    const-string v6, "placement_type"

    invoke-virtual {v4, v6, v2}, Lcom/tapjoy/internal/gi$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/gi$a;

    move-result-object v4

    .line 12030
    const-string v7, "content_type"

    invoke-virtual {v4, v7, v3}, Lcom/tapjoy/internal/gi$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/gi$a;

    move-result-object v4

    iget v8, v0, Lcom/tapjoy/internal/fy;->c:I

    .line 12031
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "state"

    invoke-virtual {v4, v9, v8}, Lcom/tapjoy/internal/gi$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/gi$a;

    move-result-object v4

    iput-object v4, v0, Lcom/tapjoy/internal/fy;->b:Lcom/tapjoy/internal/gi$a;

    .line 12032
    iget-object v4, v0, Lcom/tapjoy/internal/fy;->b:Lcom/tapjoy/internal/gi$a;

    invoke-virtual {v4}, Lcom/tapjoy/internal/gi$a;->c()V

    .line 12034
    const-string v4, "none"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 12035
    const-string v4, "PlacementContent.ready"

    invoke-static {v4}, Lcom/tapjoy/internal/gi;->e(Ljava/lang/String;)Lcom/tapjoy/internal/gi$a;

    move-result-object v4

    .line 12036
    invoke-virtual {v4}, Lcom/tapjoy/internal/gi$a;->a()Lcom/tapjoy/internal/gi$a;

    move-result-object v4

    .line 12037
    invoke-virtual {v4, v5, v1}, Lcom/tapjoy/internal/gi$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/gi$a;

    move-result-object v1

    .line 12038
    invoke-virtual {v1, v6, v2}, Lcom/tapjoy/internal/gi$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/gi$a;

    move-result-object v1

    .line 12039
    invoke-virtual {v1, v7, v3}, Lcom/tapjoy/internal/gi$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/gi$a;

    move-result-object v1

    iput-object v1, v0, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gi$a;

    :cond_0
    if-eqz p1, :cond_1

    .line 856
    invoke-virtual {p1}, Lcom/tapjoy/TJPlacement;->getListener()Lcom/tapjoy/TJPlacementListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 857
    sget-object v0, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Content request delivered successfully for placement "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12829
    iget-object v2, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v2}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    .line 857
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", contentAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tapjoy/TJCorePlacement;->isContentAvailable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mediationAgent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/TJCorePlacement;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    invoke-virtual {p1}, Lcom/tapjoy/TJPlacement;->getListener()Lcom/tapjoy/TJPlacementListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tapjoy/TJPlacementListener;->onRequestSuccess(Lcom/tapjoy/TJPlacement;)V

    :cond_1
    return-void
.end method

.method final a(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Lcom/tapjoy/TJError;)V
    .locals 4

    .line 868
    sget-object v0, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    new-instance v1, Lcom/tapjoy/TapjoyErrorMessage;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Content request failed for placement "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13829
    iget-object v3, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v3}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object v3

    .line 869
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; Reason= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p3, Lcom/tapjoy/TJError;->message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    .line 868
    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    if-eqz p1, :cond_0

    .line 871
    invoke-virtual {p1}, Lcom/tapjoy/TJPlacement;->getListener()Lcom/tapjoy/TJPlacementListener;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 872
    invoke-virtual {p1}, Lcom/tapjoy/TJPlacement;->getListener()Lcom/tapjoy/TJPlacementListener;

    move-result-object p2

    invoke-interface {p2, p1, p3}, Lcom/tapjoy/TJPlacementListener;->onRequestFailure(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJError;)V

    :cond_0
    return-void
.end method

.method final a(Ljava/lang/String;Lcom/tapjoy/TJPlacement;)V
    .locals 4

    .line 804
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->s:Ljava/util/Map;

    monitor-enter v0

    .line 805
    :try_start_0
    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement;->s:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    sget-object v1, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Setting "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " placement: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/tapjoy/TJPlacement;->getGUID()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final declared-synchronized a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 257
    :try_start_0
    iget-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->x:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 258
    :try_start_1
    sget-object p1, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Placement "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3829
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object v0

    .line 258
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " is already requesting content"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string p1, "TJPlacement.requestContent"

    invoke-static {p1}, Lcom/tapjoy/internal/gi;->b(Ljava/lang/String;)Lcom/tapjoy/internal/gi$a;

    move-result-object p1

    const-string p2, "already doing"

    .line 260
    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/gi$a;->b(Ljava/lang/String;)Lcom/tapjoy/internal/gi$a;

    move-result-object p1

    .line 261
    invoke-virtual {p1}, Lcom/tapjoy/internal/gi$a;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v4, p0

    goto/16 :goto_3

    .line 4557
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->resetPlacementRequestData()V

    .line 4560
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->f:Lcom/tapjoy/internal/fy;

    const/4 v1, 0x0

    .line 5123
    iput-object v1, v0, Lcom/tapjoy/internal/fy;->b:Lcom/tapjoy/internal/gi$a;

    .line 5124
    iput-object v1, v0, Lcom/tapjoy/internal/fy;->d:Lcom/tapjoy/internal/gi$a;

    .line 5125
    iput-object v1, v0, Lcom/tapjoy/internal/fy;->a:Lcom/tapjoy/internal/fs;

    .line 4563
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->g:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->resetContentLoadState()V

    const/4 v0, 0x0

    .line 4565
    iput-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->x:Z

    .line 4566
    iput-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->k:Z

    .line 4567
    iput-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->l:Z

    .line 4568
    iput-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->m:Z

    .line 4570
    iput-object v1, p0, Lcom/tapjoy/TJCorePlacement;->i:Lcom/tapjoy/internal/hq;

    .line 4571
    iput-object v1, p0, Lcom/tapjoy/TJCorePlacement;->w:Lcom/tapjoy/internal/it;

    const/4 v0, 0x1

    .line 269
    iput-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->x:Z

    .line 272
    const-string v2, "REQUEST"

    invoke-virtual {p0, v2}, Lcom/tapjoy/TJCorePlacement;->a(Ljava/lang/String;)Lcom/tapjoy/TJPlacement;

    move-result-object v8

    .line 274
    iget-boolean v2, p0, Lcom/tapjoy/TJCorePlacement;->y:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v2, :cond_1

    .line 275
    :try_start_3
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getGenericURLParams()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/TJCorePlacement;->t:Ljava/util/Map;

    .line 276
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getTimeStampAndVerifierParams()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 278
    :cond_1
    :try_start_4
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getLimitedGenericURLParams()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/TJCorePlacement;->t:Ljava/util/Map;

    .line 279
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getLimitedTimeStampAndVerifierParams()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 282
    :goto_0
    iget-object v2, p0, Lcom/tapjoy/TJCorePlacement;->t:Ljava/util/Map;

    const-string v3, "event_name"

    .line 5829
    iget-object v4, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v4}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object v4

    .line 282
    invoke-static {v2, v3, v4, v0}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 283
    iget-object v2, p0, Lcom/tapjoy/TJCorePlacement;->t:Ljava/util/Map;

    const-string v3, "event_preload"

    const-string v4, "true"

    invoke-static {v2, v3, v4, v0}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 284
    iget-object v2, p0, Lcom/tapjoy/TJCorePlacement;->t:Ljava/util/Map;

    const-string v3, "debug"

    .line 6017
    sget-boolean v4, Lcom/tapjoy/internal/hg;->a:Z

    .line 284
    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v0}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 286
    invoke-static {}, Lcom/tapjoy/internal/hj;->a()Lcom/tapjoy/internal/hj;

    move-result-object v2

    .line 287
    iget-object v3, p0, Lcom/tapjoy/TJCorePlacement;->t:Ljava/util/Map;

    const-string v4, "action_id_exclusion"

    .line 6923
    iget-object v5, v2, Lcom/tapjoy/internal/hj;->b:Lcom/tapjoy/internal/hs;

    if-nez v5, :cond_2

    goto :goto_1

    .line 6925
    :cond_2
    iget-object v1, v2, Lcom/tapjoy/internal/hj;->b:Lcom/tapjoy/internal/hs;

    .line 7049
    invoke-virtual {v1}, Lcom/tapjoy/internal/hs;->b()V

    .line 7050
    iget-object v1, v1, Lcom/tapjoy/internal/hs;->b:Lcom/tapjoy/internal/n;

    invoke-virtual {v1}, Lcom/tapjoy/internal/n;->a()Ljava/lang/String;

    move-result-object v1

    .line 287
    :goto_1
    invoke-static {v3, v4, v1, v0}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 289
    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement;->t:Ljava/util/Map;

    const-string v2, "system_placement"

    iget-boolean v3, p0, Lcom/tapjoy/TJCorePlacement;->j:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 290
    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement;->t:Ljava/util/Map;

    const-string v2, "push_id"

    iget-object v3, v8, Lcom/tapjoy/TJPlacement;->pushId:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 293
    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement;->t:Ljava/util/Map;

    const-string v2, "mediation_source"

    iget-object v3, p0, Lcom/tapjoy/TJCorePlacement;->n:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 294
    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement;->t:Ljava/util/Map;

    const-string v2, "adapter_version"

    iget-object v3, p0, Lcom/tapjoy/TJCorePlacement;->o:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 296
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getCustomParameter()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v1, :cond_3

    .line 297
    :try_start_5
    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement;->t:Ljava/util/Map;

    const-string v2, "cp"

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getCustomParameter()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    if-eqz p2, :cond_4

    .line 302
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->t:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 308
    :cond_4
    :try_start_6
    new-instance v6, Lcom/tapjoy/internal/fk;

    invoke-static {}, Lcom/tapjoy/internal/gd;->b()Lcom/tapjoy/internal/gb;

    move-result-object p2

    const-string v0, "placement_request_content_retry_timeout"

    .line 7214
    invoke-virtual {p2, v0}, Lcom/tapjoy/internal/gm;->b(Ljava/lang/String;)J

    move-result-wide v0

    .line 309
    invoke-direct {v6, v0, v1}, Lcom/tapjoy/internal/fk;-><init>(J)V

    .line 310
    invoke-static {}, Lcom/tapjoy/internal/gd;->b()Lcom/tapjoy/internal/gb;

    move-result-object p2

    const-string v0, "placement_request_content_retry_backoff"

    .line 311
    invoke-virtual {p2, v0}, Lcom/tapjoy/internal/gb;->c(Ljava/lang/String;)Lcom/tapjoy/internal/gl;

    move-result-object v9

    .line 317
    const-string p2, "TJPlacement.requestContent"

    invoke-static {p2}, Lcom/tapjoy/internal/gi;->d(Ljava/lang/String;)Lcom/tapjoy/internal/gi$a;

    move-result-object v5

    .line 320
    new-instance v3, Lcom/tapjoy/TJCorePlacement$3;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v4, p0

    move-object v7, p1

    :try_start_7
    invoke-direct/range {v3 .. v9}, Lcom/tapjoy/TJCorePlacement$3;-><init>(Lcom/tapjoy/TJCorePlacement;Lcom/tapjoy/internal/gi$a;Lcom/tapjoy/internal/fk;Ljava/lang/String;Lcom/tapjoy/TJPlacement;Lcom/tapjoy/internal/gl;)V

    .line 464
    invoke-virtual {v3}, Lcom/tapjoy/TJCorePlacement$3;->start()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 465
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    move-object v4, p0

    :goto_2
    move-object p1, v0

    :goto_3
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw p1

    :catchall_2
    move-exception v0

    goto :goto_2
.end method

.method final b()Ljava/lang/String;
    .locals 1

    .line 783
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->i:Lcom/tapjoy/internal/hq;

    if-eqz v0, :cond_0

    .line 784
    const-string v0, "mm"

    return-object v0

    .line 785
    :cond_0
    iget-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->l:Z

    if-eqz v0, :cond_1

    .line 786
    const-string v0, "ad"

    return-object v0

    .line 788
    :cond_1
    const-string v0, "none"

    return-object v0
.end method

.method final c()V
    .locals 5

    .line 877
    iget-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->k:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 878
    iput-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->m:Z

    .line 880
    sget-object v1, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Content is ready for placement "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14829
    iget-object v3, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v3}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object v3

    .line 880
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement;->g:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v1}, Lcom/tapjoy/TJAdUnit;->isPrerendered()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 882
    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement;->f:Lcom/tapjoy/internal/fy;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 15111
    iget-object v3, v1, Lcom/tapjoy/internal/fy;->b:Lcom/tapjoy/internal/gi$a;

    .line 15112
    const-string v4, "prerendered"

    if-eqz v3, :cond_0

    .line 15113
    invoke-virtual {v3, v4, v2}, Lcom/tapjoy/internal/gi$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/gi$a;

    .line 15116
    :cond_0
    iget-object v1, v1, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gi$a;

    if-eqz v1, :cond_1

    .line 15118
    invoke-virtual {v1, v4, v2}, Lcom/tapjoy/internal/gi$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/gi$a;

    .line 884
    :cond_1
    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement;->f:Lcom/tapjoy/internal/fy;

    .line 16044
    iget-object v2, v1, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gi$a;

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    .line 16046
    iput-object v3, v1, Lcom/tapjoy/internal/fy;->e:Lcom/tapjoy/internal/gi$a;

    .line 16047
    invoke-virtual {v2}, Lcom/tapjoy/internal/gi$a;->b()Lcom/tapjoy/internal/gi$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapjoy/internal/gi$a;->c()V

    .line 885
    :cond_2
    const-string v1, "REQUEST"

    invoke-virtual {p0, v1}, Lcom/tapjoy/TJCorePlacement;->a(Ljava/lang/String;)Lcom/tapjoy/TJPlacement;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 886
    invoke-virtual {v1}, Lcom/tapjoy/TJPlacement;->getListener()Lcom/tapjoy/TJPlacementListener;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 887
    invoke-virtual {v1}, Lcom/tapjoy/TJPlacement;->getListener()Lcom/tapjoy/TJPlacementListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/tapjoy/TJPlacementListener;->onContentReady(Lcom/tapjoy/TJPlacement;)V

    .line 888
    iput-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->k:Z

    :cond_3
    return-void
.end method

.method final d()V
    .locals 2

    .line 894
    const-string v0, "SHOW"

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJCorePlacement;->a(Ljava/lang/String;)Lcom/tapjoy/TJPlacement;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 895
    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->getListener()Lcom/tapjoy/TJPlacementListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 896
    invoke-direct {p0, v0}, Lcom/tapjoy/TJCorePlacement;->b(Lcom/tapjoy/TJPlacement;)V

    :cond_0
    return-void
.end method

.method final e()Ljava/lang/String;
    .locals 1

    .line 965
    iget-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->y:Z

    if-nez v0, :cond_0

    .line 966
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getAppID()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 968
    :cond_0
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getLimitedAppID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdUnit()Lcom/tapjoy/TJAdUnit;
    .locals 1

    .line 740
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->g:Lcom/tapjoy/TJAdUnit;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 732
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->b:Landroid/content/Context;

    return-object v0
.end method

.method public getPlacementContentUrl()Ljava/lang/String;
    .locals 3

    .line 756
    invoke-virtual {p0}, Lcom/tapjoy/TJCorePlacement;->e()Ljava/lang/String;

    move-result-object v0

    .line 759
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 760
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getPlacementURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "v1/apps/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/content?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 764
    :cond_0
    sget-object v0, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    const-string v1, "Placement content URL cannot be generated for null app ID"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    const-string v0, ""

    return-object v0
.end method

.method public getPlacementData()Lcom/tapjoy/TJPlacementData;
    .locals 1

    .line 744
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    return-object v0
.end method

.method public isContentAvailable()Z
    .locals 1

    .line 752
    iget-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->l:Z

    return v0
.end method

.method public isContentReady()Z
    .locals 1

    .line 748
    iget-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->m:Z

    return v0
.end method

.method public isLimited()Z
    .locals 1

    .line 960
    iget-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->y:Z

    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 736
    iput-object p1, p0, Lcom/tapjoy/TJCorePlacement;->b:Landroid/content/Context;

    return-void
.end method
