.class public final Lcom/google/android/gms/nearby/connection/AdvertisingOptions$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/nearby/connection/AdvertisingOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/nearby/connection/AdvertisingOptions;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;-><init>(Lcom/google/android/gms/nearby/connection/zza;)V

    iput-object v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions$Builder;->zza:Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;-><init>(Lcom/google/android/gms/nearby/connection/zza;)V

    iput-object v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions$Builder;->zza:Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzg(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)Lcom/google/android/gms/nearby/connection/Strategy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzF(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;Lcom/google/android/gms/nearby/connection/Strategy;)V

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzM(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzj(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;Z)V

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzZ(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzy(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;Z)V

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzP(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzo(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;Z)V

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzO(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzn(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;Z)V

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzad(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzC(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;[B)V

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzaa(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzB(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;Z)V

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzf(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)Landroid/os/ParcelUuid;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzz(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;Landroid/os/ParcelUuid;)V

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzY(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzx(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;Z)V

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzR(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzq(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;Z)V

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzX(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzw(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;Z)V

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzQ(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzp(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;Z)V

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzV(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzu(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;Z)V

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzU(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzt(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;Z)V

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzc(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzI(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;I)V

    .line 18
    invoke-static {p1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzd(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzJ(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;I)V

    .line 19
    invoke-static {p1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzae(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzE(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;[B)V

    .line 20
    invoke-static {p1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zze(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzA(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;J)V

    .line 21
    invoke-static {p1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzah(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)[Lcom/google/android/gms/nearby/connection/zzw;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzK(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;[Lcom/google/android/gms/nearby/connection/zzw;)V

    .line 22
    invoke-static {p1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzS(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzr(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;Z)V

    .line 23
    invoke-static {p1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzN(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzm(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;Z)V

    .line 24
    invoke-static {p1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzW(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzv(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;Z)V

    .line 25
    invoke-static {p1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzab(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzH(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;Z)V

    .line 26
    invoke-static {p1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzaf(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)[I

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzh(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;[I)V

    .line 27
    invoke-static {p1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzag(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)[I

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzG(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;[I)V

    .line 28
    invoke-static {p1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzT(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzs(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;Z)V

    .line 29
    invoke-static {p1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzb(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzD(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;I)V

    .line 30
    invoke-static {p1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzac(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzl(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;[B)V

    .line 31
    invoke-static {p1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzL(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzi(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;Z)V

    .line 32
    invoke-static {p1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zza(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)I

    move-result p1

    invoke-static {v0, p1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzk(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;I)V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/nearby/connection/AdvertisingOptions;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions$Builder;->zza:Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

    invoke-static {v0}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzaf(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)[I

    move-result-object v0

    const/16 v1, 0x9

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_7

    array-length v5, v0

    if-lez v5, :cond_7

    iget-object v5, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions$Builder;->zza:Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

    .line 2
    invoke-static {v5, v3}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzn(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;Z)V

    iget-object v5, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions$Builder;->zza:Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

    .line 3
    invoke-static {v5, v3}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzo(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;Z)V

    iget-object v5, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions$Builder;->zza:Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

    .line 4
    invoke-static {v5, v3}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzq(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;Z)V

    iget-object v5, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions$Builder;->zza:Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

    .line 5
    invoke-static {v5, v3}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzw(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;Z)V

    iget-object v5, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions$Builder;->zza:Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

    .line 6
    invoke-static {v5, v3}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzx(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;Z)V

    iget-object v5, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions$Builder;->zza:Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

    .line 7
    invoke-static {v5, v3}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzu(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;Z)V

    move v5, v3

    :goto_0
    array-length v6, v0

    if-ge v5, v6, :cond_7

    .line 8
    aget v6, v0, v5

    if-eq v6, v2, :cond_5

    if-eq v6, v1, :cond_4

    const/16 v7, 0xb

    if-eq v6, v7, :cond_6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_3

    const/4 v7, 0x5

    if-eq v6, v7, :cond_2

    const/4 v7, 0x6

    if-eq v6, v7, :cond_1

    const/4 v7, 0x7

    if-eq v6, v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Illegal advertising medium "

    .line 15
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "NearbyConnections"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 9
    :cond_0
    iget-object v6, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions$Builder;->zza:Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

    .line 10
    invoke-static {v6, v4}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzq(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;Z)V

    goto :goto_1

    :cond_1
    iget-object v6, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions$Builder;->zza:Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

    .line 11
    invoke-static {v6, v4}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzw(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;Z)V

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions$Builder;->zza:Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

    .line 12
    invoke-static {v6, v4}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzx(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;Z)V

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions$Builder;->zza:Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

    .line 13
    invoke-static {v6, v4}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzn(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;Z)V

    goto :goto_1

    .line 15
    :cond_4
    iget-object v6, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions$Builder;->zza:Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

    .line 9
    invoke-static {v6, v4}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzu(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;Z)V

    goto :goto_1

    .line 13
    :cond_5
    iget-object v6, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions$Builder;->zza:Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

    .line 14
    invoke-static {v6, v4}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzo(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;Z)V

    :cond_6
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions$Builder;->zza:Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

    .line 16
    invoke-static {v0}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzag(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)[I

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions$Builder;->zza:Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

    invoke-static {v0}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzag(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)[I

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions$Builder;->zza:Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

    .line 17
    invoke-static {v0, v3}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzv(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;Z)V

    move v0, v3

    :goto_2
    iget-object v5, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions$Builder;->zza:Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

    .line 18
    invoke-static {v5}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzag(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)[I

    move-result-object v5

    array-length v5, v5

    if-ge v0, v5, :cond_9

    iget-object v5, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions$Builder;->zza:Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

    .line 19
    invoke-static {v5}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzag(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)[I

    move-result-object v5

    aget v5, v5, v0

    if-ne v5, v1, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions$Builder;->zza:Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

    .line 20
    invoke-static {v0, v4}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzv(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;Z)V

    goto :goto_3

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions$Builder;->zza:Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

    .line 21
    invoke-static {v0}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzb(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)I

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions$Builder;->zza:Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

    .line 22
    invoke-static {v0}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzaa(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)Z

    move-result v5

    if-eq v4, v5, :cond_a

    goto :goto_4

    :cond_a
    move v1, v4

    :goto_4
    invoke-static {v0, v1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzD(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;I)V

    goto :goto_6

    .line 27
    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions$Builder;->zza:Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

    .line 23
    invoke-static {v0}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzb(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)I

    move-result v5

    if-eq v5, v1, :cond_c

    move v1, v4

    goto :goto_5

    :cond_c
    move v1, v3

    :goto_5
    invoke-static {v0, v1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzB(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;Z)V

    .line 22
    :goto_6
    iget-object v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions$Builder;->zza:Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

    .line 24
    invoke-static {v0}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zza(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)I

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions$Builder;->zza:Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

    .line 25
    invoke-static {v0}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzN(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions$Builder;->zza:Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

    .line 26
    invoke-static {v0, v2}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzk(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;I)V

    goto :goto_7

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions$Builder;->zza:Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

    .line 27
    invoke-static {v0}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zza(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)I

    move-result v1

    if-ne v1, v4, :cond_e

    move v3, v4

    :cond_e
    invoke-static {v0, v3}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzm(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;Z)V

    .line 26
    :cond_f
    :goto_7
    iget-object v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions$Builder;->zza:Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

    return-object v0
.end method

.method public setConnectionType(I)Lcom/google/android/gms/nearby/connection/AdvertisingOptions$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions$Builder;->zza:Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

    invoke-static {v0, p1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzk(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;I)V

    return-object p0
.end method

.method public setDisruptiveUpgrade(Z)Lcom/google/android/gms/nearby/connection/AdvertisingOptions$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions$Builder;->zza:Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

    invoke-static {v0, p1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzm(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;Z)V

    return-object p0
.end method

.method public setLowPower(Z)Lcom/google/android/gms/nearby/connection/AdvertisingOptions$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions$Builder;->zza:Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

    invoke-static {v0, p1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzB(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;Z)V

    return-object p0
.end method

.method public setStrategy(Lcom/google/android/gms/nearby/connection/Strategy;)Lcom/google/android/gms/nearby/connection/AdvertisingOptions$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions$Builder;->zza:Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

    invoke-static {v0, p1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzF(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;Lcom/google/android/gms/nearby/connection/Strategy;)V

    return-object p0
.end method
