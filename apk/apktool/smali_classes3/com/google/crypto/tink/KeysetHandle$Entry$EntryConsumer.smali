.class interface abstract Lcom/google/crypto/tink/KeysetHandle$Entry$EntryConsumer;
.super Ljava/lang/Object;
.source "KeysetHandle.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/KeysetHandle$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "EntryConsumer"
.end annotation


# virtual methods
.method public abstract accept(Lcom/google/crypto/tink/KeysetHandle$Entry;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation
.end method
