.class public final enum Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;
.super Ljava/lang/Enum;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Utf8Validation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation$Utf8ValidationVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;",
        ">;",
        "Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;

.field public static final enum NONE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;

.field public static final NONE_VALUE:I = 0x3

.field public static final enum UTF8_VALIDATION_UNKNOWN:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;

.field public static final UTF8_VALIDATION_UNKNOWN_VALUE:I = 0x0

.field public static final enum VERIFY:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;

.field public static final VERIFY_VALUE:I = 0x2

.field private static final internalValueMap:Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;
    .locals 3

    .line 25495
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;->UTF8_VALIDATION_UNKNOWN:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;->VERIFY:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;

    sget-object v2, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;->NONE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;

    filled-new-array {v0, v1, v2}, [Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 25500
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;

    const-string v1, "UTF8_VALIDATION_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;->UTF8_VALIDATION_UNKNOWN:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;

    .line 25504
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;

    const-string v1, "VERIFY"

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;->VERIFY:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;

    .line 25508
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;

    const-string v1, "NONE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;->NONE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;

    .line 25495
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;->$values()[Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;->$VALUES:[Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;

    .line 25554
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation$1;

    invoke-direct {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation$1;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;->internalValueMap:Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap;

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

    .line 25579
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25580
    iput p3, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;
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

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 25544
    :cond_0
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;->NONE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;

    return-object p0

    .line 25543
    :cond_1
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;->VERIFY:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;

    return-object p0

    .line 25542
    :cond_2
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;->UTF8_VALIDATION_UNKNOWN:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;",
            ">;"
        }
    .end annotation

    .line 25551
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;->internalValueMap:Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 25564
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation$Utf8ValidationVerifier;->INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;
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

    .line 25537
    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;->forNumber(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 25495
    const-class v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;

    return-object p0
.end method

.method public static values()[Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;
    .locals 1

    .line 25495
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;->$VALUES:[Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;

    invoke-virtual {v0}, [Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 25527
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;->value:I

    return v0
.end method
