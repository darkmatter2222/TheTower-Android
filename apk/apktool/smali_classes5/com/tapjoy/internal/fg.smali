.class public final Lcom/tapjoy/internal/fg;
.super Lcom/tapjoy/internal/ej;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/fg$b;,
        Lcom/tapjoy/internal/fg$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/ej<",
        "Lcom/tapjoy/internal/fg;",
        "Lcom/tapjoy/internal/fg$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lcom/tapjoy/internal/el;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/el<",
            "Lcom/tapjoy/internal/fg;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/lang/Long;

.field public static final e:Ljava/lang/Long;


# instance fields
.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/Long;

.field public final h:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lcom/tapjoy/internal/fg$b;

    invoke-direct {v0}, Lcom/tapjoy/internal/fg$b;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/fg;->c:Lcom/tapjoy/internal/el;

    const-wide/16 v0, 0x0

    .line 27
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/fg;->d:Ljava/lang/Long;

    .line 29
    sput-object v0, Lcom/tapjoy/internal/fg;->e:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 2

    const/4 v0, 0x0

    .line 52
    sget-object v1, Lcom/tapjoy/internal/je;->b:Lcom/tapjoy/internal/je;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/tapjoy/internal/fg;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/tapjoy/internal/je;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/tapjoy/internal/je;)V
    .locals 1

    .line 56
    sget-object v0, Lcom/tapjoy/internal/fg;->c:Lcom/tapjoy/internal/el;

    invoke-direct {p0, v0, p4}, Lcom/tapjoy/internal/ej;-><init>(Lcom/tapjoy/internal/el;Lcom/tapjoy/internal/je;)V

    .line 57
    iput-object p1, p0, Lcom/tapjoy/internal/fg;->f:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/tapjoy/internal/fg;->g:Ljava/lang/Long;

    .line 59
    iput-object p3, p0, Lcom/tapjoy/internal/fg;->h:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 75
    :cond_0
    instance-of v1, p1, Lcom/tapjoy/internal/fg;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 76
    :cond_1
    check-cast p1, Lcom/tapjoy/internal/fg;

    .line 77
    invoke-virtual {p0}, Lcom/tapjoy/internal/fg;->a()Lcom/tapjoy/internal/je;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tapjoy/internal/fg;->a()Lcom/tapjoy/internal/je;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tapjoy/internal/je;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/fg;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/fg;->f:Ljava/lang/String;

    .line 78
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/fg;->g:Ljava/lang/Long;

    iget-object v3, p1, Lcom/tapjoy/internal/fg;->g:Ljava/lang/Long;

    .line 79
    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/fg;->h:Ljava/lang/Long;

    iget-object p1, p1, Lcom/tapjoy/internal/fg;->h:Ljava/lang/Long;

    .line 80
    invoke-static {v1, p1}, Lcom/tapjoy/internal/eq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    .line 85
    iget v0, p0, Lcom/tapjoy/internal/ej;->b:I

    if-nez v0, :cond_1

    .line 87
    invoke-virtual {p0}, Lcom/tapjoy/internal/fg;->a()Lcom/tapjoy/internal/je;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/je;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 88
    iget-object v1, p0, Lcom/tapjoy/internal/fg;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 89
    iget-object v1, p0, Lcom/tapjoy/internal/fg;->g:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 90
    iget-object v1, p0, Lcom/tapjoy/internal/fg;->h:Ljava/lang/Long;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 91
    iput v0, p0, Lcom/tapjoy/internal/ej;->b:I

    :cond_1
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fg;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const-string v1, ", received="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fg;->g:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    iget-object v1, p0, Lcom/tapjoy/internal/fg;->h:Ljava/lang/Long;

    if-eqz v1, :cond_0

    const-string v1, ", clicked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fg;->h:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v1, 0x2

    .line 102
    const-string v2, "Push{"

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
