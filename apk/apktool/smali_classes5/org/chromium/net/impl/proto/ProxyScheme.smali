.class public final enum Lorg/chromium/net/impl/proto/ProxyScheme;
.super Ljava/lang/Enum;
.source "ProxyScheme.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/net/impl/proto/ProxyScheme$ProxySchemeVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/chromium/net/impl/proto/ProxyScheme;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/net/impl/proto/ProxyScheme;

.field public static final enum DIRECT:Lorg/chromium/net/impl/proto/ProxyScheme;

.field public static final DIRECT_VALUE:I = 0x0

.field public static final enum HTTP:Lorg/chromium/net/impl/proto/ProxyScheme;

.field public static final enum HTTPS:Lorg/chromium/net/impl/proto/ProxyScheme;

.field public static final HTTPS_VALUE:I = 0x2

.field public static final HTTP_VALUE:I = 0x1

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lorg/chromium/net/impl/proto/ProxyScheme;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lorg/chromium/net/impl/proto/ProxyScheme;
    .locals 3

    .line 17
    sget-object v0, Lorg/chromium/net/impl/proto/ProxyScheme;->DIRECT:Lorg/chromium/net/impl/proto/ProxyScheme;

    sget-object v1, Lorg/chromium/net/impl/proto/ProxyScheme;->HTTP:Lorg/chromium/net/impl/proto/ProxyScheme;

    sget-object v2, Lorg/chromium/net/impl/proto/ProxyScheme;->HTTPS:Lorg/chromium/net/impl/proto/ProxyScheme;

    filled-new-array {v0, v1, v2}, [Lorg/chromium/net/impl/proto/ProxyScheme;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 22
    new-instance v0, Lorg/chromium/net/impl/proto/ProxyScheme;

    const-string v1, "DIRECT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/chromium/net/impl/proto/ProxyScheme;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/chromium/net/impl/proto/ProxyScheme;->DIRECT:Lorg/chromium/net/impl/proto/ProxyScheme;

    .line 26
    new-instance v0, Lorg/chromium/net/impl/proto/ProxyScheme;

    const-string v1, "HTTP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lorg/chromium/net/impl/proto/ProxyScheme;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/chromium/net/impl/proto/ProxyScheme;->HTTP:Lorg/chromium/net/impl/proto/ProxyScheme;

    .line 30
    new-instance v0, Lorg/chromium/net/impl/proto/ProxyScheme;

    const-string v1, "HTTPS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lorg/chromium/net/impl/proto/ProxyScheme;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/chromium/net/impl/proto/ProxyScheme;->HTTPS:Lorg/chromium/net/impl/proto/ProxyScheme;

    .line 17
    invoke-static {}, Lorg/chromium/net/impl/proto/ProxyScheme;->$values()[Lorg/chromium/net/impl/proto/ProxyScheme;

    move-result-object v0

    sput-object v0, Lorg/chromium/net/impl/proto/ProxyScheme;->$VALUES:[Lorg/chromium/net/impl/proto/ProxyScheme;

    .line 76
    new-instance v0, Lorg/chromium/net/impl/proto/ProxyScheme$1;

    invoke-direct {v0}, Lorg/chromium/net/impl/proto/ProxyScheme$1;-><init>()V

    sput-object v0, Lorg/chromium/net/impl/proto/ProxyScheme;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 101
    iput p3, p0, Lorg/chromium/net/impl/proto/ProxyScheme;->value:I

    return-void
.end method

.method public static forNumber(I)Lorg/chromium/net/impl/proto/ProxyScheme;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 66
    :cond_0
    sget-object p0, Lorg/chromium/net/impl/proto/ProxyScheme;->HTTPS:Lorg/chromium/net/impl/proto/ProxyScheme;

    return-object p0

    .line 65
    :cond_1
    sget-object p0, Lorg/chromium/net/impl/proto/ProxyScheme;->HTTP:Lorg/chromium/net/impl/proto/ProxyScheme;

    return-object p0

    .line 64
    :cond_2
    sget-object p0, Lorg/chromium/net/impl/proto/ProxyScheme;->DIRECT:Lorg/chromium/net/impl/proto/ProxyScheme;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lorg/chromium/net/impl/proto/ProxyScheme;",
            ">;"
        }
    .end annotation

    .line 73
    sget-object v0, Lorg/chromium/net/impl/proto/ProxyScheme;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 86
    sget-object v0, Lorg/chromium/net/impl/proto/ProxyScheme$ProxySchemeVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lorg/chromium/net/impl/proto/ProxyScheme;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 59
    invoke-static {p0}, Lorg/chromium/net/impl/proto/ProxyScheme;->forNumber(I)Lorg/chromium/net/impl/proto/ProxyScheme;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/net/impl/proto/ProxyScheme;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 17
    const-class v0, Lorg/chromium/net/impl/proto/ProxyScheme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/impl/proto/ProxyScheme;

    return-object p0
.end method

.method public static values()[Lorg/chromium/net/impl/proto/ProxyScheme;
    .locals 1

    .line 17
    sget-object v0, Lorg/chromium/net/impl/proto/ProxyScheme;->$VALUES:[Lorg/chromium/net/impl/proto/ProxyScheme;

    invoke-virtual {v0}, [Lorg/chromium/net/impl/proto/ProxyScheme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/net/impl/proto/ProxyScheme;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 49
    iget v0, p0, Lorg/chromium/net/impl/proto/ProxyScheme;->value:I

    return v0
.end method
