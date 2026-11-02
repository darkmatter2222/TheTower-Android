.class public interface abstract Lcom/google/crypto/tink/daead/subtle/DeterministicAeads;
.super Ljava/lang/Object;
.source "DeterministicAeads.java"

# interfaces
.implements Lcom/google/crypto/tink/DeterministicAead;


# virtual methods
.method public varargs abstract decryptDeterministicallyWithAssociatedDatas([B[[B)[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "ciphertext",
            "associatedDatas"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

.method public varargs abstract encryptDeterministicallyWithAssociatedDatas([B[[B)[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "plaintext",
            "associatedDatas"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method
