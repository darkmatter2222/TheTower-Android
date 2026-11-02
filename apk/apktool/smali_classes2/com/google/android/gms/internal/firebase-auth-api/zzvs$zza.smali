.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzvs$zza;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza;
.source "com.google.firebase:firebase-auth@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzamx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase-auth-api/zzvs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzvs;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzvs$zza;",
        ">;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzamx;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzalt;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzvw;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvs$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzvs$zza;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza;->zzh()V

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvs$zza;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvs;I)V

    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;)Lcom/google/android/gms/internal/firebase-auth-api/zzvs$zza;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza;->zzh()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvs$zza;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvs;Lcom/google/android/gms/internal/firebase-auth-api/zzakb;)V

    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvv;)Lcom/google/android/gms/internal/firebase-auth-api/zzvs$zza;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza;->zzh()V

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvs$zza;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvs;Lcom/google/android/gms/internal/firebase-auth-api/zzvv;)V

    return-object p0
.end method
