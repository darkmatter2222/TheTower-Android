.class final Lcom/google/crypto/tink/proto/MlDsaInstance$MlDsaInstanceVerifier;
.super Ljava/lang/Object;
.source "MlDsaInstance.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/proto/MlDsaInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MlDsaInstanceVerifier"
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 96
    new-instance v0, Lcom/google/crypto/tink/proto/MlDsaInstance$MlDsaInstanceVerifier;

    invoke-direct {v0}, Lcom/google/crypto/tink/proto/MlDsaInstance$MlDsaInstanceVerifier;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/proto/MlDsaInstance$MlDsaInstanceVerifier;->INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 93
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

    .line 99
    invoke-static {p1}, Lcom/google/crypto/tink/proto/MlDsaInstance;->forNumber(I)Lcom/google/crypto/tink/proto/MlDsaInstance;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
