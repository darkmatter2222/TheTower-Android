.class public final enum Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;
.super Ljava/lang/Enum;
.source "AdMobAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adapters/admob/AdMobAdapter$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InitState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "INIT_STATE_NONE",
        "INIT_STATE_IN_PROGRESS",
        "INIT_STATE_SUCCESS",
        "INIT_STATE_FAILED",
        "admobadapter_release"
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

.field private static final synthetic $VALUES:[Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;

.field public static final enum INIT_STATE_FAILED:Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;

.field public static final enum INIT_STATE_IN_PROGRESS:Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;

.field public static final enum INIT_STATE_NONE:Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;

.field public static final enum INIT_STATE_SUCCESS:Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;


# direct methods
.method private static final synthetic $values()[Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;
    .locals 4

    sget-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;->INIT_STATE_NONE:Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;

    sget-object v1, Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;->INIT_STATE_IN_PROGRESS:Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;

    sget-object v2, Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;->INIT_STATE_SUCCESS:Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;

    sget-object v3, Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;->INIT_STATE_FAILED:Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;

    filled-new-array {v0, v1, v2, v3}, [Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 53
    new-instance v0, Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;

    const-string v1, "INIT_STATE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;->INIT_STATE_NONE:Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;

    .line 54
    new-instance v0, Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;

    const-string v1, "INIT_STATE_IN_PROGRESS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;->INIT_STATE_IN_PROGRESS:Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;

    .line 55
    new-instance v0, Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;

    const-string v1, "INIT_STATE_SUCCESS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;->INIT_STATE_SUCCESS:Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;

    .line 56
    new-instance v0, Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;

    const-string v1, "INIT_STATE_FAILED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;->INIT_STATE_FAILED:Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;

    invoke-static {}, Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;->$values()[Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;->$VALUES:[Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;
    .locals 1

    const-class v0, Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 57
    check-cast p0, Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;
    .locals 1

    sget-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;->$VALUES:[Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 57
    check-cast v0, [Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;

    return-object v0
.end method
