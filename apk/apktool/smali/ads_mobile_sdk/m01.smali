.class public final Lads_mobile_sdk/m01;
.super Lads_mobile_sdk/i01;
.source "SourceFile"


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:Lads_mobile_sdk/kk1;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 2
    sget-object v0, Lads_mobile_sdk/kk1;->a:Lads_mobile_sdk/kk1;

    .line 3
    invoke-direct {p0, p1, v0}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V
    .locals 1

    .line 4
    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "internalErrorCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p2, v0}, Lads_mobile_sdk/i01;-><init>(Lads_mobile_sdk/kk1;I)V

    .line 47
    iput-object p1, p0, Lads_mobile_sdk/m01;->c:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lads_mobile_sdk/m01;->d:Lads_mobile_sdk/kk1;

    return-void
.end method


# virtual methods
.method public final a()Lads_mobile_sdk/kk1;
    .locals 1

    .line 42
    iget-object v0, p0, Lads_mobile_sdk/m01;->d:Lads_mobile_sdk/kk1;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lads_mobile_sdk/m01;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lads_mobile_sdk/m01;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lads_mobile_sdk/m01;

    iget-object v1, p0, Lads_mobile_sdk/m01;->c:Ljava/lang/String;

    iget-object v3, p1, Lads_mobile_sdk/m01;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lads_mobile_sdk/m01;->d:Lads_mobile_sdk/kk1;

    iget-object p1, p1, Lads_mobile_sdk/m01;->d:Lads_mobile_sdk/kk1;

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/m01;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lads_mobile_sdk/m01;->d:Lads_mobile_sdk/kk1;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/m01;->c:Ljava/lang/String;

    iget-object v1, p0, Lads_mobile_sdk/m01;->d:Lads_mobile_sdk/kk1;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MessageError(message="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", internalErrorCode="

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
