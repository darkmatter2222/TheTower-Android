.class public abstract Lcom/tapjoy/internal/ej$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/ej;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/tapjoy/internal/ej<",
        "TT;TB;>;B:",
        "Lcom/tapjoy/internal/ej$a<",
        "TT;TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Lcom/tapjoy/internal/jb;

.field b:Lcom/tapjoy/internal/en;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILcom/tapjoy/internal/ei;Ljava/lang/Object;)Lcom/tapjoy/internal/ej$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/tapjoy/internal/ei;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/tapjoy/internal/ej$a<",
            "TT;TB;>;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/tapjoy/internal/ej$a;->b:Lcom/tapjoy/internal/en;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lcom/tapjoy/internal/jb;

    invoke-direct {v0}, Lcom/tapjoy/internal/jb;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/ej$a;->a:Lcom/tapjoy/internal/jb;

    .line 130
    new-instance v0, Lcom/tapjoy/internal/en;

    iget-object v1, p0, Lcom/tapjoy/internal/ej$a;->a:Lcom/tapjoy/internal/jb;

    invoke-direct {v0, v1}, Lcom/tapjoy/internal/en;-><init>(Lcom/tapjoy/internal/jc;)V

    iput-object v0, p0, Lcom/tapjoy/internal/ej$a;->b:Lcom/tapjoy/internal/en;

    .line 133
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/tapjoy/internal/ei;->a()Lcom/tapjoy/internal/el;

    move-result-object p2

    .line 134
    iget-object v0, p0, Lcom/tapjoy/internal/ej$a;->b:Lcom/tapjoy/internal/en;

    invoke-virtual {p2, v0, p1, p3}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/en;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 136
    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public final a(Lcom/tapjoy/internal/je;)Lcom/tapjoy/internal/ej$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tapjoy/internal/je;",
            ")",
            "Lcom/tapjoy/internal/ej$a<",
            "TT;TB;>;"
        }
    .end annotation

    .line 113
    invoke-virtual {p1}, Lcom/tapjoy/internal/je;->c()I

    move-result v0

    if-lez v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/tapjoy/internal/ej$a;->b:Lcom/tapjoy/internal/en;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lcom/tapjoy/internal/jb;

    invoke-direct {v0}, Lcom/tapjoy/internal/jb;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/ej$a;->a:Lcom/tapjoy/internal/jb;

    .line 116
    new-instance v0, Lcom/tapjoy/internal/en;

    iget-object v1, p0, Lcom/tapjoy/internal/ej$a;->a:Lcom/tapjoy/internal/jb;

    invoke-direct {v0, v1}, Lcom/tapjoy/internal/en;-><init>(Lcom/tapjoy/internal/jc;)V

    iput-object v0, p0, Lcom/tapjoy/internal/ej$a;->b:Lcom/tapjoy/internal/en;

    .line 119
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/ej$a;->b:Lcom/tapjoy/internal/en;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/en;->a(Lcom/tapjoy/internal/je;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 121
    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    return-object p0
.end method

.method public final a()Lcom/tapjoy/internal/je;
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/tapjoy/internal/ej$a;->a:Lcom/tapjoy/internal/jb;

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0}, Lcom/tapjoy/internal/jb;->i()Lcom/tapjoy/internal/jb;

    move-result-object v0

    .line 1525
    new-instance v1, Lcom/tapjoy/internal/je;

    invoke-virtual {v0}, Lcom/tapjoy/internal/jb;->h()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tapjoy/internal/je;-><init>([B)V

    return-object v1

    .line 153
    :cond_0
    sget-object v0, Lcom/tapjoy/internal/je;->b:Lcom/tapjoy/internal/je;

    return-object v0
.end method
