.class public final Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;
.super Ljava/lang/Object;
.source "MlDsaParameters.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/signature/MlDsaParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MlDsaInstance"
.end annotation


# static fields
.field public static final ML_DSA_65:Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;

.field public static final ML_DSA_87:Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    new-instance v0, Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;

    const-string v1, "ML_DSA_65"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;->ML_DSA_65:Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;

    .line 57
    new-instance v0, Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;

    const-string v1, "ML_DSA_87"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;->ML_DSA_87:Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;->name:Ljava/lang/String;

    return-object v0
.end method
