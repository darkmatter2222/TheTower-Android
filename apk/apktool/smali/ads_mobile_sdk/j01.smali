.class public final Lads_mobile_sdk/j01;
.super Lads_mobile_sdk/i01;
.source "SourceFile"


# instance fields
.field public final c:Ljava/lang/Throwable;

.field public final d:Lads_mobile_sdk/kk1;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "internalErrorCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p2, v0}, Lads_mobile_sdk/i01;-><init>(Lads_mobile_sdk/kk1;I)V

    .line 56
    iput-object p1, p0, Lads_mobile_sdk/j01;->c:Ljava/lang/Throwable;

    .line 57
    iput-object p2, p0, Lads_mobile_sdk/j01;->d:Lads_mobile_sdk/kk1;

    .line 58
    iput-object p3, p0, Lads_mobile_sdk/j01;->e:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V
    .locals 1

    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_0

    .line 60
    sget-object p2, Lads_mobile_sdk/kk1;->a:Lads_mobile_sdk/kk1;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 61
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Lads_mobile_sdk/kk1;
    .locals 1

    .line 53
    iget-object v0, p0, Lads_mobile_sdk/j01;->d:Lads_mobile_sdk/kk1;

    return-object v0
.end method

.method public final b()Ljava/lang/Throwable;
    .locals 1

    .line 56
    iget-object v0, p0, Lads_mobile_sdk/j01;->c:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final c()Ljava/lang/Throwable;
    .locals 1

    .line 52
    iget-object v0, p0, Lads_mobile_sdk/j01;->c:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lads_mobile_sdk/j01;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lads_mobile_sdk/j01;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lads_mobile_sdk/j01;

    iget-object v1, p0, Lads_mobile_sdk/j01;->c:Ljava/lang/Throwable;

    iget-object v3, p1, Lads_mobile_sdk/j01;->c:Ljava/lang/Throwable;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lads_mobile_sdk/j01;->d:Lads_mobile_sdk/kk1;

    iget-object v3, p1, Lads_mobile_sdk/j01;->d:Lads_mobile_sdk/kk1;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lads_mobile_sdk/j01;->e:Ljava/lang/String;

    iget-object p1, p1, Lads_mobile_sdk/j01;->e:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/j01;->c:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lads_mobile_sdk/j01;->d:Lads_mobile_sdk/kk1;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lads_mobile_sdk/j01;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/j01;->c:Ljava/lang/Throwable;

    iget-object v1, p0, Lads_mobile_sdk/j01;->d:Lads_mobile_sdk/kk1;

    iget-object v2, p0, Lads_mobile_sdk/j01;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ExceptionError(exception="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", internalErrorCode="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
