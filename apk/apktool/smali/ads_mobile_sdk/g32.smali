.class public final Lads_mobile_sdk/g32;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/gson/JsonObject;

.field public final b:Lcom/google/gson/JsonObject;

.field public final c:Lcom/google/gson/JsonObject;

.field public final d:Lcom/google/gson/JsonObject;

.field public final e:Lcom/google/gson/JsonObject;


# direct methods
.method public constructor <init>(Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;)V
    .locals 1

    .line 1
    const-string v0, "assetViewsSignal"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdViewSignal"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scrollViewSignal"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lockScreenSignal"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adScreenSignal"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 563
    iput-object p1, p0, Lads_mobile_sdk/g32;->a:Lcom/google/gson/JsonObject;

    .line 564
    iput-object p2, p0, Lads_mobile_sdk/g32;->b:Lcom/google/gson/JsonObject;

    .line 565
    iput-object p3, p0, Lads_mobile_sdk/g32;->c:Lcom/google/gson/JsonObject;

    .line 566
    iput-object p4, p0, Lads_mobile_sdk/g32;->d:Lcom/google/gson/JsonObject;

    .line 567
    iput-object p5, p0, Lads_mobile_sdk/g32;->e:Lcom/google/gson/JsonObject;

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
    instance-of v1, p1, Lads_mobile_sdk/g32;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lads_mobile_sdk/g32;

    iget-object v1, p0, Lads_mobile_sdk/g32;->a:Lcom/google/gson/JsonObject;

    iget-object v3, p1, Lads_mobile_sdk/g32;->a:Lcom/google/gson/JsonObject;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lads_mobile_sdk/g32;->b:Lcom/google/gson/JsonObject;

    iget-object v3, p1, Lads_mobile_sdk/g32;->b:Lcom/google/gson/JsonObject;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lads_mobile_sdk/g32;->c:Lcom/google/gson/JsonObject;

    iget-object v3, p1, Lads_mobile_sdk/g32;->c:Lcom/google/gson/JsonObject;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lads_mobile_sdk/g32;->d:Lcom/google/gson/JsonObject;

    iget-object v3, p1, Lads_mobile_sdk/g32;->d:Lcom/google/gson/JsonObject;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lads_mobile_sdk/g32;->e:Lcom/google/gson/JsonObject;

    iget-object p1, p1, Lads_mobile_sdk/g32;->e:Lcom/google/gson/JsonObject;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/g32;->a:Lcom/google/gson/JsonObject;

    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lads_mobile_sdk/g32;->b:Lcom/google/gson/JsonObject;

    .line 2
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/z1;->a(Lcom/google/gson/JsonObject;II)I

    move-result v0

    .line 3
    iget-object v2, p0, Lads_mobile_sdk/g32;->c:Lcom/google/gson/JsonObject;

    .line 4
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/z1;->a(Lcom/google/gson/JsonObject;II)I

    move-result v0

    .line 5
    iget-object v2, p0, Lads_mobile_sdk/g32;->d:Lcom/google/gson/JsonObject;

    .line 6
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/z1;->a(Lcom/google/gson/JsonObject;II)I

    move-result v0

    .line 7
    iget-object v1, p0, Lads_mobile_sdk/g32;->e:Lcom/google/gson/JsonObject;

    invoke-virtual {v1}, Lcom/google/gson/JsonObject;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/g32;->a:Lcom/google/gson/JsonObject;

    iget-object v1, p0, Lads_mobile_sdk/g32;->b:Lcom/google/gson/JsonObject;

    iget-object v2, p0, Lads_mobile_sdk/g32;->c:Lcom/google/gson/JsonObject;

    iget-object v3, p0, Lads_mobile_sdk/g32;->d:Lcom/google/gson/JsonObject;

    iget-object v4, p0, Lads_mobile_sdk/g32;->e:Lcom/google/gson/JsonObject;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "NativeAdSignals(assetViewsSignal="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", nativeAdViewSignal="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scrollViewSignal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lockScreenSignal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", adScreenSignal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
