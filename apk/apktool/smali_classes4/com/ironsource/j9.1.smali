.class public final Lcom/ironsource/j9;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/j9$a;
    }
.end annotation


# instance fields
.field private final a:J

.field private final b:Lcom/ironsource/j9$a;

.field private final c:J


# direct methods
.method public constructor <init>(JLcom/ironsource/j9$a;J)V
    .locals 1

    const-string v0, "memory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/ironsource/j9;->a:J

    .line 3
    iput-object p3, p0, Lcom/ironsource/j9;->b:Lcom/ironsource/j9$a;

    .line 4
    iput-wide p4, p0, Lcom/ironsource/j9;->c:J

    return-void
.end method

.method public static synthetic a(Lcom/ironsource/j9;JLcom/ironsource/j9$a;JILjava/lang/Object;)Lcom/ironsource/j9;
    .locals 6

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    .line 3
    iget-wide p1, p0, Lcom/ironsource/j9;->a:J

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    iget-object p3, p0, Lcom/ironsource/j9;->b:Lcom/ironsource/j9$a;

    :cond_1
    move-object v3, p3

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    iget-wide p4, p0, Lcom/ironsource/j9;->c:J

    :cond_2
    move-object v0, p0

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/ironsource/j9;->a(JLcom/ironsource/j9$a;J)Lcom/ironsource/j9;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ironsource/j9;->a:J

    return-wide v0
.end method

.method public final a(JLcom/ironsource/j9$a;J)Lcom/ironsource/j9;
    .locals 7

    .line 2
    const-string v0, "memory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/ironsource/j9;

    move-wide v2, p1

    move-object v4, p3

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/ironsource/j9;-><init>(JLcom/ironsource/j9$a;J)V

    return-object v1
.end method

.method public final b()Lcom/ironsource/j9$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/j9;->b:Lcom/ironsource/j9$a;

    return-object v0
.end method

.method public final c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ironsource/j9;->c:J

    return-wide v0
.end method

.method public final d()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ironsource/j9;->c:J

    return-wide v0
.end method

.method public final e()Lcom/ironsource/j9$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/j9;->b:Lcom/ironsource/j9$a;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/ironsource/j9;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/ironsource/j9;

    iget-wide v3, p0, Lcom/ironsource/j9;->a:J

    iget-wide v5, p1, Lcom/ironsource/j9;->a:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/ironsource/j9;->b:Lcom/ironsource/j9$a;

    iget-object v3, p1, Lcom/ironsource/j9;->b:Lcom/ironsource/j9$a;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/ironsource/j9;->c:J

    iget-wide v5, p1, Lcom/ironsource/j9;->c:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final f()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ironsource/j9;->a:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/ironsource/j9;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/ironsource/j9;->b:Lcom/ironsource/j9$a;

    invoke-virtual {v1}, Lcom/ironsource/j9$a;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/ironsource/j9;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/ironsource/j9;->a:J

    iget-object v2, p0, Lcom/ironsource/j9;->b:Lcom/ironsource/j9$a;

    iget-wide v3, p0, Lcom/ironsource/j9;->c:J

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "InitParsingMetrics(parsingDurationMs="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", memory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", initResponseJsonSizeKb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
