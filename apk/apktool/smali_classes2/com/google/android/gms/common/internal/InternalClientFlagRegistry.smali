.class public final Lcom/google/android/gms/common/internal/InternalClientFlagRegistry;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.11.0"


# static fields
.field private static final zza:Lcom/google/android/gms/common/internal/InternalClientFlags;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/common/internal/zzag;->zza()Lcom/google/android/gms/common/internal/InternalClientFlags;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/internal/InternalClientFlagRegistry;->zza:Lcom/google/android/gms/common/internal/InternalClientFlags;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClientFlags()Lcom/google/android/gms/common/internal/InternalClientFlags;
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/internal/InternalClientFlagRegistry;->zza:Lcom/google/android/gms/common/internal/InternalClientFlags;

    return-object v0
.end method
