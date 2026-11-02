.class public final Lcom/unity3d/ads/core/domain/CommonTokenNumberProvider;
.super Ljava/lang/Object;
.source "CommonTokenNumberProvider.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/TokenNumberProvider;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\t\u0010\u000c\u001a\u00020\u0007H\u0096\u0002R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/unity3d/ads/core/domain/CommonTokenNumberProvider;",
        "Lcom/unity3d/ads/core/domain/TokenNumberProvider;",
        "sessionRepository",
        "Lcom/unity3d/ads/core/data/repository/SessionRepository;",
        "<init>",
        "(Lcom/unity3d/ads/core/data/repository/SessionRepository;)V",
        "number",
        "",
        "getNumber",
        "()I",
        "number$delegate",
        "Lkotlin/Lazy;",
        "invoke",
        "unity-ads_defaultRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final number$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$4yc9VXWNHliGBj2hQv5Kqbro7i0(Lcom/unity3d/ads/core/data/repository/SessionRepository;)I
    .locals 0

    invoke-static {p0}, Lcom/unity3d/ads/core/domain/CommonTokenNumberProvider;->number_delegate$lambda$0(Lcom/unity3d/ads/core/data/repository/SessionRepository;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/unity3d/ads/core/data/repository/SessionRepository;)V
    .locals 1

    const-string v0, "sessionRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Lcom/unity3d/ads/core/domain/CommonTokenNumberProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/unity3d/ads/core/domain/CommonTokenNumberProvider$$ExternalSyntheticLambda0;-><init>(Lcom/unity3d/ads/core/data/repository/SessionRepository;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/CommonTokenNumberProvider;->number$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getNumber()I
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/CommonTokenNumberProvider;->number$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private static final number_delegate$lambda$0(Lcom/unity3d/ads/core/data/repository/SessionRepository;)I
    .locals 0

    .line 6
    invoke-interface {p0}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->getHeaderBiddingTokenCounter()I

    move-result p0

    return p0
.end method


# virtual methods
.method public invoke()I
    .locals 1

    .line 9
    invoke-direct {p0}, Lcom/unity3d/ads/core/domain/CommonTokenNumberProvider;->getNumber()I

    move-result v0

    return v0
.end method
