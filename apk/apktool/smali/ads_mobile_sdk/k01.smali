.class public final Lads_mobile_sdk/k01;
.super Lads_mobile_sdk/i01;
.source "SourceFile"


# instance fields
.field public final c:I

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    .line 61
    sget-object v0, Lads_mobile_sdk/kk1;->e:Lads_mobile_sdk/kk1;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lads_mobile_sdk/i01;-><init>(Lads_mobile_sdk/kk1;I)V

    .line 62
    iput p1, p0, Lads_mobile_sdk/k01;->c:I

    iput-object p2, p0, Lads_mobile_sdk/k01;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final c()I
    .locals 1

    .line 60
    iget v0, p0, Lads_mobile_sdk/k01;->c:I

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lads_mobile_sdk/k01;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lads_mobile_sdk/k01;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lads_mobile_sdk/k01;

    iget v1, p0, Lads_mobile_sdk/k01;->c:I

    iget v3, p1, Lads_mobile_sdk/k01;->c:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lads_mobile_sdk/k01;->d:Ljava/lang/String;

    iget-object p1, p1, Lads_mobile_sdk/k01;->d:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lads_mobile_sdk/k01;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lads_mobile_sdk/k01;->d:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lads_mobile_sdk/k01;->c:I

    iget-object v1, p0, Lads_mobile_sdk/k01;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HttpError(responseCode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", responseMessage="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
