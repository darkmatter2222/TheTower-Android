.class public final Lcom/google/crypto/tink/signature/SlhDsaParameters$SignatureType;
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
    name = "SignatureType"
.end annotation


# static fields
.field public static final FAST_SIGNING:Lcom/google/crypto/tink/signature/SlhDsaParameters$SignatureType;

.field public static final SMALL_SIGNATURE:Lcom/google/crypto/tink/signature/SlhDsaParameters$SignatureType;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 69
    new-instance v0, Lcom/google/crypto/tink/signature/SlhDsaParameters$SignatureType;

    const-string v1, "F"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/signature/SlhDsaParameters$SignatureType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/signature/SlhDsaParameters$SignatureType;->FAST_SIGNING:Lcom/google/crypto/tink/signature/SlhDsaParameters$SignatureType;

    .line 70
    new-instance v0, Lcom/google/crypto/tink/signature/SlhDsaParameters$SignatureType;

    const-string v1, "S"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/signature/SlhDsaParameters$SignatureType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/signature/SlhDsaParameters$SignatureType;->SMALL_SIGNATURE:Lcom/google/crypto/tink/signature/SlhDsaParameters$SignatureType;

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

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/google/crypto/tink/signature/SlhDsaParameters$SignatureType;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/google/crypto/tink/signature/SlhDsaParameters$SignatureType;->name:Ljava/lang/String;

    return-object v0
.end method
