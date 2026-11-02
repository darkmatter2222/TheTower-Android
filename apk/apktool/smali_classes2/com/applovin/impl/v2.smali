.class public Lcom/applovin/impl/v2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/v2$b;,
        Lcom/applovin/impl/v2$c;
    }
.end annotation


# instance fields
.field protected a:Lcom/applovin/impl/v2$c;

.field protected b:Z

.field protected c:Landroid/text/SpannedString;

.field protected d:Landroid/text/SpannedString;

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field protected g:I

.field protected h:I

.field protected i:I

.field protected j:I

.field protected k:I

.field protected l:I

.field protected m:Z


# direct methods
.method private constructor <init>(Lcom/applovin/impl/v2$b;)V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/applovin/impl/v2;->g:I

    .line 29
    iput v0, p0, Lcom/applovin/impl/v2;->h:I

    const/high16 v1, -0x1000000

    .line 31
    iput v1, p0, Lcom/applovin/impl/v2;->i:I

    .line 32
    iput v1, p0, Lcom/applovin/impl/v2;->j:I

    .line 33
    iput v0, p0, Lcom/applovin/impl/v2;->k:I

    .line 34
    iput v0, p0, Lcom/applovin/impl/v2;->l:I

    .line 56
    iget-object v0, p1, Lcom/applovin/impl/v2$b;->a:Lcom/applovin/impl/v2$c;

    iput-object v0, p0, Lcom/applovin/impl/v2;->a:Lcom/applovin/impl/v2$c;

    .line 57
    iget-boolean v0, p1, Lcom/applovin/impl/v2$b;->b:Z

    iput-boolean v0, p0, Lcom/applovin/impl/v2;->b:Z

    .line 59
    iget-object v0, p1, Lcom/applovin/impl/v2$b;->c:Landroid/text/SpannedString;

    iput-object v0, p0, Lcom/applovin/impl/v2;->c:Landroid/text/SpannedString;

    .line 60
    iget-object v0, p1, Lcom/applovin/impl/v2$b;->d:Landroid/text/SpannedString;

    iput-object v0, p0, Lcom/applovin/impl/v2;->d:Landroid/text/SpannedString;

    .line 61
    iget-object v0, p1, Lcom/applovin/impl/v2$b;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/applovin/impl/v2;->e:Ljava/lang/String;

    .line 62
    iget-object v0, p1, Lcom/applovin/impl/v2$b;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/applovin/impl/v2;->f:Ljava/lang/String;

    .line 64
    iget v0, p1, Lcom/applovin/impl/v2$b;->g:I

    iput v0, p0, Lcom/applovin/impl/v2;->g:I

    .line 65
    iget v0, p1, Lcom/applovin/impl/v2$b;->h:I

    iput v0, p0, Lcom/applovin/impl/v2;->h:I

    .line 67
    iget v0, p1, Lcom/applovin/impl/v2$b;->i:I

    iput v0, p0, Lcom/applovin/impl/v2;->i:I

    .line 68
    iget v0, p1, Lcom/applovin/impl/v2$b;->j:I

    iput v0, p0, Lcom/applovin/impl/v2;->j:I

    .line 69
    iget v0, p1, Lcom/applovin/impl/v2$b;->k:I

    iput v0, p0, Lcom/applovin/impl/v2;->k:I

    .line 70
    iget v0, p1, Lcom/applovin/impl/v2$b;->l:I

    iput v0, p0, Lcom/applovin/impl/v2;->l:I

    .line 72
    iget-boolean p1, p1, Lcom/applovin/impl/v2$b;->m:Z

    iput-boolean p1, p0, Lcom/applovin/impl/v2;->m:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/v2$b;Lcom/applovin/impl/v2$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/applovin/impl/v2;-><init>(Lcom/applovin/impl/v2$b;)V

    return-void
.end method

.method protected constructor <init>(Lcom/applovin/impl/v2$c;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/applovin/impl/v2;->g:I

    .line 4
    iput v0, p0, Lcom/applovin/impl/v2;->h:I

    const/high16 v1, -0x1000000

    .line 6
    iput v1, p0, Lcom/applovin/impl/v2;->i:I

    .line 7
    iput v1, p0, Lcom/applovin/impl/v2;->j:I

    .line 8
    iput v0, p0, Lcom/applovin/impl/v2;->k:I

    .line 9
    iput v0, p0, Lcom/applovin/impl/v2;->l:I

    .line 26
    iput-object p1, p0, Lcom/applovin/impl/v2;->a:Lcom/applovin/impl/v2$c;

    return-void
.end method

.method public static a()Lcom/applovin/impl/v2$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/applovin/impl/v2$c;->f:Lcom/applovin/impl/v2$c;

    invoke-static {v0}, Lcom/applovin/impl/v2;->a(Lcom/applovin/impl/v2$c;)Lcom/applovin/impl/v2$b;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/applovin/impl/v2$c;)Lcom/applovin/impl/v2$b;
    .locals 1

    .line 2
    new-instance v0, Lcom/applovin/impl/v2$b;

    invoke-direct {v0, p0}, Lcom/applovin/impl/v2$b;-><init>(Lcom/applovin/impl/v2$c;)V

    return-object v0
.end method

.method public static n()I
    .locals 1

    .line 1
    sget-object v0, Lcom/applovin/impl/v2$c;->g:Lcom/applovin/impl/v2$c;

    invoke-virtual {v0}, Lcom/applovin/impl/v2$c;->c()I

    move-result v0

    return v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/v2;->f:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/v2;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/applovin/impl/v2;->h:I

    return v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/applovin/impl/v2;->l:I

    return v0
.end method

.method public f()Landroid/text/SpannedString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/v2;->d:Landroid/text/SpannedString;

    return-object v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/applovin/impl/v2;->j:I

    return v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/applovin/impl/v2;->g:I

    return v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/applovin/impl/v2;->k:I

    return v0
.end method

.method public j()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/v2;->a:Lcom/applovin/impl/v2$c;

    invoke-virtual {v0}, Lcom/applovin/impl/v2$c;->b()I

    move-result v0

    return v0
.end method

.method public k()Landroid/text/SpannedString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/v2;->c:Landroid/text/SpannedString;

    return-object v0
.end method

.method public l()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/applovin/impl/v2;->i:I

    return v0
.end method

.method public m()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/v2;->a:Lcom/applovin/impl/v2$c;

    invoke-virtual {v0}, Lcom/applovin/impl/v2$c;->c()I

    move-result v0

    return v0
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/applovin/impl/v2;->b:Z

    return v0
.end method

.method public p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/applovin/impl/v2;->m:Z

    return v0
.end method
