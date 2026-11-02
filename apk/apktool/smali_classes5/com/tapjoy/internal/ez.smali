.class public final Lcom/tapjoy/internal/ez;
.super Lcom/tapjoy/internal/ej;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/ez$b;,
        Lcom/tapjoy/internal/ez$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/ej<",
        "Lcom/tapjoy/internal/ez;",
        "Lcom/tapjoy/internal/ez$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lcom/tapjoy/internal/el;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/el<",
            "Lcom/tapjoy/internal/ez;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lcom/tapjoy/internal/fa;


# instance fields
.field public final e:Lcom/tapjoy/internal/fa;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/tapjoy/internal/ez$b;

    invoke-direct {v0}, Lcom/tapjoy/internal/ez$b;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/ez;->c:Lcom/tapjoy/internal/el;

    .line 24
    sget-object v0, Lcom/tapjoy/internal/fa;->a:Lcom/tapjoy/internal/fa;

    sput-object v0, Lcom/tapjoy/internal/ez;->d:Lcom/tapjoy/internal/fa;

    return-void
.end method

.method public constructor <init>(Lcom/tapjoy/internal/fa;Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/je;)V
    .locals 1

    .line 55
    sget-object v0, Lcom/tapjoy/internal/ez;->c:Lcom/tapjoy/internal/el;

    invoke-direct {p0, v0, p4}, Lcom/tapjoy/internal/ej;-><init>(Lcom/tapjoy/internal/el;Lcom/tapjoy/internal/je;)V

    .line 56
    iput-object p1, p0, Lcom/tapjoy/internal/ez;->e:Lcom/tapjoy/internal/fa;

    .line 57
    iput-object p2, p0, Lcom/tapjoy/internal/ez;->f:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/tapjoy/internal/ez;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 74
    :cond_0
    instance-of v1, p1, Lcom/tapjoy/internal/ez;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 75
    :cond_1
    check-cast p1, Lcom/tapjoy/internal/ez;

    .line 76
    invoke-virtual {p0}, Lcom/tapjoy/internal/ez;->a()Lcom/tapjoy/internal/je;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tapjoy/internal/ez;->a()Lcom/tapjoy/internal/je;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tapjoy/internal/je;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/ez;->e:Lcom/tapjoy/internal/fa;

    iget-object v3, p1, Lcom/tapjoy/internal/ez;->e:Lcom/tapjoy/internal/fa;

    .line 77
    invoke-virtual {v1, v3}, Lcom/tapjoy/internal/fa;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/ez;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/ez;->f:Ljava/lang/String;

    .line 78
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/ez;->g:Ljava/lang/String;

    iget-object p1, p1, Lcom/tapjoy/internal/ez;->g:Ljava/lang/String;

    .line 79
    invoke-static {v1, p1}, Lcom/tapjoy/internal/eq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    .line 84
    iget v0, p0, Lcom/tapjoy/internal/ej;->b:I

    if-nez v0, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/tapjoy/internal/ez;->a()Lcom/tapjoy/internal/je;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/je;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 87
    iget-object v1, p0, Lcom/tapjoy/internal/ez;->e:Lcom/tapjoy/internal/fa;

    invoke-virtual {v1}, Lcom/tapjoy/internal/fa;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 88
    iget-object v1, p0, Lcom/tapjoy/internal/ez;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 89
    iget-object v1, p0, Lcom/tapjoy/internal/ez;->g:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 90
    iput v0, p0, Lcom/tapjoy/internal/ej;->b:I

    :cond_1
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ez;->e:Lcom/tapjoy/internal/fa;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ez;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget-object v1, p0, Lcom/tapjoy/internal/ez;->g:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ", category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ez;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v1, 0x2

    .line 101
    const-string v2, "EventGroup{"

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
