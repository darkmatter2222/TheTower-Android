.class public final enum Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;
.super Ljava/lang/Enum;
.source "Field.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/Field;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Cardinality"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality$CardinalityVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;",
        ">;",
        "Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;

.field public static final enum CARDINALITY_OPTIONAL:Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;

.field public static final CARDINALITY_OPTIONAL_VALUE:I = 0x1

.field public static final enum CARDINALITY_REPEATED:Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;

.field public static final CARDINALITY_REPEATED_VALUE:I = 0x3

.field public static final enum CARDINALITY_REQUIRED:Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;

.field public static final CARDINALITY_REQUIRED_VALUE:I = 0x2

.field public static final enum CARDINALITY_UNKNOWN:Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;

.field public static final CARDINALITY_UNKNOWN_VALUE:I

.field public static final enum UNRECOGNIZED:Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;

.field private static final internalValueMap:Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;
    .locals 5

    .line 270
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;->CARDINALITY_UNKNOWN:Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;->CARDINALITY_OPTIONAL:Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;

    sget-object v2, Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;->CARDINALITY_REQUIRED:Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;

    sget-object v3, Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;->CARDINALITY_REPEATED:Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;->UNRECOGNIZED:Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 275
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;

    const-string v1, "CARDINALITY_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;->CARDINALITY_UNKNOWN:Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;

    .line 279
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;

    const-string v1, "CARDINALITY_OPTIONAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;->CARDINALITY_OPTIONAL:Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;

    .line 283
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;

    const-string v1, "CARDINALITY_REQUIRED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;->CARDINALITY_REQUIRED:Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;

    .line 287
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;

    const-string v1, "CARDINALITY_REPEATED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;->CARDINALITY_REPEATED:Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;

    .line 288
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;

    const/4 v1, 0x4

    const/4 v2, -0x1

    const-string v3, "UNRECOGNIZED"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;->UNRECOGNIZED:Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;

    .line 270
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;->$values()[Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;->$VALUES:[Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;

    .line 343
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality$1;

    invoke-direct {v0}, Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality$1;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;->internalValueMap:Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap;

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

    .line 368
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 369
    iput p3, p0, Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 333
    :cond_0
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;->CARDINALITY_REPEATED:Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;

    return-object p0

    .line 332
    :cond_1
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;->CARDINALITY_REQUIRED:Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;

    return-object p0

    .line 331
    :cond_2
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;->CARDINALITY_OPTIONAL:Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;

    return-object p0

    .line 330
    :cond_3
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;->CARDINALITY_UNKNOWN:Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;",
            ">;"
        }
    .end annotation

    .line 340
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;->internalValueMap:Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 353
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality$CardinalityVerifier;->INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;
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

    .line 325
    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;->forNumber(I)Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 270
    const-class v0, Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;

    return-object p0
.end method

.method public static values()[Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;
    .locals 1

    .line 270
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;->$VALUES:[Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;

    invoke-virtual {v0}, [Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    .line 311
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;->UNRECOGNIZED:Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;

    if-eq p0, v0, :cond_0

    .line 315
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;->value:I

    return v0

    .line 312
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
