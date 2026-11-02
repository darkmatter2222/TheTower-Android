.class public final Lcom/unity3d/coherence/CoherenceInitConfig$Builder;
.super Ljava/lang/Object;
.source "CoherenceInitConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/coherence/CoherenceInitConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private source:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, "context must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 54
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    .line 57
    :cond_0
    iput-object p1, p0, Lcom/unity3d/coherence/CoherenceInitConfig$Builder;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public build()Lcom/unity3d/coherence/CoherenceInitConfig;
    .locals 4

    .line 70
    new-instance v0, Lcom/unity3d/coherence/CoherenceInitConfig;

    iget-object v1, p0, Lcom/unity3d/coherence/CoherenceInitConfig$Builder;->context:Landroid/content/Context;

    iget v2, p0, Lcom/unity3d/coherence/CoherenceInitConfig$Builder;->source:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/unity3d/coherence/CoherenceInitConfig;-><init>(Landroid/content/Context;ILcom/unity3d/coherence/CoherenceInitConfig-IA;)V

    return-object v0
.end method

.method public setSource(I)Lcom/unity3d/coherence/CoherenceInitConfig$Builder;
    .locals 0

    .line 63
    iput p1, p0, Lcom/unity3d/coherence/CoherenceInitConfig$Builder;->source:I

    return-object p0
.end method
