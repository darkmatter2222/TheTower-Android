.class final Lgatewayprotocol/v1/TransactionEventRequestOuterClass$StoreKitVersion$StoreKitVersionVerifier;
.super Ljava/lang/Object;
.source "TransactionEventRequestOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/TransactionEventRequestOuterClass$StoreKitVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StoreKitVersionVerifier"
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 217
    new-instance v0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$StoreKitVersion$StoreKitVersionVerifier;

    invoke-direct {v0}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$StoreKitVersion$StoreKitVersionVerifier;-><init>()V

    sput-object v0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$StoreKitVersion$StoreKitVersionVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInRange(I)Z
    .locals 0

    .line 220
    invoke-static {p1}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$StoreKitVersion;->forNumber(I)Lgatewayprotocol/v1/TransactionEventRequestOuterClass$StoreKitVersion;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
