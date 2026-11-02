.class public final enum Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$PlatformSpecificCase;
.super Ljava/lang/Enum;
.source "InitializationRequestOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlatformSpecificCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$PlatformSpecificCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$PlatformSpecificCase;

.field public static final enum ANDROID:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$PlatformSpecificCase;

.field public static final enum IOS:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$PlatformSpecificCase;

.field public static final enum PLATFORMSPECIFIC_NOT_SET:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$PlatformSpecificCase;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$PlatformSpecificCase;
    .locals 3

    .line 7551
    sget-object v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$PlatformSpecificCase;->ANDROID:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$PlatformSpecificCase;

    sget-object v1, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$PlatformSpecificCase;->IOS:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$PlatformSpecificCase;

    sget-object v2, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$PlatformSpecificCase;->PLATFORMSPECIFIC_NOT_SET:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$PlatformSpecificCase;

    filled-new-array {v0, v1, v2}, [Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$PlatformSpecificCase;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 7552
    new-instance v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$PlatformSpecificCase;

    const-string v1, "ANDROID"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$PlatformSpecificCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$PlatformSpecificCase;->ANDROID:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$PlatformSpecificCase;

    .line 7553
    new-instance v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$PlatformSpecificCase;

    const-string v1, "IOS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$PlatformSpecificCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$PlatformSpecificCase;->IOS:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$PlatformSpecificCase;

    .line 7554
    new-instance v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$PlatformSpecificCase;

    const-string v1, "PLATFORMSPECIFIC_NOT_SET"

    invoke-direct {v0, v1, v4, v2}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$PlatformSpecificCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$PlatformSpecificCase;->PLATFORMSPECIFIC_NOT_SET:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$PlatformSpecificCase;

    .line 7551
    invoke-static {}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$PlatformSpecificCase;->$values()[Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$PlatformSpecificCase;

    move-result-object v0

    sput-object v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$PlatformSpecificCase;->$VALUES:[Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$PlatformSpecificCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 7556
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7557
    iput p3, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$PlatformSpecificCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$PlatformSpecificCase;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 7570
    :cond_0
    sget-object p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$PlatformSpecificCase;->IOS:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$PlatformSpecificCase;

    return-object p0

    .line 7569
    :cond_1
    sget-object p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$PlatformSpecificCase;->ANDROID:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$PlatformSpecificCase;

    return-object p0

    .line 7571
    :cond_2
    sget-object p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$PlatformSpecificCase;->PLATFORMSPECIFIC_NOT_SET:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$PlatformSpecificCase;

    return-object p0
.end method

.method public static valueOf(I)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$PlatformSpecificCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7564
    invoke-static {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$PlatformSpecificCase;->forNumber(I)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$PlatformSpecificCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$PlatformSpecificCase;
    .locals 1

    .line 7551
    const-class v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$PlatformSpecificCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$PlatformSpecificCase;

    return-object p0
.end method

.method public static values()[Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$PlatformSpecificCase;
    .locals 1

    .line 7551
    sget-object v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$PlatformSpecificCase;->$VALUES:[Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$PlatformSpecificCase;

    invoke-virtual {v0}, [Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$PlatformSpecificCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$PlatformSpecificCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 7576
    iget v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$PlatformSpecificCase;->value:I

    return v0
.end method
