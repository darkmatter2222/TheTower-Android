.class public final Lcom/ironsource/y9$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/y9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ironsource/y9$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/16 v0, 0x1b

    .line 2
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "AppLovin"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "APS"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "BidMachine"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Bigo"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Chartboost"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Fyber"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "AdMob"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "HyprMX"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "InMobi"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "IronSource"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Vungle"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Line"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Facebook"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Mintegral"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "MobileFuse"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Moloco"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "MyTarget"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Ogury"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Pangle"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "PubMatic"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Smaato"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "SuperAwesome"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "UnityAds"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Verve"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Voodoo"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Yandex"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "YSO"

    aput-object v2, v0, v1

    .line 3
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcom/ironsource/z9;->b(Landroid/content/Context;)V

    return-void
.end method
