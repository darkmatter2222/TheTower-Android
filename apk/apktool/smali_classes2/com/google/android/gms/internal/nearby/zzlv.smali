.class public final Lcom/google/android/gms/internal/nearby/zzlv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/nearby/zzlx;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/nearby/zzlx;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/nearby/zzlx;-><init>(Lcom/google/android/gms/internal/nearby/zzlw;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/nearby/zzlv;->zza:Lcom/google/android/gms/internal/nearby/zzlx;

    return-void
.end method


# virtual methods
.method public final zza([B)Lcom/google/android/gms/internal/nearby/zzlv;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzlv;->zza:Lcom/google/android/gms/internal/nearby/zzlx;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/nearby/zzlx;->zzb(Lcom/google/android/gms/internal/nearby/zzlx;[B)V

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/nearby/zzlx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzlv;->zza:Lcom/google/android/gms/internal/nearby/zzlx;

    return-object v0
.end method
