.class public final Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;
.super Ljava/lang/Object;
.source "UnityNativeTemplateTextStyle.java"


# instance fields
.field private final backgroundColor:Landroid/graphics/drawable/ColorDrawable;

.field private final fontStyle:Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;

.field private final size:Ljava/lang/Double;

.field private final textColor:Landroid/graphics/drawable/ColorDrawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/ColorDrawable;Landroid/graphics/drawable/ColorDrawable;Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;Ljava/lang/Double;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "textColor",
            "backgroundColor",
            "fontStyle",
            "size"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;->textColor:Landroid/graphics/drawable/ColorDrawable;

    .line 37
    iput-object p2, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;->backgroundColor:Landroid/graphics/drawable/ColorDrawable;

    .line 38
    iput-object p3, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;->fontStyle:Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;

    .line 39
    iput-object p4, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;->size:Ljava/lang/Double;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 68
    instance-of v2, p1, Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;

    if-nez v2, :cond_1

    goto :goto_0

    .line 72
    :cond_1
    check-cast p1, Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;

    .line 73
    iget-object v2, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;->textColor:Landroid/graphics/drawable/ColorDrawable;

    if-nez v2, :cond_2

    iget-object v3, p1, Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;->textColor:Landroid/graphics/drawable/ColorDrawable;

    if-eqz v3, :cond_3

    .line 74
    :cond_2
    invoke-virtual {v2}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v2

    iget-object v3, p1, Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;->textColor:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v3

    if-ne v2, v3, :cond_6

    :cond_3
    iget-object v2, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;->backgroundColor:Landroid/graphics/drawable/ColorDrawable;

    if-nez v2, :cond_4

    iget-object v3, p1, Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;->backgroundColor:Landroid/graphics/drawable/ColorDrawable;

    if-eqz v3, :cond_5

    .line 76
    :cond_4
    invoke-virtual {v2}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v2

    iget-object v3, p1, Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;->backgroundColor:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v3

    if-ne v2, v3, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;->size:Ljava/lang/Double;

    iget-object v3, p1, Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;->size:Ljava/lang/Double;

    .line 77
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;->fontStyle:Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;

    iget-object p1, p1, Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;->fontStyle:Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;

    .line 78
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    return v0

    :cond_6
    :goto_0
    return v1
.end method

.method public getBackgroundColor()Landroid/graphics/drawable/ColorDrawable;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;->backgroundColor:Landroid/graphics/drawable/ColorDrawable;

    return-object v0
.end method

.method public getFontStyle()Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;->fontStyle:Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;

    return-object v0
.end method

.method public getSize()Ljava/lang/Float;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;->size:Ljava/lang/Double;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getTextColor()Landroid/graphics/drawable/ColorDrawable;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;->textColor:Landroid/graphics/drawable/ColorDrawable;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 83
    iget-object v0, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;->textColor:Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 84
    :goto_0
    iget-object v2, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;->backgroundColor:Landroid/graphics/drawable/ColorDrawable;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 85
    :goto_1
    iget-object v2, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;->size:Ljava/lang/Double;

    iget-object v3, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;->fontStyle:Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
