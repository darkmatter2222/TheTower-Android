.class public final Lcom/tapjoy/internal/fd;
.super Lcom/tapjoy/internal/ej;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/fd$b;,
        Lcom/tapjoy/internal/fd$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/ej<",
        "Lcom/tapjoy/internal/fd;",
        "Lcom/tapjoy/internal/fd$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lcom/tapjoy/internal/el;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/el<",
            "Lcom/tapjoy/internal/fd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final d:Lcom/tapjoy/internal/fc;

.field public final e:Lcom/tapjoy/internal/ew;

.field public final f:Lcom/tapjoy/internal/fj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/tapjoy/internal/fd$b;

    invoke-direct {v0}, Lcom/tapjoy/internal/fd$b;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/fd;->c:Lcom/tapjoy/internal/el;

    return-void
.end method

.method public constructor <init>(Lcom/tapjoy/internal/fc;Lcom/tapjoy/internal/ew;Lcom/tapjoy/internal/fj;)V
    .locals 1

    .line 43
    sget-object v0, Lcom/tapjoy/internal/je;->b:Lcom/tapjoy/internal/je;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/tapjoy/internal/fd;-><init>(Lcom/tapjoy/internal/fc;Lcom/tapjoy/internal/ew;Lcom/tapjoy/internal/fj;Lcom/tapjoy/internal/je;)V

    return-void
.end method

.method public constructor <init>(Lcom/tapjoy/internal/fc;Lcom/tapjoy/internal/ew;Lcom/tapjoy/internal/fj;Lcom/tapjoy/internal/je;)V
    .locals 1

    .line 47
    sget-object v0, Lcom/tapjoy/internal/fd;->c:Lcom/tapjoy/internal/el;

    invoke-direct {p0, v0, p4}, Lcom/tapjoy/internal/ej;-><init>(Lcom/tapjoy/internal/el;Lcom/tapjoy/internal/je;)V

    .line 48
    iput-object p1, p0, Lcom/tapjoy/internal/fd;->d:Lcom/tapjoy/internal/fc;

    .line 49
    iput-object p2, p0, Lcom/tapjoy/internal/fd;->e:Lcom/tapjoy/internal/ew;

    .line 50
    iput-object p3, p0, Lcom/tapjoy/internal/fd;->f:Lcom/tapjoy/internal/fj;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 66
    :cond_0
    instance-of v1, p1, Lcom/tapjoy/internal/fd;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 67
    :cond_1
    check-cast p1, Lcom/tapjoy/internal/fd;

    .line 68
    invoke-virtual {p0}, Lcom/tapjoy/internal/fd;->a()Lcom/tapjoy/internal/je;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tapjoy/internal/fd;->a()Lcom/tapjoy/internal/je;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tapjoy/internal/je;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/fd;->d:Lcom/tapjoy/internal/fc;

    iget-object v3, p1, Lcom/tapjoy/internal/fd;->d:Lcom/tapjoy/internal/fc;

    .line 69
    invoke-static {v1, v3}, Lcom/tapjoy/internal/eq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/fd;->e:Lcom/tapjoy/internal/ew;

    iget-object v3, p1, Lcom/tapjoy/internal/fd;->e:Lcom/tapjoy/internal/ew;

    .line 70
    invoke-static {v1, v3}, Lcom/tapjoy/internal/eq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/fd;->f:Lcom/tapjoy/internal/fj;

    iget-object p1, p1, Lcom/tapjoy/internal/fd;->f:Lcom/tapjoy/internal/fj;

    .line 71
    invoke-static {v1, p1}, Lcom/tapjoy/internal/eq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    .line 76
    iget v0, p0, Lcom/tapjoy/internal/ej;->b:I

    if-nez v0, :cond_3

    .line 78
    invoke-virtual {p0}, Lcom/tapjoy/internal/fd;->a()Lcom/tapjoy/internal/je;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/je;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 79
    iget-object v1, p0, Lcom/tapjoy/internal/fd;->d:Lcom/tapjoy/internal/fc;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/tapjoy/internal/fc;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 80
    iget-object v1, p0, Lcom/tapjoy/internal/fd;->e:Lcom/tapjoy/internal/ew;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/tapjoy/internal/ew;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 81
    iget-object v1, p0, Lcom/tapjoy/internal/fd;->f:Lcom/tapjoy/internal/fj;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/tapjoy/internal/fj;->hashCode()I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    .line 82
    iput v0, p0, Lcom/tapjoy/internal/ej;->b:I

    :cond_3
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    iget-object v1, p0, Lcom/tapjoy/internal/fd;->d:Lcom/tapjoy/internal/fc;

    if-eqz v1, :cond_0

    const-string v1, ", info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fd;->d:Lcom/tapjoy/internal/fc;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/tapjoy/internal/fd;->e:Lcom/tapjoy/internal/ew;

    if-eqz v1, :cond_1

    const-string v1, ", app="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fd;->e:Lcom/tapjoy/internal/ew;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    :cond_1
    iget-object v1, p0, Lcom/tapjoy/internal/fd;->f:Lcom/tapjoy/internal/fj;

    if-eqz v1, :cond_2

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fd;->f:Lcom/tapjoy/internal/fj;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    const/4 v1, 0x2

    .line 93
    const-string v2, "InfoSet{"

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
