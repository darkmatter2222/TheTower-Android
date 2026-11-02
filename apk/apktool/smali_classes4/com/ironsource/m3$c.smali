.class public final Lcom/ironsource/m3$c;
.super Lcom/ironsource/m3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/m3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private final a:J

.field private final b:Lcom/ironsource/m3$d;


# direct methods
.method public constructor <init>(JLcom/ironsource/m3$d;)V
    .locals 1

    const-string v0, "recurringReason"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/ironsource/m3;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 2
    iput-wide p1, p0, Lcom/ironsource/m3$c;->a:J

    iput-object p3, p0, Lcom/ironsource/m3$c;->b:Lcom/ironsource/m3$d;

    return-void
.end method

.method public static synthetic a(Lcom/ironsource/m3$c;JLcom/ironsource/m3$d;ILjava/lang/Object;)Lcom/ironsource/m3$c;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 2
    iget-wide p1, p0, Lcom/ironsource/m3$c;->a:J

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    iget-object p3, p0, Lcom/ironsource/m3$c;->b:Lcom/ironsource/m3$d;

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/m3$c;->a(JLcom/ironsource/m3$d;)Lcom/ironsource/m3$c;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(JLcom/ironsource/m3$d;)Lcom/ironsource/m3$c;
    .locals 1

    .line 1
    const-string v0, "recurringReason"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/ironsource/m3$c;

    invoke-direct {v0, p1, p2, p3}, Lcom/ironsource/m3$c;-><init>(JLcom/ironsource/m3$d;)V

    return-object v0
.end method

.method public final d()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ironsource/m3$c;->a:J

    return-wide v0
.end method

.method public final e()Lcom/ironsource/m3$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/m3$c;->b:Lcom/ironsource/m3$d;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/ironsource/m3$c;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/ironsource/m3$c;

    iget-wide v3, p0, Lcom/ironsource/m3$c;->a:J

    iget-wide v5, p1, Lcom/ironsource/m3$c;->a:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/ironsource/m3$c;->b:Lcom/ironsource/m3$d;

    iget-object p1, p1, Lcom/ironsource/m3$c;->b:Lcom/ironsource/m3$d;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final f()Lcom/ironsource/m3$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/m3$c;->b:Lcom/ironsource/m3$d;

    return-object v0
.end method

.method public final g()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ironsource/m3$c;->a:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ironsource/m3$c;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/ironsource/m3$c;->b:Lcom/ironsource/m3$d;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/ironsource/m3$c;->a:J

    iget-object v2, p0, Lcom/ironsource/m3$c;->b:Lcom/ironsource/m3$d;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Recurring(reloadDuration="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", recurringReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
