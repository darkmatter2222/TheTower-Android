.class public final synthetic Lcom/google/android/gms/internal/firebase-auth-api/zzafw;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafx;

.field private synthetic zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzafz;

.field private synthetic zzc:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzafx;Lcom/google/android/gms/internal/firebase-auth-api/zzafz;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafx;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafw;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzafz;

    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafw;->zzc:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafx;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafw;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzafz;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafw;->zzc:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzafx;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaet;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafz;->zza(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/internal/firebase-auth-api/zzaet;)V

    return-void
.end method
