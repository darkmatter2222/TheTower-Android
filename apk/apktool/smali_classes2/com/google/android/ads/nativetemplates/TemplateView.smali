.class public final Lcom/google/android/ads/nativetemplates/TemplateView;
.super Landroid/widget/FrameLayout;
.source "TemplateView.java"


# static fields
.field private static final MEDIUM_TEMPLATE:Ljava/lang/String; = "medium_template"

.field private static final SMALL_TEMPLATE:Ljava/lang/String; = "small_template"


# instance fields
.field private background:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private callToActionView:Landroid/widget/Button;

.field private iconView:Landroid/widget/ImageView;

.field private mediaView:Lcom/google/android/gms/ads/nativead/MediaView;

.field private nativeAd:Lcom/google/android/gms/ads/nativead/NativeAd;

.field private nativeAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

.field private primaryView:Landroid/widget/TextView;

.field private ratingBar:Landroid/widget/RatingBar;

.field private secondaryView:Landroid/widget/TextView;

.field private styles:Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;

.field private templateType:I

.field private tertiaryView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/google/android/ads/nativetemplates/TemplateView;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/google/android/ads/nativetemplates/TemplateView;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr",
            "defStyleRes"
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/google/android/ads/nativetemplates/TemplateView;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private adHasOnlyStore(Lcom/google/android/gms/ads/nativead/NativeAd;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeAd"
        }
    .end annotation

    .line 181
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getStore()Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getAdvertiser()Ljava/lang/String;

    move-result-object p1

    .line 183
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private applyStyles()V
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->styles:Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;

    invoke-virtual {v0}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;->getMainBackgroundColor()Landroid/graphics/drawable/ColorDrawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 88
    iget-object v1, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->background:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 89
    iget-object v1, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->primaryView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->secondaryView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 93
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 95
    :cond_1
    iget-object v1, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->tertiaryView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 96
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->styles:Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;

    invoke-virtual {v0}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;->getPrimaryTextTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 101
    iget-object v1, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->primaryView:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 102
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 105
    :cond_3
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->styles:Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;

    invoke-virtual {v0}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;->getSecondaryTextTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 106
    iget-object v1, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->secondaryView:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 107
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 110
    :cond_4
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->styles:Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;

    invoke-virtual {v0}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;->getTertiaryTextTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 111
    iget-object v1, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->tertiaryView:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 112
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 115
    :cond_5
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->styles:Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;

    invoke-virtual {v0}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;->getCallToActionTextTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 116
    iget-object v1, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->callToActionView:Landroid/widget/Button;

    if-eqz v1, :cond_6

    .line 117
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 120
    :cond_6
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->styles:Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;

    invoke-virtual {v0}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;->getPrimaryTextTypefaceColor()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->primaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 121
    iget-object v1, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->styles:Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;

    invoke-virtual {v1}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;->getPrimaryTextTypefaceColor()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    :cond_7
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->styles:Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;

    invoke-virtual {v0}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;->getSecondaryTextTypefaceColor()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->secondaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    .line 125
    iget-object v1, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->styles:Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;

    invoke-virtual {v1}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;->getSecondaryTextTypefaceColor()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 128
    :cond_8
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->styles:Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;

    invoke-virtual {v0}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;->getTertiaryTextTypefaceColor()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->tertiaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 129
    iget-object v1, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->styles:Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;

    invoke-virtual {v1}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;->getTertiaryTextTypefaceColor()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    :cond_9
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->styles:Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;

    invoke-virtual {v0}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;->getCallToActionTypefaceColor()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->callToActionView:Landroid/widget/Button;

    if-eqz v0, :cond_a

    .line 133
    iget-object v1, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->styles:Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;

    invoke-virtual {v1}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;->getCallToActionTypefaceColor()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 136
    :cond_a
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->styles:Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;

    invoke-virtual {v0}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;->getCallToActionTextSize()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_b

    .line 137
    iget-object v2, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->callToActionView:Landroid/widget/Button;

    if-eqz v2, :cond_b

    .line 138
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setTextSize(F)V

    .line 141
    :cond_b
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->styles:Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;

    invoke-virtual {v0}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;->getPrimaryTextSize()F

    move-result v0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_c

    .line 142
    iget-object v2, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->primaryView:Landroid/widget/TextView;

    if-eqz v2, :cond_c

    .line 143
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 146
    :cond_c
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->styles:Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;

    invoke-virtual {v0}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;->getSecondaryTextSize()F

    move-result v0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_d

    .line 147
    iget-object v2, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->secondaryView:Landroid/widget/TextView;

    if-eqz v2, :cond_d

    .line 148
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 151
    :cond_d
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->styles:Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;

    invoke-virtual {v0}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;->getTertiaryTextSize()F

    move-result v0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_e

    .line 152
    iget-object v1, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->tertiaryView:Landroid/widget/TextView;

    if-eqz v1, :cond_e

    .line 153
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 156
    :cond_e
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->styles:Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;

    invoke-virtual {v0}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;->getCallToActionBackgroundColor()Landroid/graphics/drawable/ColorDrawable;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 157
    iget-object v1, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->callToActionView:Landroid/widget/Button;

    if-eqz v1, :cond_f

    .line 158
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 161
    :cond_f
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->styles:Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;

    invoke-virtual {v0}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;->getPrimaryTextBackgroundColor()Landroid/graphics/drawable/ColorDrawable;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 162
    iget-object v1, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->primaryView:Landroid/widget/TextView;

    if-eqz v1, :cond_10

    .line 163
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 166
    :cond_10
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->styles:Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;

    invoke-virtual {v0}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;->getSecondaryTextBackgroundColor()Landroid/graphics/drawable/ColorDrawable;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 167
    iget-object v1, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->secondaryView:Landroid/widget/TextView;

    if-eqz v1, :cond_11

    .line 168
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 171
    :cond_11
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->styles:Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;

    invoke-virtual {v0}, Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;->getTertiaryTextBackgroundColor()Landroid/graphics/drawable/ColorDrawable;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 172
    iget-object v1, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->tertiaryView:Landroid/widget/TextView;

    if-eqz v1, :cond_12

    .line 173
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 176
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/ads/nativetemplates/TemplateView;->invalidate()V

    .line 177
    invoke-virtual {p0}, Lcom/google/android/ads/nativetemplates/TemplateView;->requestLayout()V

    return-void
.end method

.method private initView(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attributeSet"
        }
    .end annotation

    .line 264
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/google/unity/ads/R$styleable;->TemplateView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 267
    :try_start_0
    sget v0, Lcom/google/unity/ads/R$styleable;->TemplateView_gnt_template_type:I

    sget v1, Lcom/google/unity/ads/R$layout;->gnt_medium_template_view:I

    .line 268
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->templateType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 273
    const-string p2, "layout_inflater"

    .line 274
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 275
    iget p2, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->templateType:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void

    :catchall_0
    move-exception p1

    .line 271
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 272
    throw p1
.end method


# virtual methods
.method public destroyNativeAd()V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->nativeAd:Lcom/google/android/gms/ads/nativead/NativeAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/nativead/NativeAd;->destroy()V

    return-void
.end method

.method public getNativeAdView()Lcom/google/android/gms/ads/nativead/NativeAdView;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->nativeAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

    return-object v0
.end method

.method public getTemplateTypeName()Ljava/lang/String;
    .locals 2

    .line 254
    iget v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->templateType:I

    sget v1, Lcom/google/unity/ads/R$layout;->gnt_medium_template_view:I

    if-ne v0, v1, :cond_0

    .line 255
    const-string v0, "medium_template"

    return-object v0

    .line 256
    :cond_0
    iget v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->templateType:I

    sget v1, Lcom/google/unity/ads/R$layout;->gnt_small_template_view:I

    if-ne v0, v1, :cond_1

    .line 257
    const-string v0, "small_template"

    return-object v0

    .line 259
    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public onFinishInflate()V
    .locals 2

    .line 280
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 281
    sget v0, Lcom/google/unity/ads/R$id;->native_ad_view:I

    invoke-virtual {p0, v0}, Lcom/google/android/ads/nativetemplates/TemplateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/nativead/NativeAdView;

    iput-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->nativeAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

    .line 282
    sget v0, Lcom/google/unity/ads/R$id;->primary:I

    invoke-virtual {p0, v0}, Lcom/google/android/ads/nativetemplates/TemplateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->primaryView:Landroid/widget/TextView;

    .line 283
    sget v0, Lcom/google/unity/ads/R$id;->secondary:I

    invoke-virtual {p0, v0}, Lcom/google/android/ads/nativetemplates/TemplateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->secondaryView:Landroid/widget/TextView;

    .line 284
    sget v0, Lcom/google/unity/ads/R$id;->body:I

    invoke-virtual {p0, v0}, Lcom/google/android/ads/nativetemplates/TemplateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->tertiaryView:Landroid/widget/TextView;

    .line 286
    sget v0, Lcom/google/unity/ads/R$id;->rating_bar:I

    invoke-virtual {p0, v0}, Lcom/google/android/ads/nativetemplates/TemplateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->ratingBar:Landroid/widget/RatingBar;

    const/4 v1, 0x0

    .line 287
    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setEnabled(Z)V

    .line 289
    sget v0, Lcom/google/unity/ads/R$id;->cta:I

    invoke-virtual {p0, v0}, Lcom/google/android/ads/nativetemplates/TemplateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->callToActionView:Landroid/widget/Button;

    .line 290
    sget v0, Lcom/google/unity/ads/R$id;->icon:I

    invoke-virtual {p0, v0}, Lcom/google/android/ads/nativetemplates/TemplateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->iconView:Landroid/widget/ImageView;

    .line 291
    sget v0, Lcom/google/unity/ads/R$id;->media_view:I

    invoke-virtual {p0, v0}, Lcom/google/android/ads/nativetemplates/TemplateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/nativead/MediaView;

    iput-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->mediaView:Lcom/google/android/gms/ads/nativead/MediaView;

    .line 292
    sget v0, Lcom/google/unity/ads/R$id;->background:I

    invoke-virtual {p0, v0}, Lcom/google/android/ads/nativetemplates/TemplateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->background:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method

.method public setNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeAd"
        }
    .end annotation

    .line 187
    iput-object p1, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->nativeAd:Lcom/google/android/gms/ads/nativead/NativeAd;

    .line 189
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getStore()Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getAdvertiser()Ljava/lang/String;

    move-result-object v1

    .line 191
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getHeadline()Ljava/lang/String;

    move-result-object v2

    .line 192
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getBody()Ljava/lang/String;

    move-result-object v3

    .line 193
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getCallToAction()Ljava/lang/String;

    move-result-object v4

    .line 194
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getStarRating()Ljava/lang/Double;

    move-result-object v5

    .line 195
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getIcon()Lcom/google/android/gms/ads/nativead/NativeAd$Image;

    move-result-object v6

    .line 198
    iget-object v7, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->callToActionView:Landroid/widget/Button;

    invoke-virtual {v7, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v4, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->nativeAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

    iget-object v7, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->callToActionView:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setCallToActionView(Landroid/view/View;)V

    .line 201
    iget-object v4, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->nativeAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

    iget-object v7, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->primaryView:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setHeadlineView(Landroid/view/View;)V

    .line 202
    iget-object v4, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->nativeAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

    iget-object v7, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->mediaView:Lcom/google/android/gms/ads/nativead/MediaView;

    invoke-virtual {v4, v7}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setMediaView(Lcom/google/android/gms/ads/nativead/MediaView;)V

    .line 203
    iget-object v4, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->secondaryView:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    invoke-direct {p0, p1}, Lcom/google/android/ads/nativetemplates/TemplateView;->adHasOnlyStore(Lcom/google/android/gms/ads/nativead/NativeAd;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 205
    iget-object v1, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->nativeAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

    iget-object v4, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->secondaryView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setStoreView(Landroid/view/View;)V

    goto :goto_0

    .line 207
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->nativeAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

    iget-object v4, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->secondaryView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setAdvertiserView(Landroid/view/View;)V

    move-object v0, v1

    goto :goto_0

    .line 211
    :cond_1
    const-string v0, ""

    .line 214
    :goto_0
    iget-object v1, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->primaryView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x8

    if-eqz v5, :cond_2

    .line 217
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v2, v8, v10

    if-lez v2, :cond_2

    .line 218
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->secondaryView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual {v0, v7}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual {v5}, Ljava/lang/Double;->floatValue()F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RatingBar;->setRating(F)V

    .line 222
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->nativeAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

    iget-object v2, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setStarRatingView(Landroid/view/View;)V

    goto :goto_1

    .line 224
    :cond_2
    iget-object v2, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->secondaryView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->secondaryView:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setVisibility(I)V

    :goto_1
    if-eqz v6, :cond_3

    .line 230
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Lcom/google/android/gms/ads/nativead/NativeAd$Image;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 233
    :cond_3
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 236
    :goto_2
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->tertiaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 237
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->nativeAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

    iget-object v1, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->tertiaryView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setBodyView(Landroid/view/View;)V

    .line 241
    :cond_4
    iget-object v0, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->nativeAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd;)V

    return-void
.end method

.method public setStyles(Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "styles"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/google/android/ads/nativetemplates/TemplateView;->styles:Lcom/google/android/ads/nativetemplates/NativeTemplateStyle;

    .line 77
    invoke-direct {p0}, Lcom/google/android/ads/nativetemplates/TemplateView;->applyStyles()V

    return-void
.end method
