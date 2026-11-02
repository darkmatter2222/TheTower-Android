.class public final Lcom/unity3d/coherence/CommonAttributesConfig$Builder;
.super Ljava/lang/Object;
.source "CommonAttributesConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/coherence/CommonAttributesConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private eventId:I

.field private productId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcom/unity3d/coherence/CommonAttributesConfig$Builder;->productId:I

    .line 56
    iput v0, p0, Lcom/unity3d/coherence/CommonAttributesConfig$Builder;->eventId:I

    return-void
.end method


# virtual methods
.method public build()Lcom/unity3d/coherence/CommonAttributesConfig;
    .locals 4

    .line 83
    new-instance v0, Lcom/unity3d/coherence/CommonAttributesConfig;

    iget v1, p0, Lcom/unity3d/coherence/CommonAttributesConfig$Builder;->productId:I

    iget v2, p0, Lcom/unity3d/coherence/CommonAttributesConfig$Builder;->eventId:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/unity3d/coherence/CommonAttributesConfig;-><init>(IILcom/unity3d/coherence/CommonAttributesConfig-IA;)V

    return-object v0
.end method

.method public setEventId(I)Lcom/unity3d/coherence/CommonAttributesConfig$Builder;
    .locals 0

    .line 77
    iput p1, p0, Lcom/unity3d/coherence/CommonAttributesConfig$Builder;->eventId:I

    return-object p0
.end method

.method public setProductId(I)Lcom/unity3d/coherence/CommonAttributesConfig$Builder;
    .locals 0

    .line 66
    iput p1, p0, Lcom/unity3d/coherence/CommonAttributesConfig$Builder;->productId:I

    return-object p0
.end method
