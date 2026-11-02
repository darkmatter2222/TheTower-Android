.class public final Lcom/ironsource/I5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/I5$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Lcom/ironsource/J7;

.field private e:Z

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/ironsource/I5$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ironsource/I5;->e:Z

    .line 6
    invoke-static {p1}, Lcom/ironsource/I5$a;->-$$Nest$fgeta(Lcom/ironsource/I5$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/I5;->a:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lcom/ironsource/I5$a;->-$$Nest$fgetb(Lcom/ironsource/I5$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ironsource/I5;->b:Z

    .line 8
    invoke-static {p1}, Lcom/ironsource/I5$a;->-$$Nest$fgetc(Lcom/ironsource/I5$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/I5;->c:Ljava/lang/String;

    .line 9
    invoke-static {p1}, Lcom/ironsource/I5$a;->-$$Nest$fgetd(Lcom/ironsource/I5$a;)Lcom/ironsource/J7;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/I5;->d:Lcom/ironsource/J7;

    .line 10
    invoke-static {p1}, Lcom/ironsource/I5$a;->-$$Nest$fgete(Lcom/ironsource/I5$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ironsource/I5;->e:Z

    .line 12
    invoke-static {p1}, Lcom/ironsource/I5$a;->-$$Nest$fgetf(Lcom/ironsource/I5$a;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/ironsource/I5$a;->-$$Nest$fgetf(Lcom/ironsource/I5$a;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/ironsource/I5;->f:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/I5;->b:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/I5;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/ironsource/J7;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/I5;->d:Lcom/ironsource/J7;

    return-object v0
.end method

.method public d()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ironsource/I5;->f:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/I5;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/I5;->e:Z

    return v0
.end method
