.class public final Lcom/unity3d/coherence/CoherencePipelineConfig$Builder;
.super Ljava/lang/Object;
.source "CoherencePipelineConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/coherence/CoherencePipelineConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private concurrency:I

.field private wasmBytes:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 39
    iput v0, p0, Lcom/unity3d/coherence/CoherencePipelineConfig$Builder;->concurrency:I

    return-void
.end method


# virtual methods
.method public build()Lcom/unity3d/coherence/CoherencePipelineConfig;
    .locals 4

    .line 66
    new-instance v0, Lcom/unity3d/coherence/CoherencePipelineConfig;

    iget-object v1, p0, Lcom/unity3d/coherence/CoherencePipelineConfig$Builder;->wasmBytes:[B

    iget v2, p0, Lcom/unity3d/coherence/CoherencePipelineConfig$Builder;->concurrency:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/unity3d/coherence/CoherencePipelineConfig;-><init>([BILcom/unity3d/coherence/CoherencePipelineConfig-IA;)V

    return-object v0
.end method

.method public setConcurrency(I)Lcom/unity3d/coherence/CoherencePipelineConfig$Builder;
    .locals 0

    .line 55
    iput p1, p0, Lcom/unity3d/coherence/CoherencePipelineConfig$Builder;->concurrency:I

    return-object p0
.end method

.method public setWasmBytes([B)Lcom/unity3d/coherence/CoherencePipelineConfig$Builder;
    .locals 1

    .line 48
    const-string v0, "wasmBytes must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/unity3d/coherence/CoherencePipelineConfig$Builder;->wasmBytes:[B

    return-object p0
.end method
