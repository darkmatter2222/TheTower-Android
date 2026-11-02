.class public final Lgatewayprotocol/v1/PiiKt$Dsl;
.super Ljava/lang/Object;
.source "PiiKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/PiiKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/PiiKt$Dsl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 \'2\u00020\u0001:\u0001\'B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H\u0001J\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0014\u001a\u00020\u0010J\u0006\u0010\u0018\u001a\u00020\u0010J\u0006\u0010\u001f\u001a\u00020\u0010J\u0006\u0010 \u001a\u00020!J\u0006\u0010%\u001a\u00020\u0010J\u0006\u0010&\u001a\u00020!R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR$\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0012\u0010\u000c\"\u0004\u0008\u0013\u0010\u000eR$\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0016\u0010\u000c\"\u0004\u0008\u0017\u0010\u000eR$\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0008\u001a\u00020\u00198G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR$\u0010\"\u001a\u00020\u00192\u0006\u0010\u0008\u001a\u00020\u00198G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008#\u0010\u001c\"\u0004\u0008$\u0010\u001e\u00a8\u0006("
    }
    d2 = {
        "Lgatewayprotocol/v1/PiiKt$Dsl;",
        "",
        "_builder",
        "Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;",
        "<init>",
        "(Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;)V",
        "_build",
        "Lgatewayprotocol/v1/PiiOuterClass$Pii;",
        "value",
        "Lcom/google/protobuf/ByteString;",
        "advertisingId",
        "getAdvertisingId",
        "()Lcom/google/protobuf/ByteString;",
        "setAdvertisingId",
        "(Lcom/google/protobuf/ByteString;)V",
        "clearAdvertisingId",
        "",
        "vendorId",
        "getVendorId",
        "setVendorId",
        "clearVendorId",
        "openAdvertisingTrackingId",
        "getOpenAdvertisingTrackingId",
        "setOpenAdvertisingTrackingId",
        "clearOpenAdvertisingTrackingId",
        "",
        "fid",
        "getFid",
        "()Ljava/lang/String;",
        "setFid",
        "(Ljava/lang/String;)V",
        "clearFid",
        "hasFid",
        "",
        "appsetId",
        "getAppsetId",
        "setAppsetId",
        "clearAppsetId",
        "hasAppsetId",
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
.field public static final Companion:Lgatewayprotocol/v1/PiiKt$Dsl$Companion;


# instance fields
.field private final _builder:Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lgatewayprotocol/v1/PiiKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgatewayprotocol/v1/PiiKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgatewayprotocol/v1/PiiKt$Dsl;->Companion:Lgatewayprotocol/v1/PiiKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lgatewayprotocol/v1/PiiKt$Dsl;->_builder:Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lgatewayprotocol/v1/PiiKt$Dsl;-><init>(Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/PiiOuterClass$Pii;
    .locals 2

    .line 32
    iget-object v0, p0, Lgatewayprotocol/v1/PiiKt$Dsl;->_builder:Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    return-object v0
.end method

.method public final clearAdvertisingId()V
    .locals 1

    .line 56
    iget-object v0, p0, Lgatewayprotocol/v1/PiiKt$Dsl;->_builder:Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->clearAdvertisingId()Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    return-void
.end method

.method public final clearAppsetId()V
    .locals 1

    .line 167
    iget-object v0, p0, Lgatewayprotocol/v1/PiiKt$Dsl;->_builder:Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->clearAppsetId()Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    return-void
.end method

.method public final clearFid()V
    .locals 1

    .line 131
    iget-object v0, p0, Lgatewayprotocol/v1/PiiKt$Dsl;->_builder:Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->clearFid()Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    return-void
.end method

.method public final clearOpenAdvertisingTrackingId()V
    .locals 1

    .line 106
    iget-object v0, p0, Lgatewayprotocol/v1/PiiKt$Dsl;->_builder:Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->clearOpenAdvertisingTrackingId()Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    return-void
.end method

.method public final clearVendorId()V
    .locals 1

    .line 81
    iget-object v0, p0, Lgatewayprotocol/v1/PiiKt$Dsl;->_builder:Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->clearVendorId()Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    return-void
.end method

.method public final getAdvertisingId()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 43
    iget-object v0, p0, Lgatewayprotocol/v1/PiiKt$Dsl;->_builder:Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->getAdvertisingId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    const-string v1, "getAdvertisingId(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getAppsetId()Ljava/lang/String;
    .locals 2

    .line 154
    iget-object v0, p0, Lgatewayprotocol/v1/PiiKt$Dsl;->_builder:Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->getAppsetId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getAppsetId(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getFid()Ljava/lang/String;
    .locals 2

    .line 118
    iget-object v0, p0, Lgatewayprotocol/v1/PiiKt$Dsl;->_builder:Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->getFid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getFid(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getOpenAdvertisingTrackingId()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 93
    iget-object v0, p0, Lgatewayprotocol/v1/PiiKt$Dsl;->_builder:Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->getOpenAdvertisingTrackingId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    const-string v1, "getOpenAdvertisingTrackingId(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getVendorId()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 68
    iget-object v0, p0, Lgatewayprotocol/v1/PiiKt$Dsl;->_builder:Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->getVendorId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    const-string v1, "getVendorId(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final hasAppsetId()Z
    .locals 1

    .line 178
    iget-object v0, p0, Lgatewayprotocol/v1/PiiKt$Dsl;->_builder:Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->hasAppsetId()Z

    move-result v0

    return v0
.end method

.method public final hasFid()Z
    .locals 1

    .line 142
    iget-object v0, p0, Lgatewayprotocol/v1/PiiKt$Dsl;->_builder:Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->hasFid()Z

    move-result v0

    return v0
.end method

.method public final setAdvertisingId(Lcom/google/protobuf/ByteString;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lgatewayprotocol/v1/PiiKt$Dsl;->_builder:Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->setAdvertisingId(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    return-void
.end method

.method public final setAppsetId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lgatewayprotocol/v1/PiiKt$Dsl;->_builder:Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->setAppsetId(Ljava/lang/String;)Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    return-void
.end method

.method public final setFid(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lgatewayprotocol/v1/PiiKt$Dsl;->_builder:Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->setFid(Ljava/lang/String;)Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    return-void
.end method

.method public final setOpenAdvertisingTrackingId(Lcom/google/protobuf/ByteString;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lgatewayprotocol/v1/PiiKt$Dsl;->_builder:Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->setOpenAdvertisingTrackingId(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    return-void
.end method

.method public final setVendorId(Lcom/google/protobuf/ByteString;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lgatewayprotocol/v1/PiiKt$Dsl;->_builder:Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->setVendorId(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    return-void
.end method
