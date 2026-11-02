.class final Lcom/google/android/gms/internal/firebase-auth-api/zzacm;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzaga;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzaga<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaeu;

.field private final synthetic zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzaga;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzacj;Lcom/google/android/gms/internal/firebase-auth-api/zzaeu;Lcom/google/android/gms/internal/firebase-auth-api/zzaga;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacm;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaeu;

    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacm;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzaga;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .locals 0

    .line 4
    check-cast p1, Ljava/lang/Void;

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacm;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaeu;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaeu;->zza()V

    return-void
.end method

.method public final zza(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacm;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzaga;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaga;->zza(Ljava/lang/String;)V

    return-void
.end method
