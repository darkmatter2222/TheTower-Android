.class public Lcom/ironsource/b3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final p:I


# instance fields
.field private a:Lcom/ironsource/R1;

.field private b:I

.field private c:J

.field private d:Z

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/l3;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/ironsource/l3;

.field private g:I

.field private h:I

.field private i:Lcom/ironsource/A2;

.field private j:Z

.field private k:J

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/ironsource/R1;

    invoke-direct {v0}, Lcom/ironsource/R1;-><init>()V

    iput-object v0, p0, Lcom/ironsource/b3;->a:Lcom/ironsource/R1;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/b3;->e:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(IJZLcom/ironsource/R1;ILcom/ironsource/A2;IZJZZZJ)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/b3;->e:Ljava/util/ArrayList;

    .line 6
    iput p1, p0, Lcom/ironsource/b3;->b:I

    .line 7
    iput-wide p2, p0, Lcom/ironsource/b3;->c:J

    .line 8
    iput-boolean p4, p0, Lcom/ironsource/b3;->d:Z

    .line 9
    iput-object p5, p0, Lcom/ironsource/b3;->a:Lcom/ironsource/R1;

    .line 10
    iput p6, p0, Lcom/ironsource/b3;->g:I

    .line 11
    iput p8, p0, Lcom/ironsource/b3;->h:I

    .line 12
    iput-object p7, p0, Lcom/ironsource/b3;->i:Lcom/ironsource/A2;

    .line 13
    iput-boolean p9, p0, Lcom/ironsource/b3;->j:Z

    .line 14
    iput-wide p10, p0, Lcom/ironsource/b3;->k:J

    .line 15
    iput-boolean p12, p0, Lcom/ironsource/b3;->l:Z

    .line 16
    iput-boolean p13, p0, Lcom/ironsource/b3;->m:Z

    .line 17
    iput-boolean p14, p0, Lcom/ironsource/b3;->n:Z

    move-wide/from16 p1, p15

    .line 18
    iput-wide p1, p0, Lcom/ironsource/b3;->o:J

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ironsource/b3;->b:I

    return v0
.end method

.method public a(Ljava/lang/String;)Lcom/ironsource/l3;
    .locals 3

    .line 14
    iget-object v0, p0, Lcom/ironsource/b3;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/l3;

    .line 15
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

.method public a(Lcom/ironsource/l3;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/ironsource/b3;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v0, p0, Lcom/ironsource/b3;->f:Lcom/ironsource/l3;

    if-nez v0, :cond_0

    .line 11
    iput-object p1, p0, Lcom/ironsource/b3;->f:Lcom/ironsource/l3;

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1, v0}, Lcom/ironsource/t3;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    iput-object p1, p0, Lcom/ironsource/b3;->f:Lcom/ironsource/l3;

    :cond_1
    return-void
.end method

.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ironsource/b3;->c:J

    return-wide v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/b3;->d:Z

    return v0
.end method

.method public d()Lcom/ironsource/A2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/b3;->i:Lcom/ironsource/A2;

    return-object v0
.end method

.method public e()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ironsource/b3;->k:J

    return-wide v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ironsource/b3;->h:I

    return v0
.end method

.method public g()Lcom/ironsource/R1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/b3;->a:Lcom/ironsource/R1;

    return-object v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ironsource/b3;->g:I

    return v0
.end method

.method public i()Lcom/ironsource/l3;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/b3;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/l3;

    .line 2
    invoke-virtual {v1}, Lcom/ironsource/t3;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/ironsource/b3;->f:Lcom/ironsource/l3;

    if-eqz v0, :cond_2

    return-object v0

    .line 11
    :cond_2
    new-instance v0, Lcom/ironsource/o5;

    invoke-direct {v0}, Lcom/ironsource/o5;-><init>()V

    return-object v0
.end method

.method public j()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ironsource/b3;->o:J

    return-wide v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/b3;->j:Z

    return v0
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/b3;->l:Z

    return v0
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/b3;->n:Z

    return v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/b3;->m:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BannerConfigurations{parallelLoad="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/ironsource/b3;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bidderExclusive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ironsource/b3;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
