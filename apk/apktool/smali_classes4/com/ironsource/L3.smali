.class public final Lcom/ironsource/L3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/L3$a;
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:Lcom/ironsource/N3;


# direct methods
.method public constructor <init>(ZLcom/ironsource/N3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/ironsource/L3;->a:Z

    iput-object p2, p0, Lcom/ironsource/L3;->b:Lcom/ironsource/N3;

    return-void
.end method

.method public synthetic constructor <init>(ZLcom/ironsource/N3;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/ironsource/L3;-><init>(ZLcom/ironsource/N3;)V

    return-void
.end method

.method public static synthetic a(Lcom/ironsource/L3;ZLcom/ironsource/N3;ILjava/lang/Object;)Lcom/ironsource/L3;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 3
    iget-boolean p1, p0, Lcom/ironsource/L3;->a:Z

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/ironsource/L3;->b:Lcom/ironsource/N3;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/ironsource/L3;->a(ZLcom/ironsource/N3;)Lcom/ironsource/L3;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(ZLcom/ironsource/N3;)Lcom/ironsource/L3;
    .locals 1

    .line 2
    new-instance v0, Lcom/ironsource/L3;

    invoke-direct {v0, p1, p2}, Lcom/ironsource/L3;-><init>(ZLcom/ironsource/N3;)V

    return-object v0
.end method

.method public final a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/L3;->a:Z

    return v0
.end method

.method public final b()Lcom/ironsource/N3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/L3;->b:Lcom/ironsource/N3;

    return-object v0
.end method

.method public final c()Lcom/ironsource/N3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/L3;->b:Lcom/ironsource/N3;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/L3;->a:Z

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/L3;->b:Lcom/ironsource/N3;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/ironsource/L3$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_1
    const-string v0, "Max ad cap reached"

    return-object v0

    .line 5
    :cond_2
    const-string v0, "In pacing mode"

    return-object v0

    .line 6
    :cond_3
    const-string v0, "Placement delivery is false"

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/ironsource/L3;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/ironsource/L3;

    iget-boolean v1, p0, Lcom/ironsource/L3;->a:Z

    iget-boolean v3, p1, Lcom/ironsource/L3;->a:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/ironsource/L3;->b:Lcom/ironsource/N3;

    iget-object p1, p1, Lcom/ironsource/L3;->b:Lcom/ironsource/N3;

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/L3;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/ironsource/L3;->b:Lcom/ironsource/N3;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/L3;->a:Z

    iget-object v1, p0, Lcom/ironsource/L3;->b:Lcom/ironsource/N3;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CappingStatus(isCapped="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " reason="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
