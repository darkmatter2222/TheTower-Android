.class public final synthetic Lcom/google/android/gms/internal/playcore_age_signals/zzf;
.super Ljava/lang/Object;
.source "com.google.android.play:age-signals@@0.0.3"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/playcore_age_signals/zzo;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/playcore_age_signals/zzo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/playcore_age_signals/zzf;->zza:Lcom/google/android/gms/internal/playcore_age_signals/zzo;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/playcore_age_signals/zzf;->zza:Lcom/google/android/gms/internal/playcore_age_signals/zzo;

    invoke-static {v0}, Lcom/google/android/gms/internal/playcore_age_signals/zzo;->zzj(Lcom/google/android/gms/internal/playcore_age_signals/zzo;)V

    return-void
.end method
