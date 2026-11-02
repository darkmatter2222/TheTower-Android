.class public final enum Lcom/google/crypto/tink/proto/SlhDsaSignatureType;
.super Ljava/lang/Enum;
.source "SlhDsaSignatureType.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/proto/SlhDsaSignatureType$SlhDsaSignatureTypeVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/crypto/tink/proto/SlhDsaSignatureType;",
        ">;",
        "Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/crypto/tink/proto/SlhDsaSignatureType;

.field public static final enum FAST_SIGNING:Lcom/google/crypto/tink/proto/SlhDsaSignatureType;

.field public static final FAST_SIGNING_VALUE:I = 0x1

.field public static final enum SLH_DSA_SIGNATURE_TYPE_UNSPECIFIED:Lcom/google/crypto/tink/proto/SlhDsaSignatureType;

.field public static final SLH_DSA_SIGNATURE_TYPE_UNSPECIFIED_VALUE:I = 0x0

.field public static final enum SMALL_SIGNATURE:Lcom/google/crypto/tink/proto/SlhDsaSignatureType;

.field public static final SMALL_SIGNATURE_VALUE:I = 0x2

.field public static final enum UNRECOGNIZED:Lcom/google/crypto/tink/proto/SlhDsaSignatureType;

.field private static final internalValueMap:Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/crypto/tink/proto/SlhDsaSignatureType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/google/crypto/tink/proto/SlhDsaSignatureType;
    .locals 4

    .line 11
    sget-object v0, Lcom/google/crypto/tink/proto/SlhDsaSignatureType;->SLH_DSA_SIGNATURE_TYPE_UNSPECIFIED:Lcom/google/crypto/tink/proto/SlhDsaSignatureType;

    sget-object v1, Lcom/google/crypto/tink/proto/SlhDsaSignatureType;->FAST_SIGNING:Lcom/google/crypto/tink/proto/SlhDsaSignatureType;

    sget-object v2, Lcom/google/crypto/tink/proto/SlhDsaSignatureType;->SMALL_SIGNATURE:Lcom/google/crypto/tink/proto/SlhDsaSignatureType;

    sget-object v3, Lcom/google/crypto/tink/proto/SlhDsaSignatureType;->UNRECOGNIZED:Lcom/google/crypto/tink/proto/SlhDsaSignatureType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/google/crypto/tink/proto/SlhDsaSignatureType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 17
    new-instance v0, Lcom/google/crypto/tink/proto/SlhDsaSignatureType;

    const-string v1, "SLH_DSA_SIGNATURE_TYPE_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/crypto/tink/proto/SlhDsaSignatureType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/crypto/tink/proto/SlhDsaSignatureType;->SLH_DSA_SIGNATURE_TYPE_UNSPECIFIED:Lcom/google/crypto/tink/proto/SlhDsaSignatureType;

    .line 21
    new-instance v0, Lcom/google/crypto/tink/proto/SlhDsaSignatureType;

    const-string v1, "FAST_SIGNING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/google/crypto/tink/proto/SlhDsaSignatureType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/crypto/tink/proto/SlhDsaSignatureType;->FAST_SIGNING:Lcom/google/crypto/tink/proto/SlhDsaSignatureType;

    .line 25
    new-instance v0, Lcom/google/crypto/tink/proto/SlhDsaSignatureType;

    const-string v1, "SMALL_SIGNATURE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/google/crypto/tink/proto/SlhDsaSignatureType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/crypto/tink/proto/SlhDsaSignatureType;->SMALL_SIGNATURE:Lcom/google/crypto/tink/proto/SlhDsaSignatureType;

    .line 26
    new-instance v0, Lcom/google/crypto/tink/proto/SlhDsaSignatureType;

    const/4 v1, 0x3

    const/4 v2, -0x1

    const-string v3, "UNRECOGNIZED"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/crypto/tink/proto/SlhDsaSignatureType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/crypto/tink/proto/SlhDsaSignatureType;->UNRECOGNIZED:Lcom/google/crypto/tink/proto/SlhDsaSignatureType;

    .line 11
    invoke-static {}, Lcom/google/crypto/tink/proto/SlhDsaSignatureType;->$values()[Lcom/google/crypto/tink/proto/SlhDsaSignatureType;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/proto/SlhDsaSignatureType;->$VALUES:[Lcom/google/crypto/tink/proto/SlhDsaSignatureType;

    .line 76
    new-instance v0, Lcom/google/crypto/tink/proto/SlhDsaSignatureType$1;

    invoke-direct {v0}, Lcom/google/crypto/tink/proto/SlhDsaSignatureType$1;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/proto/SlhDsaSignatureType;->internalValueMap:Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap;

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

    .line 101
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 102
    iput p3, p0, Lcom/google/crypto/tink/proto/SlhDsaSignatureType;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/google/crypto/tink/proto/SlhDsaSignatureType;
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
    sget-object p0, Lcom/google/crypto/tink/proto/SlhDsaSignatureType;->SMALL_SIGNATURE:Lcom/google/crypto/tink/proto/SlhDsaSignatureType;

    return-object p0

    .line 65
    :cond_1
    sget-object p0, Lcom/google/crypto/tink/proto/SlhDsaSignatureType;->FAST_SIGNING:Lcom/google/crypto/tink/proto/SlhDsaSignatureType;

    return-object p0

    .line 64
    :cond_2
    sget-object p0, Lcom/google/crypto/tink/proto/SlhDsaSignatureType;->SLH_DSA_SIGNATURE_TYPE_UNSPECIFIED:Lcom/google/crypto/tink/proto/SlhDsaSignatureType;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/crypto/tink/proto/SlhDsaSignatureType;",
            ">;"
        }
    .end annotation

    .line 73
    sget-object v0, Lcom/google/crypto/tink/proto/SlhDsaSignatureType;->internalValueMap:Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 86
    sget-object v0, Lcom/google/crypto/tink/proto/SlhDsaSignatureType$SlhDsaSignatureTypeVerifier;->INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/crypto/tink/proto/SlhDsaSignatureType;
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
    invoke-static {p0}, Lcom/google/crypto/tink/proto/SlhDsaSignatureType;->forNumber(I)Lcom/google/crypto/tink/proto/SlhDsaSignatureType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/crypto/tink/proto/SlhDsaSignatureType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 11
    const-class v0, Lcom/google/crypto/tink/proto/SlhDsaSignatureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/SlhDsaSignatureType;

    return-object p0
.end method

.method public static values()[Lcom/google/crypto/tink/proto/SlhDsaSignatureType;
    .locals 1

    .line 11
    sget-object v0, Lcom/google/crypto/tink/proto/SlhDsaSignatureType;->$VALUES:[Lcom/google/crypto/tink/proto/SlhDsaSignatureType;

    invoke-virtual {v0}, [Lcom/google/crypto/tink/proto/SlhDsaSignatureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/crypto/tink/proto/SlhDsaSignatureType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    .line 45
    sget-object v0, Lcom/google/crypto/tink/proto/SlhDsaSignatureType;->UNRECOGNIZED:Lcom/google/crypto/tink/proto/SlhDsaSignatureType;

    if-eq p0, v0, :cond_0

    .line 49
    iget v0, p0, Lcom/google/crypto/tink/proto/SlhDsaSignatureType;->value:I

    return v0

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
