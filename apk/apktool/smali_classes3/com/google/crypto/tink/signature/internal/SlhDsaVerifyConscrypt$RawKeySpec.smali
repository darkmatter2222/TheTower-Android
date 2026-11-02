.class public final Lcom/google/crypto/tink/signature/internal/SlhDsaVerifyConscrypt$RawKeySpec;
.super Ljava/security/spec/EncodedKeySpec;
.source "SlhDsaVerifyConscrypt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/signature/internal/SlhDsaVerifyConscrypt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RawKeySpec"
.end annotation


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encoded"
        }
    .end annotation

    .line 155
    invoke-direct {p0, p1}, Ljava/security/spec/EncodedKeySpec;-><init>([B)V

    return-void
.end method


# virtual methods
.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 160
    const-string v0, "raw"

    return-object v0
.end method
