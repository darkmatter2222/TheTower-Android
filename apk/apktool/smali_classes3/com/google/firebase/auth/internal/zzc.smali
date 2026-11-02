.class public final synthetic Lcom/google/firebase/auth/internal/zzc;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field private synthetic zza:Lcom/google/firebase/auth/internal/zza;

.field private synthetic zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field private synthetic zzc:Lcom/google/firebase/auth/FirebaseAuth;

.field private synthetic zzd:Lcom/google/android/recaptcha/RecaptchaAction;

.field private synthetic zze:Ljava/lang/String;

.field private synthetic zzf:Landroid/app/Activity;

.field private synthetic zzg:Z

.field private synthetic zzh:Z

.field private synthetic zzi:Lcom/google/firebase/auth/internal/zzcj;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/auth/internal/zza;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/android/recaptcha/RecaptchaAction;Ljava/lang/String;Landroid/app/Activity;ZZLcom/google/firebase/auth/internal/zzcj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzc;->zza:Lcom/google/firebase/auth/internal/zza;

    iput-object p2, p0, Lcom/google/firebase/auth/internal/zzc;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iput-object p3, p0, Lcom/google/firebase/auth/internal/zzc;->zzc:Lcom/google/firebase/auth/FirebaseAuth;

    iput-object p4, p0, Lcom/google/firebase/auth/internal/zzc;->zzd:Lcom/google/android/recaptcha/RecaptchaAction;

    iput-object p5, p0, Lcom/google/firebase/auth/internal/zzc;->zze:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/firebase/auth/internal/zzc;->zzf:Landroid/app/Activity;

    iput-boolean p7, p0, Lcom/google/firebase/auth/internal/zzc;->zzg:Z

    iput-boolean p8, p0, Lcom/google/firebase/auth/internal/zzc;->zzh:Z

    iput-object p9, p0, Lcom/google/firebase/auth/internal/zzc;->zzi:Lcom/google/firebase/auth/internal/zzcj;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 10

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzc;->zza:Lcom/google/firebase/auth/internal/zza;

    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzc;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v2, p0, Lcom/google/firebase/auth/internal/zzc;->zzc:Lcom/google/firebase/auth/FirebaseAuth;

    iget-object v3, p0, Lcom/google/firebase/auth/internal/zzc;->zzd:Lcom/google/android/recaptcha/RecaptchaAction;

    iget-object v4, p0, Lcom/google/firebase/auth/internal/zzc;->zze:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/firebase/auth/internal/zzc;->zzf:Landroid/app/Activity;

    iget-boolean v6, p0, Lcom/google/firebase/auth/internal/zzc;->zzg:Z

    iget-boolean v7, p0, Lcom/google/firebase/auth/internal/zzc;->zzh:Z

    iget-object v8, p0, Lcom/google/firebase/auth/internal/zzc;->zzi:Lcom/google/firebase/auth/internal/zzcj;

    move-object v9, p1

    invoke-static/range {v0 .. v9}, Lcom/google/firebase/auth/internal/zza;->zza(Lcom/google/firebase/auth/internal/zza;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/android/recaptcha/RecaptchaAction;Ljava/lang/String;Landroid/app/Activity;ZZLcom/google/firebase/auth/internal/zzcj;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
