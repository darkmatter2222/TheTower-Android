.class public final enum Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;
.super Ljava/lang/Enum;
.source "UnityNativeTemplateFontStyle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;

.field public static final enum BOLD:Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;

.field public static final enum ITALIC:Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;

.field public static final enum MONOSPACE:Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;

.field public static final enum NORMAL:Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;


# direct methods
.method private static synthetic $values()[Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;
    .locals 4

    .line 24
    sget-object v0, Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;->NORMAL:Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;

    sget-object v1, Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;->BOLD:Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;

    sget-object v2, Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;->ITALIC:Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;

    sget-object v3, Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;->MONOSPACE:Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;

    filled-new-array {v0, v1, v2, v3}, [Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 25
    new-instance v0, Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;->NORMAL:Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;

    .line 26
    new-instance v0, Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;

    const-string v1, "BOLD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;->BOLD:Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;

    .line 27
    new-instance v0, Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;

    const-string v1, "ITALIC"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;->ITALIC:Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;

    .line 28
    new-instance v0, Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;

    const-string v1, "MONOSPACE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;->MONOSPACE:Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;

    .line 24
    invoke-static {}, Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;->$values()[Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;

    move-result-object v0

    sput-object v0, Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;->$VALUES:[Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromIntValue(I)Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-ltz p0, :cond_0

    .line 31
    invoke-static {}, Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;->values()[Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;

    move-result-object v0

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 32
    invoke-static {}, Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;->values()[Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid index for NativeTemplateFontStyle: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AdsUnity"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    sget-object p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;->NORMAL:Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 24
    const-class v0, Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;

    return-object p0
.end method

.method public static values()[Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;
    .locals 1

    .line 24
    sget-object v0, Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;->$VALUES:[Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;

    invoke-virtual {v0}, [Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;

    return-object v0
.end method


# virtual methods
.method getTypeface()Landroid/graphics/Typeface;
    .locals 2

    .line 39
    invoke-virtual {p0}, Lcom/google/unity/ads/nativead/UnityNativeTemplateFontStyle;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 49
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    return-object v0

    .line 47
    :cond_0
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    return-object v0

    .line 45
    :cond_1
    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    .line 43
    :cond_2
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    return-object v0

    .line 41
    :cond_3
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    return-object v0
.end method
