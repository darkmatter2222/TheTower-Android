.class final Lcom/google/android/gms/internal/firebase-auth-api/zzabg;
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
.field private final synthetic zza:Lcom/google/android/gms/internal/firebase-auth-api/zzagb;

.field private final synthetic zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzaeu;

.field private final synthetic zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzaia;

.field private final synthetic zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzaiq;

.field private final synthetic zze:Lcom/google/android/gms/internal/firebase-auth-api/zzaba;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzaba;Lcom/google/android/gms/internal/firebase-auth-api/zzagb;Lcom/google/android/gms/internal/firebase-auth-api/zzaeu;Lcom/google/android/gms/internal/firebase-auth-api/zzaia;Lcom/google/android/gms/internal/firebase-auth-api/zzaiq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabg;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzagb;

    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabg;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzaeu;

    iput-object p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabg;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzaia;

    iput-object p5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabg;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzaiq;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabg;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzaba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .locals 7

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzahq;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahq;->zza()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabg;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzaba;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabg;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzaeu;

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabg;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzaia;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;

    iget-object v5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabg;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzaiq;

    iget-object v6, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabg;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzagb;

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzaba;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaba;Lcom/google/android/gms/internal/firebase-auth-api/zzaeu;Lcom/google/android/gms/internal/firebase-auth-api/zzaia;Lcom/google/android/gms/internal/firebase-auth-api/zzaht;Lcom/google/android/gms/internal/firebase-auth-api/zzaiq;Lcom/google/android/gms/internal/firebase-auth-api/zzagb;)V

    return-void

    .line 7
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabg;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzagb;

    const-string v0, "No users"

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzagb;->zza(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabg;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzagb;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzagb;->zza(Ljava/lang/String;)V

    return-void
.end method
