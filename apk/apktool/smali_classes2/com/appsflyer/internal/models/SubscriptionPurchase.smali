.class public final Lcom/appsflyer/internal/models/SubscriptionPurchase;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/models/SubscriptionPurchase$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0019\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008%\u0008\u0086\u0008\u0018\u0000 W2\u00020\u0001:\u0001WB\u0083\u0001\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0008\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\u0006\u0010\u0010\u001a\u00020\u0002\u0012\u0006\u0010\u0011\u001a\u00020\u0002\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u0012\u0006\u0010\u0014\u001a\u00020\u0002\u0012\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0010\u0010\u0019\u001a\u00020\u0002H\u00c7\u0003\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0010\u0010\u001b\u001a\u00020\u0002H\u00c7\u0003\u00a2\u0006\u0004\u0008\u001b\u0010\u001aJ\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u0012H\u00c7\u0003\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0010\u0010\u001e\u001a\u00020\u0002H\u00c7\u0003\u00a2\u0006\u0004\u0008\u001e\u0010\u001aJ\u0012\u0010\u001f\u001a\u0004\u0018\u00010\u0015H\u00c7\u0003\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0012\u0010!\u001a\u0004\u0018\u00010\u0004H\u00c7\u0003\u00a2\u0006\u0004\u0008!\u0010\"J\u0012\u0010#\u001a\u0004\u0018\u00010\u0006H\u00c7\u0003\u00a2\u0006\u0004\u0008#\u0010$J\u0010\u0010%\u001a\u00020\u0002H\u00c7\u0003\u00a2\u0006\u0004\u0008%\u0010\u001aJ\u0010\u0010&\u001a\u00020\u0002H\u00c7\u0003\u00a2\u0006\u0004\u0008&\u0010\u001aJ\u0016\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u00c7\u0003\u00a2\u0006\u0004\u0008\'\u0010(J\u0012\u0010)\u001a\u0004\u0018\u00010\u0002H\u00c7\u0003\u00a2\u0006\u0004\u0008)\u0010\u001aJ\u0012\u0010*\u001a\u0004\u0018\u00010\u000eH\u00c7\u0003\u00a2\u0006\u0004\u0008*\u0010+J\u0010\u0010,\u001a\u00020\u0002H\u00c7\u0003\u00a2\u0006\u0004\u0008,\u0010\u001aJ\u00a4\u0001\u0010-\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00022\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00022\u0008\u0008\u0002\u0010\t\u001a\u00020\u00022\u000e\u0008\u0002\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00022\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00022\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u00c7\u0001\u00a2\u0006\u0004\u0008-\u0010.J\u001a\u00100\u001a\u00020/2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u00080\u00101J\u0010\u00103\u001a\u000202H\u00d6\u0001\u00a2\u0006\u0004\u00083\u00104J\u0010\u00105\u001a\u00020\u0002H\u00d7\u0001\u00a2\u0006\u0004\u00085\u0010\u001aR\u001a\u00106\u001a\u00020\u00028\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u00086\u00107\u001a\u0004\u00088\u0010\u001aR\u001c\u00109\u001a\u0004\u0018\u00010\u00048\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u00089\u0010:\u001a\u0004\u0008;\u0010\"R\u001c\u0010<\u001a\u0004\u0018\u00010\u00068\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008<\u0010=\u001a\u0004\u0008>\u0010$R\u001a\u0010?\u001a\u00020\u00028\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008?\u00107\u001a\u0004\u0008@\u0010\u001aR\u001a\u0010A\u001a\u00020\u00028\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008A\u00107\u001a\u0004\u0008B\u0010\u001aR \u0010C\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n8\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008C\u0010D\u001a\u0004\u0008E\u0010(R\u001c\u0010F\u001a\u0004\u0018\u00010\u00028\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008F\u00107\u001a\u0004\u0008G\u0010\u001aR\u001c\u0010H\u001a\u0004\u0018\u00010\u000e8\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008H\u0010I\u001a\u0004\u0008J\u0010+R\u001a\u0010K\u001a\u00020\u00028\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008K\u00107\u001a\u0004\u0008L\u0010\u001aR\u001a\u0010M\u001a\u00020\u00028\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008M\u00107\u001a\u0004\u0008N\u0010\u001aR\u001c\u0010O\u001a\u0004\u0018\u00010\u00128\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008O\u0010P\u001a\u0004\u0008Q\u0010\u001dR\u001a\u0010R\u001a\u00020\u00028\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008R\u00107\u001a\u0004\u0008S\u0010\u001aR\u001c\u0010T\u001a\u0004\u0018\u00010\u00158\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008T\u0010U\u001a\u0004\u0008V\u0010 "
    }
    d2 = {
        "Lcom/appsflyer/internal/models/SubscriptionPurchase;",
        "",
        "",
        "p0",
        "Lcom/appsflyer/internal/models/CanceledStateContext;",
        "p1",
        "Lcom/appsflyer/internal/models/ExternalAccountIdentifiers;",
        "p2",
        "p3",
        "p4",
        "",
        "Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;",
        "p5",
        "p6",
        "Lcom/appsflyer/internal/models/PausedStateContext;",
        "p7",
        "p8",
        "p9",
        "Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo;",
        "p10",
        "p11",
        "Lcom/appsflyer/internal/models/TestPurchase;",
        "p12",
        "<init>",
        "(Ljava/lang/String;Lcom/appsflyer/internal/models/CanceledStateContext;Lcom/appsflyer/internal/models/ExternalAccountIdentifiers;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/appsflyer/internal/models/PausedStateContext;Ljava/lang/String;Ljava/lang/String;Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo;Ljava/lang/String;Lcom/appsflyer/internal/models/TestPurchase;)V",
        "component1",
        "()Ljava/lang/String;",
        "component10",
        "component11",
        "()Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo;",
        "component12",
        "component13",
        "()Lcom/appsflyer/internal/models/TestPurchase;",
        "component2",
        "()Lcom/appsflyer/internal/models/CanceledStateContext;",
        "component3",
        "()Lcom/appsflyer/internal/models/ExternalAccountIdentifiers;",
        "component4",
        "component5",
        "component6",
        "()Ljava/util/List;",
        "component7",
        "component8",
        "()Lcom/appsflyer/internal/models/PausedStateContext;",
        "component9",
        "copy",
        "(Ljava/lang/String;Lcom/appsflyer/internal/models/CanceledStateContext;Lcom/appsflyer/internal/models/ExternalAccountIdentifiers;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/appsflyer/internal/models/PausedStateContext;Ljava/lang/String;Ljava/lang/String;Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo;Ljava/lang/String;Lcom/appsflyer/internal/models/TestPurchase;)Lcom/appsflyer/internal/models/SubscriptionPurchase;",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "",
        "hashCode",
        "()I",
        "toString",
        "acknowledgementState",
        "Ljava/lang/String;",
        "getAcknowledgementState",
        "canceledStateContext",
        "Lcom/appsflyer/internal/models/CanceledStateContext;",
        "getCanceledStateContext",
        "externalAccountIdentifiers",
        "Lcom/appsflyer/internal/models/ExternalAccountIdentifiers;",
        "getExternalAccountIdentifiers",
        "kind",
        "getKind",
        "latestOrderId",
        "getLatestOrderId",
        "lineItems",
        "Ljava/util/List;",
        "getLineItems",
        "linkedPurchaseToken",
        "getLinkedPurchaseToken",
        "pausedStateContext",
        "Lcom/appsflyer/internal/models/PausedStateContext;",
        "getPausedStateContext",
        "regionCode",
        "getRegionCode",
        "startTime",
        "getStartTime",
        "subscribeWithGoogleInfo",
        "Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo;",
        "getSubscribeWithGoogleInfo",
        "subscriptionState",
        "getSubscriptionState",
        "testPurchase",
        "Lcom/appsflyer/internal/models/TestPurchase;",
        "getTestPurchase",
        "Companion"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/appsflyer/internal/models/SubscriptionPurchase$Companion;


# instance fields
.field private final acknowledgementState:Ljava/lang/String;

.field private final canceledStateContext:Lcom/appsflyer/internal/models/CanceledStateContext;

.field private final externalAccountIdentifiers:Lcom/appsflyer/internal/models/ExternalAccountIdentifiers;

.field private final kind:Ljava/lang/String;

.field private final latestOrderId:Ljava/lang/String;

.field private final lineItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;",
            ">;"
        }
    .end annotation
.end field

.field private final linkedPurchaseToken:Ljava/lang/String;

.field private final pausedStateContext:Lcom/appsflyer/internal/models/PausedStateContext;

.field private final regionCode:Ljava/lang/String;

.field private final startTime:Ljava/lang/String;

.field private final subscribeWithGoogleInfo:Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo;

.field private final subscriptionState:Ljava/lang/String;

.field private final testPurchase:Lcom/appsflyer/internal/models/TestPurchase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 65336
    new-instance v0, Lcom/appsflyer/internal/models/SubscriptionPurchase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/appsflyer/internal/models/SubscriptionPurchase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->Companion:Lcom/appsflyer/internal/models/SubscriptionPurchase$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/appsflyer/internal/models/CanceledStateContext;Lcom/appsflyer/internal/models/ExternalAccountIdentifiers;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/appsflyer/internal/models/PausedStateContext;Ljava/lang/String;Ljava/lang/String;Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo;Ljava/lang/String;Lcom/appsflyer/internal/models/TestPurchase;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/appsflyer/internal/models/CanceledStateContext;",
            "Lcom/appsflyer/internal/models/ExternalAccountIdentifiers;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/appsflyer/internal/models/PausedStateContext;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo;",
            "Ljava/lang/String;",
            "Lcom/appsflyer/internal/models/TestPurchase;",
            ")V"
        }
    .end annotation

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->acknowledgementState:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->canceledStateContext:Lcom/appsflyer/internal/models/CanceledStateContext;

    .line 12
    iput-object p3, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->externalAccountIdentifiers:Lcom/appsflyer/internal/models/ExternalAccountIdentifiers;

    .line 13
    iput-object p4, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->kind:Ljava/lang/String;

    .line 14
    iput-object p5, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->latestOrderId:Ljava/lang/String;

    .line 15
    iput-object p6, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->lineItems:Ljava/util/List;

    .line 16
    iput-object p7, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->linkedPurchaseToken:Ljava/lang/String;

    .line 17
    iput-object p8, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->pausedStateContext:Lcom/appsflyer/internal/models/PausedStateContext;

    .line 18
    iput-object p9, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->regionCode:Ljava/lang/String;

    .line 19
    iput-object p10, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->startTime:Ljava/lang/String;

    .line 20
    iput-object p11, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->subscribeWithGoogleInfo:Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo;

    .line 21
    iput-object p12, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->subscriptionState:Ljava/lang/String;

    .line 22
    iput-object p13, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->testPurchase:Lcom/appsflyer/internal/models/TestPurchase;

    return-void
.end method

.method public static synthetic copy$default(Lcom/appsflyer/internal/models/SubscriptionPurchase;Ljava/lang/String;Lcom/appsflyer/internal/models/CanceledStateContext;Lcom/appsflyer/internal/models/ExternalAccountIdentifiers;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/appsflyer/internal/models/PausedStateContext;Ljava/lang/String;Ljava/lang/String;Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo;Ljava/lang/String;Lcom/appsflyer/internal/models/TestPurchase;ILjava/lang/Object;)Lcom/appsflyer/internal/models/SubscriptionPurchase;
    .locals 12

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 65340
    iget-object p1, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->acknowledgementState:Ljava/lang/String;

    :cond_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->canceledStateContext:Lcom/appsflyer/internal/models/CanceledStateContext;

    goto :goto_0

    :cond_1
    move-object v1, p2

    :goto_0
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->externalAccountIdentifiers:Lcom/appsflyer/internal/models/ExternalAccountIdentifiers;

    goto :goto_1

    :cond_2
    move-object v2, p3

    :goto_1
    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->kind:Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object/from16 v3, p4

    :goto_2
    and-int/lit8 v4, v0, 0x10

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->latestOrderId:Ljava/lang/String;

    goto :goto_3

    :cond_4
    move-object/from16 v4, p5

    :goto_3
    and-int/lit8 v5, v0, 0x20

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->lineItems:Ljava/util/List;

    goto :goto_4

    :cond_5
    move-object/from16 v5, p6

    :goto_4
    and-int/lit8 v6, v0, 0x40

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->linkedPurchaseToken:Ljava/lang/String;

    goto :goto_5

    :cond_6
    move-object/from16 v6, p7

    :goto_5
    and-int/lit16 v7, v0, 0x80

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->pausedStateContext:Lcom/appsflyer/internal/models/PausedStateContext;

    goto :goto_6

    :cond_7
    move-object/from16 v7, p8

    :goto_6
    and-int/lit16 v8, v0, 0x100

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->regionCode:Ljava/lang/String;

    goto :goto_7

    :cond_8
    move-object/from16 v8, p9

    :goto_7
    and-int/lit16 v9, v0, 0x200

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->startTime:Ljava/lang/String;

    goto :goto_8

    :cond_9
    move-object/from16 v9, p10

    :goto_8
    and-int/lit16 v10, v0, 0x400

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->subscribeWithGoogleInfo:Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo;

    goto :goto_9

    :cond_a
    move-object/from16 v10, p11

    :goto_9
    and-int/lit16 v11, v0, 0x800

    if-eqz v11, :cond_b

    iget-object v11, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->subscriptionState:Ljava/lang/String;

    goto :goto_a

    :cond_b
    move-object/from16 v11, p12

    :goto_a
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->testPurchase:Lcom/appsflyer/internal/models/TestPurchase;

    move-object/from16 p15, v0

    goto :goto_b

    :cond_c
    move-object/from16 p15, p13

    :goto_b
    move-object p2, p0

    move-object p3, p1

    move-object/from16 p4, v1

    move-object/from16 p5, v2

    move-object/from16 p6, v3

    move-object/from16 p7, v4

    move-object/from16 p8, v5

    move-object/from16 p9, v6

    move-object/from16 p10, v7

    move-object/from16 p11, v8

    move-object/from16 p12, v9

    move-object/from16 p13, v10

    move-object/from16 p14, v11

    invoke-virtual/range {p2 .. p15}, Lcom/appsflyer/internal/models/SubscriptionPurchase;->copy(Ljava/lang/String;Lcom/appsflyer/internal/models/CanceledStateContext;Lcom/appsflyer/internal/models/ExternalAccountIdentifiers;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/appsflyer/internal/models/PausedStateContext;Ljava/lang/String;Ljava/lang/String;Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo;Ljava/lang/String;Lcom/appsflyer/internal/models/TestPurchase;)Lcom/appsflyer/internal/models/SubscriptionPurchase;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    .line 65354
    iget-object v0, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->acknowledgementState:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    .line 65345
    iget-object v0, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo;
    .locals 1

    .line 65344
    iget-object v0, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->subscribeWithGoogleInfo:Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo;

    return-object v0
.end method

.method public final component12()Ljava/lang/String;
    .locals 1

    .line 65343
    iget-object v0, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->subscriptionState:Ljava/lang/String;

    return-object v0
.end method

.method public final component13()Lcom/appsflyer/internal/models/TestPurchase;
    .locals 1

    .line 65342
    iget-object v0, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->testPurchase:Lcom/appsflyer/internal/models/TestPurchase;

    return-object v0
.end method

.method public final component2()Lcom/appsflyer/internal/models/CanceledStateContext;
    .locals 1

    .line 65353
    iget-object v0, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->canceledStateContext:Lcom/appsflyer/internal/models/CanceledStateContext;

    return-object v0
.end method

.method public final component3()Lcom/appsflyer/internal/models/ExternalAccountIdentifiers;
    .locals 1

    .line 65352
    iget-object v0, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->externalAccountIdentifiers:Lcom/appsflyer/internal/models/ExternalAccountIdentifiers;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    .line 65351
    iget-object v0, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    .line 65350
    iget-object v0, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->latestOrderId:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;",
            ">;"
        }
    .end annotation

    .line 65349
    iget-object v0, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->lineItems:Ljava/util/List;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    .line 65348
    iget-object v0, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->linkedPurchaseToken:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Lcom/appsflyer/internal/models/PausedStateContext;
    .locals 1

    .line 65347
    iget-object v0, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->pausedStateContext:Lcom/appsflyer/internal/models/PausedStateContext;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    .line 65346
    iget-object v0, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->regionCode:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/appsflyer/internal/models/CanceledStateContext;Lcom/appsflyer/internal/models/ExternalAccountIdentifiers;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/appsflyer/internal/models/PausedStateContext;Ljava/lang/String;Ljava/lang/String;Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo;Ljava/lang/String;Lcom/appsflyer/internal/models/TestPurchase;)Lcom/appsflyer/internal/models/SubscriptionPurchase;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/appsflyer/internal/models/CanceledStateContext;",
            "Lcom/appsflyer/internal/models/ExternalAccountIdentifiers;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/appsflyer/internal/models/PausedStateContext;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo;",
            "Ljava/lang/String;",
            "Lcom/appsflyer/internal/models/TestPurchase;",
            ")",
            "Lcom/appsflyer/internal/models/SubscriptionPurchase;"
        }
    .end annotation

    .line 65341
    const-string v0, ""

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v13, p12

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/appsflyer/internal/models/SubscriptionPurchase;

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v12, p11

    move-object/from16 v14, p13

    invoke-direct/range {v1 .. v14}, Lcom/appsflyer/internal/models/SubscriptionPurchase;-><init>(Ljava/lang/String;Lcom/appsflyer/internal/models/CanceledStateContext;Lcom/appsflyer/internal/models/ExternalAccountIdentifiers;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/appsflyer/internal/models/PausedStateContext;Ljava/lang/String;Ljava/lang/String;Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo;Ljava/lang/String;Lcom/appsflyer/internal/models/TestPurchase;)V

    return-object v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 65337
    :cond_0
    instance-of v1, p1, Lcom/appsflyer/internal/models/SubscriptionPurchase;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/appsflyer/internal/models/SubscriptionPurchase;

    iget-object v1, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->acknowledgementState:Ljava/lang/String;

    iget-object v3, p1, Lcom/appsflyer/internal/models/SubscriptionPurchase;->acknowledgementState:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->canceledStateContext:Lcom/appsflyer/internal/models/CanceledStateContext;

    iget-object v3, p1, Lcom/appsflyer/internal/models/SubscriptionPurchase;->canceledStateContext:Lcom/appsflyer/internal/models/CanceledStateContext;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->externalAccountIdentifiers:Lcom/appsflyer/internal/models/ExternalAccountIdentifiers;

    iget-object v3, p1, Lcom/appsflyer/internal/models/SubscriptionPurchase;->externalAccountIdentifiers:Lcom/appsflyer/internal/models/ExternalAccountIdentifiers;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->kind:Ljava/lang/String;

    iget-object v3, p1, Lcom/appsflyer/internal/models/SubscriptionPurchase;->kind:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->latestOrderId:Ljava/lang/String;

    iget-object v3, p1, Lcom/appsflyer/internal/models/SubscriptionPurchase;->latestOrderId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->lineItems:Ljava/util/List;

    iget-object v3, p1, Lcom/appsflyer/internal/models/SubscriptionPurchase;->lineItems:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->linkedPurchaseToken:Ljava/lang/String;

    iget-object v3, p1, Lcom/appsflyer/internal/models/SubscriptionPurchase;->linkedPurchaseToken:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->pausedStateContext:Lcom/appsflyer/internal/models/PausedStateContext;

    iget-object v3, p1, Lcom/appsflyer/internal/models/SubscriptionPurchase;->pausedStateContext:Lcom/appsflyer/internal/models/PausedStateContext;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->regionCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/appsflyer/internal/models/SubscriptionPurchase;->regionCode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->startTime:Ljava/lang/String;

    iget-object v3, p1, Lcom/appsflyer/internal/models/SubscriptionPurchase;->startTime:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->subscribeWithGoogleInfo:Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo;

    iget-object v3, p1, Lcom/appsflyer/internal/models/SubscriptionPurchase;->subscribeWithGoogleInfo:Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->subscriptionState:Ljava/lang/String;

    iget-object v3, p1, Lcom/appsflyer/internal/models/SubscriptionPurchase;->subscriptionState:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->testPurchase:Lcom/appsflyer/internal/models/TestPurchase;

    iget-object p1, p1, Lcom/appsflyer/internal/models/SubscriptionPurchase;->testPurchase:Lcom/appsflyer/internal/models/TestPurchase;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v2

    :cond_e
    return v0
.end method

.method public final getAcknowledgementState()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->acknowledgementState:Ljava/lang/String;

    return-object v0
.end method

.method public final getCanceledStateContext()Lcom/appsflyer/internal/models/CanceledStateContext;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->canceledStateContext:Lcom/appsflyer/internal/models/CanceledStateContext;

    return-object v0
.end method

.method public final getExternalAccountIdentifiers()Lcom/appsflyer/internal/models/ExternalAccountIdentifiers;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->externalAccountIdentifiers:Lcom/appsflyer/internal/models/ExternalAccountIdentifiers;

    return-object v0
.end method

.method public final getKind()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public final getLatestOrderId()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->latestOrderId:Ljava/lang/String;

    return-object v0
.end method

.method public final getLineItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->lineItems:Ljava/util/List;

    return-object v0
.end method

.method public final getLinkedPurchaseToken()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->linkedPurchaseToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getPausedStateContext()Lcom/appsflyer/internal/models/PausedStateContext;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->pausedStateContext:Lcom/appsflyer/internal/models/PausedStateContext;

    return-object v0
.end method

.method public final getRegionCode()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->regionCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getStartTime()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public final getSubscribeWithGoogleInfo()Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->subscribeWithGoogleInfo:Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo;

    return-object v0
.end method

.method public final getSubscriptionState()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->subscriptionState:Ljava/lang/String;

    return-object v0
.end method

.method public final getTestPurchase()Lcom/appsflyer/internal/models/TestPurchase;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->testPurchase:Lcom/appsflyer/internal/models/TestPurchase;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .line 65338
    iget-object v0, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->acknowledgementState:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->canceledStateContext:Lcom/appsflyer/internal/models/CanceledStateContext;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->externalAccountIdentifiers:Lcom/appsflyer/internal/models/ExternalAccountIdentifiers;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->kind:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->latestOrderId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->lineItems:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->linkedPurchaseToken:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->pausedStateContext:Lcom/appsflyer/internal/models/PausedStateContext;

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->regionCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->startTime:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->subscribeWithGoogleInfo:Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo;

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->subscriptionState:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->testPurchase:Lcom/appsflyer/internal/models/TestPurchase;

    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 15

    .line 65339
    iget-object v0, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->acknowledgementState:Ljava/lang/String;

    iget-object v1, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->canceledStateContext:Lcom/appsflyer/internal/models/CanceledStateContext;

    iget-object v2, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->externalAccountIdentifiers:Lcom/appsflyer/internal/models/ExternalAccountIdentifiers;

    iget-object v3, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->kind:Ljava/lang/String;

    iget-object v4, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->latestOrderId:Ljava/lang/String;

    iget-object v5, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->lineItems:Ljava/util/List;

    iget-object v6, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->linkedPurchaseToken:Ljava/lang/String;

    iget-object v7, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->pausedStateContext:Lcom/appsflyer/internal/models/PausedStateContext;

    iget-object v8, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->regionCode:Ljava/lang/String;

    iget-object v9, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->startTime:Ljava/lang/String;

    iget-object v10, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->subscribeWithGoogleInfo:Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo;

    iget-object v11, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->subscriptionState:Ljava/lang/String;

    iget-object v12, p0, Lcom/appsflyer/internal/models/SubscriptionPurchase;->testPurchase:Lcom/appsflyer/internal/models/TestPurchase;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "SubscriptionPurchase(acknowledgementState="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, ", canceledStateContext="

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", externalAccountIdentifiers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", kind="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", latestOrderId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lineItems="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", linkedPurchaseToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pausedStateContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", regionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subscribeWithGoogleInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subscriptionState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", testPurchase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
