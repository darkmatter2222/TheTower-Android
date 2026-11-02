.class public final Lads_mobile_sdk/m33;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/Boolean;

.field public g:Z

.field public h:Z


# direct methods
.method public synthetic constructor <init>()V
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 7
    const-string v1, ""

    const/4 v2, 0x0

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lads_mobile_sdk/m33;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ZZ)V
    .locals 1

    .line 8
    const-string v0, "renderId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapterName"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapterVersion"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Lads_mobile_sdk/m33;->a:Ljava/lang/String;

    .line 130
    iput p2, p0, Lads_mobile_sdk/m33;->b:I

    .line 131
    iput-object p3, p0, Lads_mobile_sdk/m33;->c:Ljava/lang/String;

    .line 132
    iput-object p4, p0, Lads_mobile_sdk/m33;->d:Ljava/lang/String;

    .line 133
    iput-object p5, p0, Lads_mobile_sdk/m33;->e:Ljava/lang/String;

    .line 134
    iput-object p6, p0, Lads_mobile_sdk/m33;->f:Ljava/lang/Boolean;

    .line 135
    iput-boolean p7, p0, Lads_mobile_sdk/m33;->g:Z

    .line 136
    iput-boolean p8, p0, Lads_mobile_sdk/m33;->h:Z

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
    instance-of v1, p1, Lads_mobile_sdk/m33;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lads_mobile_sdk/m33;

    iget-object v1, p0, Lads_mobile_sdk/m33;->a:Ljava/lang/String;

    iget-object v3, p1, Lads_mobile_sdk/m33;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lads_mobile_sdk/m33;->b:I

    iget v3, p1, Lads_mobile_sdk/m33;->b:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lads_mobile_sdk/m33;->c:Ljava/lang/String;

    iget-object v3, p1, Lads_mobile_sdk/m33;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lads_mobile_sdk/m33;->d:Ljava/lang/String;

    iget-object v3, p1, Lads_mobile_sdk/m33;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lads_mobile_sdk/m33;->e:Ljava/lang/String;

    iget-object v3, p1, Lads_mobile_sdk/m33;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lads_mobile_sdk/m33;->f:Ljava/lang/Boolean;

    iget-object v3, p1, Lads_mobile_sdk/m33;->f:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lads_mobile_sdk/m33;->g:Z

    iget-boolean v3, p1, Lads_mobile_sdk/m33;->g:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lads_mobile_sdk/m33;->h:Z

    iget-boolean p1, p1, Lads_mobile_sdk/m33;->h:Z

    if-eq v1, p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/m33;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lads_mobile_sdk/m33;->b:I

    .line 2
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/y1;->a(III)I

    move-result v0

    .line 3
    iget-object v2, p0, Lads_mobile_sdk/m33;->c:Ljava/lang/String;

    .line 4
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/ob;->a(Ljava/lang/String;II)I

    move-result v0

    .line 5
    iget-object v2, p0, Lads_mobile_sdk/m33;->d:Ljava/lang/String;

    .line 6
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/ob;->a(Ljava/lang/String;II)I

    move-result v0

    .line 7
    iget-object v2, p0, Lads_mobile_sdk/m33;->e:Ljava/lang/String;

    .line 8
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/ob;->a(Ljava/lang/String;II)I

    move-result v0

    .line 9
    iget-object v2, p0, Lads_mobile_sdk/m33;->f:Ljava/lang/Boolean;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lads_mobile_sdk/m33;->g:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    move v2, v3

    :cond_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v1, p0, Lads_mobile_sdk/m33;->h:Z

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    add-int/2addr v0, v3

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/m33;->a:Ljava/lang/String;

    iget v1, p0, Lads_mobile_sdk/m33;->b:I

    iget-object v2, p0, Lads_mobile_sdk/m33;->c:Ljava/lang/String;

    iget-object v3, p0, Lads_mobile_sdk/m33;->d:Ljava/lang/String;

    iget-object v4, p0, Lads_mobile_sdk/m33;->e:Ljava/lang/String;

    iget-object v5, p0, Lads_mobile_sdk/m33;->f:Ljava/lang/Boolean;

    iget-boolean v6, p0, Lads_mobile_sdk/m33;->g:Z

    iget-boolean v7, p0, Lads_mobile_sdk/m33;->h:Z

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "RenderTraceMeta(renderId="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ", adConfigIndex="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", renderer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", adapterName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", adapterVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", winningAd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isOfflineAd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isAsyncAdResponse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
