.class public final Lcom/google/android/gms/nearby/connection/BandwidthInfo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/nearby/connection/BandwidthInfo$Quality;
    }
.end annotation


# instance fields
.field private final zza:I


# direct methods
.method synthetic constructor <init>(IILcom/google/android/gms/nearby/connection/zzf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/connection/BandwidthInfo;->zza:I

    return-void
.end method


# virtual methods
.method public getQuality()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/nearby/connection/BandwidthInfo;->zza:I

    return v0
.end method
