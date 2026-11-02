.class public final enum Lcom/google/unity/ads/nativead/UnityNativeTemplateType;
.super Ljava/lang/Enum;
.source "UnityNativeTemplateType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/unity/ads/nativead/UnityNativeTemplateType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/unity/ads/nativead/UnityNativeTemplateType;

.field public static final enum MEDIUM:Lcom/google/unity/ads/nativead/UnityNativeTemplateType;

.field public static final enum SMALL:Lcom/google/unity/ads/nativead/UnityNativeTemplateType;


# instance fields
.field private final resourceId:I


# direct methods
.method private static synthetic $values()[Lcom/google/unity/ads/nativead/UnityNativeTemplateType;
    .locals 2

    .line 24
    sget-object v0, Lcom/google/unity/ads/nativead/UnityNativeTemplateType;->SMALL:Lcom/google/unity/ads/nativead/UnityNativeTemplateType;

    sget-object v1, Lcom/google/unity/ads/nativead/UnityNativeTemplateType;->MEDIUM:Lcom/google/unity/ads/nativead/UnityNativeTemplateType;

    filled-new-array {v0, v1}, [Lcom/google/unity/ads/nativead/UnityNativeTemplateType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 25
    new-instance v0, Lcom/google/unity/ads/nativead/UnityNativeTemplateType;

    const/4 v1, 0x0

    sget v2, Lcom/google/unity/ads/R$layout;->small_template_view_layout:I

    const-string v3, "SMALL"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/unity/ads/nativead/UnityNativeTemplateType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/unity/ads/nativead/UnityNativeTemplateType;->SMALL:Lcom/google/unity/ads/nativead/UnityNativeTemplateType;

    .line 26
    new-instance v0, Lcom/google/unity/ads/nativead/UnityNativeTemplateType;

    const/4 v1, 0x1

    sget v2, Lcom/google/unity/ads/R$layout;->medium_template_view_layout:I

    const-string v3, "MEDIUM"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/unity/ads/nativead/UnityNativeTemplateType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/unity/ads/nativead/UnityNativeTemplateType;->MEDIUM:Lcom/google/unity/ads/nativead/UnityNativeTemplateType;

    .line 24
    invoke-static {}, Lcom/google/unity/ads/nativead/UnityNativeTemplateType;->$values()[Lcom/google/unity/ads/nativead/UnityNativeTemplateType;

    move-result-object v0

    sput-object v0, Lcom/google/unity/ads/nativead/UnityNativeTemplateType;->$VALUES:[Lcom/google/unity/ads/nativead/UnityNativeTemplateType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "resourceId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateType;->resourceId:I

    return-void
.end method

.method public static fromIntValue(I)Lcom/google/unity/ads/nativead/UnityNativeTemplateType;
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

    .line 39
    invoke-static {}, Lcom/google/unity/ads/nativead/UnityNativeTemplateType;->values()[Lcom/google/unity/ads/nativead/UnityNativeTemplateType;

    move-result-object v0

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 40
    invoke-static {}, Lcom/google/unity/ads/nativead/UnityNativeTemplateType;->values()[Lcom/google/unity/ads/nativead/UnityNativeTemplateType;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid template type index: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AdsUnity"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    sget-object p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateType;->MEDIUM:Lcom/google/unity/ads/nativead/UnityNativeTemplateType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/unity/ads/nativead/UnityNativeTemplateType;
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
    const-class v0, Lcom/google/unity/ads/nativead/UnityNativeTemplateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateType;

    return-object p0
.end method

.method public static values()[Lcom/google/unity/ads/nativead/UnityNativeTemplateType;
    .locals 1

    .line 24
    sget-object v0, Lcom/google/unity/ads/nativead/UnityNativeTemplateType;->$VALUES:[Lcom/google/unity/ads/nativead/UnityNativeTemplateType;

    invoke-virtual {v0}, [Lcom/google/unity/ads/nativead/UnityNativeTemplateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/unity/ads/nativead/UnityNativeTemplateType;

    return-object v0
.end method


# virtual methods
.method public resourceId()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateType;->resourceId:I

    return v0
.end method
