.class public final enum Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;
.super Ljava/lang/Enum;
.source "AdRevenueAdFormat.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\t\u0008\u0086\u0081\u0002\u0018\u0000 \t2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\tB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "BANNER",
        "MREC",
        "INTERSTITIAL",
        "REWARDED",
        "NATIVE",
        "Companion",
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


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

.field public static final enum BANNER:Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

.field public static final Companion:Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat$Companion;

.field public static final enum INTERSTITIAL:Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

.field public static final enum MREC:Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

.field public static final enum NATIVE:Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

.field public static final enum REWARDED:Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;


# direct methods
.method private static final synthetic $values()[Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;
    .locals 5

    sget-object v0, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;->BANNER:Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    sget-object v1, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;->MREC:Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    sget-object v2, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;->INTERSTITIAL:Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    sget-object v3, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;->REWARDED:Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    sget-object v4, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;->NATIVE:Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 7
    new-instance v0, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    const-string v1, "BANNER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;->BANNER:Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    .line 8
    new-instance v0, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    const-string v1, "MREC"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;->MREC:Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    .line 9
    new-instance v0, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    const-string v1, "INTERSTITIAL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;->INTERSTITIAL:Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    .line 10
    new-instance v0, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    const-string v1, "REWARDED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;->REWARDED:Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    .line 11
    new-instance v0, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    const-string v1, "NATIVE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;->NATIVE:Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    invoke-static {}, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;->$values()[Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;->$VALUES:[Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;->Companion:Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;
    .locals 1

    const-class v0, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 19
    check-cast p0, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;
    .locals 1

    sget-object v0, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;->$VALUES:[Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 19
    check-cast v0, [Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    return-object v0
.end method
