.class public Lcom/google/android/gms/nearby/uwb/UwbComplexChannel$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/nearby/uwb/UwbComplexChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zza:I

.field private zzb:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/nearby/uwb/UwbComplexChannel;
    .locals 4

    new-instance v0, Lcom/google/android/gms/nearby/uwb/UwbComplexChannel;

    iget v1, p0, Lcom/google/android/gms/nearby/uwb/UwbComplexChannel$Builder;->zza:I

    iget v2, p0, Lcom/google/android/gms/nearby/uwb/UwbComplexChannel$Builder;->zzb:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/nearby/uwb/UwbComplexChannel;-><init>(IILcom/google/android/gms/nearby/uwb/zzb;)V

    return-object v0
.end method

.method public setChannel(I)Lcom/google/android/gms/nearby/uwb/UwbComplexChannel$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/nearby/uwb/UwbComplexChannel$Builder;->zza:I

    return-object p0
.end method

.method public setPreambleIndex(I)Lcom/google/android/gms/nearby/uwb/UwbComplexChannel$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/nearby/uwb/UwbComplexChannel$Builder;->zzb:I

    return-object p0
.end method
