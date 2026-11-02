.class public final Lads_mobile_sdk/ey;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lads_mobile_sdk/ey;->a:I

    .line 4
    iput p2, p0, Lads_mobile_sdk/ey;->b:I

    .line 6
    iput p3, p0, Lads_mobile_sdk/ey;->c:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lads_mobile_sdk/ey;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lads_mobile_sdk/ey;

    iget v1, p0, Lads_mobile_sdk/ey;->a:I

    iget v3, p1, Lads_mobile_sdk/ey;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lads_mobile_sdk/ey;->b:I

    iget v3, p1, Lads_mobile_sdk/ey;->b:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lads_mobile_sdk/ey;->c:I

    iget p1, p1, Lads_mobile_sdk/ey;->c:I

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lads_mobile_sdk/ey;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lads_mobile_sdk/ey;->b:I

    .line 2
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/y1;->a(III)I

    move-result v0

    const/4 v2, 0x0

    .line 3
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/y1;->a(III)I

    move-result v0

    .line 4
    iget v2, p0, Lads_mobile_sdk/ey;->c:I

    .line 5
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/y1;->a(III)I

    move-result v0

    const/16 v1, 0x32

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, Lads_mobile_sdk/ey;->a:I

    iget v1, p0, Lads_mobile_sdk/ey;->b:I

    iget v2, p0, Lads_mobile_sdk/ey;->c:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CloseButtonConfig(paddingLeft="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", paddingRight="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", paddingTop=0, paddingBottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size=50)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
