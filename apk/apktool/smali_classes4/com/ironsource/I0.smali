.class public final Lcom/ironsource/I0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/ironsource/I0;->a:J

    return-void
.end method

.method public static synthetic a(Lcom/ironsource/I0;JILjava/lang/Object;)Lcom/ironsource/I0;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 3
    iget-wide p1, p0, Lcom/ironsource/I0;->a:J

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/ironsource/I0;->a(J)Lcom/ironsource/I0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ironsource/I0;->a:J

    return-wide v0
.end method

.method public final a(J)Lcom/ironsource/I0;
    .locals 1

    .line 2
    new-instance v0, Lcom/ironsource/I0;

    invoke-direct {v0, p1, p2}, Lcom/ironsource/I0;-><init>(J)V

    return-object v0
.end method

.method public final b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ironsource/I0;->a:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/ironsource/I0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/ironsource/I0;

    iget-wide v3, p0, Lcom/ironsource/I0;->a:J

    iget-wide v5, p1, Lcom/ironsource/I0;->a:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ironsource/I0;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/ironsource/I0;->a:J

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AdUnitInteractionData(impressionTimeout="

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
