.class public interface abstract Lcom/google/crypto/tink/internal/KeysetHandleInterface$Entry;
.super Ljava/lang/Object;
.source "KeysetHandleInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/internal/KeysetHandleInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Entry"
.end annotation


# virtual methods
.method public abstract getId()I
.end method

.method public abstract getKey()Lcom/google/crypto/tink/Key;
.end method

.method public abstract getStatus()Lcom/google/crypto/tink/KeyStatus;
.end method

.method public abstract isPrimary()Z
.end method
