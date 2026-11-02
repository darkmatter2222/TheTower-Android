.class public final Lgatewayprotocol/v1/MediationInfoKt$Dsl;
.super Ljava/lang/Object;
.source "MediationInfoKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/MediationInfoKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/MediationInfoKt$Dsl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u000c\u0008\u0007\u0018\u0000 *2\u00020\u0001:\u0001*B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H\u0001J\u0006\u0010\u0015\u001a\u00020\u0016J\u0006\u0010\u001d\u001a\u00020\u0016J\u0006\u0010\u001e\u001a\u00020\u001fJ\u0006\u0010#\u001a\u00020\u0016J\u0006\u0010$\u001a\u00020\u001fJ\u0006\u0010(\u001a\u00020\u0016J\u0006\u0010)\u001a\u00020\u001fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR$\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0008\u001a\u00020\u000f8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R$\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0008\u001a\u00020\u00178G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR$\u0010 \u001a\u00020\u00172\u0006\u0010\u0008\u001a\u00020\u00178G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008!\u0010\u001a\"\u0004\u0008\"\u0010\u001cR$\u0010%\u001a\u00020\u00172\u0006\u0010\u0008\u001a\u00020\u00178G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008&\u0010\u001a\"\u0004\u0008\'\u0010\u001c\u00a8\u0006+"
    }
    d2 = {
        "Lgatewayprotocol/v1/MediationInfoKt$Dsl;",
        "",
        "_builder",
        "Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;",
        "<init>",
        "(Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;)V",
        "_build",
        "Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;",
        "value",
        "Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;",
        "provider",
        "getProvider",
        "()Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;",
        "setProvider",
        "(Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;)V",
        "",
        "providerValue",
        "getProviderValue",
        "()I",
        "setProviderValue",
        "(I)V",
        "clearProvider",
        "",
        "",
        "customName",
        "getCustomName",
        "()Ljava/lang/String;",
        "setCustomName",
        "(Ljava/lang/String;)V",
        "clearCustomName",
        "hasCustomName",
        "",
        "version",
        "getVersion",
        "setVersion",
        "clearVersion",
        "hasVersion",
        "adapterVersion",
        "getAdapterVersion",
        "setAdapterVersion",
        "clearAdapterVersion",
        "hasAdapterVersion",
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
.field public static final Companion:Lgatewayprotocol/v1/MediationInfoKt$Dsl$Companion;


# instance fields
.field private final _builder:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lgatewayprotocol/v1/MediationInfoKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgatewayprotocol/v1/MediationInfoKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgatewayprotocol/v1/MediationInfoKt$Dsl;->Companion:Lgatewayprotocol/v1/MediationInfoKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lgatewayprotocol/v1/MediationInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lgatewayprotocol/v1/MediationInfoKt$Dsl;-><init>(Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;
    .locals 2

    .line 28
    iget-object v0, p0, Lgatewayprotocol/v1/MediationInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    return-object v0
.end method

.method public final clearAdapterVersion()V
    .locals 1

    .line 156
    iget-object v0, p0, Lgatewayprotocol/v1/MediationInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->clearAdapterVersion()Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;

    return-void
.end method

.method public final clearCustomName()V
    .locals 1

    .line 84
    iget-object v0, p0, Lgatewayprotocol/v1/MediationInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->clearCustomName()Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;

    return-void
.end method

.method public final clearProvider()V
    .locals 1

    .line 59
    iget-object v0, p0, Lgatewayprotocol/v1/MediationInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->clearProvider()Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;

    return-void
.end method

.method public final clearVersion()V
    .locals 1

    .line 120
    iget-object v0, p0, Lgatewayprotocol/v1/MediationInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->clearVersion()Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;

    return-void
.end method

.method public final getAdapterVersion()Ljava/lang/String;
    .locals 2

    .line 143
    iget-object v0, p0, Lgatewayprotocol/v1/MediationInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->getAdapterVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getAdapterVersion(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getCustomName()Ljava/lang/String;
    .locals 2

    .line 71
    iget-object v0, p0, Lgatewayprotocol/v1/MediationInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->getCustomName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getCustomName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getProvider()Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;
    .locals 2

    .line 39
    iget-object v0, p0, Lgatewayprotocol/v1/MediationInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->getProvider()Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    move-result-object v0

    const-string v1, "getProvider(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getProviderValue()I
    .locals 1

    .line 46
    iget-object v0, p0, Lgatewayprotocol/v1/MediationInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->getProviderValue()I

    move-result v0

    return v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 2

    .line 107
    iget-object v0, p0, Lgatewayprotocol/v1/MediationInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->getVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getVersion(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final hasAdapterVersion()Z
    .locals 1

    .line 167
    iget-object v0, p0, Lgatewayprotocol/v1/MediationInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->hasAdapterVersion()Z

    move-result v0

    return v0
.end method

.method public final hasCustomName()Z
    .locals 1

    .line 95
    iget-object v0, p0, Lgatewayprotocol/v1/MediationInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->hasCustomName()Z

    move-result v0

    return v0
.end method

.method public final hasVersion()Z
    .locals 1

    .line 131
    iget-object v0, p0, Lgatewayprotocol/v1/MediationInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->hasVersion()Z

    move-result v0

    return v0
.end method

.method public final setAdapterVersion(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lgatewayprotocol/v1/MediationInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->setAdapterVersion(Ljava/lang/String;)Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;

    return-void
.end method

.method public final setCustomName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lgatewayprotocol/v1/MediationInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->setCustomName(Ljava/lang/String;)Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;

    return-void
.end method

.method public final setProvider(Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lgatewayprotocol/v1/MediationInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->setProvider(Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;)Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;

    return-void
.end method

.method public final setProviderValue(I)V
    .locals 1

    .line 49
    iget-object v0, p0, Lgatewayprotocol/v1/MediationInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->setProviderValue(I)Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;

    return-void
.end method

.method public final setVersion(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lgatewayprotocol/v1/MediationInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->setVersion(Ljava/lang/String;)Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;

    return-void
.end method
