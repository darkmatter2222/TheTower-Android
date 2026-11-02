.class public final enum Lcom/unity3d/ironsourceads/IronSourceAds$AdFormat;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ironsourceads/IronSourceAds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/unity3d/ironsourceads/IronSourceAds$AdFormat;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BANNER:Lcom/unity3d/ironsourceads/IronSourceAds$AdFormat;

.field public static final enum INTERSTITIAL:Lcom/unity3d/ironsourceads/IronSourceAds$AdFormat;

.field public static final enum REWARDED:Lcom/unity3d/ironsourceads/IronSourceAds$AdFormat;

.field private static final synthetic b:[Lcom/unity3d/ironsourceads/IronSourceAds$AdFormat;

.field private static final synthetic c:Lkotlin/enums/EnumEntries;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/unity3d/ironsourceads/IronSourceAds$AdFormat;

    const/4 v1, 0x0

    const-string v2, "Banner"

    const-string v3, "BANNER"

    invoke-direct {v0, v3, v1, v2}, Lcom/unity3d/ironsourceads/IronSourceAds$AdFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/unity3d/ironsourceads/IronSourceAds$AdFormat;->BANNER:Lcom/unity3d/ironsourceads/IronSourceAds$AdFormat;

    .line 2
    new-instance v0, Lcom/unity3d/ironsourceads/IronSourceAds$AdFormat;

    const/4 v1, 0x1

    const-string v2, "Interstitial"

    const-string v3, "INTERSTITIAL"

    invoke-direct {v0, v3, v1, v2}, Lcom/unity3d/ironsourceads/IronSourceAds$AdFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/unity3d/ironsourceads/IronSourceAds$AdFormat;->INTERSTITIAL:Lcom/unity3d/ironsourceads/IronSourceAds$AdFormat;

    .line 3
    new-instance v0, Lcom/unity3d/ironsourceads/IronSourceAds$AdFormat;

    const/4 v1, 0x2

    const-string v2, "RewardedVideo"

    const-string v3, "REWARDED"

    invoke-direct {v0, v3, v1, v2}, Lcom/unity3d/ironsourceads/IronSourceAds$AdFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/unity3d/ironsourceads/IronSourceAds$AdFormat;->REWARDED:Lcom/unity3d/ironsourceads/IronSourceAds$AdFormat;

    invoke-static {}, Lcom/unity3d/ironsourceads/IronSourceAds$AdFormat;->a()[Lcom/unity3d/ironsourceads/IronSourceAds$AdFormat;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ironsourceads/IronSourceAds$AdFormat;->b:[Lcom/unity3d/ironsourceads/IronSourceAds$AdFormat;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ironsourceads/IronSourceAds$AdFormat;->c:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/unity3d/ironsourceads/IronSourceAds$AdFormat;->a:Ljava/lang/String;

    return-void
.end method

.method private static final synthetic a()[Lcom/unity3d/ironsourceads/IronSourceAds$AdFormat;
    .locals 3

    sget-object v0, Lcom/unity3d/ironsourceads/IronSourceAds$AdFormat;->BANNER:Lcom/unity3d/ironsourceads/IronSourceAds$AdFormat;

    sget-object v1, Lcom/unity3d/ironsourceads/IronSourceAds$AdFormat;->INTERSTITIAL:Lcom/unity3d/ironsourceads/IronSourceAds$AdFormat;

    sget-object v2, Lcom/unity3d/ironsourceads/IronSourceAds$AdFormat;->REWARDED:Lcom/unity3d/ironsourceads/IronSourceAds$AdFormat;

    filled-new-array {v0, v1, v2}, [Lcom/unity3d/ironsourceads/IronSourceAds$AdFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/unity3d/ironsourceads/IronSourceAds$AdFormat;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/unity3d/ironsourceads/IronSourceAds$AdFormat;->c:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/ironsourceads/IronSourceAds$AdFormat;
    .locals 1

    const-class v0, Lcom/unity3d/ironsourceads/IronSourceAds$AdFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 1
    check-cast p0, Lcom/unity3d/ironsourceads/IronSourceAds$AdFormat;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/ironsourceads/IronSourceAds$AdFormat;
    .locals 1

    sget-object v0, Lcom/unity3d/ironsourceads/IronSourceAds$AdFormat;->b:[Lcom/unity3d/ironsourceads/IronSourceAds$AdFormat;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, [Lcom/unity3d/ironsourceads/IronSourceAds$AdFormat;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/unity3d/ironsourceads/IronSourceAds$AdFormat;->a:Ljava/lang/String;

    return-object v0
.end method
