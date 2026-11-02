.class final Lcom/google/android/gms/internal/firebase-auth-api/zzaei;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzafn;
.source "com.google.firebase:firebase-auth@@24.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/zzafn<",
        "Ljava/lang/Void;",
        "Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzaa:Z

.field private final zzab:Ljava/lang/String;

.field private final zzac:Ljava/lang/String;

.field private final zzad:Ljava/lang/String;

.field private final zzae:Z

.field private final zzv:Lcom/google/firebase/auth/PhoneMultiFactorInfo;

.field private final zzw:Ljava/lang/String;

.field private final zzx:Ljava/lang/String;

.field private final zzy:J

.field private final zzz:Z


# direct methods
.method public constructor <init>(Lcom/google/firebase/auth/PhoneMultiFactorInfo;Ljava/lang/String;Ljava/lang/String;JZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const/16 v0, 0x8

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;-><init>(I)V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/PhoneMultiFactorInfo;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaei;->zzv:Lcom/google/firebase/auth/PhoneMultiFactorInfo;

    .line 4
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaei;->zzw:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaei;->zzx:Ljava/lang/String;

    .line 6
    iput-wide p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaei;->zzy:J

    .line 7
    iput-boolean p6, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaei;->zzz:Z

    .line 8
    iput-boolean p7, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaei;->zzaa:Z

    .line 9
    iput-object p8, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaei;->zzab:Ljava/lang/String;

    .line 10
    iput-object p9, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaei;->zzac:Ljava/lang/String;

    .line 11
    iput-object p10, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaei;->zzad:Ljava/lang/String;

    .line 12
    iput-boolean p11, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaei;->zzae:Z

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "startMfaSignInWithPhoneNumber"

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/internal/firebase-auth-api/zzaet;)V
    .locals 14

    .line 15
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzafu;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafu;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzafn;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 16
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzafl;

    .line 17
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaei;->zzv:Lcom/google/firebase/auth/PhoneMultiFactorInfo;

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaei;->zzw:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaei;->zzx:Ljava/lang/String;

    iget-wide v5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaei;->zzy:J

    iget-boolean v7, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaei;->zzz:Z

    iget-boolean v8, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaei;->zzaa:Z

    iget-object v9, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaei;->zzab:Ljava/lang/String;

    iget-object v10, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaei;->zzac:Ljava/lang/String;

    iget-object v11, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaei;->zzad:Ljava/lang/String;

    iget-boolean v12, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaei;->zzae:Z

    iget-object v13, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaei;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzafp;

    move-object/from16 v1, p2

    invoke-virtual/range {v1 .. v13}, Lcom/google/android/gms/internal/firebase-auth-api/zzaet;->zza(Lcom/google/firebase/auth/PhoneMultiFactorInfo;Ljava/lang/String;Ljava/lang/String;JZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/firebase-auth-api/zzaer;)V

    return-void
.end method

.method public final zzb()V
    .locals 0

    return-void
.end method
