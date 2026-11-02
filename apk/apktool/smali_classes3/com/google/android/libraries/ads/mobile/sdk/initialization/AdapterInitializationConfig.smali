.class public final Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig$Builder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\t\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0019R\u001d\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007R\u001d\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u0005\u001a\u0004\u0008\u000b\u0010\u0007R\u001d\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u0005\u001a\u0004\u0008\u000e\u0010\u0007R\u001d\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0005\u001a\u0004\u0008\u0011\u0010\u0007R\u0017\u0010\u0018\u001a\u00020\u00138\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;",
        "",
        "",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/AdFormat;",
        "b",
        "Ljava/util/Set;",
        "getAllowedAdFormats",
        "()Ljava/util/Set;",
        "allowedAdFormats",
        "",
        "c",
        "getAllowedAdUnitIds",
        "allowedAdUnitIds",
        "d",
        "getAllowedAdapterClasses",
        "allowedAdapterClasses",
        "e",
        "getExcludedAdapterClasses",
        "excludedAdapterClasses",
        "",
        "f",
        "J",
        "getInitializationTimeoutMs",
        "()J",
        "initializationTimeoutMs",
        "Builder",
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
.field private final a:J

.field private final b:Ljava/util/Set;

.field private final c:Ljava/util/Set;

.field private final d:Ljava/util/Set;

.field private final e:Ljava/util/Set;

.field private final f:J


# direct methods
.method private constructor <init>(JLjava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-wide p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;->a:J

    .line 6
    iput-object p3, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;->b:Ljava/util/Set;

    .line 7
    iput-object p4, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;->c:Ljava/util/Set;

    .line 8
    iput-object p5, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;->d:Ljava/util/Set;

    .line 9
    iput-object p6, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;->e:Ljava/util/Set;

    .line 12
    invoke-static {p1, p2}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;->f:J

    return-void
.end method

.method public synthetic constructor <init>(JLjava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;I)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;-><init>(JLjava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;->a:J

    return-wide v0
.end method

.method public final getAllowedAdFormats()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/libraries/ads/mobile/sdk/common/AdFormat;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;->b:Ljava/util/Set;

    return-object v0
.end method

.method public final getAllowedAdUnitIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;->c:Ljava/util/Set;

    return-object v0
.end method

.method public final getAllowedAdapterClasses()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;->d:Ljava/util/Set;

    return-object v0
.end method

.method public final getExcludedAdapterClasses()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;->e:Ljava/util/Set;

    return-object v0
.end method

.method public final getInitializationTimeoutMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;->f:J

    return-wide v0
.end method
