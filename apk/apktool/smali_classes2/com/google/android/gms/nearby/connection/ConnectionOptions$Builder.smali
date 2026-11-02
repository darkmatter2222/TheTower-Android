.class public final Lcom/google/android/gms/nearby/connection/ConnectionOptions$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/nearby/connection/ConnectionOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/nearby/connection/ConnectionOptions;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;-><init>(Lcom/google/android/gms/nearby/connection/zzi;)V

    iput-object v0, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions$Builder;->zza:Lcom/google/android/gms/nearby/connection/ConnectionOptions;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/nearby/connection/ConnectionOptions;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/nearby/connection/ConnectionOptions;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;-><init>(Lcom/google/android/gms/nearby/connection/zzi;)V

    iput-object v0, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions$Builder;->zza:Lcom/google/android/gms/nearby/connection/ConnectionOptions;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzH(Lcom/google/android/gms/nearby/connection/ConnectionOptions;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzt(Lcom/google/android/gms/nearby/connection/ConnectionOptions;Z)V

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzz(Lcom/google/android/gms/nearby/connection/ConnectionOptions;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzj(Lcom/google/android/gms/nearby/connection/ConnectionOptions;Z)V

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzy(Lcom/google/android/gms/nearby/connection/ConnectionOptions;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzi(Lcom/google/android/gms/nearby/connection/ConnectionOptions;Z)V

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzF(Lcom/google/android/gms/nearby/connection/ConnectionOptions;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzp(Lcom/google/android/gms/nearby/connection/ConnectionOptions;Z)V

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzA(Lcom/google/android/gms/nearby/connection/ConnectionOptions;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzk(Lcom/google/android/gms/nearby/connection/ConnectionOptions;Z)V

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzC(Lcom/google/android/gms/nearby/connection/ConnectionOptions;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzm(Lcom/google/android/gms/nearby/connection/ConnectionOptions;Z)V

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzE(Lcom/google/android/gms/nearby/connection/ConnectionOptions;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzo(Lcom/google/android/gms/nearby/connection/ConnectionOptions;Z)V

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzD(Lcom/google/android/gms/nearby/connection/ConnectionOptions;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzn(Lcom/google/android/gms/nearby/connection/ConnectionOptions;Z)V

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzJ(Lcom/google/android/gms/nearby/connection/ConnectionOptions;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzu(Lcom/google/android/gms/nearby/connection/ConnectionOptions;[B)V

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzB(Lcom/google/android/gms/nearby/connection/ConnectionOptions;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzl(Lcom/google/android/gms/nearby/connection/ConnectionOptions;Z)V

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzG(Lcom/google/android/gms/nearby/connection/ConnectionOptions;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzq(Lcom/google/android/gms/nearby/connection/ConnectionOptions;Z)V

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzx(Lcom/google/android/gms/nearby/connection/ConnectionOptions;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzh(Lcom/google/android/gms/nearby/connection/ConnectionOptions;Z)V

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzb(Lcom/google/android/gms/nearby/connection/ConnectionOptions;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzr(Lcom/google/android/gms/nearby/connection/ConnectionOptions;I)V

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzc(Lcom/google/android/gms/nearby/connection/ConnectionOptions;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzs(Lcom/google/android/gms/nearby/connection/ConnectionOptions;I)V

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzL(Lcom/google/android/gms/nearby/connection/ConnectionOptions;)[I

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzw(Lcom/google/android/gms/nearby/connection/ConnectionOptions;[I)V

    .line 18
    invoke-static {p1}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzK(Lcom/google/android/gms/nearby/connection/ConnectionOptions;)[I

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zze(Lcom/google/android/gms/nearby/connection/ConnectionOptions;[I)V

    .line 19
    invoke-static {p1}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzI(Lcom/google/android/gms/nearby/connection/ConnectionOptions;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzg(Lcom/google/android/gms/nearby/connection/ConnectionOptions;[B)V

    .line 20
    invoke-static {p1}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzd(Lcom/google/android/gms/nearby/connection/ConnectionOptions;)Lcom/google/android/gms/nearby/connection/Strategy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzv(Lcom/google/android/gms/nearby/connection/ConnectionOptions;Lcom/google/android/gms/nearby/connection/Strategy;)V

    .line 21
    invoke-static {p1}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zza(Lcom/google/android/gms/nearby/connection/ConnectionOptions;)I

    move-result p1

    invoke-static {v0, p1}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzf(Lcom/google/android/gms/nearby/connection/ConnectionOptions;I)V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/nearby/connection/ConnectionOptions;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions$Builder;->zza:Lcom/google/android/gms/nearby/connection/ConnectionOptions;

    invoke-static {v0}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzK(Lcom/google/android/gms/nearby/connection/ConnectionOptions;)[I

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    array-length v3, v0

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions$Builder;->zza:Lcom/google/android/gms/nearby/connection/ConnectionOptions;

    .line 2
    invoke-static {v3, v1}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzi(Lcom/google/android/gms/nearby/connection/ConnectionOptions;Z)V

    iget-object v3, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions$Builder;->zza:Lcom/google/android/gms/nearby/connection/ConnectionOptions;

    .line 3
    invoke-static {v3, v1}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzj(Lcom/google/android/gms/nearby/connection/ConnectionOptions;Z)V

    iget-object v3, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions$Builder;->zza:Lcom/google/android/gms/nearby/connection/ConnectionOptions;

    .line 4
    invoke-static {v3, v1}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzk(Lcom/google/android/gms/nearby/connection/ConnectionOptions;Z)V

    iget-object v3, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions$Builder;->zza:Lcom/google/android/gms/nearby/connection/ConnectionOptions;

    .line 5
    invoke-static {v3, v1}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzm(Lcom/google/android/gms/nearby/connection/ConnectionOptions;Z)V

    iget-object v3, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions$Builder;->zza:Lcom/google/android/gms/nearby/connection/ConnectionOptions;

    .line 6
    invoke-static {v3, v1}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzp(Lcom/google/android/gms/nearby/connection/ConnectionOptions;Z)V

    iget-object v3, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions$Builder;->zza:Lcom/google/android/gms/nearby/connection/ConnectionOptions;

    .line 7
    invoke-static {v3, v1}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzl(Lcom/google/android/gms/nearby/connection/ConnectionOptions;Z)V

    iget-object v3, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions$Builder;->zza:Lcom/google/android/gms/nearby/connection/ConnectionOptions;

    .line 8
    invoke-static {v3, v1}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzn(Lcom/google/android/gms/nearby/connection/ConnectionOptions;Z)V

    iget-object v3, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions$Builder;->zza:Lcom/google/android/gms/nearby/connection/ConnectionOptions;

    .line 9
    invoke-static {v3, v1}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzo(Lcom/google/android/gms/nearby/connection/ConnectionOptions;Z)V

    move v3, v1

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 10
    aget v4, v0, v3

    packed-switch v4, :pswitch_data_0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Illegal connection medium "

    .line 19
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NearbyConnections"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_0
    iget-object v4, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions$Builder;->zza:Lcom/google/android/gms/nearby/connection/ConnectionOptions;

    .line 11
    invoke-static {v4, v2}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzl(Lcom/google/android/gms/nearby/connection/ConnectionOptions;Z)V

    goto :goto_1

    :pswitch_1
    iget-object v4, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions$Builder;->zza:Lcom/google/android/gms/nearby/connection/ConnectionOptions;

    .line 12
    invoke-static {v4, v2}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzn(Lcom/google/android/gms/nearby/connection/ConnectionOptions;Z)V

    goto :goto_1

    :pswitch_2
    iget-object v4, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions$Builder;->zza:Lcom/google/android/gms/nearby/connection/ConnectionOptions;

    .line 13
    invoke-static {v4, v2}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzk(Lcom/google/android/gms/nearby/connection/ConnectionOptions;Z)V

    goto :goto_1

    :pswitch_3
    iget-object v4, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions$Builder;->zza:Lcom/google/android/gms/nearby/connection/ConnectionOptions;

    .line 14
    invoke-static {v4, v2}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzm(Lcom/google/android/gms/nearby/connection/ConnectionOptions;Z)V

    goto :goto_1

    :pswitch_4
    iget-object v4, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions$Builder;->zza:Lcom/google/android/gms/nearby/connection/ConnectionOptions;

    .line 15
    invoke-static {v4, v2}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzp(Lcom/google/android/gms/nearby/connection/ConnectionOptions;Z)V

    goto :goto_1

    :pswitch_5
    iget-object v4, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions$Builder;->zza:Lcom/google/android/gms/nearby/connection/ConnectionOptions;

    .line 16
    invoke-static {v4, v2}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzi(Lcom/google/android/gms/nearby/connection/ConnectionOptions;Z)V

    goto :goto_1

    :pswitch_6
    iget-object v4, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions$Builder;->zza:Lcom/google/android/gms/nearby/connection/ConnectionOptions;

    .line 17
    invoke-static {v4, v2}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzo(Lcom/google/android/gms/nearby/connection/ConnectionOptions;Z)V

    goto :goto_1

    :pswitch_7
    iget-object v4, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions$Builder;->zza:Lcom/google/android/gms/nearby/connection/ConnectionOptions;

    .line 18
    invoke-static {v4, v2}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzj(Lcom/google/android/gms/nearby/connection/ConnectionOptions;Z)V

    :goto_1
    :pswitch_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions$Builder;->zza:Lcom/google/android/gms/nearby/connection/ConnectionOptions;

    .line 20
    invoke-static {v0}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zza(Lcom/google/android/gms/nearby/connection/ConnectionOptions;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions$Builder;->zza:Lcom/google/android/gms/nearby/connection/ConnectionOptions;

    .line 21
    invoke-static {v0}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzx(Lcom/google/android/gms/nearby/connection/ConnectionOptions;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions$Builder;->zza:Lcom/google/android/gms/nearby/connection/ConnectionOptions;

    const/4 v1, 0x2

    .line 22
    invoke-static {v0, v1}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzf(Lcom/google/android/gms/nearby/connection/ConnectionOptions;I)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions$Builder;->zza:Lcom/google/android/gms/nearby/connection/ConnectionOptions;

    .line 23
    invoke-static {v0}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zza(Lcom/google/android/gms/nearby/connection/ConnectionOptions;)I

    move-result v3

    if-ne v3, v2, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v0, v1}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzh(Lcom/google/android/gms/nearby/connection/ConnectionOptions;Z)V

    .line 22
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions$Builder;->zza:Lcom/google/android/gms/nearby/connection/ConnectionOptions;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method public setConnectionType(I)Lcom/google/android/gms/nearby/connection/ConnectionOptions$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions$Builder;->zza:Lcom/google/android/gms/nearby/connection/ConnectionOptions;

    invoke-static {v0, p1}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzf(Lcom/google/android/gms/nearby/connection/ConnectionOptions;I)V

    return-object p0
.end method

.method public setDisruptiveUpgrade(Z)Lcom/google/android/gms/nearby/connection/ConnectionOptions$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions$Builder;->zza:Lcom/google/android/gms/nearby/connection/ConnectionOptions;

    invoke-static {v0, p1}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzh(Lcom/google/android/gms/nearby/connection/ConnectionOptions;Z)V

    return-object p0
.end method

.method public setLowPower(Z)Lcom/google/android/gms/nearby/connection/ConnectionOptions$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/nearby/connection/ConnectionOptions$Builder;->zza:Lcom/google/android/gms/nearby/connection/ConnectionOptions;

    invoke-static {v0, p1}, Lcom/google/android/gms/nearby/connection/ConnectionOptions;->zzt(Lcom/google/android/gms/nearby/connection/ConnectionOptions;Z)V

    return-object p0
.end method
