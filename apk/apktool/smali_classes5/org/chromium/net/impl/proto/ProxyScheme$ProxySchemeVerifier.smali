.class final Lorg/chromium/net/impl/proto/ProxyScheme$ProxySchemeVerifier;
.super Ljava/lang/Object;
.source "ProxyScheme.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/impl/proto/ProxyScheme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProxySchemeVerifier"
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 91
    new-instance v0, Lorg/chromium/net/impl/proto/ProxyScheme$ProxySchemeVerifier;

    invoke-direct {v0}, Lorg/chromium/net/impl/proto/ProxyScheme$ProxySchemeVerifier;-><init>()V

    sput-object v0, Lorg/chromium/net/impl/proto/ProxyScheme$ProxySchemeVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInRange(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "number"
        }
    .end annotation

    .line 94
    invoke-static {p1}, Lorg/chromium/net/impl/proto/ProxyScheme;->forNumber(I)Lorg/chromium/net/impl/proto/ProxyScheme;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
