.class final Lcom/google/firebase/auth/internal/zzcf;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/BackgroundDetector$BackgroundStateChangeListener;


# instance fields
.field private final synthetic zza:Lcom/google/firebase/auth/internal/zzcg;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/internal/zzcg;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzcf;->zza:Lcom/google/firebase/auth/internal/zzcg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBackgroundStateChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzcf;->zza:Lcom/google/firebase/auth/internal/zzcg;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/firebase/auth/internal/zzcg;->zza(Lcom/google/firebase/auth/internal/zzcg;Z)V

    .line 4
    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzcf;->zza:Lcom/google/firebase/auth/internal/zzcg;

    invoke-virtual {p1}, Lcom/google/firebase/auth/internal/zzcg;->zza()V

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzcf;->zza:Lcom/google/firebase/auth/internal/zzcg;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/firebase/auth/internal/zzcg;->zza(Lcom/google/firebase/auth/internal/zzcg;Z)V

    .line 6
    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzcf;->zza:Lcom/google/firebase/auth/internal/zzcg;

    invoke-static {p1}, Lcom/google/firebase/auth/internal/zzcg;->zzb(Lcom/google/firebase/auth/internal/zzcg;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzcf;->zza:Lcom/google/firebase/auth/internal/zzcg;

    invoke-static {p1}, Lcom/google/firebase/auth/internal/zzcg;->zza(Lcom/google/firebase/auth/internal/zzcg;)Lcom/google/firebase/auth/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/auth/internal/zzas;->zzc()V

    :cond_1
    return-void
.end method
