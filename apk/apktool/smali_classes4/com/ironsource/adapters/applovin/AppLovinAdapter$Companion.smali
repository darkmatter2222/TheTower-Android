.class public final Lcom/ironsource/adapters/applovin/AppLovinAdapter$Companion;
.super Ljava/lang/Object;
.source "AppLovinAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adapters/applovin/AppLovinAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adapters/applovin/AppLovinAdapter$Companion$InitState;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001:\u0001\u0018B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0007J\u0010\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u0015H\u0007J\u0008\u0010\u0017\u001a\u00020\u0005H\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\"\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e@BX\u0080\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/ironsource/adapters/applovin/AppLovinAdapter$Companion;",
        "",
        "<init>",
        "()V",
        "GitHash",
        "",
        "wasInitCalled",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "initState",
        "Lcom/ironsource/adapters/applovin/AppLovinAdapter$Companion$InitState;",
        "initListeners",
        "Ljava/util/concurrent/CopyOnWriteArrayList;",
        "Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;",
        "value",
        "Lcom/applovin/sdk/AppLovinSdk;",
        "appLovinSdk",
        "getAppLovinSdk$applovinadapter_release",
        "()Lcom/applovin/sdk/AppLovinSdk;",
        "getLoadErrorType",
        "Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;",
        "errorCode",
        "",
        "getErrorString",
        "networkAdapterVersion",
        "InitState",
        "applovinadapter_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAppLovinSdk$applovinadapter_release()Lcom/applovin/sdk/AppLovinSdk;
    .locals 1

    .line 42
    invoke-static {}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->access$getAppLovinSdk$cp()Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    return-object v0
.end method

.method public final getErrorString(I)Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/16 v0, -0x3f1

    if-eq p1, v0, :cond_e

    const/16 v0, -0x384

    if-eq p1, v0, :cond_d

    const/16 v0, -0x320

    if-eq p1, v0, :cond_c

    const/16 v0, -0x258

    if-eq p1, v0, :cond_b

    const/16 v0, -0x1f4

    if-eq p1, v0, :cond_a

    const/16 v0, -0x190

    if-eq p1, v0, :cond_9

    const/16 v0, -0x12c

    if-eq p1, v0, :cond_8

    const/16 v0, -0x16

    if-eq p1, v0, :cond_7

    const/4 v0, -0x1

    if-eq p1, v0, :cond_6

    const/16 v0, 0xcc

    if-eq p1, v0, :cond_5

    const/16 v0, -0x3e9

    if-eq p1, v0, :cond_4

    const/16 v0, -0x3e8

    if-eq p1, v0, :cond_3

    const/4 v0, -0x8

    if-eq p1, v0, :cond_2

    const/4 v0, -0x7

    if-eq p1, v0, :cond_1

    const/4 v0, -0x6

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 76
    const-string p1, "Unknown error"

    return-object p1

    .line 71
    :pswitch_0
    const-string p1, "An attempt to cache a resource to the filesystem failed; the device may be out of space."

    return-object p1

    .line 72
    :pswitch_1
    const-string p1, "An attempt to cache an image resource to the filesystem failed; the device may be out of space."

    return-object p1

    .line 73
    :pswitch_2
    const-string p1, "An attempt to cache a video resource to the filesystem failed; the device may be out of space."

    return-object p1

    .line 75
    :pswitch_3
    const-string p1, "An attempt to cache HTML content failed; the device may be out of space or the resource was malformed."

    return-object p1

    .line 61
    :cond_0
    const-string p1, "There has been a failure to render an ad on screen."

    return-object p1

    .line 62
    :cond_1
    const-string p1, "The zone provided is invalid; the zone needs to be added to your AppLovin account or may still be propagating to our servers."

    return-object p1

    .line 63
    :cond_2
    const-string p1, "The provided ad token is invalid; ad token must be returned from AppLovin S2S integration."

    return-object p1

    .line 74
    :cond_3
    const-string p1, "The request body sent to the server was malformed or invalid."

    return-object p1

    .line 58
    :cond_4
    const-string p1, "The network conditions prevented the SDK from receiving an ad."

    return-object p1

    .line 60
    :cond_5
    const-string p1, "No ads are currently eligible for your device."

    return-object p1

    .line 64
    :cond_6
    const-string p1, "The system is in unexpected state."

    return-object p1

    .line 57
    :cond_7
    const-string p1, "The SDK is currently disabled."

    return-object p1

    .line 65
    :cond_8
    const-string p1, "The developer called for a rewarded video before one was available."

    return-object p1

    .line 66
    :cond_9
    const-string p1, "An unknown server-side error occurred."

    return-object p1

    .line 67
    :cond_a
    const-string p1, "A reward validation requested timed out (usually due to poor connectivity)."

    return-object p1

    .line 68
    :cond_b
    const-string p1, "The user exited out of the ad early. You may or may not wish to grant a reward depending on your preference."

    return-object p1

    .line 69
    :cond_c
    const-string p1, "The AppLovin servers have returned an invalid response"

    return-object p1

    .line 70
    :cond_d
    const-string p1, "A postback URL you attempted to dispatch was empty or nil."

    return-object p1

    .line 59
    :cond_e
    const-string p1, "The device had no network connectivity at the time of an ad request, either due to airplane mode or no service."

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch -0xcb
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getLoadErrorType(I)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/16 v0, 0xcc

    if-ne p1, v0, :cond_0

    .line 48
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;->ADAPTER_ERROR_TYPE_NO_FILL:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    return-object p1

    .line 50
    :cond_0
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;->ADAPTER_ERROR_TYPE_INTERNAL:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    return-object p1
.end method

.method public final networkAdapterVersion()Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 81
    const-string v0, "5.9.0"

    return-object v0
.end method
