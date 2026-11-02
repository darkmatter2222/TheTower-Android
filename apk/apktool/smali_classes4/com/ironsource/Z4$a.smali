.class public final Lcom/ironsource/Z4$a;
.super Lcom/ironsource/Z4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/Z4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final b:J


# direct methods
.method public constructor <init>(J)V
    .locals 2

    .line 1
    const-string v0, "scheduler_expired"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ironsource/Z4;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-wide p1, p0, Lcom/ironsource/Z4$a;->b:J

    return-void
.end method

.method public static synthetic a(Lcom/ironsource/Z4$a;JILjava/lang/Object;)Lcom/ironsource/Z4$a;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 2
    iget-wide p1, p0, Lcom/ironsource/Z4$a;->b:J

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/ironsource/Z4$a;->a(J)Lcom/ironsource/Z4$a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(J)Lcom/ironsource/Z4$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/ironsource/Z4$a;

    invoke-direct {v0, p1, p2}, Lcom/ironsource/Z4$a;-><init>(J)V

    return-object v0
.end method

.method public final b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ironsource/Z4$a;->b:J

    return-wide v0
.end method

.method public final c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ironsource/Z4$a;->b:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/ironsource/Z4$a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/ironsource/Z4$a;

    iget-wide v3, p0, Lcom/ironsource/Z4$a;->b:J

    iget-wide v5, p1, Lcom/ironsource/Z4$a;->b:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ironsource/Z4$a;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/ironsource/Z4$a;->b:J

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SchedulerExpired(durationMs="

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
