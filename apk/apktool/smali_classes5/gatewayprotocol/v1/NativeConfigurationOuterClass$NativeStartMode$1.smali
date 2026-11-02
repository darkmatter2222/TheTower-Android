.class Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode$1;
.super Ljava/lang/Object;
.source "NativeConfigurationOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap<",
        "Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 0

    .line 244
    invoke-virtual {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode$1;->findValueByNumber(I)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;

    move-result-object p1

    return-object p1
.end method

.method public findValueByNumber(I)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;
    .locals 0

    .line 247
    invoke-static {p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;->forNumber(I)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeStartMode;

    move-result-object p1

    return-object p1
.end method
