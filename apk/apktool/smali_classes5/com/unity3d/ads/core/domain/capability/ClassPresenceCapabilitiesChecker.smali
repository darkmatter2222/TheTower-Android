.class public final Lcom/unity3d/ads/core/domain/capability/ClassPresenceCapabilitiesChecker;
.super Ljava/lang/Object;
.source "ClassPresenceCapabilitiesChecker.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/capability/CapabilitiesChecker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/domain/capability/ClassPresenceCapabilitiesChecker$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nClassPresenceCapabilitiesChecker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClassPresenceCapabilitiesChecker.kt\ncom/unity3d/ads/core/domain/capability/ClassPresenceCapabilitiesChecker\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,33:1\n774#2:34\n865#2,2:35\n1563#2:37\n1634#2,3:38\n*S KotlinDebug\n*F\n+ 1 ClassPresenceCapabilitiesChecker.kt\ncom/unity3d/ads/core/domain/capability/ClassPresenceCapabilitiesChecker\n*L\n16#1:34\n16#1:35,2\n16#1:37\n16#1:38,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u001d\u0012\u0014\u0008\u0002\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u0096\u0002R\u001a\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/unity3d/ads/core/domain/capability/ClassPresenceCapabilitiesChecker;",
        "Lcom/unity3d/ads/core/domain/capability/CapabilitiesChecker;",
        "isClassPresent",
        "Lkotlin/Function1;",
        "",
        "",
        "<init>",
        "(Lkotlin/jvm/functions/Function1;)V",
        "invoke",
        "",
        "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Capability;",
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
.field public static final Companion:Lcom/unity3d/ads/core/domain/capability/ClassPresenceCapabilitiesChecker$Companion;

.field private static final PROBES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Capability;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final isClassPresent:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/unity3d/ads/core/domain/capability/ClassPresenceCapabilitiesChecker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/domain/capability/ClassPresenceCapabilitiesChecker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/unity3d/ads/core/domain/capability/ClassPresenceCapabilitiesChecker;->Companion:Lcom/unity3d/ads/core/domain/capability/ClassPresenceCapabilitiesChecker$Companion;

    const/16 v0, 0xa

    .line 20
    new-array v0, v0, [Lkotlin/Pair;

    sget-object v1, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Capability;->CAPABILITY_CRONET:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Capability;

    const-string v2, "org.chromium.net.CronetEngine"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 21
    sget-object v1, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Capability;->CAPABILITY_CRONET_FALLBACK_PROVIDER:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Capability;

    const-string v2, "org.chromium.net.impl.JavaCronetProvider"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 22
    sget-object v1, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Capability;->CAPABILITY_OKHTTP3:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Capability;

    const-string v2, "okhttp3.OkHttpClient"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 23
    sget-object v1, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Capability;->CAPABILITY_PLAY_SERVICES_BASE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Capability;

    const-string v2, "com.google.android.gms.common.GoogleApiAvailability"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 24
    sget-object v1, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Capability;->CAPABILITY_OMID:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Capability;

    const-string v2, "com.iab.omid.library.unity3d.Omid"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 25
    sget-object v1, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Capability;->CAPABILITY_INSTALL_REFERRER:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Capability;

    const-string v2, "com.android.installreferrer.api.InstallReferrerClient"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 26
    sget-object v1, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Capability;->CAPABILITY_APP_SET_ID:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Capability;

    const-string v2, "com.google.android.gms.appset.AppSet"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 27
    sget-object v1, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Capability;->CAPABILITY_FIREBASE_INSTALLATIONS:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Capability;

    const-string v2, "com.google.firebase.installations.FirebaseInstallations"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 28
    sget-object v1, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Capability;->CAPABILITY_BILLING_CLIENT:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Capability;

    const-string v2, "com.android.billingclient.api.BillingClient"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 29
    sget-object v1, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Capability;->CAPABILITY_AD_QUALITY:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Capability;

    const-string v2, "com.ironsource.adqualitysdk.sdk.IronSourceAdQuality"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 19
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/core/domain/capability/ClassPresenceCapabilitiesChecker;->PROBES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/unity3d/ads/core/domain/capability/ClassPresenceCapabilitiesChecker;-><init>(Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "isClassPresent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/capability/ClassPresenceCapabilitiesChecker;->isClassPresent:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 12
    sget-object p1, Lcom/unity3d/ads/core/domain/capability/ClassPresenceCapabilitiesChecker$1;->INSTANCE:Lcom/unity3d/ads/core/domain/capability/ClassPresenceCapabilitiesChecker$1;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    .line 11
    :cond_0
    invoke-direct {p0, p1}, Lcom/unity3d/ads/core/domain/capability/ClassPresenceCapabilitiesChecker;-><init>(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic access$getPROBES$cp()Ljava/util/List;
    .locals 1

    .line 11
    sget-object v0, Lcom/unity3d/ads/core/domain/capability/ClassPresenceCapabilitiesChecker;->PROBES:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public invoke()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Capability;",
            ">;"
        }
    .end annotation

    .line 16
    sget-object v0, Lcom/unity3d/ads/core/domain/capability/ClassPresenceCapabilitiesChecker;->PROBES:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 35
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lkotlin/Pair;

    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 16
    iget-object v4, p0, Lcom/unity3d/ads/core/domain/capability/ClassPresenceCapabilitiesChecker;->isClassPresent:Lkotlin/jvm/functions/Function1;

    invoke-interface {v4, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 35
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 36
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 34
    check-cast v1, Ljava/lang/Iterable;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 38
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 39
    check-cast v2, Lkotlin/Pair;

    .line 16
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Capability;

    .line 39
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 40
    :cond_2
    check-cast v0, Ljava/util/List;

    return-object v0
.end method
