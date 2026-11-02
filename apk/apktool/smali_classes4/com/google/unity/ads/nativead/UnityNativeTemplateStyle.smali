.class public final Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;
.super Ljava/lang/Object;
.source "UnityNativeTemplateStyle.java"


# instance fields
.field final callToActionStyle:Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;

.field final mainBackgroundColor:Landroid/graphics/drawable/ColorDrawable;

.field final primaryTextStyle:Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;

.field final secondaryTextStyle:Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;

.field final templateType:Lcom/google/unity/ads/nativead/UnityNativeTemplateType;

.field final tertiaryTextStyle:Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;


# direct methods
.method public constructor <init>(Lcom/google/unity/ads/nativead/UnityNativeTemplateType;Landroid/graphics/drawable/ColorDrawable;Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "templateType",
            "mainBackgroundColor",
            "callToActionStyle",
            "primaryTextStyle",
            "secondaryTextStyle",
            "tertiaryTextStyle"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;->templateType:Lcom/google/unity/ads/nativead/UnityNativeTemplateType;

    .line 46
    iput-object p2, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;->mainBackgroundColor:Landroid/graphics/drawable/ColorDrawable;

    .line 47
    iput-object p3, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;->callToActionStyle:Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;

    .line 48
    iput-object p4, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;->primaryTextStyle:Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;

    .line 49
    iput-object p5, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;->secondaryTextStyle:Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;

    .line 50
    iput-object p6, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;->tertiaryTextStyle:Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;

    return-void
.end method

.method private asNativeTemplateStyle()Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;
    .locals 2

    .line 128
    new-instance v0, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;

    invoke-direct {v0}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;-><init>()V

    .line 129
    iget-object v1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;->mainBackgroundColor:Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_0

    .line 130
    invoke-virtual {v0, v1}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;->withMainBackgroundColor(Landroid/graphics/drawable/ColorDrawable;)Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;->callToActionStyle:Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;

    if-eqz v1, :cond_4

    .line 133
    invoke-virtual {v1}, Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;->getBackgroundColor()Landroid/graphics/drawable/ColorDrawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 134
    iget-object v1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;->callToActionStyle:Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;

    invoke-virtual {v1}, Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;->getBackgroundColor()Landroid/graphics/drawable/ColorDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;->withCallToActionBackgroundColor(Landroid/graphics/drawable/ColorDrawable;)Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;

    .line 136
    :cond_1
    iget-object v1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;->callToActionStyle:Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;

    invoke-virtual {v1}, Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;->getTextColor()Landroid/graphics/drawable/ColorDrawable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 137
    iget-object v1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;->callToActionStyle:Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;

    invoke-virtual {v1}, Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;->getTextColor()Landroid/graphics/drawable/ColorDrawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;->withCallToActionTypefaceColor(I)Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;

    .line 139
    :cond_2
    iget-object v1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;->callToActionStyle:Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;

    invoke-virtual {v1}, Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;->getFontStyle()Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 140
    iget-object v1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;->callToActionStyle:Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;

    invoke-virtual {v1}, Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;->getFontStyle()Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;->withCallToActionTextTypeface(Landroid/graphics/Typeface;)Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;

    .line 142
    :cond_3
    iget-object v1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;->callToActionStyle:Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;

    invoke-virtual {v1}, Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;->getSize()Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 143
    iget-object v1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;->callToActionStyle:Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;

    invoke-virtual {v1}, Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;->getSize()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;->withCallToActionTextSize(F)Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;

    .line 146
    :cond_4
    iget-object v1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;->primaryTextStyle:Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;

    if-eqz v1, :cond_8

    .line 147
    invoke-virtual {v1}, Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;->getBackgroundColor()Landroid/graphics/drawable/ColorDrawable;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 148
    iget-object v1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;->primaryTextStyle:Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;

    invoke-virtual {v1}, Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;->getBackgroundColor()Landroid/graphics/drawable/ColorDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;->withPrimaryTextBackgroundColor(Landroid/graphics/drawable/ColorDrawable;)Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;

    .line 150
    :cond_5
    iget-object v1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;->primaryTextStyle:Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;

    invoke-virtual {v1}, Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;->getTextColor()Landroid/graphics/drawable/ColorDrawable;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 151
    iget-object v1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;->primaryTextStyle:Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;

    invoke-virtual {v1}, Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;->getTextColor()Landroid/graphics/drawable/ColorDrawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;->withPrimaryTextTypefaceColor(I)Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;

    .line 153
    :cond_6
    iget-object v1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;->primaryTextStyle:Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;

    invoke-virtual {v1}, Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;->getFontStyle()Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 154
    iget-object v1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;->primaryTextStyle:Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;

    invoke-virtual {v1}, Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;->getFontStyle()Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;->withPrimaryTextTypeface(Landroid/graphics/Typeface;)Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;

    .line 156
    :cond_7
    iget-object v1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;->primaryTextStyle:Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;

    invoke-virtual {v1}, Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;->getSize()Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 157
    iget-object v1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;->primaryTextStyle:Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;

    invoke-virtual {v1}, Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;->getSize()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;->withPrimaryTextSize(F)Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;

    .line 160
    :cond_8
    iget-object v1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;->secondaryTextStyle:Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;

    if-eqz v1, :cond_c

    .line 161
    invoke-virtual {v1}, Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;->getBackgroundColor()Landroid/graphics/drawable/ColorDrawable;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 162
    iget-object v1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;->secondaryTextStyle:Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;

    invoke-virtual {v1}, Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;->getBackgroundColor()Landroid/graphics/drawable/ColorDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;->withSecondaryTextBackgroundColor(Landroid/graphics/drawable/ColorDrawable;)Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;

    .line 164
    :cond_9
    iget-object v1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;->secondaryTextStyle:Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;

    invoke-virtual {v1}, Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;->getTextColor()Landroid/graphics/drawable/ColorDrawable;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 165
    iget-object v1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;->secondaryTextStyle:Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;

    invoke-virtual {v1}, Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;->getTextColor()Landroid/graphics/drawable/ColorDrawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;->withSecondaryTextTypefaceColor(I)Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;

    .line 167
    :cond_a
    iget-object v1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;->secondaryTextStyle:Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;

    invoke-virtual {v1}, Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;->getFontStyle()Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 168
    iget-object v1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;->secondaryTextStyle:Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;

    invoke-virtual {v1}, Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;->getFontStyle()Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;->withSecondaryTextTypeface(Landroid/graphics/Typeface;)Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;

    .line 170
    :cond_b
    iget-object v1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;->secondaryTextStyle:Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;

    invoke-virtual {v1}, Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;->getSize()Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 171
    iget-object v1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;->secondaryTextStyle:Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;

    invoke-virtual {v1}, Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;->getSize()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;->withSecondaryTextSize(F)Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;

    .line 174
    :cond_c
    iget-object v1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;->tertiaryTextStyle:Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;

    if-eqz v1, :cond_10

    .line 175
    invoke-virtual {v1}, Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;->getBackgroundColor()Landroid/graphics/drawable/ColorDrawable;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 176
    iget-object v1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;->tertiaryTextStyle:Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;

    invoke-virtual {v1}, Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;->getBackgroundColor()Landroid/graphics/drawable/ColorDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;->withTertiaryTextBackgroundColor(Landroid/graphics/drawable/ColorDrawable;)Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;

    .line 178
    :cond_d
    iget-object v1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;->tertiaryTextStyle:Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;

    invoke-virtual {v1}, Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;->getTextColor()Landroid/graphics/drawable/ColorDrawable;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 179
    iget-object v1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;->tertiaryTextStyle:Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;

    invoke-virtual {v1}, Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;->getTextColor()Landroid/graphics/drawable/ColorDrawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;->withTertiaryTextTypefaceColor(I)Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;

    .line 181
    :cond_e
    iget-object v1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;->tertiaryTextStyle:Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;

    invoke-virtual {v1}, Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;->getFontStyle()Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 182
    iget-object v1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;->tertiaryTextStyle:Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;

    invoke-virtual {v1}, Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;->getFontStyle()Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;->withTertiaryTextTypeface(Landroid/graphics/Typeface;)Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;

    .line 184
    :cond_f
    iget-object v1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;->tertiaryTextStyle:Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;

    invoke-virtual {v1}, Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;->getSize()Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 185
    iget-object v1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;->tertiaryTextStyle:Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;

    invoke-virtual {v1}, Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;->getSize()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;->withTertiaryTextSize(F)Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;

    .line 188
    :cond_10
    invoke-virtual {v0}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle$Builder;->build()Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public asTemplateView(Landroid/content/Context;)Lcom/google/android/ads/nativetemplates/TemplateView;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 55
    const-string v0, "layout_inflater"

    .line 56
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 57
    iget-object v0, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;->templateType:Lcom/google/unity/ads/nativead/UnityNativeTemplateType;

    .line 58
    invoke-virtual {v0}, Lcom/google/unity/ads/nativead/UnityNativeTemplateType;->resourceId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/ads/nativetemplates/TemplateView;

    if-nez p1, :cond_0

    return-object v1

    .line 63
    :cond_0
    invoke-direct {p0}, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;->asNativeTemplateStyle()Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/ads/nativetemplates/TemplateView;->setStyles(Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;)V

    return-object p1
.end method

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

    if-eqz p1, :cond_4

    .line 103
    instance-of v2, p1, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;

    if-nez v2, :cond_1

    goto :goto_0

    .line 107
    :cond_1
    check-cast p1, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;

    .line 108
    iget-object v2, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;->templateType:Lcom/google/unity/ads/nativead/UnityNativeTemplateType;

    iget-object v3, p1, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;->templateType:Lcom/google/unity/ads/nativead/UnityNativeTemplateType;

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;->mainBackgroundColor:Landroid/graphics/drawable/ColorDrawable;

    if-nez v2, :cond_2

    iget-object v3, p1, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;->mainBackgroundColor:Landroid/graphics/drawable/ColorDrawable;

    if-eqz v3, :cond_3

    .line 110
    :cond_2
    invoke-virtual {v2}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v2

    iget-object v3, p1, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;->mainBackgroundColor:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v3

    if-ne v2, v3, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;->callToActionStyle:Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;

    iget-object v3, p1, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;->callToActionStyle:Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;

    .line 111
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;->primaryTextStyle:Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;

    iget-object v3, p1, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;->primaryTextStyle:Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;

    .line 112
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;->secondaryTextStyle:Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;

    iget-object v3, p1, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;->secondaryTextStyle:Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;

    .line 113
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;->tertiaryTextStyle:Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;

    iget-object p1, p1, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;->tertiaryTextStyle:Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;

    .line 114
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public getCallToActionStyle()Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;->callToActionStyle:Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;

    return-object v0
.end method

.method public getMainBackgroundColor()Landroid/graphics/drawable/ColorDrawable;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;->mainBackgroundColor:Landroid/graphics/drawable/ColorDrawable;

    return-object v0
.end method

.method public getPrimaryTextStyle()Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;->primaryTextStyle:Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;

    return-object v0
.end method

.method public getSecondaryTextStyle()Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;->secondaryTextStyle:Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;

    return-object v0
.end method

.method public getTemplateType()Lcom/google/unity/ads/nativead/UnityNativeTemplateType;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;->templateType:Lcom/google/unity/ads/nativead/UnityNativeTemplateType;

    return-object v0
.end method

.method public getTertiaryTextStyle()Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;->tertiaryTextStyle:Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 120
    iget-object v0, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;->mainBackgroundColor:Landroid/graphics/drawable/ColorDrawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;->callToActionStyle:Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;

    iget-object v2, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;->primaryTextStyle:Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;

    iget-object v3, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;->secondaryTextStyle:Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;

    iget-object v4, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;->tertiaryTextStyle:Lcom/google/unity/ads/nativead/UnityNativeTemplateTextStyle;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 119
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
