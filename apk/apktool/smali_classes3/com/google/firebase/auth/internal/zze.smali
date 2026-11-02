.class final Lcom/google/firebase/auth/internal/zze;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field private final synthetic zza:Lcom/google/firebase/auth/FirebaseAuth;

.field private final synthetic zzb:Ljava/lang/String;

.field private final synthetic zzc:Landroid/app/Activity;

.field private final synthetic zzd:Z

.field private final synthetic zze:Z

.field private final synthetic zzf:Lcom/google/firebase/auth/internal/zzcj;

.field private final synthetic zzg:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field private final synthetic zzh:Lcom/google/firebase/auth/internal/zza;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/internal/zza;Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;Landroid/app/Activity;ZZLcom/google/firebase/auth/internal/zzcj;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/google/firebase/auth/internal/zze;->zza:Lcom/google/firebase/auth/FirebaseAuth;

    iput-object p3, p0, Lcom/google/firebase/auth/internal/zze;->zzb:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/firebase/auth/internal/zze;->zzc:Landroid/app/Activity;

    iput-boolean p5, p0, Lcom/google/firebase/auth/internal/zze;->zzd:Z

    iput-boolean p6, p0, Lcom/google/firebase/auth/internal/zze;->zze:Z

    iput-object p7, p0, Lcom/google/firebase/auth/internal/zze;->zzf:Lcom/google/firebase/auth/internal/zzcj;

    iput-object p8, p0, Lcom/google/firebase/auth/internal/zze;->zzg:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zze;->zzh:Lcom/google/firebase/auth/internal/zza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 8

    .line 2
    invoke-static {}, Lcom/google/firebase/auth/internal/zza;->zzb()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to get reCAPTCHA enterprise token: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\n\n Using fallback methods."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object p1, p0, Lcom/google/firebase/auth/internal/zze;->zza:Lcom/google/firebase/auth/FirebaseAuth;

    .line 6
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->zzb()Lcom/google/firebase/auth/internal/zzbv;

    move-result-object p1

    const-string v0, "PHONE_PROVIDER"

    .line 7
    invoke-virtual {p1, v0}, Lcom/google/firebase/auth/internal/zzbv;->zza(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zze;->zzh:Lcom/google/firebase/auth/internal/zza;

    iget-object v1, p0, Lcom/google/firebase/auth/internal/zze;->zza:Lcom/google/firebase/auth/FirebaseAuth;

    iget-object v2, p0, Lcom/google/firebase/auth/internal/zze;->zzb:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/firebase/auth/internal/zze;->zzc:Landroid/app/Activity;

    iget-boolean v4, p0, Lcom/google/firebase/auth/internal/zze;->zzd:Z

    iget-boolean v5, p0, Lcom/google/firebase/auth/internal/zze;->zze:Z

    iget-object v6, p0, Lcom/google/firebase/auth/internal/zze;->zzf:Lcom/google/firebase/auth/internal/zzcj;

    iget-object v7, p0, Lcom/google/firebase/auth/internal/zze;->zzg:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static/range {v0 .. v7}, Lcom/google/firebase/auth/internal/zza;->zza(Lcom/google/firebase/auth/internal/zza;Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;Landroid/app/Activity;ZZLcom/google/firebase/auth/internal/zzcj;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/google/firebase/auth/internal/zze;->zzg:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 10
    new-instance v0, Lcom/google/firebase/auth/internal/zzo;

    invoke-direct {v0}, Lcom/google/firebase/auth/internal/zzo;-><init>()V

    .line 11
    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzk;->zza()Lcom/google/firebase/auth/internal/zzh;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method
