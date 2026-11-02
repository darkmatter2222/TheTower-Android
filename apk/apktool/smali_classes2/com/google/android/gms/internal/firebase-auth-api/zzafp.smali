.class final Lcom/google/android/gms/internal/firebase-auth-api/zzafp;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzaer;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzafn;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/common/api/Status;Lcom/google/firebase/auth/AuthCredential;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafn;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzafn;Lcom/google/android/gms/common/api/Status;)V

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafn;

    iput-object p2, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;->zzn:Lcom/google/firebase/auth/AuthCredential;

    .line 6
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafn;

    iput-object p3, p2, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;->zzo:Ljava/lang/String;

    .line 7
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafn;

    iput-object p4, p2, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;->zzp:Ljava/lang/String;

    .line 8
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafn;

    iget-object p2, p2, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;->zzf:Lcom/google/firebase/auth/internal/zzaw;

    if-eqz p2, :cond_0

    .line 9
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafn;

    iget-object p2, p2, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;->zzf:Lcom/google/firebase/auth/internal/zzaw;

    invoke-interface {p2, p1}, Lcom/google/firebase/auth/internal/zzaw;->zza(Lcom/google/android/gms/common/api/Status;)V

    .line 10
    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafn;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;->zza(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzafv;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafn;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;->zzi:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzafs;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafs;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzafp;Lcom/google/android/gms/internal/firebase-auth-api/zzafv;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafn;

    iget v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;->zza:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafn;

    iget v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;->zza:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected response type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafn;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzafn;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/common/api/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 45
    const-string v1, "MISSING_MFA_PENDING_CREDENTIAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42b9

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto/16 :goto_0

    .line 47
    :cond_0
    const-string v1, "MISSING_MFA_ENROLLMENT_ID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42ba

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto/16 :goto_0

    .line 49
    :cond_1
    const-string v1, "INVALID_MFA_PENDING_CREDENTIAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 50
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42bb

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto/16 :goto_0

    .line 51
    :cond_2
    const-string v1, "MFA_ENROLLMENT_NOT_FOUND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 52
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42bc

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto :goto_0

    .line 53
    :cond_3
    const-string v1, "ADMIN_ONLY_OPERATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 54
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42bd

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto :goto_0

    .line 55
    :cond_4
    const-string v1, "UNVERIFIED_EMAIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 56
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42be

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto :goto_0

    .line 57
    :cond_5
    const-string v1, "SECOND_FACTOR_EXISTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 58
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42bf

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto :goto_0

    .line 59
    :cond_6
    const-string v1, "SECOND_FACTOR_LIMIT_EXCEEDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 60
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42c0

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto :goto_0

    .line 61
    :cond_7
    const-string v1, "UNSUPPORTED_FIRST_FACTOR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 62
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42c1

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto :goto_0

    .line 63
    :cond_8
    const-string v1, "EMAIL_CHANGE_NEEDS_VERIFICATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 64
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42c2

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 67
    :cond_9
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafn;

    iget v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;->zza:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    .line 68
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafn;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;->zzu:Z

    .line 69
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaft;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaft;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzafp;Lcom/google/android/gms/common/api/Status;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzafv;)V

    return-void

    .line 70
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafn;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzafn;Lcom/google/android/gms/common/api/Status;)V

    .line 71
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;->zza(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/common/api/Status;Lcom/google/firebase/auth/PhoneAuthCredential;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafn;

    iget v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;->zza:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafn;

    iget v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;->zza:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected response type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza(Lcom/google/android/gms/common/api/Status;Lcom/google/firebase/auth/AuthCredential;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaax;)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafn;

    iput-object p1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;->zzq:Lcom/google/android/gms/internal/firebase-auth-api/zzaax;

    .line 34
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafn;

    const-string v0, "REQUIRES_SECOND_FACTOR_AUTH"

    .line 35
    invoke-static {v0}, Lcom/google/firebase/auth/internal/zzaq;->zza(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    .line 36
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;->zza(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaay;)V
    .locals 3

    .line 27
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaay;->zza()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    .line 28
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaay;->zzb()Lcom/google/firebase/auth/zzc;

    move-result-object v1

    .line 29
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaay;->zzc()Ljava/lang/String;

    move-result-object v2

    .line 30
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaay;->zzd()Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza(Lcom/google/android/gms/common/api/Status;Lcom/google/firebase/auth/AuthCredential;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaha;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafn;

    iget v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;->zza:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafn;

    iget v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;->zza:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected response type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafn;

    iput-object p1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;->zzl:Lcom/google/android/gms/internal/firebase-auth-api/zzaha;

    .line 21
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafn;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzafn;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahw;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafn;

    iput-object p1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;->zzs:Lcom/google/android/gms/internal/firebase-auth-api/zzahw;

    .line 74
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafn;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzafn;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaia;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafn;

    iget v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;->zza:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafn;

    iget v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;->zza:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected response type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 103
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafn;

    iput-object p1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;->zzj:Lcom/google/android/gms/internal/firebase-auth-api/zzaia;

    .line 104
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafn;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzafn;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaia;Lcom/google/android/gms/internal/firebase-auth-api/zzaht;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafn;

    iget v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;->zza:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafn;

    iget v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;->zza:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected response type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafn;

    iput-object p1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;->zzj:Lcom/google/android/gms/internal/firebase-auth-api/zzaia;

    .line 81
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafn;

    iput-object p2, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;->zzk:Lcom/google/android/gms/internal/firebase-auth-api/zzaht;

    .line 82
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafn;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzafn;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaib;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafn;

    iput-object p1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;->zzr:Lcom/google/android/gms/internal/firebase-auth-api/zzaib;

    .line 77
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafn;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzafn;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaik;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafn;

    iget v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;->zza:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafn;

    iget v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;->zza:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected response type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafn;

    iput-object p1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;->zzm:Lcom/google/android/gms/internal/firebase-auth-api/zzaik;

    .line 86
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafn;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzafn;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaip;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafn;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzafn;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaiw;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafn;

    iput-object p1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;->zzt:Lcom/google/android/gms/internal/firebase-auth-api/zzaiw;

    .line 100
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafn;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzafn;)V

    return-void
.end method

.method public final zza(Lcom/google/firebase/auth/PhoneAuthCredential;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafn;

    iget v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;->zza:I

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafn;

    iget v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;->zza:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected response type "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 107
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafn;

    iput-boolean v2, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;->zzu:Z

    .line 108
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzafr;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafr;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzafp;Lcom/google/firebase/auth/PhoneAuthCredential;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzafv;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafn;

    iget v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;->zza:I

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafn;

    iget v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;->zza:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected response type "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafn;

    iput-boolean v2, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;->zzu:Z

    .line 14
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzafq;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafq;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzafp;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzafv;)V

    return-void
.end method

.method public final zzb()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafn;

    iget v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;->zza:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafn;

    iget v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;->zza:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected response type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafn;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzafn;)V

    return-void
.end method

.method public final zzb(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafn;

    iget v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;->zza:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafn;

    iget v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;->zza:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected response type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzafo;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafo;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzafp;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzafv;)V

    return-void
.end method

.method public final zzc()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafn;

    iget v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;->zza:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafn;

    iget v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;->zza:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected response type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafn;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzafn;)V

    return-void
.end method

.method public final zzc(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafn;

    iget p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;->zza:I

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafn;

    iget v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;->zza:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected response type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 94
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafn;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzafn;)V

    return-void
.end method
