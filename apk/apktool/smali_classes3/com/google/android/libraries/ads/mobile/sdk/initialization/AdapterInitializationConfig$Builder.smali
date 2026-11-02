.class public final Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0015\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001b\u0010\t\u001a\u00020\u00002\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001b\u0010\r\u001a\u00020\u00002\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0006\u00a2\u0006\u0004\u0008\r\u0010\nJ\u001b\u0010\u000f\u001a\u00020\u00002\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0006\u00a2\u0006\u0004\u0008\u000f\u0010\nJ\u001b\u0010\u0010\u001a\u00020\u00002\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0006\u00a2\u0006\u0004\u0008\u0010\u0010\nJ\r\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig$Builder;",
        "",
        "",
        "timeout",
        "setInitializationTimeoutMs",
        "(J)Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig$Builder;",
        "",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/AdFormat;",
        "formats",
        "setAllowedAdFormats",
        "(Ljava/util/Set;)Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig$Builder;",
        "",
        "adUnitIds",
        "setAllowedAdUnitIds",
        "adapterClasses",
        "setAllowedAdapterClasses",
        "setExcludedAdapterClasses",
        "Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;",
        "build",
        "()Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;",
        "<init>",
        "()V",
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
.field private a:J

.field private b:Ljava/util/Set;

.field private c:Ljava/util/Set;

.field private d:Ljava/util/Set;

.field private e:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v0}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig$Builder;->a:J

    .line 4
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig$Builder;->b:Ljava/util/Set;

    .line 5
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig$Builder;->c:Ljava/util/Set;

    .line 6
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig$Builder;->d:Ljava/util/Set;

    .line 7
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig$Builder;->e:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;
    .locals 8

    .line 1
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;

    .line 2
    iget-wide v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig$Builder;->a:J

    .line 3
    iget-object v3, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig$Builder;->b:Ljava/util/Set;

    .line 4
    iget-object v4, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig$Builder;->c:Ljava/util/Set;

    .line 5
    iget-object v5, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig$Builder;->d:Ljava/util/Set;

    .line 6
    iget-object v6, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig$Builder;->e:Ljava/util/Set;

    const/4 v7, 0x0

    .line 7
    invoke-direct/range {v0 .. v7}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;-><init>(JLjava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;I)V

    return-object v0
.end method

.method public final setAllowedAdFormats(Ljava/util/Set;)Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/google/android/libraries/ads/mobile/sdk/common/AdFormat;",
            ">;)",
            "Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig$Builder;"
        }
    .end annotation

    const-string v0, "formats"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig$Builder;->b:Ljava/util/Set;

    return-object p0
.end method

.method public final setAllowedAdUnitIds(Ljava/util/Set;)Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig$Builder;"
        }
    .end annotation

    const-string v0, "adUnitIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig$Builder;->c:Ljava/util/Set;

    return-object p0
.end method

.method public final setAllowedAdapterClasses(Ljava/util/Set;)Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig$Builder;"
        }
    .end annotation

    const-string v0, "adapterClasses"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig$Builder;->d:Ljava/util/Set;

    return-object p0
.end method

.method public final setExcludedAdapterClasses(Ljava/util/Set;)Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig$Builder;"
        }
    .end annotation

    const-string v0, "adapterClasses"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig$Builder;->e:Ljava/util/Set;

    return-object p0
.end method

.method public final setInitializationTimeoutMs(J)Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig$Builder;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {p1, p2, v0}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig$Builder;->a:J

    return-object p0
.end method
