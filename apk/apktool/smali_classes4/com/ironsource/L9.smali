.class public Lcom/ironsource/L9;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final n:I


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/P9;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/ironsource/R1;

.field private c:I

.field private d:Z

.field private e:I

.field private f:I

.field private g:Lcom/ironsource/A2;

.field private h:Z

.field private i:J

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Lcom/ironsource/P9;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/L9;->a:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Lcom/ironsource/R1;

    invoke-direct {v0}, Lcom/ironsource/R1;-><init>()V

    iput-object v0, p0, Lcom/ironsource/L9;->b:Lcom/ironsource/R1;

    .line 4
    new-instance v0, Lcom/ironsource/A2;

    invoke-direct {v0}, Lcom/ironsource/A2;-><init>()V

    iput-object v0, p0, Lcom/ironsource/L9;->g:Lcom/ironsource/A2;

    return-void
.end method

.method public constructor <init>(IZILcom/ironsource/R1;Lcom/ironsource/A2;IZJZZZ)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/L9;->a:Ljava/util/ArrayList;

    .line 7
    iput p1, p0, Lcom/ironsource/L9;->c:I

    .line 8
    iput-boolean p2, p0, Lcom/ironsource/L9;->d:Z

    .line 9
    iput p3, p0, Lcom/ironsource/L9;->e:I

    .line 10
    iput-object p4, p0, Lcom/ironsource/L9;->b:Lcom/ironsource/R1;

    .line 11
    iput-object p5, p0, Lcom/ironsource/L9;->g:Lcom/ironsource/A2;

    .line 12
    iput-boolean p10, p0, Lcom/ironsource/L9;->j:Z

    .line 13
    iput-boolean p11, p0, Lcom/ironsource/L9;->k:Z

    .line 14
    iput p6, p0, Lcom/ironsource/L9;->f:I

    .line 15
    iput-boolean p7, p0, Lcom/ironsource/L9;->h:Z

    .line 16
    iput-wide p8, p0, Lcom/ironsource/L9;->i:J

    .line 17
    iput-boolean p12, p0, Lcom/ironsource/L9;->l:Z

    return-void
.end method


# virtual methods
.method public a()Lcom/ironsource/P9;
    .locals 3

    .line 15
    iget-object v0, p0, Lcom/ironsource/L9;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/P9;

    .line 16
    invoke-virtual {v1}, Lcom/ironsource/t3;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/ironsource/L9;->m:Lcom/ironsource/P9;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/ironsource/P9;
    .locals 3

    .line 13
    iget-object v0, p0, Lcom/ironsource/L9;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/P9;

    .line 14
    invoke-virtual {v1}, Lcom/ironsource/t3;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lcom/ironsource/P9;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/ironsource/L9;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v0, p0, Lcom/ironsource/L9;->m:Lcom/ironsource/P9;

    if-nez v0, :cond_0

    .line 10
    iput-object p1, p0, Lcom/ironsource/L9;->m:Lcom/ironsource/P9;

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, v0}, Lcom/ironsource/t3;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    iput-object p1, p0, Lcom/ironsource/L9;->m:Lcom/ironsource/P9;

    :cond_1
    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ironsource/L9;->f:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ironsource/L9;->c:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ironsource/L9;->e:I

    return v0
.end method

.method public e()J
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v1, p0, Lcom/ironsource/L9;->e:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/L9;->d:Z

    return v0
.end method

.method public g()Lcom/ironsource/A2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/L9;->g:Lcom/ironsource/A2;

    return-object v0
.end method

.method public h()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ironsource/L9;->i:J

    return-wide v0
.end method

.method public i()Lcom/ironsource/R1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/L9;->b:Lcom/ironsource/R1;

    return-object v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/L9;->h:Z

    return v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/L9;->j:Z

    return v0
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/L9;->l:Z

    return v0
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/L9;->k:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InterstitialConfigurations{parallelLoad="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/ironsource/L9;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bidderExclusive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ironsource/L9;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
