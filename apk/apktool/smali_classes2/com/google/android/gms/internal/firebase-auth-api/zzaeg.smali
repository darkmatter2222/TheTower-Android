.class final Lcom/google/android/gms/internal/firebase-auth-api/zzaeg;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzafn;
.source "com.google.firebase:firebase-auth@@24.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/zzafn<",
        "Ljava/lang/Void;",
        "Lcom/google/firebase/auth/internal/zzj;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzaa:Z

.field private final zzab:Ljava/lang/String;

.field private final zzac:Ljava/lang/String;

.field private final zzad:Ljava/lang/String;

.field private final zzae:Z

.field private final zzv:Ljava/lang/String;

.field private final zzw:Ljava/lang/String;

.field private final zzx:Ljava/lang/String;

.field private final zzy:J

.field private final zzz:Z


# direct methods
.method public constructor <init>(Lcom/google/firebase/auth/internal/zzao;Ljava/lang/String;Ljava/lang/String;JZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const/16 v0, 0x8

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;-><init>(I)V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/google/firebase/auth/internal/zzao;->zzb()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaeg;->zzv:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaeg;->zzw:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaeg;->zzx:Ljava/lang/String;

    .line 8
    iput-wide p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaeg;->zzy:J

    .line 9
    iput-boolean p6, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaeg;->zzz:Z

    .line 10
    iput-boolean p7, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaeg;->zzaa:Z

    .line 11
    iput-object p8, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaeg;->zzab:Ljava/lang/String;

    .line 12
    iput-object p9, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaeg;->zzac:Ljava/lang/String;

    .line 13
    iput-object p10, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaeg;->zzad:Ljava/lang/String;

    .line 14
    iput-boolean p11, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaeg;->zzae:Z

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "startMfaEnrollment"

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/internal/firebase-auth-api/zzaet;)V
    .locals 14

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzafu;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafu;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzafn;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 18
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzafl;

    .line 19
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaeg;->zzv:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaeg;->zzw:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaeg;->zzx:Ljava/lang/String;

    iget-wide v5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaeg;->zzy:J

    iget-boolean v7, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaeg;->zzz:Z

    iget-boolean v8, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaeg;->zzaa:Z

    iget-object v9, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaeg;->zzab:Ljava/lang/String;

    iget-object v10, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaeg;->zzac:Ljava/lang/String;

    iget-object v11, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaeg;->zzad:Ljava/lang/String;

    iget-boolean v12, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaeg;->zzae:Z

    iget-object v13, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaeg;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzafp;

    move-object/from16 v1, p2

    invoke-virtual/range {v1 .. v13}, Lcom/google/android/gms/internal/firebase-auth-api/zzaet;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/firebase-auth-api/zzaer;)V

    return-void
.end method

.method public final zzb()V
    .locals 0

    return-void
.end method
