.class public Lcom/google/android/gms/nearby/exposurenotification/ScanInstance$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/nearby/exposurenotification/ScanInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zza:I

.field private zzb:I

.field private zzc:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/nearby/exposurenotification/ScanInstance$Builder;->zza:I

    iput v0, p0, Lcom/google/android/gms/nearby/exposurenotification/ScanInstance$Builder;->zzb:I

    iput v0, p0, Lcom/google/android/gms/nearby/exposurenotification/ScanInstance$Builder;->zzc:I

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/nearby/exposurenotification/ScanInstance;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/nearby/exposurenotification/ScanInstance;

    iget v1, p0, Lcom/google/android/gms/nearby/exposurenotification/ScanInstance$Builder;->zza:I

    iget v2, p0, Lcom/google/android/gms/nearby/exposurenotification/ScanInstance$Builder;->zzb:I

    iget v3, p0, Lcom/google/android/gms/nearby/exposurenotification/ScanInstance$Builder;->zzc:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/nearby/exposurenotification/ScanInstance;-><init>(III)V

    return-object v0
.end method

.method public setMinAttenuationDb(I)Lcom/google/android/gms/nearby/exposurenotification/ScanInstance$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/nearby/exposurenotification/ScanInstance$Builder;->zzb:I

    return-object p0
.end method

.method public setSecondsSinceLastScan(I)Lcom/google/android/gms/nearby/exposurenotification/ScanInstance$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/nearby/exposurenotification/ScanInstance$Builder;->zzc:I

    return-object p0
.end method

.method public setTypicalAttenuationDb(I)Lcom/google/android/gms/nearby/exposurenotification/ScanInstance$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/nearby/exposurenotification/ScanInstance$Builder;->zza:I

    return-object p0
.end method
