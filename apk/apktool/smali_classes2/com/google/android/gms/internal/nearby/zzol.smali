.class public final Lcom/google/android/gms/internal/nearby/zzol;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/nearby/zzon;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/nearby/zzon;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/nearby/zzon;-><init>(Lcom/google/android/gms/internal/nearby/zzom;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/nearby/zzol;->zza:Lcom/google/android/gms/internal/nearby/zzon;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/nearby/zzov;)Lcom/google/android/gms/internal/nearby/zzol;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzol;->zza:Lcom/google/android/gms/internal/nearby/zzon;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/nearby/zzon;->zza(Lcom/google/android/gms/internal/nearby/zzon;Lcom/google/android/gms/internal/nearby/zzov;)V

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/nearby/zzon;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzol;->zza:Lcom/google/android/gms/internal/nearby/zzon;

    return-object v0
.end method
