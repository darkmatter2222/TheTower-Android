.class public final Lcom/google/android/gms/common/internal/GmsClientFlags;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.11.0"


# static fields
.field private static volatile zza:Z = true

.field private static volatile zzb:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isBindServiceOptimizationEnabled(Ljava/lang/String;)Z
    .locals 0

    sget-boolean p0, Lcom/google/android/gms/common/internal/GmsClientFlags;->zza:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static zza()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
