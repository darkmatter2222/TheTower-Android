.class public Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzajt;
.source "com.google.firebase:firebase-auth@@24.2.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase-auth-api/zzalt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzalt<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzajt<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field protected zza:Lcom/google/android/gms/internal/firebase-auth-api/zzalt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field private final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzalt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzalt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzajt;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    .line 41
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;->zzu()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;->zzo()Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    move-result-object p1

    .line 45
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    return-void

    .line 42
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Default instance must be immutable."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzalt;Lcom/google/android/gms/internal/firebase-auth-api/zzalt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzalt<",
            "**>;>(TMessageType;TMessageType;)V"
        }
    .end annotation

    .line 56
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzank;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzank;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzank;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzalt;)Lcom/google/android/gms/internal/firebase-auth-api/zzanl;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzanl;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    .line 33
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    .line 34
    sget v1, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zzf;->zze:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza;

    .line 36
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzamv;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    iput-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzalt;)Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    .line 4
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(MessageLite) can only merge messages of the same type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    .line 8
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p0

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;->zzu()Z

    move-result v0

    if-nez v0, :cond_3

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza;->zzi()V

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzalt;Lcom/google/android/gms/internal/firebase-auth-api/zzalt;)V

    return-object p0
.end method

.method public final synthetic zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzajt;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzajt;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzalt;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzamv;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;->zzj()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 18
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzany;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzany;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzamv;)V

    .line 19
    throw v1
.end method

.method public zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzalt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;->zzu()Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    return-object v0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;->zzs()V

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    return-object v0
.end method

.method public synthetic zze()Lcom/google/android/gms/internal/firebase-auth-api/zzamv;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    move-result-object v0

    return-object v0
.end method

.method public synthetic zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzamv;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzg()Lcom/google/android/gms/internal/firebase-auth-api/zzamv;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    return-object v0
.end method

.method protected final zzh()V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;->zzu()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza;->zzi()V

    :cond_0
    return-void
.end method

.method protected zzi()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;->zzo()Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzalt;Lcom/google/android/gms/internal/firebase-auth-api/zzalt;)V

    .line 54
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    return-void
.end method

.method public final zzj()Z
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalt$zza;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzalt;Z)Z

    move-result v0

    return v0
.end method
