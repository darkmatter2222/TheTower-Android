.class Lcom/google/crypto/tink/jwt/JwtMacWrapper$JwtMacWithId;
.super Ljava/lang/Object;
.source "JwtMacWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/jwt/JwtMacWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JwtMacWithId"
.end annotation


# instance fields
.field final id:I

.field final jwtMac:Lcom/google/crypto/tink/jwt/JwtMac;


# direct methods
.method constructor <init>(Lcom/google/crypto/tink/jwt/JwtMac;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "jwtMac",
            "id"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/crypto/tink/jwt/JwtMacWrapper$JwtMacWithId;->jwtMac:Lcom/google/crypto/tink/jwt/JwtMac;

    .line 39
    iput p2, p0, Lcom/google/crypto/tink/jwt/JwtMacWrapper$JwtMacWithId;->id:I

    return-void
.end method
