.class public final Lcom/ironsource/Eb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/Eb$a;
    }
.end annotation


# static fields
.field public static final b:Lcom/ironsource/Eb$a;

.field public static final c:Ljava/lang/String; = "duration"


# instance fields
.field private final a:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/ironsource/Eb$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/Eb$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ironsource/Eb;->b:Lcom/ironsource/Eb$a;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/ironsource/Eb;->a:J

    return-void
.end method

.method public static synthetic a(Lcom/ironsource/Eb;JILjava/lang/Object;)Lcom/ironsource/Eb;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 3
    iget-wide p1, p0, Lcom/ironsource/Eb;->a:J

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/ironsource/Eb;->a(J)Lcom/ironsource/Eb;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ironsource/Eb;->a:J

    return-wide v0
.end method

.method public final a(J)Lcom/ironsource/Eb;
    .locals 1

    .line 2
    new-instance v0, Lcom/ironsource/Eb;

    invoke-direct {v0, p1, p2}, Lcom/ironsource/Eb;-><init>(J)V

    return-object v0
.end method

.method public final b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ironsource/Eb;->a:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/ironsource/Eb;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/ironsource/Eb;

    iget-wide v3, p0, Lcom/ironsource/Eb;->a:J

    iget-wide v5, p1, Lcom/ironsource/Eb;->a:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ironsource/Eb;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/ironsource/Eb;->a:J

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LoadGraceConfig(graceDurationMs="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
