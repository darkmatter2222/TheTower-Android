.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzuv$zza;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza;
.source "com.google.firebase:firebase-auth@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzamx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase-auth-api/zzuv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzuv;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzuv$zza;",
        ">;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzamx;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzuv;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzuv;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzalt;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzuw;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzuv$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzuv$zza;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza;->zzh()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuv$zza;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzuv;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzuv;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzuv;I)V

    return-object p0
.end method
