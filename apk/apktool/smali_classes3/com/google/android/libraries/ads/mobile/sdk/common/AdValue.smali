.class public final Lcom/google/android/libraries/ads/mobile/sdk/common/AdValue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000e\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\u000c\u001a\u00020\u0005\u0012\u0006\u0010\r\u001a\u00020\u0008\u00a2\u0006\u0004\u0008!\u0010\"J\u0010\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\u0008H\u00c6\u0003\u00a2\u0006\u0004\u0008\t\u0010\nJ.\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00052\u0008\u0008\u0002\u0010\r\u001a\u00020\u0008H\u00c6\u0001\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u0008H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0010\u0010\nJ\u0010\u0010\u0012\u001a\u00020\u0011H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u001a\u0010\u0016\u001a\u00020\u00152\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0016\u0010\u0017R\u0017\u0010\u000b\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u0004R\u0017\u0010\u000c\u001a\u00020\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u0007R\u0017\u0010\r\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010\n\u00a8\u0006#"
    }
    d2 = {
        "Lcom/google/android/libraries/ads/mobile/sdk/common/AdValue;",
        "",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;",
        "component1",
        "()Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;",
        "",
        "component2",
        "()J",
        "",
        "component3",
        "()Ljava/lang/String;",
        "precisionType",
        "valueMicros",
        "currencyCode",
        "copy",
        "(Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;JLjava/lang/String;)Lcom/google/android/libraries/ads/mobile/sdk/common/AdValue;",
        "toString",
        "",
        "hashCode",
        "()I",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "a",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;",
        "getPrecisionType",
        "b",
        "J",
        "getValueMicros",
        "c",
        "Ljava/lang/String;",
        "getCurrencyCode",
        "<init>",
        "(Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;JLjava/lang/String;)V",
        "ads-mobile-sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;

.field private final b:J

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;JLjava/lang/String;)V
    .locals 1

    const-string v0, "precisionType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currencyCode"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdValue;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;

    .line 3
    iput-wide p2, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdValue;->b:J

    .line 4
    iput-object p4, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdValue;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final component1()Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdValue;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;

    return-object v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdValue;->b:J

    return-wide v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdValue;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;JLjava/lang/String;)Lcom/google/android/libraries/ads/mobile/sdk/common/AdValue;
    .locals 1

    const-string v0, "precisionType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currencyCode"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdValue;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdValue;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;JLjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/libraries/ads/mobile/sdk/common/AdValue;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/libraries/ads/mobile/sdk/common/AdValue;

    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdValue;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/common/AdValue;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdValue;->b:J

    iget-wide v5, p1, Lcom/google/android/libraries/ads/mobile/sdk/common/AdValue;->b:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdValue;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/libraries/ads/mobile/sdk/common/AdValue;->c:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getCurrencyCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdValue;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrecisionType()Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdValue;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;

    return-object v0
.end method

.method public final getValueMicros()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdValue;->b:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdValue;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdValue;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdValue;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdValue;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;

    iget-wide v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdValue;->b:J

    iget-object v3, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdValue;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "AdValue(precisionType="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", valueMicros="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currencyCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
