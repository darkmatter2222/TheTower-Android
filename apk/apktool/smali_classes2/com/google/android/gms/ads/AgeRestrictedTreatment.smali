.class public final enum Lcom/google/android/gms/ads/AgeRestrictedTreatment;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/ads/AgeRestrictedTreatment;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/google/android/gms/ads/AgeRestrictedTreatment;",
        "",
        "",
        "a",
        "I",
        "getValue",
        "()I",
        "value",
        "UNSPECIFIED",
        "CHILD",
        "TEEN",
        "ads-mobile-sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final enum CHILD:Lcom/google/android/gms/ads/AgeRestrictedTreatment;

.field public static final enum TEEN:Lcom/google/android/gms/ads/AgeRestrictedTreatment;

.field public static final enum UNSPECIFIED:Lcom/google/android/gms/ads/AgeRestrictedTreatment;

.field private static final synthetic b:[Lcom/google/android/gms/ads/AgeRestrictedTreatment;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/AgeRestrictedTreatment;

    const-string v1, "UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/ads/AgeRestrictedTreatment;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/ads/AgeRestrictedTreatment;->UNSPECIFIED:Lcom/google/android/gms/ads/AgeRestrictedTreatment;

    .line 3
    new-instance v1, Lcom/google/android/gms/ads/AgeRestrictedTreatment;

    const-string v2, "CHILD"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/google/android/gms/ads/AgeRestrictedTreatment;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/ads/AgeRestrictedTreatment;->CHILD:Lcom/google/android/gms/ads/AgeRestrictedTreatment;

    .line 5
    new-instance v2, Lcom/google/android/gms/ads/AgeRestrictedTreatment;

    const-string v3, "TEEN"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/google/android/gms/ads/AgeRestrictedTreatment;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/ads/AgeRestrictedTreatment;->TEEN:Lcom/google/android/gms/ads/AgeRestrictedTreatment;

    .line 6
    filled-new-array {v0, v1, v2}, [Lcom/google/android/gms/ads/AgeRestrictedTreatment;

    move-result-object v0

    .line 7
    sput-object v0, Lcom/google/android/gms/ads/AgeRestrictedTreatment;->b:[Lcom/google/android/gms/ads/AgeRestrictedTreatment;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/ads/AgeRestrictedTreatment;->a:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/ads/AgeRestrictedTreatment;
    .locals 1

    sget-object v0, Lcom/google/android/gms/ads/AgeRestrictedTreatment;->b:[Lcom/google/android/gms/ads/AgeRestrictedTreatment;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/ads/AgeRestrictedTreatment;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/ads/AgeRestrictedTreatment;->a:I

    return v0
.end method
