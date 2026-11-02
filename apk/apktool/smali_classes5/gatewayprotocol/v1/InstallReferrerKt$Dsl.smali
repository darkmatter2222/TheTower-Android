.class public final Lgatewayprotocol/v1/InstallReferrerKt$Dsl;
.super Ljava/lang/Object;
.source "InstallReferrerKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/InstallReferrerKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/InstallReferrerKt$Dsl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0010\t\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 #2\u00020\u0001:\u0001#B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H\u0001J\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0017\u001a\u00020\u0010J\u0006\u0010\u001b\u001a\u00020\u0010J\u0006\u0010\"\u001a\u00020\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR$\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0008\u001a\u00020\u00118G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R$\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0008\u001a\u00020\u00118G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0019\u0010\u0014\"\u0004\u0008\u001a\u0010\u0016R$\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0008\u001a\u00020\u001c8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!\u00a8\u0006$"
    }
    d2 = {
        "Lgatewayprotocol/v1/InstallReferrerKt$Dsl;",
        "",
        "_builder",
        "Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;",
        "<init>",
        "(Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;)V",
        "_build",
        "Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer;",
        "value",
        "",
        "url",
        "getUrl",
        "()Ljava/lang/String;",
        "setUrl",
        "(Ljava/lang/String;)V",
        "clearUrl",
        "",
        "",
        "clickTime",
        "getClickTime",
        "()J",
        "setClickTime",
        "(J)V",
        "clearClickTime",
        "installTime",
        "getInstallTime",
        "setInstallTime",
        "clearInstallTime",
        "",
        "instantExperienceLunch",
        "getInstantExperienceLunch",
        "()Z",
        "setInstantExperienceLunch",
        "(Z)V",
        "clearInstantExperienceLunch",
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
.field public static final Companion:Lgatewayprotocol/v1/InstallReferrerKt$Dsl$Companion;


# instance fields
.field private final _builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lgatewayprotocol/v1/InstallReferrerKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgatewayprotocol/v1/InstallReferrerKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgatewayprotocol/v1/InstallReferrerKt$Dsl;->Companion:Lgatewayprotocol/v1/InstallReferrerKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lgatewayprotocol/v1/InstallReferrerKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lgatewayprotocol/v1/InstallReferrerKt$Dsl;-><init>(Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer;
    .locals 2

    .line 28
    iget-object v0, p0, Lgatewayprotocol/v1/InstallReferrerKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer;

    return-object v0
.end method

.method public final clearClickTime()V
    .locals 1

    .line 61
    iget-object v0, p0, Lgatewayprotocol/v1/InstallReferrerKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;->clearClickTime()Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;

    return-void
.end method

.method public final clearInstallTime()V
    .locals 1

    .line 78
    iget-object v0, p0, Lgatewayprotocol/v1/InstallReferrerKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;->clearInstallTime()Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;

    return-void
.end method

.method public final clearInstantExperienceLunch()V
    .locals 1

    .line 95
    iget-object v0, p0, Lgatewayprotocol/v1/InstallReferrerKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;->clearInstantExperienceLunch()Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;

    return-void
.end method

.method public final clearUrl()V
    .locals 1

    .line 44
    iget-object v0, p0, Lgatewayprotocol/v1/InstallReferrerKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;->clearUrl()Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;

    return-void
.end method

.method public final getClickTime()J
    .locals 2

    .line 52
    iget-object v0, p0, Lgatewayprotocol/v1/InstallReferrerKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;->getClickTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getInstallTime()J
    .locals 2

    .line 69
    iget-object v0, p0, Lgatewayprotocol/v1/InstallReferrerKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;->getInstallTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getInstantExperienceLunch()Z
    .locals 1

    .line 86
    iget-object v0, p0, Lgatewayprotocol/v1/InstallReferrerKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;->getInstantExperienceLunch()Z

    move-result v0

    return v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 2

    .line 35
    iget-object v0, p0, Lgatewayprotocol/v1/InstallReferrerKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getUrl(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final setClickTime(J)V
    .locals 1

    .line 55
    iget-object v0, p0, Lgatewayprotocol/v1/InstallReferrerKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;

    invoke-virtual {v0, p1, p2}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;->setClickTime(J)Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;

    return-void
.end method

.method public final setInstallTime(J)V
    .locals 1

    .line 72
    iget-object v0, p0, Lgatewayprotocol/v1/InstallReferrerKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;

    invoke-virtual {v0, p1, p2}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;->setInstallTime(J)Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;

    return-void
.end method

.method public final setInstantExperienceLunch(Z)V
    .locals 1

    .line 89
    iget-object v0, p0, Lgatewayprotocol/v1/InstallReferrerKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;->setInstantExperienceLunch(Z)Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lgatewayprotocol/v1/InstallReferrerKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;->setUrl(Ljava/lang/String;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;

    return-void
.end method
