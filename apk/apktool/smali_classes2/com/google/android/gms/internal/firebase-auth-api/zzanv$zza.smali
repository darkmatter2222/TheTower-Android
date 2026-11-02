.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzanv$zza;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza;
.source "com.google.firebase:firebase-auth@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzamx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase-auth-api/zzanv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzanv;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzanv$zza;",
        ">;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzamx;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzanv;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzanv;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzalt;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzanz;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzanv$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzanv$zza;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;->zzu()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza;->zzi()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzanv$zza;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzanv;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzanv;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzanv;I)V

    return-object p0
.end method

.method public final zza(J)Lcom/google/android/gms/internal/firebase-auth-api/zzanv$zza;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;->zzu()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza;->zzi()V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzanv$zza;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzanv;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzanv;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzanv;J)V

    return-object p0
.end method
