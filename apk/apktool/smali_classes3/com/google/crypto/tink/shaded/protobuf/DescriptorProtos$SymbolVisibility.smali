.class public final enum Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SymbolVisibility;
.super Ljava/lang/Enum;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SymbolVisibility"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SymbolVisibility$SymbolVisibilityVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SymbolVisibility;",
        ">;",
        "Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SymbolVisibility;

.field public static final enum VISIBILITY_EXPORT:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SymbolVisibility;

.field public static final VISIBILITY_EXPORT_VALUE:I = 0x2

.field public static final enum VISIBILITY_LOCAL:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SymbolVisibility;

.field public static final VISIBILITY_LOCAL_VALUE:I = 0x1

.field public static final enum VISIBILITY_UNSET:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SymbolVisibility;

.field public static final VISIBILITY_UNSET_VALUE:I

.field private static final internalValueMap:Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SymbolVisibility;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SymbolVisibility;
    .locals 3

    .line 192
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SymbolVisibility;->VISIBILITY_UNSET:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SymbolVisibility;

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SymbolVisibility;->VISIBILITY_LOCAL:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SymbolVisibility;

    sget-object v2, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SymbolVisibility;->VISIBILITY_EXPORT:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SymbolVisibility;

    filled-new-array {v0, v1, v2}, [Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SymbolVisibility;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 197
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SymbolVisibility;

    const-string v1, "VISIBILITY_UNSET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SymbolVisibility;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SymbolVisibility;->VISIBILITY_UNSET:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SymbolVisibility;

    .line 201
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SymbolVisibility;

    const-string v1, "VISIBILITY_LOCAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SymbolVisibility;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SymbolVisibility;->VISIBILITY_LOCAL:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SymbolVisibility;

    .line 205
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SymbolVisibility;

    const-string v1, "VISIBILITY_EXPORT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SymbolVisibility;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SymbolVisibility;->VISIBILITY_EXPORT:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SymbolVisibility;

    .line 192
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SymbolVisibility;->$values()[Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SymbolVisibility;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SymbolVisibility;->$VALUES:[Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SymbolVisibility;

    .line 251
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SymbolVisibility$1;

    invoke-direct {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SymbolVisibility$1;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SymbolVisibility;->internalValueMap:Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap;

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

    .line 276
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 277
    iput p3, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SymbolVisibility;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SymbolVisibility;
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

    .line 241
    :cond_0
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SymbolVisibility;->VISIBILITY_EXPORT:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SymbolVisibility;

    return-object p0

    .line 240
    :cond_1
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SymbolVisibility;->VISIBILITY_LOCAL:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SymbolVisibility;

    return-object p0

    .line 239
    :cond_2
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SymbolVisibility;->VISIBILITY_UNSET:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SymbolVisibility;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SymbolVisibility;",
            ">;"
        }
    .end annotation

    .line 248
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SymbolVisibility;->internalValueMap:Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 261
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SymbolVisibility$SymbolVisibilityVerifier;->INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SymbolVisibility;
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

    .line 234
    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SymbolVisibility;->forNumber(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SymbolVisibility;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SymbolVisibility;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 192
    const-class v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SymbolVisibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SymbolVisibility;

    return-object p0
.end method

.method public static values()[Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SymbolVisibility;
    .locals 1

    .line 192
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SymbolVisibility;->$VALUES:[Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SymbolVisibility;

    invoke-virtual {v0}, [Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SymbolVisibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SymbolVisibility;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 224
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SymbolVisibility;->value:I

    return v0
.end method
