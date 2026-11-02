.class public interface abstract Lcom/unity3d/coherence/CoherencePipeline;
.super Ljava/lang/Object;
.source "CoherencePipeline.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# virtual methods
.method public abstract close()V
.end method

.method public abstract execute([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/unity3d/coherence/CoherenceException;
        }
    .end annotation
.end method

.method public abstract getConcurrency()I
.end method

.method public abstract load([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/unity3d/coherence/CoherenceException;
        }
    .end annotation
.end method
