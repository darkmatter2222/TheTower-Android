.class final Lcom/google/android/gms/internal/firebase-auth-api/zzaby;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzaga;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzaga<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzahq;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaga;

.field private final synthetic zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzaia;

.field private final synthetic zzc:Ljava/lang/String;

.field private final synthetic zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzaeu;

.field private final synthetic zze:Lcom/google/android/gms/internal/firebase-auth-api/zzabv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzabv;Lcom/google/android/gms/internal/firebase-auth-api/zzaga;Lcom/google/android/gms/internal/firebase-auth-api/zzaia;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzaeu;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaby;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaga;

    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaby;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzaia;

    iput-object p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaby;->zzc:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaby;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzaeu;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaby;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzabv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .locals 6

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzahq;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahq;->zza()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 9
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;

    .line 10
    new-instance v4, Lcom/google/android/gms/internal/firebase-auth-api/zzaiq;

    invoke-direct {v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzaiq;-><init>()V

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaby;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzaia;

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaia;->zzc()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaiq;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzaiq;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaby;->zzc:Ljava/lang/String;

    .line 13
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaiq;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzaiq;

    .line 14
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaby;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzabv;

    iget-object v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzabv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaba;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaby;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzaeu;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaby;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzaia;

    iget-object v5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaby;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaga;

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzaba;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaba;Lcom/google/android/gms/internal/firebase-auth-api/zzaeu;Lcom/google/android/gms/internal/firebase-auth-api/zzaia;Lcom/google/android/gms/internal/firebase-auth-api/zzaht;Lcom/google/android/gms/internal/firebase-auth-api/zzaiq;Lcom/google/android/gms/internal/firebase-auth-api/zzagb;)V

    return-void

    .line 8
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaby;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaga;

    const-string v0, "No users."

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaga;->zza(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-static {p1}, Lcom/google/firebase/auth/internal/zzaq;->zza(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaby;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzaeu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaeu;->zza(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
