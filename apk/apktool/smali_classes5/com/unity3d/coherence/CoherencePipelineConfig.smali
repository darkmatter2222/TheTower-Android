.class public final Lcom/unity3d/coherence/CoherencePipelineConfig;
.super Ljava/lang/Object;
.source "CoherencePipelineConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/coherence/CoherencePipelineConfig$Builder;
    }
.end annotation


# instance fields
.field private final concurrency:I

.field private final wasmBytes:[B


# direct methods
.method private constructor <init>([BI)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/unity3d/coherence/CoherencePipelineConfig;->wasmBytes:[B

    .line 25
    iput p2, p0, Lcom/unity3d/coherence/CoherencePipelineConfig;->concurrency:I

    return-void
.end method

.method synthetic constructor <init>([BILcom/unity3d/coherence/CoherencePipelineConfig-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/unity3d/coherence/CoherencePipelineConfig;-><init>([BI)V

    return-void
.end method


# virtual methods
.method getConcurrency()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/unity3d/coherence/CoherencePipelineConfig;->concurrency:I

    return v0
.end method

.method getWasmBytes()[B
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/unity3d/coherence/CoherencePipelineConfig;->wasmBytes:[B

    return-object v0
.end method
