.class final Lcom/unity3d/coherence/NativeCoherenceProvider;
.super Ljava/lang/Object;
.source "NativeCoherenceProvider.java"

# interfaces
.implements Lcom/unity3d/coherence/CoherenceProvider;


# instance fields
.field private final library:Lcom/unity3d/coherence/CoherenceLibrary;


# direct methods
.method constructor <init>(Lcom/unity3d/coherence/CoherenceLibrary;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/unity3d/coherence/NativeCoherenceProvider;->library:Lcom/unity3d/coherence/CoherenceLibrary;

    return-void
.end method


# virtual methods
.method public create(Lcom/unity3d/coherence/CoherencePipelineConfig;)Lcom/unity3d/coherence/CoherencePipeline;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/unity3d/coherence/CoherenceException;
        }
    .end annotation

    .line 13
    new-instance v0, Lcom/unity3d/coherence/NativeCoherencePipeline;

    iget-object v1, p0, Lcom/unity3d/coherence/NativeCoherenceProvider;->library:Lcom/unity3d/coherence/CoherenceLibrary;

    invoke-virtual {v1}, Lcom/unity3d/coherence/CoherenceLibrary;->apiPtr()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/unity3d/coherence/CoherencePipelineConfig;->getWasmBytes()[B

    move-result-object v3

    invoke-virtual {p1}, Lcom/unity3d/coherence/CoherencePipelineConfig;->getConcurrency()I

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/unity3d/coherence/NativeCoherencePipeline;-><init>(J[BI)V

    return-object v0
.end method
