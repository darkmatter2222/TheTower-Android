.class public final Lcom/unity3d/coherence/CommonAttributesConfig;
.super Ljava/lang/Object;
.source "CommonAttributesConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/coherence/CommonAttributesConfig$Builder;
    }
.end annotation


# instance fields
.field private final eventId:I

.field private final productId:I


# direct methods
.method private constructor <init>(II)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lcom/unity3d/coherence/CommonAttributesConfig;->productId:I

    .line 42
    iput p2, p0, Lcom/unity3d/coherence/CommonAttributesConfig;->eventId:I

    return-void
.end method

.method synthetic constructor <init>(IILcom/unity3d/coherence/CommonAttributesConfig-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/unity3d/coherence/CommonAttributesConfig;-><init>(II)V

    return-void
.end method


# virtual methods
.method getEventId()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/unity3d/coherence/CommonAttributesConfig;->eventId:I

    return v0
.end method

.method getProductId()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/unity3d/coherence/CommonAttributesConfig;->productId:I

    return v0
.end method
