.class public final Lads_mobile_sdk/tn1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Lads_mobile_sdk/x11;

.field public e:I

.field public f:Lads_mobile_sdk/nm2;

.field public g:Z


# direct methods
.method public synthetic constructor <init>()V
    .locals 8

    .line 5
    sget-object v4, Lads_mobile_sdk/x11;->c:Lads_mobile_sdk/x11;

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 6
    const-string v1, ""

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lads_mobile_sdk/tn1;-><init>(Ljava/lang/String;Ljava/lang/String;ILads_mobile_sdk/x11;ILads_mobile_sdk/nm2;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILads_mobile_sdk/x11;ILads_mobile_sdk/nm2;Z)V
    .locals 1

    .line 7
    const-string v0, "internalRequestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gwsQueryId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scarRequestType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lads_mobile_sdk/tn1;->a:Ljava/lang/String;

    .line 118
    iput-object p2, p0, Lads_mobile_sdk/tn1;->b:Ljava/lang/String;

    .line 119
    iput p3, p0, Lads_mobile_sdk/tn1;->c:I

    .line 120
    iput-object p4, p0, Lads_mobile_sdk/tn1;->d:Lads_mobile_sdk/x11;

    .line 121
    iput p5, p0, Lads_mobile_sdk/tn1;->e:I

    .line 122
    iput-object p6, p0, Lads_mobile_sdk/tn1;->f:Lads_mobile_sdk/nm2;

    .line 123
    iput-boolean p7, p0, Lads_mobile_sdk/tn1;->g:Z

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
    instance-of v1, p1, Lads_mobile_sdk/tn1;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lads_mobile_sdk/tn1;

    iget-object v1, p0, Lads_mobile_sdk/tn1;->a:Ljava/lang/String;

    iget-object v3, p1, Lads_mobile_sdk/tn1;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lads_mobile_sdk/tn1;->b:Ljava/lang/String;

    iget-object v3, p1, Lads_mobile_sdk/tn1;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lads_mobile_sdk/tn1;->c:I

    iget v3, p1, Lads_mobile_sdk/tn1;->c:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lads_mobile_sdk/tn1;->d:Lads_mobile_sdk/x11;

    iget-object v3, p1, Lads_mobile_sdk/tn1;->d:Lads_mobile_sdk/x11;

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lads_mobile_sdk/tn1;->e:I

    iget v3, p1, Lads_mobile_sdk/tn1;->e:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lads_mobile_sdk/tn1;->f:Lads_mobile_sdk/nm2;

    iget-object v3, p1, Lads_mobile_sdk/tn1;->f:Lads_mobile_sdk/nm2;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lads_mobile_sdk/tn1;->g:Z

    iget-boolean p1, p1, Lads_mobile_sdk/tn1;->g:Z

    if-eq v1, p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/tn1;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lads_mobile_sdk/tn1;->b:Ljava/lang/String;

    .line 2
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/ob;->a(Ljava/lang/String;II)I

    move-result v0

    .line 3
    iget v2, p0, Lads_mobile_sdk/tn1;->c:I

    .line 4
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/y1;->a(III)I

    move-result v0

    .line 5
    iget-object v2, p0, Lads_mobile_sdk/tn1;->d:Lads_mobile_sdk/x11;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Lads_mobile_sdk/tn1;->e:I

    .line 6
    invoke-static {v0, v2, v1}, Lads_mobile_sdk/y1;->a(III)I

    move-result v0

    .line 7
    iget-object v2, p0, Lads_mobile_sdk/tn1;->f:Lads_mobile_sdk/nm2;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lads_mobile_sdk/vz0;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v1, p0, Lads_mobile_sdk/tn1;->g:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/tn1;->a:Ljava/lang/String;

    iget-object v1, p0, Lads_mobile_sdk/tn1;->b:Ljava/lang/String;

    iget v2, p0, Lads_mobile_sdk/tn1;->c:I

    iget-object v3, p0, Lads_mobile_sdk/tn1;->d:Lads_mobile_sdk/x11;

    iget v4, p0, Lads_mobile_sdk/tn1;->e:I

    iget-object v5, p0, Lads_mobile_sdk/tn1;->f:Lads_mobile_sdk/nm2;

    iget-boolean v6, p0, Lads_mobile_sdk/tn1;->g:Z

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "InternalRequestTraceMeta(internalRequestId="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", gwsQueryId="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sequenceNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scarRequestType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mediationChainLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", persistentCacheRequestData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isHtmlAdResponse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
