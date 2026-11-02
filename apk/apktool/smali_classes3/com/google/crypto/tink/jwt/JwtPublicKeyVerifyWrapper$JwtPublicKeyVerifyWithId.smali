.class Lcom/google/crypto/tink/jwt/JwtPublicKeyVerifyWrapper$JwtPublicKeyVerifyWithId;
.super Ljava/lang/Object;
.source "JwtPublicKeyVerifyWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/jwt/JwtPublicKeyVerifyWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JwtPublicKeyVerifyWithId"
.end annotation


# instance fields
.field final id:I

.field final verify:Lcom/google/crypto/tink/jwt/JwtPublicKeyVerify;


# direct methods
.method constructor <init>(Lcom/google/crypto/tink/jwt/JwtPublicKeyVerify;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "verify",
            "id"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/crypto/tink/jwt/JwtPublicKeyVerifyWrapper$JwtPublicKeyVerifyWithId;->verify:Lcom/google/crypto/tink/jwt/JwtPublicKeyVerify;

    .line 39
    iput p2, p0, Lcom/google/crypto/tink/jwt/JwtPublicKeyVerifyWrapper$JwtPublicKeyVerifyWithId;->id:I

    return-void
.end method
