.class public final Lcom/tapjoy/internal/fr;
.super Lcom/tapjoy/internal/hd;
.source "SourceFile"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/tapjoy/internal/fk;

.field private d:Z

.field private final e:Lcom/tapjoy/internal/gc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/gc<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/tapjoy/internal/fr;

    invoke-direct {v0}, Lcom/tapjoy/internal/fr;-><init>()V

    .line 3021
    sput-object v0, Lcom/tapjoy/internal/hd;->a:Lcom/tapjoy/internal/hd;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Lcom/tapjoy/internal/hd;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/fr;->b:Ljava/util/Map;

    .line 39
    new-instance v0, Lcom/tapjoy/internal/fk;

    invoke-direct {v0}, Lcom/tapjoy/internal/fk;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/fr;->c:Lcom/tapjoy/internal/fk;

    .line 44
    new-instance v0, Lcom/tapjoy/internal/fr$1;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/fr$1;-><init>(Lcom/tapjoy/internal/fr;)V

    iput-object v0, p0, Lcom/tapjoy/internal/fr;->e:Lcom/tapjoy/internal/gc;

    return-void
.end method

.method public static a()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 1090
    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1094
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1116
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1117
    const-string v2, "android.intent.category.LAUNCHER"

    .line 1118
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "android.intent.action.MAIN"

    .line 1119
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1098
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 1102
    :cond_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    .line 1103
    iget-object v1, p0, Lcom/tapjoy/internal/fr;->b:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_3

    .line 1104
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_3

    .line 82
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/tapjoy/internal/fr;->d:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/tapjoy/internal/fr;->c:Lcom/tapjoy/internal/fk;

    .line 83
    invoke-virtual {p1}, Lcom/tapjoy/internal/fk;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 84
    :cond_3
    iget-object p1, p0, Lcom/tapjoy/internal/fr;->e:Lcom/tapjoy/internal/gc;

    const/4 v0, 0x0

    .line 2034
    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/gc;->c(Ljava/lang/Object;)Z

    :cond_4
    const/4 p1, 0x1

    .line 86
    iput-boolean p1, p0, Lcom/tapjoy/internal/fr;->d:Z

    return-void
.end method

.method public final update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    .line 72
    sget-object p1, Lcom/tapjoy/internal/fu;->d:Lcom/tapjoy/internal/fu$a;

    return-void
.end method
