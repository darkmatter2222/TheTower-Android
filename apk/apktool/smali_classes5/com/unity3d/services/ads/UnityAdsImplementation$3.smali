.class synthetic Lcom/unity3d/services/ads/UnityAdsImplementation$3;
.super Ljava/lang/Object;
.source "UnityAdsImplementation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/ads/UnityAdsImplementation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$gatewayprotocol$v1$ErrorOuterClass$PublicErrorCode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 226
    invoke-static {}, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->values()[Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/unity3d/services/ads/UnityAdsImplementation$3;->$SwitchMap$gatewayprotocol$v1$ErrorOuterClass$PublicErrorCode:[I

    :try_start_0
    sget-object v1, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_LOAD_NO_FILL:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    invoke-virtual {v1}, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/unity3d/services/ads/UnityAdsImplementation$3;->$SwitchMap$gatewayprotocol$v1$ErrorOuterClass$PublicErrorCode:[I

    sget-object v1, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_TIMEOUT:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    invoke-virtual {v1}, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/unity3d/services/ads/UnityAdsImplementation$3;->$SwitchMap$gatewayprotocol$v1$ErrorOuterClass$PublicErrorCode:[I

    sget-object v1, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_LOAD_NOT_INITIALIZED:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    invoke-virtual {v1}, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
