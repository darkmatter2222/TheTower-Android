.class final Lcom/google/android/gms/internal/firebase-auth-api/zzakw;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

.field private zzb:I

.field private zzc:I

.field private zzd:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzakn;)V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 79
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzd:I

    .line 80
    const-string v0, "input"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalw;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    .line 81
    iput-object p0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzd:Ljava/lang/Object;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakn;)Lcom/google/android/gms/internal/firebase-auth-api/zzakw;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzd:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 40
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzd:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;

    return-object p0

    .line 41
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzakn;)V

    return-object v0
.end method

.method private final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzanl;Lcom/google/android/gms/internal/firebase-auth-api/zzalf;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzanl<",
            "TT;>;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzalf;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-interface {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzanl;->zza()Ljava/lang/Object;

    move-result-object v0

    .line 67
    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzc(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzanl;Lcom/google/android/gms/internal/firebase-auth-api/zzalf;)V

    .line 68
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzanl;->zzd(Ljava/lang/Object;)V

    return-object v0
.end method

.method private final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaoj;Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/zzalf;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaoj;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzalf;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzakv;->zza:[I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoj;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 65
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unsupported field type."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzo()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 63
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzj()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 62
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzr()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 61
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzn()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 60
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzi()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 59
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzm()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 58
    :pswitch_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzh()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_7
    const/4 p1, 0x2

    .line 53
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb(I)V

    .line 55
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzank;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzank;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzank;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/zzanl;

    move-result-object p1

    .line 56
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzanl;Lcom/google/android/gms/internal/firebase-auth-api/zzalf;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 51
    :pswitch_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzl()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 50
    :pswitch_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzg()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 49
    :pswitch_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 48
    :pswitch_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzk()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 47
    :pswitch_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzf()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 46
    :pswitch_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zze()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 45
    :pswitch_e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 44
    :pswitch_f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzp()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object p1

    return-object p1

    .line 43
    :pswitch_10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzs()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zza(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 736
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzc()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 737
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzj()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object p1

    throw p1
.end method

.method private final zza(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 636
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 640
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzami;

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    .line 641
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzami;

    .line 642
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzp()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzami;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;)V

    .line 643
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzw()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 645
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzi()I

    move-result p1

    .line 646
    iget p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    if-eq p1, p2, :cond_0

    .line 647
    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzd:I

    return-void

    :cond_2
    if-eqz p2, :cond_3

    .line 650
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzr()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzq()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 651
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzw()Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_1
    return-void

    .line 653
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzi()I

    move-result v0

    .line 654
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    if-eq v0, v1, :cond_2

    .line 655
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzd:I

    return-void

    .line 639
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzamg;

    move-result-object p1

    throw p1
.end method

.method private final zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzanl;Lcom/google/android/gms/internal/firebase-auth-api/zzalf;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzanl<",
            "TT;>;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzalf;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-interface {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzanl;->zza()Ljava/lang/Object;

    move-result-object v0

    .line 71
    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzd(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzanl;Lcom/google/android/gms/internal/firebase-auth-api/zzalf;)V

    .line 72
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzanl;->zzd(Ljava/lang/Object;)V

    return-object v0
.end method

.method private final zzb(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 739
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-ne v0, p1, :cond_0

    return-void

    .line 742
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzamg;

    move-result-object p1

    throw p1
.end method

.method private static zzc(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p0, p0, 0x3

    if-nez p0, :cond_0

    return-void

    .line 745
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzg()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object p0

    throw p0
.end method

.method private final zzc(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzanl;Lcom/google/android/gms/internal/firebase-auth-api/zzalf;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzanl<",
            "TT;>;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzalf;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzt()V

    .line 87
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzc:I

    .line 88
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    ushr-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x3

    or-int/lit8 v1, v1, 0x4

    .line 91
    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzc:I

    .line 92
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    iget v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzb:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzb:I

    .line 93
    :try_start_0
    invoke-interface {p2, p1, p0, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzanl;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzakw;Lcom/google/android/gms/internal/firebase-auth-api/zzalf;)V

    .line 94
    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    iget p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzc:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_0

    .line 96
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    iget p2, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzb:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzb:I

    .line 97
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzc:I

    return-void

    .line 95
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzg()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 99
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    iget p3, p2, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzb:I

    add-int/lit8 p3, p3, -0x1

    iput p3, p2, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzb:I

    .line 100
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzc:I

    .line 101
    throw p1
.end method

.method private static zzd(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p0, p0, 0x7

    if-nez p0, :cond_0

    return-void

    .line 748
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzg()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object p0

    throw p0
.end method

.method private final zzd(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzanl;Lcom/google/android/gms/internal/firebase-auth-api/zzalf;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzanl<",
            "TT;>;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzalf;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzj()I

    move-result v0

    .line 106
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzt()V

    .line 107
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzb(I)I

    move-result v0

    .line 108
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    iget v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zza:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zza:I

    .line 109
    invoke-interface {p2, p1, p0, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzanl;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzakw;Lcom/google/android/gms/internal/firebase-auth-api/zzalf;)V

    .line 110
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzc(I)V

    .line 111
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    iget p2, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zza:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zza:I

    .line 112
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzd(I)V

    return-void
.end method


# virtual methods
.method public final zza()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zza()D

    move-result-wide v0

    return-wide v0
.end method

.method public final zza(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzanl;Lcom/google/android/gms/internal/firebase-auth-api/zzalf;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzanl<",
            "TT;>;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzalf;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 83
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb(I)V

    .line 84
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzc(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzanl;Lcom/google/android/gms/internal/firebase-auth-api/zzalf;)V

    return-void
.end method

.method public final zza(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzajz;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 115
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzajz;

    .line 116
    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 119
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzj()I

    move-result p1

    .line 120
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzc()I

    move-result v1

    add-int/2addr v1, p1

    .line 121
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzx()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzajz;->zza(Z)V

    .line 122
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzc()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 123
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza(I)V

    return-void

    .line 133
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzamg;

    move-result-object p1

    throw p1

    .line 125
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzx()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzajz;->zza(Z)V

    .line 126
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzw()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 128
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzi()I

    move-result p1

    .line 129
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    if-eq p1, v1, :cond_2

    .line 130
    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzd:I

    return-void

    .line 134
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 137
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzj()I

    move-result v0

    .line 138
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    .line 139
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzx()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 141
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza(I)V

    return-void

    .line 151
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzamg;

    move-result-object p1

    throw p1

    .line 143
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzx()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzw()Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_0
    return-void

    .line 146
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzi()I

    move-result v0

    .line 147
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    if-eq v0, v1, :cond_7

    .line 148
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzd:I

    return-void
.end method

.method public final zza(Ljava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzanl;Lcom/google/android/gms/internal/firebase-auth-api/zzalf;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzanl<",
            "TT;>;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzalf;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 354
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 359
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzanl;Lcom/google/android/gms/internal/firebase-auth-api/zzalf;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzw()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzd:I

    if-eqz v1, :cond_1

    goto :goto_0

    .line 362
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzi()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 364
    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzd:I

    :cond_2
    :goto_0
    return-void

    .line 357
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzamg;

    move-result-object p1

    throw p1
.end method

.method public final zza(Ljava/util/Map;Lcom/google/android/gms/internal/firebase-auth-api/zzamq;Lcom/google/android/gms/internal/firebase-auth-api/zzalf;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzamq<",
            "TK;TV;>;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzalf;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 443
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb(I)V

    .line 444
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzj()I

    move-result v1

    .line 445
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzb(I)I

    move-result v1

    .line 446
    iget-object v2, p2, Lcom/google/android/gms/internal/firebase-auth-api/zzamq;->zzb:Ljava/lang/Object;

    .line 447
    iget-object v3, p2, Lcom/google/android/gms/internal/firebase-auth-api/zzamq;->zzd:Ljava/lang/Object;

    .line 448
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzc()I

    move-result v4

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_4

    .line 449
    iget-object v5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzw()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_4

    const/4 v5, 0x1

    .line 450
    const-string v6, "Unable to parse map entry."

    if-eq v4, v5, :cond_2

    if-eq v4, v0, :cond_1

    .line 457
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzt()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 458
    :cond_0
    new-instance v4, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    invoke-direct {v4, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;-><init>(Ljava/lang/String;)V

    throw v4

    .line 453
    :cond_1
    iget-object v4, p2, Lcom/google/android/gms/internal/firebase-auth-api/zzamq;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzaoj;

    iget-object v5, p2, Lcom/google/android/gms/internal/firebase-auth-api/zzamq;->zzd:Ljava/lang/Object;

    .line 454
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 455
    invoke-direct {p0, v4, v5, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaoj;Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/zzalf;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 451
    :cond_2
    iget-object v4, p2, Lcom/google/android/gms/internal/firebase-auth-api/zzamq;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaoj;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaoj;Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/zzalf;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzamg; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 461
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzt()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    .line 462
    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    invoke-direct {p1, v6, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;-><init>(Ljava/lang/String;Ljava/io/IOException;)V

    throw p1

    .line 464
    :cond_4
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 465
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzd(I)V

    return-void

    :catchall_0
    move-exception p1

    .line 467
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzd(I)V

    .line 468
    throw p1
.end method

.method public final zzb()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb(I)V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzb()F

    move-result v0

    return v0
.end method

.method public final zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzanl;Lcom/google/android/gms/internal/firebase-auth-api/zzalf;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzanl<",
            "TT;>;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzalf;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 102
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb(I)V

    .line 103
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzd(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzanl;Lcom/google/android/gms/internal/firebase-auth-api/zzalf;)V

    return-void
.end method

.method public final zzb(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzakb;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 156
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzp()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzw()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzi()I

    move-result v0

    .line 160
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    if-eq v0, v1, :cond_0

    .line 161
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzd:I

    return-void

    .line 155
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzamg;

    move-result-object p1

    throw p1
.end method

.method public final zzb(Ljava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzanl;Lcom/google/android/gms/internal/firebase-auth-api/zzalf;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzanl<",
            "TT;>;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzalf;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 469
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 474
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzanl;Lcom/google/android/gms/internal/firebase-auth-api/zzalf;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzw()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzd:I

    if-eqz v1, :cond_1

    goto :goto_0

    .line 477
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzi()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 479
    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzd:I

    :cond_2
    :goto_0
    return-void

    .line 472
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzamg;

    move-result-object p1

    throw p1
.end method

.method public final zzc()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzd:I

    if-eqz v0, :cond_0

    .line 6
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzd:I

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzi()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    .line 9
    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzc:I

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    ushr-int/lit8 v0, v0, 0x3

    return v0

    :cond_2
    :goto_1
    const v0, 0x7fffffff

    return v0
.end method

.method public final zzc(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzald;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 165
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzald;

    .line 166
    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    .line 169
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzj()I

    move-result p1

    .line 170
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzd(I)V

    .line 171
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzc()I

    move-result v1

    add-int/2addr v1, p1

    .line 172
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zza()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzald;->zza(D)V

    .line 173
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzc()I

    move-result p1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 183
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzamg;

    move-result-object p1

    throw p1

    .line 175
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zza()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzald;->zza(D)V

    .line 176
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzw()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 178
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzi()I

    move-result p1

    .line 179
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    if-eq p1, v1, :cond_2

    .line 180
    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzd:I

    return-void

    .line 184
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    .line 187
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzj()I

    move-result v0

    .line 188
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzd(I)V

    .line 189
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    .line 190
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zza()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_5

    goto :goto_0

    .line 201
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzamg;

    move-result-object p1

    throw p1

    .line 193
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zza()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzw()Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_0
    return-void

    .line 196
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzi()I

    move-result v0

    .line 197
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    if-eq v0, v1, :cond_7

    .line 198
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzd:I

    return-void
.end method

.method public final zzd()I
    .locals 1

    .line 14
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    return v0
.end method

.method public final zzd(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzalu;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 203
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzalu;

    .line 204
    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 207
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzj()I

    move-result p1

    .line 208
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzc()I

    move-result v1

    add-int/2addr v1, p1

    .line 209
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzd()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzalu;->zzc(I)V

    .line 210
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzc()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 211
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza(I)V

    return-void

    .line 221
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzamg;

    move-result-object p1

    throw p1

    .line 213
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzd()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzalu;->zzc(I)V

    .line 214
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzw()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 216
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzi()I

    move-result p1

    .line 217
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    if-eq p1, v1, :cond_2

    .line 218
    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzd:I

    return-void

    .line 222
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 225
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzj()I

    move-result v0

    .line 226
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    .line 227
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzd()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 229
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza(I)V

    return-void

    .line 239
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzamg;

    move-result-object p1

    throw p1

    .line 231
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzd()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzw()Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_0
    return-void

    .line 234
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzi()I

    move-result v0

    .line 235
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    if-eq v0, v1, :cond_7

    .line 236
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzd:I

    return-void
.end method

.method public final zze()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb(I)V

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzd()I

    move-result v0

    return v0
.end method

.method public final zze(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzalu;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    .line 241
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzalu;

    .line 242
    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    .line 251
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zze()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzalu;->zzc(I)V

    .line 252
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzw()Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_0

    .line 254
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzi()I

    move-result p1

    .line 255
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    if-eq p1, v1, :cond_0

    .line 256
    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzd:I

    return-void

    .line 259
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzamg;

    move-result-object p1

    throw p1

    .line 245
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzj()I

    move-result p1

    .line 246
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzc(I)V

    .line 247
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzc()I

    move-result v1

    add-int v3, v1, p1

    .line 248
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zze()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzalu;->zzc(I)V

    .line 249
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzc()I

    move-result p1

    if-lt p1, v3, :cond_4

    goto :goto_0

    .line 260
    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    .line 269
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zze()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzw()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    .line 272
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzi()I

    move-result v0

    .line 273
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    if-eq v0, v1, :cond_6

    .line 274
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzd:I

    return-void

    .line 277
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzamg;

    move-result-object p1

    throw p1

    .line 263
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzj()I

    move-result v0

    .line 264
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzc(I)V

    .line 265
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    .line 266
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zze()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_a

    :goto_0
    return-void
.end method

.method public final zzf()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 17
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb(I)V

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zze()I

    move-result v0

    return v0
.end method

.method public final zzf(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzamm;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 279
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamm;

    .line 280
    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    .line 283
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzj()I

    move-result p1

    .line 284
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzd(I)V

    .line 285
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzc()I

    move-result v1

    add-int/2addr v1, p1

    .line 286
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzk()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamm;->zza(J)V

    .line 287
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzc()I

    move-result p1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 297
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzamg;

    move-result-object p1

    throw p1

    .line 289
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzk()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamm;->zza(J)V

    .line 290
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzw()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 292
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzi()I

    move-result p1

    .line 293
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    if-eq p1, v1, :cond_2

    .line 294
    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzd:I

    return-void

    .line 298
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    .line 301
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzj()I

    move-result v0

    .line 302
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzd(I)V

    .line 303
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    .line 304
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzk()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_5

    goto :goto_0

    .line 315
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzamg;

    move-result-object p1

    throw p1

    .line 307
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzk()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzw()Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_0
    return-void

    .line 310
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzi()I

    move-result v0

    .line 311
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    if-eq v0, v1, :cond_7

    .line 312
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzd:I

    return-void
.end method

.method public final zzg()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb(I)V

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzf()I

    move-result v0

    return v0
.end method

.method public final zzg(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 316
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzals;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    .line 317
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzals;

    .line 318
    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    .line 327
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzb()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzals;->zza(F)V

    .line 328
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzw()Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_0

    .line 330
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzi()I

    move-result p1

    .line 331
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    if-eq p1, v1, :cond_0

    .line 332
    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzd:I

    return-void

    .line 335
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzamg;

    move-result-object p1

    throw p1

    .line 321
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzj()I

    move-result p1

    .line 322
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzc(I)V

    .line 323
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzc()I

    move-result v1

    add-int v3, v1, p1

    .line 324
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzb()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzals;->zza(F)V

    .line 325
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzc()I

    move-result p1

    if-lt p1, v3, :cond_4

    goto :goto_0

    .line 336
    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    .line 345
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzb()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzw()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    .line 348
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzi()I

    move-result v0

    .line 349
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    if-eq v0, v1, :cond_6

    .line 350
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzd:I

    return-void

    .line 353
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzamg;

    move-result-object p1

    throw p1

    .line 339
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzj()I

    move-result v0

    .line 340
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzc(I)V

    .line 341
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    .line 342
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzb()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_a

    :goto_0
    return-void
.end method

.method public final zzh()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 21
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb(I)V

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzg()I

    move-result v0

    return v0
.end method

.method public final zzh(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 367
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzalu;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 368
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzalu;

    .line 369
    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 372
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzj()I

    move-result p1

    .line 373
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzc()I

    move-result v1

    add-int/2addr v1, p1

    .line 374
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzf()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzalu;->zzc(I)V

    .line 375
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzc()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 376
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza(I)V

    return-void

    .line 386
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzamg;

    move-result-object p1

    throw p1

    .line 378
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzf()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzalu;->zzc(I)V

    .line 379
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzw()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 381
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzi()I

    move-result p1

    .line 382
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    if-eq p1, v1, :cond_2

    .line 383
    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzd:I

    return-void

    .line 387
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 390
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzj()I

    move-result v0

    .line 391
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    .line 392
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzf()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 394
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza(I)V

    return-void

    .line 404
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzamg;

    move-result-object p1

    throw p1

    .line 396
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzf()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzw()Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_0
    return-void

    .line 399
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzi()I

    move-result v0

    .line 400
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    if-eq v0, v1, :cond_7

    .line 401
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzd:I

    return-void
.end method

.method public final zzi()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb(I)V

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzh()I

    move-result v0

    return v0
.end method

.method public final zzi(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 405
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzamm;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 406
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamm;

    .line 407
    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 410
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzj()I

    move-result p1

    .line 411
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzc()I

    move-result v1

    add-int/2addr v1, p1

    .line 412
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzl()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamm;->zza(J)V

    .line 413
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzc()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 414
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza(I)V

    return-void

    .line 424
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzamg;

    move-result-object p1

    throw p1

    .line 416
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzl()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamm;->zza(J)V

    .line 417
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzw()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 419
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzi()I

    move-result p1

    .line 420
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    if-eq p1, v1, :cond_2

    .line 421
    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzd:I

    return-void

    .line 425
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 428
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzj()I

    move-result v0

    .line 429
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    .line 430
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzl()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 432
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza(I)V

    return-void

    .line 442
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzamg;

    move-result-object p1

    throw p1

    .line 434
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzl()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzw()Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_0
    return-void

    .line 437
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzi()I

    move-result v0

    .line 438
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    if-eq v0, v1, :cond_7

    .line 439
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzd:I

    return-void
.end method

.method public final zzj()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb(I)V

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzj()I

    move-result v0

    return v0
.end method

.method public final zzj(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 482
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzalu;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    .line 483
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzalu;

    .line 484
    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    .line 493
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzg()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzalu;->zzc(I)V

    .line 494
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzw()Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_0

    .line 496
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzi()I

    move-result p1

    .line 497
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    if-eq p1, v1, :cond_0

    .line 498
    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzd:I

    return-void

    .line 501
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzamg;

    move-result-object p1

    throw p1

    .line 487
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzj()I

    move-result p1

    .line 488
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzc(I)V

    .line 489
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzc()I

    move-result v1

    add-int v3, v1, p1

    .line 490
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzg()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzalu;->zzc(I)V

    .line 491
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzc()I

    move-result p1

    if-lt p1, v3, :cond_4

    goto :goto_0

    .line 502
    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    .line 511
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzg()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 512
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzw()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    .line 514
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzi()I

    move-result v0

    .line 515
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    if-eq v0, v1, :cond_6

    .line 516
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzd:I

    return-void

    .line 519
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzamg;

    move-result-object p1

    throw p1

    .line 505
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzj()I

    move-result v0

    .line 506
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzc(I)V

    .line 507
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    .line 508
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzg()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 509
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_a

    :goto_0
    return-void
.end method

.method public final zzk()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 27
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb(I)V

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzk()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzk(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 520
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzamm;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 521
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamm;

    .line 522
    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    .line 525
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzj()I

    move-result p1

    .line 526
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzd(I)V

    .line 527
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzc()I

    move-result v1

    add-int/2addr v1, p1

    .line 528
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzn()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamm;->zza(J)V

    .line 529
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzc()I

    move-result p1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 539
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzamg;

    move-result-object p1

    throw p1

    .line 531
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzn()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamm;->zza(J)V

    .line 532
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzw()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 534
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzi()I

    move-result p1

    .line 535
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    if-eq p1, v1, :cond_2

    .line 536
    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzd:I

    return-void

    .line 540
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    .line 543
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzj()I

    move-result v0

    .line 544
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzd(I)V

    .line 545
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    .line 546
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzn()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_5

    goto :goto_0

    .line 557
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzamg;

    move-result-object p1

    throw p1

    .line 549
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzn()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 550
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzw()Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_0
    return-void

    .line 552
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzi()I

    move-result v0

    .line 553
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    if-eq v0, v1, :cond_7

    .line 554
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzd:I

    return-void
.end method

.method public final zzl()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb(I)V

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzl()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzl(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 558
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzalu;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 559
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzalu;

    .line 560
    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 563
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzj()I

    move-result p1

    .line 564
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzc()I

    move-result v1

    add-int/2addr v1, p1

    .line 565
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzh()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzalu;->zzc(I)V

    .line 566
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzc()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 567
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza(I)V

    return-void

    .line 577
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzamg;

    move-result-object p1

    throw p1

    .line 569
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzh()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzalu;->zzc(I)V

    .line 570
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzw()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 572
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzi()I

    move-result p1

    .line 573
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    if-eq p1, v1, :cond_2

    .line 574
    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzd:I

    return-void

    .line 578
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 581
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzj()I

    move-result v0

    .line 582
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    .line 583
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzh()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 584
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 585
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza(I)V

    return-void

    .line 595
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzamg;

    move-result-object p1

    throw p1

    .line 587
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzh()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 588
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzw()Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_0
    return-void

    .line 590
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzi()I

    move-result v0

    .line 591
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    if-eq v0, v1, :cond_7

    .line 592
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzd:I

    return-void
.end method

.method public final zzm()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 31
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb(I)V

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzn()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzm(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 596
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzamm;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 597
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamm;

    .line 598
    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 601
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzj()I

    move-result p1

    .line 602
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzc()I

    move-result v1

    add-int/2addr v1, p1

    .line 603
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzo()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamm;->zza(J)V

    .line 604
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzc()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 605
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza(I)V

    return-void

    .line 615
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzamg;

    move-result-object p1

    throw p1

    .line 607
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzo()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamm;->zza(J)V

    .line 608
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzw()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 610
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzi()I

    move-result p1

    .line 611
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    if-eq p1, v1, :cond_2

    .line 612
    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzd:I

    return-void

    .line 616
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 619
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzj()I

    move-result v0

    .line 620
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    .line 621
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzo()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 622
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 623
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza(I)V

    return-void

    .line 633
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzamg;

    move-result-object p1

    throw p1

    .line 625
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzo()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 626
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzw()Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_0
    return-void

    .line 628
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzi()I

    move-result v0

    .line 629
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    if-eq v0, v1, :cond_7

    .line 630
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzd:I

    return-void
.end method

.method public final zzn()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb(I)V

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzo()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzn(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 634
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza(Ljava/util/List;Z)V

    return-void
.end method

.method public final zzo()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb(I)V

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzp()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzo(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 658
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza(Ljava/util/List;Z)V

    return-void
.end method

.method public final zzp()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 37
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb(I)V

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzq()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object v0

    return-object v0
.end method

.method public final zzp(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 660
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzalu;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 661
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzalu;

    .line 662
    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 665
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzj()I

    move-result p1

    .line 666
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzc()I

    move-result v1

    add-int/2addr v1, p1

    .line 667
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzj()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzalu;->zzc(I)V

    .line 668
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzc()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 669
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza(I)V

    return-void

    .line 679
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzamg;

    move-result-object p1

    throw p1

    .line 671
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzj()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzalu;->zzc(I)V

    .line 672
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzw()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 674
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzi()I

    move-result p1

    .line 675
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    if-eq p1, v1, :cond_2

    .line 676
    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzd:I

    return-void

    .line 680
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 683
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzj()I

    move-result v0

    .line 684
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    .line 685
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzj()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 686
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 687
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza(I)V

    return-void

    .line 697
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzamg;

    move-result-object p1

    throw p1

    .line 689
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzj()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 690
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzw()Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_0
    return-void

    .line 692
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzi()I

    move-result v0

    .line 693
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    if-eq v0, v1, :cond_7

    .line 694
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzd:I

    return-void
.end method

.method public final zzq()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 74
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb(I)V

    .line 75
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzq(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 698
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzamm;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 699
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamm;

    .line 700
    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 703
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzj()I

    move-result p1

    .line 704
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzc()I

    move-result v1

    add-int/2addr v1, p1

    .line 705
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzp()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamm;->zza(J)V

    .line 706
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzc()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 707
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza(I)V

    return-void

    .line 717
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzamg;

    move-result-object p1

    throw p1

    .line 709
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamm;->zza(J)V

    .line 710
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzw()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 712
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzi()I

    move-result p1

    .line 713
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    if-eq p1, v1, :cond_2

    .line 714
    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzd:I

    return-void

    .line 718
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 721
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzj()I

    move-result v0

    .line 722
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    .line 723
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 724
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 725
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza(I)V

    return-void

    .line 735
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzamg;

    move-result-object p1

    throw p1

    .line 727
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 728
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzw()Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_0
    return-void

    .line 730
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzi()I

    move-result v0

    .line 731
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    if-eq v0, v1, :cond_7

    .line 732
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzd:I

    return-void
.end method

.method public final zzr()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 76
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb(I)V

    .line 77
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzs()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzs()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 750
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb(I)V

    .line 751
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzx()Z

    move-result v0

    return v0
.end method

.method public final zzt()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 752
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzw()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzc:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 754
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zze(I)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
