.class public final enum Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;
.super Ljava/lang/Enum;
.source "NativeConfigurationOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/NativeConfigurationOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FullscreenNavBarMode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode$FullscreenNavBarModeVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;

.field public static final enum FULLSCREEN_NAV_BAR_MODE_HIDDEN:Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;

.field public static final FULLSCREEN_NAV_BAR_MODE_HIDDEN_VALUE:I = 0x2

.field public static final enum FULLSCREEN_NAV_BAR_MODE_TRANSPARENT:Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;

.field public static final FULLSCREEN_NAV_BAR_MODE_TRANSPARENT_VALUE:I = 0x1

.field public static final enum FULLSCREEN_NAV_BAR_MODE_UNSPECIFIED:Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;

.field public static final FULLSCREEN_NAV_BAR_MODE_UNSPECIFIED_VALUE:I

.field public static final enum UNRECOGNIZED:Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;
    .locals 4

    .line 281
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;->FULLSCREEN_NAV_BAR_MODE_UNSPECIFIED:Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;

    sget-object v1, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;->FULLSCREEN_NAV_BAR_MODE_TRANSPARENT:Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;

    sget-object v2, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;->FULLSCREEN_NAV_BAR_MODE_HIDDEN:Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;

    sget-object v3, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;->UNRECOGNIZED:Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;

    filled-new-array {v0, v1, v2, v3}, [Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 290
    new-instance v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;

    const-string v1, "FULLSCREEN_NAV_BAR_MODE_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;->FULLSCREEN_NAV_BAR_MODE_UNSPECIFIED:Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;

    .line 298
    new-instance v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;

    const-string v1, "FULLSCREEN_NAV_BAR_MODE_TRANSPARENT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;->FULLSCREEN_NAV_BAR_MODE_TRANSPARENT:Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;

    .line 306
    new-instance v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;

    const-string v1, "FULLSCREEN_NAV_BAR_MODE_HIDDEN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;->FULLSCREEN_NAV_BAR_MODE_HIDDEN:Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;

    .line 307
    new-instance v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;

    const/4 v1, 0x3

    const/4 v2, -0x1

    const-string v3, "UNRECOGNIZED"

    invoke-direct {v0, v3, v1, v2}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;->UNRECOGNIZED:Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;

    .line 281
    invoke-static {}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;->$values()[Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;

    move-result-object v0

    sput-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;->$VALUES:[Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;

    .line 369
    new-instance v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode$1;

    invoke-direct {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode$1;-><init>()V

    sput-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 393
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 394
    iput p3, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;->value:I

    return-void
.end method

.method public static forNumber(I)Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 359
    :cond_0
    sget-object p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;->FULLSCREEN_NAV_BAR_MODE_HIDDEN:Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;

    return-object p0

    .line 358
    :cond_1
    sget-object p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;->FULLSCREEN_NAV_BAR_MODE_TRANSPARENT:Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;

    return-object p0

    .line 357
    :cond_2
    sget-object p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;->FULLSCREEN_NAV_BAR_MODE_UNSPECIFIED:Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;",
            ">;"
        }
    .end annotation

    .line 366
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 379
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode$FullscreenNavBarModeVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 352
    invoke-static {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;->forNumber(I)Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;
    .locals 1

    .line 281
    const-class v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;

    return-object p0
.end method

.method public static values()[Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;
    .locals 1

    .line 281
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;->$VALUES:[Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;

    invoke-virtual {v0}, [Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    .line 338
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;->UNRECOGNIZED:Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;

    if-eq p0, v0, :cond_0

    .line 342
    iget v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FullscreenNavBarMode;->value:I

    return v0

    .line 339
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
