.class public final Lcom/google/crypto/tink/signature/SlhDsaParameters$HashType;
.super Ljava/lang/Object;
.source "SlhDsaParameters.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/signature/SlhDsaParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HashType"
.end annotation


# static fields
.field public static final SHA2:Lcom/google/crypto/tink/signature/SlhDsaParameters$HashType;

.field public static final SHAKE:Lcom/google/crypto/tink/signature/SlhDsaParameters$HashType;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Lcom/google/crypto/tink/signature/SlhDsaParameters$HashType;

    const-string v1, "SHA2"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/signature/SlhDsaParameters$HashType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/signature/SlhDsaParameters$HashType;->SHA2:Lcom/google/crypto/tink/signature/SlhDsaParameters$HashType;

    .line 52
    new-instance v0, Lcom/google/crypto/tink/signature/SlhDsaParameters$HashType;

    const-string v1, "SHAKE"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/signature/SlhDsaParameters$HashType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/signature/SlhDsaParameters$HashType;->SHAKE:Lcom/google/crypto/tink/signature/SlhDsaParameters$HashType;

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

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/google/crypto/tink/signature/SlhDsaParameters$HashType;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/google/crypto/tink/signature/SlhDsaParameters$HashType;->name:Ljava/lang/String;

    return-object v0
.end method
