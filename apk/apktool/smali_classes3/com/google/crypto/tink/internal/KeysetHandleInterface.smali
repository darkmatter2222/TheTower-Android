.class public interface abstract Lcom/google/crypto/tink/internal/KeysetHandleInterface;
.super Ljava/lang/Object;
.source "KeysetHandleInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/internal/KeysetHandleInterface$Entry;
    }
.end annotation


# virtual methods
.method public abstract getAt(I)Lcom/google/crypto/tink/internal/KeysetHandleInterface$Entry;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation
.end method

.method public abstract getPrimary()Lcom/google/crypto/tink/internal/KeysetHandleInterface$Entry;
.end method

.method public abstract size()I
.end method
