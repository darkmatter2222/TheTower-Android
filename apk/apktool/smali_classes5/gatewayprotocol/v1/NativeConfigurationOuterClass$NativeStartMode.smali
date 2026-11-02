.class public final enum Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;
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
    name = "NativeStartMode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode$NativeStartModeVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;

.field public static final enum NATIVE_START_MODE_DRY_RUN_ON_DISPLAY:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;

.field public static final NATIVE_START_MODE_DRY_RUN_ON_DISPLAY_VALUE:I = 0x2

.field public static final enum NATIVE_START_MODE_DRY_RUN_ON_SHOW:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;

.field public static final NATIVE_START_MODE_DRY_RUN_ON_SHOW_VALUE:I = 0x1

.field public static final enum NATIVE_START_MODE_ON_DISPLAY:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;

.field public static final NATIVE_START_MODE_ON_DISPLAY_VALUE:I = 0x4

.field public static final enum NATIVE_START_MODE_ON_SHOW:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;

.field public static final NATIVE_START_MODE_ON_SHOW_VALUE:I = 0x3

.field public static final enum NATIVE_START_MODE_UNSPECIFIED:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;

.field public static final NATIVE_START_MODE_UNSPECIFIED_VALUE:I

.field public static final enum UNRECOGNIZED:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;
    .locals 6

    .line 121
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;->NATIVE_START_MODE_UNSPECIFIED:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;

    sget-object v1, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;->NATIVE_START_MODE_DRY_RUN_ON_SHOW:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;

    sget-object v2, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;->NATIVE_START_MODE_DRY_RUN_ON_DISPLAY:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;

    sget-object v3, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;->NATIVE_START_MODE_ON_SHOW:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;

    sget-object v4, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;->NATIVE_START_MODE_ON_DISPLAY:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;

    sget-object v5, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;->UNRECOGNIZED:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;

    filled-new-array/range {v0 .. v5}, [Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 130
    new-instance v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;

    const-string v1, "NATIVE_START_MODE_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;->NATIVE_START_MODE_UNSPECIFIED:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;

    .line 138
    new-instance v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;

    const-string v1, "NATIVE_START_MODE_DRY_RUN_ON_SHOW"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;->NATIVE_START_MODE_DRY_RUN_ON_SHOW:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;

    .line 146
    new-instance v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;

    const-string v1, "NATIVE_START_MODE_DRY_RUN_ON_DISPLAY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;->NATIVE_START_MODE_DRY_RUN_ON_DISPLAY:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;

    .line 154
    new-instance v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;

    const-string v1, "NATIVE_START_MODE_ON_SHOW"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;->NATIVE_START_MODE_ON_SHOW:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;

    .line 162
    new-instance v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;

    const-string v1, "NATIVE_START_MODE_ON_DISPLAY"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;->NATIVE_START_MODE_ON_DISPLAY:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;

    .line 163
    new-instance v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;

    const/4 v1, 0x5

    const/4 v2, -0x1

    const-string v3, "UNRECOGNIZED"

    invoke-direct {v0, v3, v1, v2}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;->UNRECOGNIZED:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;

    .line 121
    invoke-static {}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;->$values()[Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;

    move-result-object v0

    sput-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;->$VALUES:[Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;

    .line 243
    new-instance v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode$1;

    invoke-direct {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode$1;-><init>()V

    sput-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 267
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 268
    iput p3, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;->value:I

    return-void
.end method

.method public static forNumber(I)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 233
    :cond_0
    sget-object p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;->NATIVE_START_MODE_ON_DISPLAY:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;

    return-object p0

    .line 232
    :cond_1
    sget-object p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;->NATIVE_START_MODE_ON_SHOW:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;

    return-object p0

    .line 231
    :cond_2
    sget-object p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;->NATIVE_START_MODE_DRY_RUN_ON_DISPLAY:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;

    return-object p0

    .line 230
    :cond_3
    sget-object p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;->NATIVE_START_MODE_DRY_RUN_ON_SHOW:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;

    return-object p0

    .line 229
    :cond_4
    sget-object p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;->NATIVE_START_MODE_UNSPECIFIED:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;",
            ">;"
        }
    .end annotation

    .line 240
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 253
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode$NativeStartModeVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 224
    invoke-static {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;->forNumber(I)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;
    .locals 1

    .line 121
    const-class v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;

    return-object p0
.end method

.method public static values()[Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;
    .locals 1

    .line 121
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;->$VALUES:[Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;

    invoke-virtual {v0}, [Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    .line 210
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;->UNRECOGNIZED:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;

    if-eq p0, v0, :cond_0

    .line 214
    iget v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;->value:I

    return v0

    .line 211
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
