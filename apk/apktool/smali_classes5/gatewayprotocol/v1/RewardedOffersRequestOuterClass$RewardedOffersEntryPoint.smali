.class public final enum Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;
.super Ljava/lang/Enum;
.source "RewardedOffersRequestOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/RewardedOffersRequestOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RewardedOffersEntryPoint"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint$RewardedOffersEntryPointVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

.field public static final enum REWARDED_OFFERS_ENTRY_POINT_BRIDGE:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

.field public static final REWARDED_OFFERS_ENTRY_POINT_BRIDGE_VALUE:I = 0x1

.field public static final enum REWARDED_OFFERS_ENTRY_POINT_OFFERWALL:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

.field public static final REWARDED_OFFERS_ENTRY_POINT_OFFERWALL_VALUE:I = 0x2

.field public static final enum REWARDED_OFFERS_ENTRY_POINT_UNSPECIFIED:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

.field public static final REWARDED_OFFERS_ENTRY_POINT_UNSPECIFIED_VALUE:I

.field public static final enum UNRECOGNIZED:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;
    .locals 4

    .line 22
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;->REWARDED_OFFERS_ENTRY_POINT_UNSPECIFIED:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

    sget-object v1, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;->REWARDED_OFFERS_ENTRY_POINT_BRIDGE:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

    sget-object v2, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;->REWARDED_OFFERS_ENTRY_POINT_OFFERWALL:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

    sget-object v3, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;->UNRECOGNIZED:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

    filled-new-array {v0, v1, v2, v3}, [Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 27
    new-instance v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

    const-string v1, "REWARDED_OFFERS_ENTRY_POINT_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;->REWARDED_OFFERS_ENTRY_POINT_UNSPECIFIED:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

    .line 31
    new-instance v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

    const-string v1, "REWARDED_OFFERS_ENTRY_POINT_BRIDGE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;->REWARDED_OFFERS_ENTRY_POINT_BRIDGE:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

    .line 35
    new-instance v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

    const-string v1, "REWARDED_OFFERS_ENTRY_POINT_OFFERWALL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;->REWARDED_OFFERS_ENTRY_POINT_OFFERWALL:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

    .line 36
    new-instance v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

    const/4 v1, 0x3

    const/4 v2, -0x1

    const-string v3, "UNRECOGNIZED"

    invoke-direct {v0, v3, v1, v2}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;->UNRECOGNIZED:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

    .line 22
    invoke-static {}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;->$values()[Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

    move-result-object v0

    sput-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;->$VALUES:[Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

    .line 86
    new-instance v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint$1;

    invoke-direct {v0}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint$1;-><init>()V

    sput-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 110
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 111
    iput p3, p0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;->value:I

    return-void
.end method

.method public static forNumber(I)Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 76
    :cond_0
    sget-object p0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;->REWARDED_OFFERS_ENTRY_POINT_OFFERWALL:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

    return-object p0

    .line 75
    :cond_1
    sget-object p0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;->REWARDED_OFFERS_ENTRY_POINT_BRIDGE:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

    return-object p0

    .line 74
    :cond_2
    sget-object p0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;->REWARDED_OFFERS_ENTRY_POINT_UNSPECIFIED:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;",
            ">;"
        }
    .end annotation

    .line 83
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 96
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint$RewardedOffersEntryPointVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 69
    invoke-static {p0}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;->forNumber(I)Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;
    .locals 1

    .line 22
    const-class v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

    return-object p0
.end method

.method public static values()[Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;
    .locals 1

    .line 22
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;->$VALUES:[Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

    invoke-virtual {v0}, [Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    .line 55
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;->UNRECOGNIZED:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

    if-eq p0, v0, :cond_0

    .line 59
    iget v0, p0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;->value:I

    return v0

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
