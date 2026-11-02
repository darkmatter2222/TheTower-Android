.class final Lcom/google/android/gms/internal/firebase-auth-api/zzamz;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzanl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzanl<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final zza:[I

.field private static final zzb:Lsun/misc/Unsafe;


# instance fields
.field private final zzc:[I

.field private final zzd:[Ljava/lang/Object;

.field private final zze:I

.field private final zzf:I

.field private final zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzamv;

.field private final zzh:Z

.field private final zzi:Z

.field private final zzj:Z

.field private final zzk:[I

.field private final zzl:I

.field private final zzm:I

.field private final zzn:Lcom/google/android/gms/internal/firebase-auth-api/zzand;

.field private final zzo:Lcom/google/android/gms/internal/firebase-auth-api/zzamh;

.field private final zzp:Lcom/google/android/gms/internal/firebase-auth-api/zzaob;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaob<",
            "**>;"
        }
    .end annotation
.end field

.field private final zzq:Lcom/google/android/gms/internal/firebase-auth-api/zzalh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzalh<",
            "*>;"
        }
    .end annotation
.end field

.field private final zzr:Lcom/google/android/gms/internal/firebase-auth-api/zzams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 1577
    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza:[I

    .line 1578
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzb()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/firebase-auth-api/zzamv;Z[IIILcom/google/android/gms/internal/firebase-auth-api/zzand;Lcom/google/android/gms/internal/firebase-auth-api/zzamh;Lcom/google/android/gms/internal/firebase-auth-api/zzaob;Lcom/google/android/gms/internal/firebase-auth-api/zzalh;Lcom/google/android/gms/internal/firebase-auth-api/zzams;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/Object;",
            "II",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzamv;",
            "Z[III",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzand;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzamh;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaob<",
            "**>;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzalh<",
            "*>;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzams;",
            ")V"
        }
    .end annotation

    .line 1579
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1580
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc:[I

    .line 1581
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzd:[Ljava/lang/Object;

    .line 1582
    iput p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zze:I

    .line 1583
    iput p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzf:I

    .line 1584
    instance-of p1, p5, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzi:Z

    const/4 p1, 0x0

    if-eqz p13, :cond_0

    .line 1585
    invoke-virtual {p13, p5}, Lcom/google/android/gms/internal/firebase-auth-api/zzalh;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzamv;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, p1

    :goto_0
    iput-boolean p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzh:Z

    .line 1586
    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzj:Z

    .line 1587
    iput-object p7, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzk:[I

    .line 1588
    iput p8, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzl:I

    .line 1589
    iput p9, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzm:I

    .line 1590
    iput-object p10, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzn:Lcom/google/android/gms/internal/firebase-auth-api/zzand;

    .line 1591
    iput-object p11, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzo:Lcom/google/android/gms/internal/firebase-auth-api/zzamh;

    .line 1592
    iput-object p12, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzp:Lcom/google/android/gms/internal/firebase-auth-api/zzaob;

    .line 1593
    iput-object p13, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzq:Lcom/google/android/gms/internal/firebase-auth-api/zzalh;

    .line 1594
    iput-object p5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzamv;

    .line 1595
    iput-object p14, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzr:Lcom/google/android/gms/internal/firebase-auth-api/zzams;

    return-void
.end method

.method private final zza(I)I
    .locals 1

    .line 1254
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zze:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzf:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x0

    .line 1255
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private final zza(II)I
    .locals 4

    .line 1258
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gt p2, v0, :cond_2

    add-int v1, v0, p2

    ushr-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v1, 0x3

    .line 1263
    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc:[I

    aget v3, v3, v2

    if-ne p1, v3, :cond_0

    return v2

    :cond_0
    if-ge p1, v3, :cond_1

    add-int/lit8 v0, v1, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method private static zza(Ljava/lang/Object;J)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    .line 571
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zze(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static zza([BIILcom/google/android/gms/internal/firebase-auth-api/zzaoj;Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/zzaka;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaoj;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaka;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzanc;->zza:[I

    invoke-virtual {p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoj;->ordinal()I

    move-result p3

    aget p3, v0, p3

    packed-switch p3, :pswitch_data_0

    .line 37
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "unsupported field type."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 35
    :pswitch_0
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzb([BILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result p0

    return p0

    .line 32
    :pswitch_1
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzd([BILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result p0

    .line 33
    iget-wide p1, p5, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zzb:J

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zza(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zzc:Ljava/lang/Object;

    return p0

    .line 29
    :pswitch_2
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzc([BILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result p0

    .line 30
    iget p1, p5, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zza:I

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zza(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zzc:Ljava/lang/Object;

    return p0

    .line 25
    :pswitch_3
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzank;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzank;

    move-result-object p3

    .line 26
    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzank;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/zzanl;

    move-result-object p3

    .line 27
    invoke-static {p3, p0, p1, p2, p5}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzanl;[BIILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result p0

    return p0

    .line 22
    :pswitch_4
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzd([BILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result p0

    .line 23
    iget-wide p1, p5, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zzb:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zzc:Ljava/lang/Object;

    return p0

    .line 19
    :pswitch_5
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzc([BILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result p0

    .line 20
    iget p1, p5, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zza:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zzc:Ljava/lang/Object;

    return p0

    .line 16
    :pswitch_6
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzb([BI)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zzc:Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x4

    return p1

    .line 13
    :pswitch_7
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzd([BI)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zzc:Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x8

    return p1

    .line 10
    :pswitch_8
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzc([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zzc:Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x4

    return p1

    .line 7
    :pswitch_9
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zza([BI)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zzc:Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x8

    return p1

    .line 5
    :pswitch_a
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zza([BILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result p0

    return p0

    .line 2
    :pswitch_b
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzd([BILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result p0

    .line 3
    iget-wide p1, p5, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zzb:J

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zzc:Ljava/lang/Object;

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/zzamt;Lcom/google/android/gms/internal/firebase-auth-api/zzand;Lcom/google/android/gms/internal/firebase-auth-api/zzamh;Lcom/google/android/gms/internal/firebase-auth-api/zzaob;Lcom/google/android/gms/internal/firebase-auth-api/zzalh;Lcom/google/android/gms/internal/firebase-auth-api/zzams;)Lcom/google/android/gms/internal/firebase-auth-api/zzamz;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzamt;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzand;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzamh;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaob<",
            "**>;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzalh<",
            "*>;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzams;",
            ")",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzamz<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1275
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb:Lsun/misc/Unsafe;

    if-eqz v1, :cond_35

    .line 1277
    instance-of v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzanm;

    if-eqz v1, :cond_34

    .line 1278
    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzanm;

    .line 1279
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzanm;->zzd()Ljava/lang/String;

    move-result-object v1

    .line 1280
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    .line 1282
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v5, 0xd800

    if-lt v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    add-int/lit8 v7, v4, 0x1

    .line 1286
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_1

    move v4, v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x1

    :cond_1
    add-int/lit8 v4, v7, 0x1

    .line 1289
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_3

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_1
    add-int/lit8 v10, v4, 0x1

    .line 1293
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_2

    and-int/lit16 v4, v4, 0x1fff

    shl-int/2addr v4, v9

    or-int/2addr v7, v4

    add-int/lit8 v9, v9, 0xd

    move v4, v10

    goto :goto_1

    :cond_2
    shl-int/2addr v4, v9

    or-int/2addr v7, v4

    move v4, v10

    :cond_3
    if-nez v7, :cond_4

    .line 1305
    sget-object v7, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza:[I

    move v9, v3

    move v10, v9

    move v11, v10

    move v12, v11

    move v13, v12

    move/from16 v17, v13

    move-object/from16 v16, v7

    move/from16 v7, v17

    goto/16 :goto_a

    :cond_4
    add-int/lit8 v7, v4, 0x1

    .line 1307
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_6

    and-int/lit16 v4, v4, 0x1fff

    const/16 v9, 0xd

    :goto_2
    add-int/lit8 v10, v7, 0x1

    .line 1311
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_5

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v9

    or-int/2addr v4, v7

    add-int/lit8 v9, v9, 0xd

    move v7, v10

    goto :goto_2

    :cond_5
    shl-int/2addr v7, v9

    or-int/2addr v4, v7

    move v7, v10

    :cond_6
    add-int/lit8 v9, v7, 0x1

    .line 1316
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_8

    and-int/lit16 v7, v7, 0x1fff

    const/16 v10, 0xd

    :goto_3
    add-int/lit8 v11, v9, 0x1

    .line 1320
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_7

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    add-int/lit8 v10, v10, 0xd

    move v9, v11

    goto :goto_3

    :cond_7
    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    move v9, v11

    :cond_8
    add-int/lit8 v10, v9, 0x1

    .line 1325
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_a

    and-int/lit16 v9, v9, 0x1fff

    const/16 v11, 0xd

    :goto_4
    add-int/lit8 v12, v10, 0x1

    .line 1329
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v5, :cond_9

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    add-int/lit8 v11, v11, 0xd

    move v10, v12

    goto :goto_4

    :cond_9
    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    move v10, v12

    :cond_a
    add-int/lit8 v11, v10, 0x1

    .line 1334
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v5, :cond_c

    and-int/lit16 v10, v10, 0x1fff

    const/16 v12, 0xd

    :goto_5
    add-int/lit8 v13, v11, 0x1

    .line 1338
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_b

    and-int/lit16 v11, v11, 0x1fff

    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    add-int/lit8 v12, v12, 0xd

    move v11, v13

    goto :goto_5

    :cond_b
    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    move v11, v13

    :cond_c
    add-int/lit8 v12, v11, 0x1

    .line 1343
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_e

    and-int/lit16 v11, v11, 0x1fff

    const/16 v13, 0xd

    :goto_6
    add-int/lit8 v14, v12, 0x1

    .line 1347
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_d

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_6

    :cond_d
    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    move v12, v14

    :cond_e
    add-int/lit8 v13, v12, 0x1

    .line 1352
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_10

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_7
    add-int/lit8 v15, v13, 0x1

    .line 1356
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_f

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_7

    :cond_f
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_10
    add-int/lit8 v14, v13, 0x1

    .line 1361
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_12

    :goto_8
    add-int/lit8 v13, v14, 0x1

    .line 1365
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_11

    move v14, v13

    goto :goto_8

    :cond_11
    move v14, v13

    :cond_12
    add-int/lit8 v13, v14, 0x1

    .line 1368
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_14

    and-int/lit16 v14, v14, 0x1fff

    const/16 v15, 0xd

    :goto_9
    add-int/lit8 v16, v13, 0x1

    .line 1372
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_13

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v15

    or-int/2addr v14, v13

    add-int/lit8 v15, v15, 0xd

    move/from16 v13, v16

    goto :goto_9

    :cond_13
    shl-int/2addr v13, v15

    or-int/2addr v14, v13

    move/from16 v13, v16

    :cond_14
    add-int v15, v14, v12

    add-int/2addr v15, v4

    .line 1377
    new-array v15, v15, [I

    shl-int/lit8 v16, v4, 0x1

    add-int v16, v16, v7

    move v7, v12

    move v12, v9

    move v9, v7

    move v7, v4

    move v4, v13

    move/from16 v17, v14

    move v13, v10

    move/from16 v10, v16

    move-object/from16 v16, v15

    .line 1379
    :goto_a
    sget-object v14, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb:Lsun/misc/Unsafe;

    .line 1380
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzanm;->zze()[Ljava/lang/Object;

    move-result-object v15

    .line 1382
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzanm;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzamv;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/16 p1, 0x1

    mul-int/lit8 v6, v11, 0x3

    .line 1383
    new-array v6, v6, [I

    shl-int/lit8 v11, v11, 0x1

    .line 1384
    new-array v11, v11, [Ljava/lang/Object;

    add-int v18, v17, v9

    move/from16 v21, v17

    move/from16 v20, v18

    const/4 v9, 0x0

    const/16 v19, 0x0

    :goto_b
    if-ge v4, v2, :cond_33

    add-int/lit8 v22, v4, 0x1

    .line 1389
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_16

    and-int/lit16 v4, v4, 0x1fff

    move/from16 v8, v22

    const/16 v22, 0xd

    :goto_c
    add-int/lit8 v24, v8, 0x1

    .line 1393
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v5, :cond_15

    and-int/lit16 v8, v8, 0x1fff

    shl-int v8, v8, v22

    or-int/2addr v4, v8

    add-int/lit8 v22, v22, 0xd

    move/from16 v8, v24

    goto :goto_c

    :cond_15
    shl-int v8, v8, v22

    or-int/2addr v4, v8

    move/from16 v8, v24

    goto :goto_d

    :cond_16
    move/from16 v8, v22

    :goto_d
    add-int/lit8 v22, v8, 0x1

    .line 1398
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v5, :cond_18

    and-int/lit16 v8, v8, 0x1fff

    move/from16 v5, v22

    const/16 v22, 0xd

    :goto_e
    add-int/lit8 v25, v5, 0x1

    .line 1402
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move-object/from16 v26, v0

    const v0, 0xd800

    if-lt v5, v0, :cond_17

    and-int/lit16 v0, v5, 0x1fff

    shl-int v0, v0, v22

    or-int/2addr v8, v0

    add-int/lit8 v22, v22, 0xd

    move/from16 v5, v25

    move-object/from16 v0, v26

    goto :goto_e

    :cond_17
    shl-int v0, v5, v22

    or-int/2addr v8, v0

    move/from16 v0, v25

    goto :goto_f

    :cond_18
    move-object/from16 v26, v0

    move/from16 v0, v22

    :goto_f
    and-int/lit16 v5, v8, 0xff

    move/from16 v22, v2

    and-int/lit16 v2, v8, 0x400

    if-eqz v2, :cond_19

    add-int/lit8 v2, v19, 0x1

    .line 1409
    aput v9, v16, v19

    move/from16 v19, v2

    :cond_19
    const/16 v2, 0x33

    move/from16 v28, v4

    if-lt v5, v2, :cond_22

    add-int/lit8 v2, v0, 0x1

    .line 1411
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const v4, 0xd800

    if-lt v0, v4, :cond_1b

    and-int/lit16 v0, v0, 0x1fff

    const/16 v29, 0xd

    :goto_10
    add-int/lit8 v30, v2, 0x1

    .line 1415
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v4, :cond_1a

    and-int/lit16 v2, v2, 0x1fff

    shl-int v2, v2, v29

    or-int/2addr v0, v2

    add-int/lit8 v29, v29, 0xd

    move/from16 v2, v30

    const v4, 0xd800

    goto :goto_10

    :cond_1a
    shl-int v2, v2, v29

    or-int/2addr v0, v2

    move/from16 v2, v30

    :cond_1b
    add-int/lit8 v4, v5, -0x33

    move/from16 v29, v0

    const/16 v0, 0x9

    if-eq v4, v0, :cond_1e

    const/16 v0, 0x11

    if-ne v4, v0, :cond_1c

    goto :goto_11

    :cond_1c
    const/16 v0, 0xc

    if-ne v4, v0, :cond_1f

    .line 1424
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/gms/internal/firebase-auth-api/zzanm;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzanh;

    move-result-object v0

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzanh;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzanh;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzanh;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    and-int/lit16 v0, v8, 0x800

    if-eqz v0, :cond_1f

    .line 1425
    :cond_1d
    div-int/lit8 v0, v9, 0x3

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v4, v10, 0x1

    aget-object v10, v15, v10

    aput-object v10, v11, v0

    goto :goto_12

    .line 1422
    :cond_1e
    :goto_11
    div-int/lit8 v0, v9, 0x3

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v4, v10, 0x1

    aget-object v10, v15, v10

    aput-object v10, v11, v0

    :goto_12
    move v10, v4

    :cond_1f
    shl-int/lit8 v0, v29, 0x1

    .line 1427
    aget-object v4, v15, v0

    move/from16 v25, v0

    .line 1428
    instance-of v0, v4, Ljava/lang/reflect/Field;

    if-eqz v0, :cond_20

    .line 1429
    check-cast v4, Ljava/lang/reflect/Field;

    goto :goto_13

    .line 1430
    :cond_20
    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 1431
    aput-object v4, v15, v25

    add-int/lit8 v0, v20, 0x1

    .line 1432
    aput v9, v16, v20

    move/from16 v20, v0

    :goto_13
    move-object/from16 v30, v6

    move/from16 v29, v7

    .line 1433
    invoke-virtual {v14, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    long-to-int v0, v6

    add-int/lit8 v4, v25, 0x1

    .line 1435
    aget-object v6, v15, v4

    .line 1436
    instance-of v7, v6, Ljava/lang/reflect/Field;

    if-eqz v7, :cond_21

    .line 1437
    check-cast v6, Ljava/lang/reflect/Field;

    goto :goto_14

    .line 1438
    :cond_21
    check-cast v6, Ljava/lang/String;

    invoke-static {v3, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 1439
    aput-object v6, v15, v4

    .line 1440
    :goto_14
    invoke-virtual {v14, v6}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    long-to-int v4, v6

    move v6, v10

    move-object v10, v1

    goto/16 :goto_1d

    :cond_22
    move-object/from16 v30, v6

    move/from16 v29, v7

    add-int/lit8 v2, v10, 0x1

    .line 1443
    aget-object v4, v15, v10

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/16 v6, 0x9

    if-eq v5, v6, :cond_2a

    const/16 v6, 0x11

    if-ne v5, v6, :cond_23

    goto :goto_19

    :cond_23
    const/16 v6, 0x1b

    if-eq v5, v6, :cond_29

    const/16 v6, 0x31

    if-ne v5, v6, :cond_24

    goto :goto_17

    :cond_24
    const/16 v6, 0xc

    if-eq v5, v6, :cond_27

    const/16 v6, 0x1e

    if-eq v5, v6, :cond_27

    const/16 v6, 0x2c

    if-ne v5, v6, :cond_25

    goto :goto_16

    :cond_25
    const/16 v6, 0x32

    if-ne v5, v6, :cond_2b

    add-int/lit8 v6, v21, 0x1

    .line 1452
    aput v9, v16, v21

    .line 1453
    div-int/lit8 v7, v9, 0x3

    shl-int/lit8 v7, v7, 0x1

    add-int/lit8 v21, v10, 0x2

    aget-object v2, v15, v2

    aput-object v2, v11, v7

    and-int/lit16 v2, v8, 0x800

    if-eqz v2, :cond_26

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v2, v10, 0x3

    .line 1455
    aget-object v10, v15, v21

    aput-object v10, v11, v7

    goto :goto_15

    :cond_26
    move/from16 v2, v21

    :goto_15
    move/from16 v21, v6

    goto :goto_1a

    .line 1449
    :cond_27
    :goto_16
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/gms/internal/firebase-auth-api/zzanm;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzanh;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/internal/firebase-auth-api/zzanh;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzanh;

    if-eq v6, v7, :cond_28

    and-int/lit16 v6, v8, 0x800

    if-eqz v6, :cond_2b

    .line 1450
    :cond_28
    div-int/lit8 v6, v9, 0x3

    shl-int/lit8 v6, v6, 0x1

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v10, v10, 0x2

    aget-object v2, v15, v2

    aput-object v2, v11, v6

    goto :goto_18

    .line 1447
    :cond_29
    :goto_17
    div-int/lit8 v6, v9, 0x3

    shl-int/lit8 v6, v6, 0x1

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v10, v10, 0x2

    aget-object v2, v15, v2

    aput-object v2, v11, v6

    :goto_18
    move v2, v10

    goto :goto_1a

    .line 1445
    :cond_2a
    :goto_19
    div-int/lit8 v6, v9, 0x3

    shl-int/lit8 v6, v6, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v11, v6

    .line 1456
    :cond_2b
    :goto_1a
    invoke-virtual {v14, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    long-to-int v4, v6

    and-int/lit16 v6, v8, 0x1000

    if-eqz v6, :cond_2f

    const/16 v6, 0x11

    if-gt v5, v6, :cond_2f

    add-int/lit8 v6, v0, 0x1

    .line 1459
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const v7, 0xd800

    if-lt v0, v7, :cond_2d

    and-int/lit16 v0, v0, 0x1fff

    const/16 v10, 0xd

    :goto_1b
    add-int/lit8 v24, v6, 0x1

    .line 1463
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v7, :cond_2c

    and-int/lit16 v6, v6, 0x1fff

    shl-int/2addr v6, v10

    or-int/2addr v0, v6

    add-int/lit8 v10, v10, 0xd

    move/from16 v6, v24

    goto :goto_1b

    :cond_2c
    shl-int/2addr v6, v10

    or-int/2addr v0, v6

    move/from16 v6, v24

    :cond_2d
    shl-int/lit8 v10, v29, 0x1

    .line 1468
    div-int/lit8 v24, v0, 0x20

    add-int v10, v10, v24

    .line 1469
    aget-object v7, v15, v10

    move/from16 v25, v0

    .line 1470
    instance-of v0, v7, Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2e

    .line 1471
    check-cast v7, Ljava/lang/reflect/Field;

    goto :goto_1c

    .line 1472
    :cond_2e
    check-cast v7, Ljava/lang/String;

    invoke-static {v3, v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 1473
    aput-object v7, v15, v10

    :goto_1c
    move-object v10, v1

    .line 1474
    invoke-virtual {v14, v7}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    long-to-int v0, v0

    .line 1475
    rem-int/lit8 v1, v25, 0x20

    move/from16 v31, v4

    move v4, v0

    move/from16 v0, v31

    move/from16 v31, v6

    move v6, v2

    move/from16 v2, v31

    goto :goto_1e

    :cond_2f
    move-object v10, v1

    const v1, 0xfffff

    move v6, v2

    move v2, v0

    move v0, v4

    move v4, v1

    :goto_1d
    const/4 v1, 0x0

    :goto_1e
    add-int/lit8 v7, v9, 0x1

    .line 1479
    aput v28, v30, v9

    add-int/lit8 v25, v9, 0x2

    move/from16 v27, v0

    and-int/lit16 v0, v8, 0x200

    if-eqz v0, :cond_30

    const/high16 v0, 0x20000000

    goto :goto_1f

    :cond_30
    const/4 v0, 0x0

    :goto_1f
    move/from16 v28, v0

    and-int/lit16 v0, v8, 0x100

    if-eqz v0, :cond_31

    const/high16 v0, 0x10000000

    goto :goto_20

    :cond_31
    const/4 v0, 0x0

    :goto_20
    or-int v0, v28, v0

    and-int/lit16 v8, v8, 0x800

    if-eqz v8, :cond_32

    const/high16 v8, -0x80000000

    goto :goto_21

    :cond_32
    const/4 v8, 0x0

    :goto_21
    or-int/2addr v0, v8

    shl-int/lit8 v5, v5, 0x14

    or-int/2addr v0, v5

    or-int v0, v0, v27

    .line 1485
    aput v0, v30, v7

    add-int/lit8 v9, v9, 0x3

    shl-int/lit8 v0, v1, 0x14

    or-int/2addr v0, v4

    .line 1486
    aput v0, v30, v25

    move v4, v2

    move-object v1, v10

    move/from16 v2, v22

    move-object/from16 v0, v26

    move/from16 v7, v29

    const v5, 0xd800

    move v10, v6

    move-object/from16 v6, v30

    goto/16 :goto_b

    :cond_33
    move-object/from16 v26, v0

    move-object/from16 v30, v6

    .line 1488
    new-instance v9, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;

    .line 1489
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/gms/internal/firebase-auth-api/zzanm;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzamv;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v19, p2

    move-object/from16 v20, p3

    move-object/from16 v21, p4

    move-object/from16 v22, p5

    move-object/from16 v23, p6

    move-object/from16 v10, v30

    invoke-direct/range {v9 .. v23}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/firebase-auth-api/zzamv;Z[IIILcom/google/android/gms/internal/firebase-auth-api/zzand;Lcom/google/android/gms/internal/firebase-auth-api/zzamh;Lcom/google/android/gms/internal/firebase-auth-api/zzaob;Lcom/google/android/gms/internal/firebase-auth-api/zzalh;Lcom/google/android/gms/internal/firebase-auth-api/zzams;)V

    return-object v9

    .line 1491
    :cond_34
    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzant;

    .line 1492
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0

    .line 1276
    :cond_35
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Lite gencode is primarily intended for Android use and uses sun.misc.Unsafe which is not available in the current environment. To run in this environment, you may need to switch to standard gencode."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zza(IILjava/util/Map;Lcom/google/android/gms/internal/firebase-auth-api/zzaly;Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzaob;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaly;",
            "TUB;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaob<",
            "TUT;TUB;>;",
            "Ljava/lang/Object;",
            ")TUB;"
        }
    .end annotation

    .line 1521
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzr:Lcom/google/android/gms/internal/firebase-auth-api/zzams;

    .line 1522
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzf(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzams;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzamq;

    move-result-object p1

    .line 1523
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1524
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1525
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p4, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaly;->zza(I)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p5, :cond_1

    .line 1527
    invoke-virtual {p6, p7}, Lcom/google/android/gms/internal/firebase-auth-api/zzaob;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    .line 1529
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamn;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzamq;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 1530
    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zzb(I)Lcom/google/android/gms/internal/firebase-auth-api/zzakk;

    move-result-object v1

    .line 1531
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakk;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzaky;

    move-result-object v2

    .line 1532
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, p1, v3, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamn;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaky;Lcom/google/android/gms/internal/firebase-auth-api/zzamq;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1536
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakk;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object v0

    invoke-virtual {p6, p5, p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaob;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/firebase-auth-api/zzakb;)V

    .line 1537
    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1535
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    return-object p5
.end method

.method private final zza(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1541
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zze(I)Lcom/google/android/gms/internal/firebase-auth-api/zzanl;

    move-result-object v0

    .line 1542
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    .line 1545
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;I)Z

    move-result p2

    if-nez p2, :cond_0

    .line 1546
    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzanl;->zza()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1547
    :cond_0
    sget-object p2, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 1548
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzg(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    .line 1550
    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzanl;->zza()Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_2

    .line 1552
    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzanl;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p2
.end method

.method private final zza(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1554
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zze(I)Lcom/google/android/gms/internal/firebase-auth-api/zzanl;

    move-result-object v0

    .line 1555
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;II)Z

    move-result p2

    if-nez p2, :cond_0

    .line 1556
    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzanl;->zza()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1557
    :cond_0
    sget-object p2, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb:Lsun/misc/Unsafe;

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(I)I

    move-result p3

    const v1, 0xfffff

    and-int/2addr p3, v1

    int-to-long v1, p3

    .line 1559
    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 1560
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzg(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    .line 1562
    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzanl;->zza()Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_2

    .line 1564
    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzanl;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p2
.end method

.method private final zza(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzaob;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "ITUB;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaob<",
            "TUT;TUB;>;",
            "Ljava/lang/Object;",
            ")TUB;"
        }
    .end annotation

    .line 1506
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc:[I

    aget v3, v0, p2

    .line 1508
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    .line 1511
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zze(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1514
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzd(I)Lcom/google/android/gms/internal/firebase-auth-api/zzaly;

    move-result-object v5

    if-nez v5, :cond_1

    :goto_0
    return-object p3

    .line 1517
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzr:Lcom/google/android/gms/internal/firebase-auth-api/zzams;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzams;->zze(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    move-object v1, p0

    move v2, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    .line 1519
    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(IILjava/util/Map;Lcom/google/android/gms/internal/firebase-auth-api/zzaly;Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzaob;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private static zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 1567
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 1569
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1570
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 1571
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1574
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    .line 1575
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 1576
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Field "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, " for "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " not found. Known fields are "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static zza(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzale;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2286
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2287
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzale;->zza(ILjava/lang/String;)V

    return-void

    .line 2288
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    invoke-virtual {p2, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzale;->zza(ILcom/google/android/gms/internal/firebase-auth-api/zzakb;)V

    return-void
.end method

.method private final zza(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 2281
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb:Lsun/misc/Unsafe;

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    .line 2283
    invoke-virtual {v0, p1, v1, v2, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2284
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(Ljava/lang/Object;II)V

    return-void
.end method

.method private final zza(Ljava/lang/Object;ILcom/google/android/gms/internal/firebase-auth-api/zzakw;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2253
    invoke-static {p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzg(I)Z

    move-result v0

    const v1, 0xfffff

    if-eqz v0, :cond_0

    and-int/2addr p2, v1

    int-to-long v0, p2

    .line 2256
    invoke-virtual {p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzr()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    .line 2257
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzi:Z

    if-eqz v0, :cond_1

    and-int/2addr p2, v1

    int-to-long v0, p2

    .line 2260
    invoke-virtual {p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzq()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    :cond_1
    and-int/2addr p2, v1

    int-to-long v0, p2

    .line 2263
    invoke-virtual {p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzp()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method private final zza(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 2276
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb:Lsun/misc/Unsafe;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    .line 2278
    invoke-virtual {v0, p1, v1, v2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2279
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(Ljava/lang/Object;I)V

    return-void
.end method

.method private final zza(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 2194
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2196
    :cond_0
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    .line 2199
    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v2, p2, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 2205
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zze(I)Lcom/google/android/gms/internal/firebase-auth-api/zzanl;

    move-result-object p2

    .line 2206
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2207
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzg(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2208
    invoke-virtual {v2, p1, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    .line 2209
    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzanl;->zza()Ljava/lang/Object;

    move-result-object v4

    .line 2210
    invoke-interface {p2, v4, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzanl;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2211
    invoke-virtual {v2, p1, v0, v1, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2212
    :goto_0
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(Ljava/lang/Object;I)V

    return-void

    .line 2214
    :cond_2
    invoke-virtual {v2, p1, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p3

    .line 2215
    invoke-static {p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzg(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2216
    invoke-interface {p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzanl;->zza()Ljava/lang/Object;

    move-result-object v4

    .line 2217
    invoke-interface {p2, v4, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzanl;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2218
    invoke-virtual {v2, p1, v0, v1, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p3, v4

    .line 2220
    :cond_3
    invoke-interface {p2, p3, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzanl;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 2201
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 2203
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc:[I

    aget p3, v0, p3

    .line 2204
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Source subfield "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " is present but null: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final zza(Ljava/lang/Object;IIII)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IIII)Z"
        }
    .end annotation

    const v0, 0xfffff

    if-ne p3, v0, :cond_0

    .line 2776
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;I)Z

    move-result p1

    return p1

    :cond_0
    and-int p1, p4, p5

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private static zza(Ljava/lang/Object;ILcom/google/android/gms/internal/firebase-auth-api/zzanl;)Z
    .locals 2

    const v0, 0xfffff

    and-int/2addr p1, v0

    int-to-long v0, p1

    .line 2845
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zze(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 2846
    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzanl;->zze(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final zzb(I)I
    .locals 1

    .line 1257
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc:[I

    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    return p1
.end method

.method private static zzb(Ljava/lang/Object;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    .line 1273
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zze(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private final zzb(Ljava/lang/Object;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 2265
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(I)I

    move-result p2

    const v0, 0xfffff

    and-int/2addr v0, p2

    int-to-long v0, v0

    const-wide/32 v2, 0xfffff

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    ushr-int/lit8 p2, p2, 0x14

    const/4 v2, 0x1

    shl-int p2, v2, p2

    .line 2271
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzc(Ljava/lang/Object;J)I

    move-result v2

    or-int/2addr p2, v2

    .line 2272
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zza(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final zzb(Ljava/lang/Object;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    .line 2274
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zza(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final zzb(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 2223
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc:[I

    aget v0, v0, p3

    .line 2225
    invoke-direct {p0, p2, v0, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;II)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2227
    :cond_0
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    .line 2230
    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v3, p2, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 2236
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zze(I)Lcom/google/android/gms/internal/firebase-auth-api/zzanl;

    move-result-object p2

    .line 2237
    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;II)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2238
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzg(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2239
    invoke-virtual {v3, p1, v1, v2, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    .line 2240
    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzanl;->zza()Ljava/lang/Object;

    move-result-object v5

    .line 2241
    invoke-interface {p2, v5, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzanl;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2242
    invoke-virtual {v3, p1, v1, v2, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2243
    :goto_0
    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(Ljava/lang/Object;II)V

    return-void

    .line 2245
    :cond_2
    invoke-virtual {v3, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p3

    .line 2246
    invoke-static {p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzg(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2247
    invoke-interface {p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzanl;->zza()Ljava/lang/Object;

    move-result-object v0

    .line 2248
    invoke-interface {p2, v0, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzanl;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2249
    invoke-virtual {v3, p1, v1, v2, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p3, v0

    .line 2251
    :cond_3
    invoke-interface {p2, p3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzanl;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 2232
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 2234
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc:[I

    aget p3, v0, p3

    .line 2235
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Source subfield "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " is present but null: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final zzb()Z
    .locals 1

    .line 2858
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private final zzc(I)I
    .locals 1

    .line 1272
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method

.method static zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzaoa;
    .locals 2

    .line 1500
    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzaoa;

    .line 1501
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoa;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzaoa;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1502
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoa;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzaoa;

    move-result-object v0

    .line 1503
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzaoa;

    :cond_0
    return-object v0
.end method

.method private final zzc(Ljava/lang/Object;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    .line 2739
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(I)I

    move-result v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const-wide/32 v4, 0xfffff

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_14

    .line 2742
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(I)I

    move-result p2

    and-int v0, p2, v1

    int-to-long v0, v0

    const/high16 v2, 0xff00000

    and-int/2addr p2, v2

    ushr-int/lit8 p2, p2, 0x14

    const-wide/16 v2, 0x0

    packed-switch p2, :pswitch_data_0

    .line 2772
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb()Z

    move-result p1

    return p1

    .line 2771
    :pswitch_0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zze(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return v6

    :cond_0
    return v5

    .line 2770
    :pswitch_1
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzd(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_1

    return v6

    :cond_1
    return v5

    .line 2769
    :pswitch_2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_2

    return v6

    :cond_2
    return v5

    .line 2768
    :pswitch_3
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzd(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_3

    return v6

    :cond_3
    return v5

    .line 2767
    :pswitch_4
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_4

    return v6

    :cond_4
    return v5

    .line 2766
    :pswitch_5
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5

    return v6

    :cond_5
    return v5

    .line 2765
    :pswitch_6
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_6

    return v6

    :cond_6
    return v5

    .line 2764
    :pswitch_7
    sget-object p2, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zze(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v6

    :cond_7
    return v5

    .line 2763
    :pswitch_8
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zze(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    return v6

    :cond_8
    return v5

    .line 2757
    :pswitch_9
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zze(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 2758
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_a

    .line 2759
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    return v6

    :cond_9
    return v5

    .line 2760
    :cond_a
    instance-of p2, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    if-eqz p2, :cond_c

    .line 2761
    sget-object p2, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v6

    :cond_b
    return v5

    .line 2762
    :cond_c
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb()Z

    move-result p1

    return p1

    .line 2756
    :pswitch_a
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzh(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 2755
    :pswitch_b
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_d

    return v6

    :cond_d
    return v5

    .line 2754
    :pswitch_c
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzd(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_e

    return v6

    :cond_e
    return v5

    .line 2753
    :pswitch_d
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_f

    return v6

    :cond_f
    return v5

    .line 2752
    :pswitch_e
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzd(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_10

    return v6

    :cond_10
    return v5

    .line 2751
    :pswitch_f
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzd(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_11

    return v6

    :cond_11
    return v5

    .line 2750
    :pswitch_10
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzb(Ljava/lang/Object;J)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    if-eqz p1, :cond_12

    return v6

    :cond_12
    return v5

    .line 2749
    :pswitch_11
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zza(Ljava/lang/Object;J)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_13

    return v6

    :cond_13
    return v5

    :cond_14
    ushr-int/lit8 p2, v0, 0x14

    shl-int p2, v6, p2

    .line 2774
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzc(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p1, p2

    if-eqz p1, :cond_15

    return v6

    :cond_15
    return v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
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

.method private final zzc(Ljava/lang/Object;II)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    .line 2856
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 2857
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    .line 2630
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;I)Z

    move-result p1

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;I)Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final zzd(I)Lcom/google/android/gms/internal/firebase-auth-api/zzaly;
    .locals 1

    .line 1274
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzd:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaly;

    return-object p1
.end method

.method private final zzd(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    .line 2852
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 2853
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzc(Ljava/lang/Object;J)I

    move-result p1

    .line 2854
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzc(Ljava/lang/Object;J)I

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final zze(I)Lcom/google/android/gms/internal/firebase-auth-api/zzanl;
    .locals 3

    .line 1493
    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    .line 1494
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzd:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzanl;

    if-eqz v0, :cond_0

    return-object v0

    .line 1497
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzank;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzank;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzd:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzank;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/zzanl;

    move-result-object v0

    .line 1498
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzd:[Ljava/lang/Object;

    aput-object v0, v1, p1

    return-object v0
.end method

.method private final zzf(I)Ljava/lang/Object;
    .locals 1

    .line 1540
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzd:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method private static zzf(Ljava/lang/Object;)V
    .locals 3

    .line 1597
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzg(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1598
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Mutating immutable message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static zzg(I)Z
    .locals 1

    const/high16 v0, 0x20000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static zzg(Ljava/lang/Object;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2849
    :cond_0
    instance-of v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    if-eqz v0, :cond_1

    .line 2850
    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;->zzu()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 40
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    const v2, 0xfffff

    move v4, v1

    move v5, v4

    move v9, v5

    move v3, v2

    .line 43
    :goto_0
    iget-object v6, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc:[I

    array-length v6, v6

    if-ge v5, v6, :cond_9

    .line 44
    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(I)I

    move-result v6

    const/high16 v7, 0xff00000

    and-int/2addr v7, v6

    ushr-int/lit8 v7, v7, 0x14

    .line 49
    iget-object v8, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc:[I

    aget v10, v8, v5

    add-int/lit8 v11, v5, 0x2

    .line 52
    aget v8, v8, v11

    and-int v11, v8, v2

    const/16 v12, 0x11

    const/4 v13, 0x1

    if-gt v7, v12, :cond_2

    if-eq v11, v3, :cond_1

    if-ne v11, v2, :cond_0

    move v3, v1

    goto :goto_1

    :cond_0
    int-to-long v3, v11

    .line 59
    invoke-virtual {v0, p1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    :goto_1
    move v4, v3

    move v3, v11

    :cond_1
    ushr-int/lit8 v8, v8, 0x14

    shl-int v8, v13, v8

    goto :goto_2

    :cond_2
    move v8, v1

    :goto_2
    and-int/2addr v6, v2

    int-to-long v11, v6

    .line 64
    sget-object v6, Lcom/google/android/gms/internal/firebase-auth-api/zzaln;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaln;

    .line 65
    invoke-virtual {v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzaln;->zza()I

    move-result v6

    if-lt v7, v6, :cond_3

    sget-object v6, Lcom/google/android/gms/internal/firebase-auth-api/zzaln;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzaln;

    .line 66
    invoke-virtual {v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzaln;->zza()I

    move-result v6

    :cond_3
    packed-switch v7, :pswitch_data_0

    goto/16 :goto_7

    .line 473
    :pswitch_0
    invoke-direct {p0, p1, v10, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 475
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/firebase-auth-api/zzamv;

    .line 476
    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zze(I)Lcom/google/android/gms/internal/firebase-auth-api/zzanl;

    move-result-object v7

    .line 477
    invoke-static {v10, v6, v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zza(ILcom/google/android/gms/internal/firebase-auth-api/zzamv;Lcom/google/android/gms/internal/firebase-auth-api/zzanl;)I

    move-result v6

    goto/16 :goto_6

    .line 471
    :pswitch_1
    invoke-direct {p0, p1, v10, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 472
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v10, v6, v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzd(IJ)I

    move-result v6

    goto/16 :goto_6

    .line 469
    :pswitch_2
    invoke-direct {p0, p1, v10, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 470
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v10, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzg(II)I

    move-result v6

    goto/16 :goto_6

    .line 461
    :pswitch_3
    invoke-direct {p0, p1, v10, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_5

    shl-int/lit8 v6, v10, 0x3

    .line 466
    invoke-static {v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzd(I)I

    move-result v6

    goto/16 :goto_4

    .line 453
    :pswitch_4
    invoke-direct {p0, p1, v10, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_5

    shl-int/lit8 v6, v10, 0x3

    .line 458
    invoke-static {v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzd(I)I

    move-result v6

    goto/16 :goto_3

    .line 451
    :pswitch_5
    invoke-direct {p0, p1, v10, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 452
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v10, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zze(II)I

    move-result v6

    goto/16 :goto_6

    .line 449
    :pswitch_6
    invoke-direct {p0, p1, v10, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 450
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v10, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzh(II)I

    move-result v6

    goto/16 :goto_6

    .line 445
    :pswitch_7
    invoke-direct {p0, p1, v10, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 447
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    .line 448
    invoke-static {v10, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzc(ILcom/google/android/gms/internal/firebase-auth-api/zzakb;)I

    move-result v6

    goto/16 :goto_6

    .line 441
    :pswitch_8
    invoke-direct {p0, p1, v10, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 442
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 443
    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zze(I)Lcom/google/android/gms/internal/firebase-auth-api/zzanl;

    move-result-object v7

    invoke-static {v10, v6, v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzanl;)I

    move-result v6

    goto/16 :goto_6

    .line 435
    :pswitch_9
    invoke-direct {p0, p1, v10, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 436
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 437
    instance-of v7, v6, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    if-eqz v7, :cond_4

    .line 438
    check-cast v6, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    invoke-static {v10, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzc(ILcom/google/android/gms/internal/firebase-auth-api/zzakb;)I

    move-result v6

    goto/16 :goto_6

    .line 439
    :cond_4
    check-cast v6, Ljava/lang/String;

    invoke-static {v10, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzb(ILjava/lang/String;)I

    move-result v6

    goto/16 :goto_6

    .line 427
    :pswitch_a
    invoke-direct {p0, p1, v10, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_5

    shl-int/lit8 v6, v10, 0x3

    .line 432
    invoke-static {v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzd(I)I

    move-result v6

    add-int/2addr v6, v13

    goto/16 :goto_6

    .line 419
    :pswitch_b
    invoke-direct {p0, p1, v10, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_5

    shl-int/lit8 v6, v10, 0x3

    .line 424
    invoke-static {v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzd(I)I

    move-result v6

    goto :goto_3

    .line 411
    :pswitch_c
    invoke-direct {p0, p1, v10, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_5

    shl-int/lit8 v6, v10, 0x3

    .line 416
    invoke-static {v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzd(I)I

    move-result v6

    goto :goto_4

    .line 409
    :pswitch_d
    invoke-direct {p0, p1, v10, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 410
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v10, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzf(II)I

    move-result v6

    goto/16 :goto_6

    .line 407
    :pswitch_e
    invoke-direct {p0, p1, v10, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 408
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v10, v6, v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zze(IJ)I

    move-result v6

    goto/16 :goto_6

    .line 405
    :pswitch_f
    invoke-direct {p0, p1, v10, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 406
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v10, v6, v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzc(IJ)I

    move-result v6

    goto/16 :goto_6

    .line 397
    :pswitch_10
    invoke-direct {p0, p1, v10, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_5

    shl-int/lit8 v6, v10, 0x3

    .line 402
    invoke-static {v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzd(I)I

    move-result v6

    :goto_3
    add-int/lit8 v6, v6, 0x4

    goto/16 :goto_6

    .line 389
    :pswitch_11
    invoke-direct {p0, p1, v10, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_5

    shl-int/lit8 v6, v10, 0x3

    .line 394
    invoke-static {v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzd(I)I

    move-result v6

    :goto_4
    add-int/lit8 v6, v6, 0x8

    goto/16 :goto_6

    .line 385
    :pswitch_12
    iget-object v6, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzr:Lcom/google/android/gms/internal/firebase-auth-api/zzams;

    .line 386
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzf(I)Ljava/lang/Object;

    move-result-object v8

    .line 387
    invoke-interface {v6, v10, v7, v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzams;->zza(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    goto/16 :goto_6

    .line 381
    :pswitch_13
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 382
    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zze(I)Lcom/google/android/gms/internal/firebase-auth-api/zzanl;

    move-result-object v7

    .line 383
    invoke-static {v10, v6, v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zza(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzanl;)I

    move-result v6

    goto/16 :goto_6

    .line 370
    :pswitch_14
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 371
    invoke-static {v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zzh(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_5

    shl-int/lit8 v7, v10, 0x3

    .line 377
    invoke-static {v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzd(I)I

    move-result v7

    .line 379
    invoke-static {v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzd(I)I

    move-result v8

    goto/16 :goto_5

    .line 359
    :pswitch_15
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 360
    invoke-static {v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zzg(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_5

    shl-int/lit8 v7, v10, 0x3

    .line 366
    invoke-static {v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzd(I)I

    move-result v7

    .line 368
    invoke-static {v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzd(I)I

    move-result v8

    goto/16 :goto_5

    .line 348
    :pswitch_16
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 349
    invoke-static {v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zzd(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_5

    shl-int/lit8 v7, v10, 0x3

    .line 355
    invoke-static {v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzd(I)I

    move-result v7

    .line 357
    invoke-static {v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzd(I)I

    move-result v8

    goto/16 :goto_5

    .line 337
    :pswitch_17
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 338
    invoke-static {v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zzc(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_5

    shl-int/lit8 v7, v10, 0x3

    .line 344
    invoke-static {v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzd(I)I

    move-result v7

    .line 346
    invoke-static {v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzd(I)I

    move-result v8

    goto/16 :goto_5

    .line 326
    :pswitch_18
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 327
    invoke-static {v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zzb(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_5

    shl-int/lit8 v7, v10, 0x3

    .line 333
    invoke-static {v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzd(I)I

    move-result v7

    .line 335
    invoke-static {v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzd(I)I

    move-result v8

    goto/16 :goto_5

    .line 315
    :pswitch_19
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 316
    invoke-static {v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zzi(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_5

    shl-int/lit8 v7, v10, 0x3

    .line 322
    invoke-static {v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzd(I)I

    move-result v7

    .line 324
    invoke-static {v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzd(I)I

    move-result v8

    goto/16 :goto_5

    .line 304
    :pswitch_1a
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 305
    invoke-static {v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zza(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_5

    shl-int/lit8 v7, v10, 0x3

    .line 311
    invoke-static {v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzd(I)I

    move-result v7

    .line 313
    invoke-static {v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzd(I)I

    move-result v8

    goto/16 :goto_5

    .line 293
    :pswitch_1b
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 294
    invoke-static {v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zzc(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_5

    shl-int/lit8 v7, v10, 0x3

    .line 300
    invoke-static {v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzd(I)I

    move-result v7

    .line 302
    invoke-static {v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzd(I)I

    move-result v8

    goto/16 :goto_5

    .line 282
    :pswitch_1c
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 283
    invoke-static {v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zzd(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_5

    shl-int/lit8 v7, v10, 0x3

    .line 289
    invoke-static {v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzd(I)I

    move-result v7

    .line 291
    invoke-static {v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzd(I)I

    move-result v8

    goto/16 :goto_5

    .line 271
    :pswitch_1d
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 272
    invoke-static {v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zze(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_5

    shl-int/lit8 v7, v10, 0x3

    .line 278
    invoke-static {v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzd(I)I

    move-result v7

    .line 280
    invoke-static {v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzd(I)I

    move-result v8

    goto :goto_5

    .line 260
    :pswitch_1e
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 261
    invoke-static {v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zzj(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_5

    shl-int/lit8 v7, v10, 0x3

    .line 267
    invoke-static {v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzd(I)I

    move-result v7

    .line 269
    invoke-static {v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzd(I)I

    move-result v8

    goto :goto_5

    .line 249
    :pswitch_1f
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 250
    invoke-static {v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zzf(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_5

    shl-int/lit8 v7, v10, 0x3

    .line 256
    invoke-static {v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzd(I)I

    move-result v7

    .line 258
    invoke-static {v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzd(I)I

    move-result v8

    goto :goto_5

    .line 238
    :pswitch_20
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 239
    invoke-static {v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zzc(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_5

    shl-int/lit8 v7, v10, 0x3

    .line 245
    invoke-static {v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzd(I)I

    move-result v7

    .line 247
    invoke-static {v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzd(I)I

    move-result v8

    goto :goto_5

    .line 227
    :pswitch_21
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 228
    invoke-static {v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zzd(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_5

    shl-int/lit8 v7, v10, 0x3

    .line 234
    invoke-static {v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzd(I)I

    move-result v7

    .line 236
    invoke-static {v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzd(I)I

    move-result v8

    :goto_5
    add-int/2addr v7, v8

    add-int/2addr v7, v6

    add-int/2addr v9, v7

    goto/16 :goto_7

    .line 223
    :pswitch_22
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 224
    invoke-static {v10, v6, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zzh(ILjava/util/List;Z)I

    move-result v6

    goto/16 :goto_6

    .line 219
    :pswitch_23
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 220
    invoke-static {v10, v6, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zzg(ILjava/util/List;Z)I

    move-result v6

    goto/16 :goto_6

    .line 215
    :pswitch_24
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 216
    invoke-static {v10, v6, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zzd(ILjava/util/List;Z)I

    move-result v6

    goto/16 :goto_6

    .line 211
    :pswitch_25
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 212
    invoke-static {v10, v6, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zzc(ILjava/util/List;Z)I

    move-result v6

    goto/16 :goto_6

    .line 207
    :pswitch_26
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 208
    invoke-static {v10, v6, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zzb(ILjava/util/List;Z)I

    move-result v6

    goto/16 :goto_6

    .line 203
    :pswitch_27
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 204
    invoke-static {v10, v6, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zzi(ILjava/util/List;Z)I

    move-result v6

    goto/16 :goto_6

    .line 199
    :pswitch_28
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 200
    invoke-static {v10, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zza(ILjava/util/List;)I

    move-result v6

    goto/16 :goto_6

    .line 195
    :pswitch_29
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zze(I)Lcom/google/android/gms/internal/firebase-auth-api/zzanl;

    move-result-object v7

    .line 196
    invoke-static {v10, v6, v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzanl;)I

    move-result v6

    goto :goto_6

    .line 192
    :pswitch_2a
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v10, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zzb(ILjava/util/List;)I

    move-result v6

    goto :goto_6

    .line 188
    :pswitch_2b
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 189
    invoke-static {v10, v6, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zza(ILjava/util/List;Z)I

    move-result v6

    goto :goto_6

    .line 184
    :pswitch_2c
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 185
    invoke-static {v10, v6, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zzc(ILjava/util/List;Z)I

    move-result v6

    goto :goto_6

    .line 180
    :pswitch_2d
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 181
    invoke-static {v10, v6, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zzd(ILjava/util/List;Z)I

    move-result v6

    goto :goto_6

    .line 176
    :pswitch_2e
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 177
    invoke-static {v10, v6, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zze(ILjava/util/List;Z)I

    move-result v6

    goto :goto_6

    .line 172
    :pswitch_2f
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 173
    invoke-static {v10, v6, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zzj(ILjava/util/List;Z)I

    move-result v6

    goto :goto_6

    .line 168
    :pswitch_30
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 169
    invoke-static {v10, v6, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zzf(ILjava/util/List;Z)I

    move-result v6

    goto :goto_6

    .line 164
    :pswitch_31
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 165
    invoke-static {v10, v6, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zzc(ILjava/util/List;Z)I

    move-result v6

    goto :goto_6

    .line 160
    :pswitch_32
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 161
    invoke-static {v10, v6, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zzd(ILjava/util/List;Z)I

    move-result v6

    :goto_6
    add-int/2addr v9, v6

    :cond_5
    :goto_7
    move v6, v3

    move v7, v4

    move-object v3, p0

    move-object v4, p1

    goto/16 :goto_c

    :pswitch_33
    move v6, v3

    move v7, v4

    move-object v3, p0

    move-object v4, p1

    .line 154
    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;IIII)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 156
    invoke-virtual {v0, v4, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzamv;

    .line 157
    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zze(I)Lcom/google/android/gms/internal/firebase-auth-api/zzanl;

    move-result-object v8

    .line 158
    invoke-static {v10, p1, v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zza(ILcom/google/android/gms/internal/firebase-auth-api/zzamv;Lcom/google/android/gms/internal/firebase-auth-api/zzanl;)I

    move-result p1

    goto/16 :goto_b

    :pswitch_34
    move v6, v3

    move v7, v4

    move-object v3, p0

    move-object v4, p1

    .line 152
    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;IIII)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 153
    invoke-virtual {v0, v4, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-static {v10, v11, v12}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzd(IJ)I

    move-result p1

    goto/16 :goto_a

    :pswitch_35
    move v6, v3

    move v7, v4

    move-object v3, p0

    move-object v4, p1

    .line 150
    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;IIII)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 151
    invoke-virtual {v0, v4, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {v10, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzg(II)I

    move-result p1

    goto/16 :goto_a

    :pswitch_36
    move v6, v3

    move v7, v4

    move-object v3, p0

    move-object v4, p1

    .line 142
    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;IIII)Z

    move-result p1

    if-eqz p1, :cond_7

    shl-int/lit8 p1, v10, 0x3

    .line 147
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzd(I)I

    move-result p1

    goto/16 :goto_8

    :pswitch_37
    move v6, v3

    move v7, v4

    move-object v3, p0

    move-object v4, p1

    .line 134
    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;IIII)Z

    move-result p1

    if-eqz p1, :cond_7

    shl-int/lit8 p1, v10, 0x3

    .line 139
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzd(I)I

    move-result p1

    goto/16 :goto_9

    :pswitch_38
    move v6, v3

    move v7, v4

    move-object v3, p0

    move-object v4, p1

    .line 132
    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;IIII)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 133
    invoke-virtual {v0, v4, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {v10, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zze(II)I

    move-result p1

    goto/16 :goto_a

    :pswitch_39
    move v6, v3

    move v7, v4

    move-object v3, p0

    move-object v4, p1

    .line 130
    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;IIII)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 131
    invoke-virtual {v0, v4, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {v10, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzh(II)I

    move-result p1

    goto/16 :goto_a

    :pswitch_3a
    move v6, v3

    move v7, v4

    move-object v3, p0

    move-object v4, p1

    .line 126
    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;IIII)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 127
    invoke-virtual {v0, v4, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    .line 128
    invoke-static {v10, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzc(ILcom/google/android/gms/internal/firebase-auth-api/zzakb;)I

    move-result p1

    goto/16 :goto_a

    :pswitch_3b
    move v6, v3

    move v7, v4

    move-object v3, p0

    move-object v4, p1

    .line 122
    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;IIII)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 123
    invoke-virtual {v0, v4, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 124
    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zze(I)Lcom/google/android/gms/internal/firebase-auth-api/zzanl;

    move-result-object v8

    invoke-static {v10, p1, v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzanl;)I

    move-result p1

    goto/16 :goto_b

    :pswitch_3c
    move v6, v3

    move v7, v4

    move-object v3, p0

    move-object v4, p1

    .line 116
    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;IIII)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 117
    invoke-virtual {v0, v4, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 118
    instance-of v3, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    if-eqz v3, :cond_6

    .line 119
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    invoke-static {v10, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzc(ILcom/google/android/gms/internal/firebase-auth-api/zzakb;)I

    move-result p1

    goto/16 :goto_a

    .line 120
    :cond_6
    check-cast p1, Ljava/lang/String;

    invoke-static {v10, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzb(ILjava/lang/String;)I

    move-result p1

    goto/16 :goto_a

    :pswitch_3d
    move v6, v3

    move v7, v4

    move-object v3, p0

    move-object v4, p1

    .line 108
    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;IIII)Z

    move-result p1

    if-eqz p1, :cond_7

    shl-int/lit8 p1, v10, 0x3

    .line 113
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzd(I)I

    move-result p1

    add-int/2addr p1, v13

    goto/16 :goto_a

    :pswitch_3e
    move v6, v3

    move v7, v4

    move-object v3, p0

    move-object v4, p1

    .line 100
    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;IIII)Z

    move-result p1

    if-eqz p1, :cond_7

    shl-int/lit8 p1, v10, 0x3

    .line 105
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzd(I)I

    move-result p1

    goto/16 :goto_9

    :pswitch_3f
    move v6, v3

    move v7, v4

    move-object v3, p0

    move-object v4, p1

    .line 92
    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;IIII)Z

    move-result p1

    if-eqz p1, :cond_7

    shl-int/lit8 p1, v10, 0x3

    .line 97
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzd(I)I

    move-result p1

    :goto_8
    add-int/lit8 p1, p1, 0x8

    goto :goto_a

    :pswitch_40
    move v6, v3

    move v7, v4

    move-object v3, p0

    move-object v4, p1

    .line 90
    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;IIII)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 91
    invoke-virtual {v0, v4, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {v10, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzf(II)I

    move-result p1

    goto :goto_a

    :pswitch_41
    move v6, v3

    move v7, v4

    move-object v3, p0

    move-object v4, p1

    .line 88
    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;IIII)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 89
    invoke-virtual {v0, v4, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-static {v10, v11, v12}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zze(IJ)I

    move-result p1

    goto :goto_a

    :pswitch_42
    move v6, v3

    move v7, v4

    move-object v3, p0

    move-object v4, p1

    .line 86
    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;IIII)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 87
    invoke-virtual {v0, v4, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-static {v10, v11, v12}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzc(IJ)I

    move-result p1

    goto :goto_a

    :pswitch_43
    move v6, v3

    move v7, v4

    move-object v3, p0

    move-object v4, p1

    .line 78
    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;IIII)Z

    move-result p1

    if-eqz p1, :cond_7

    shl-int/lit8 p1, v10, 0x3

    .line 83
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzd(I)I

    move-result p1

    :goto_9
    add-int/lit8 p1, p1, 0x4

    :goto_a
    add-int/2addr v9, p1

    :cond_7
    move-object v3, p0

    goto :goto_c

    :pswitch_44
    move v6, v3

    move v7, v4

    move-object v3, p0

    move-object v4, p1

    .line 70
    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;IIII)Z

    move-result p1

    if-eqz p1, :cond_8

    shl-int/lit8 p1, v10, 0x3

    .line 75
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->zzd(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x8

    :goto_b
    add-int/2addr v9, p1

    :cond_8
    :goto_c
    add-int/lit8 v5, v5, 0x3

    move-object p1, v4

    move v3, v6

    move v4, v7

    goto/16 :goto_0

    :cond_9
    move-object v3, p0

    move-object v4, p1

    .line 479
    iget-object p1, v3, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzp:Lcom/google/android/gms/internal/firebase-auth-api/zzaob;

    .line 480
    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzaob;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 481
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaob;->zza(Ljava/lang/Object;)I

    move-result p1

    add-int/2addr v9, p1

    .line 483
    iget-boolean p1, v3, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzh:Z

    if-eqz p1, :cond_c

    .line 484
    iget-object p1, v3, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzq:Lcom/google/android/gms/internal/firebase-auth-api/zzalh;

    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzalh;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzalm;

    move-result-object p1

    .line 486
    iget-object v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzann;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zza()I

    move-result v0

    move v2, v1

    :goto_d
    if-ge v1, v0, :cond_a

    .line 488
    iget-object v4, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzann;

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zza(I)Ljava/util/Map$Entry;

    move-result-object v4

    .line 489
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/firebase-auth-api/zzalo;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzalo;Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 491
    :cond_a
    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzann;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->zzb()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 492
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzalo;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzalo;Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_e

    :cond_b
    add-int/2addr v9, v2

    :cond_c
    return v9

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
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

.method final zza(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIII",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaka;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p6

    .line 572
    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzf(Ljava/lang/Object;)V

    .line 573
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb:Lsun/misc/Unsafe;

    move/from16 v4, p3

    const/4 v7, -0x1

    const/4 v8, 0x0

    const v9, 0xfffff

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    if-ge v4, v5, :cond_83

    add-int/lit8 v15, v4, 0x1

    .line 580
    aget-byte v4, v3, v4

    if-gez v4, :cond_0

    .line 582
    invoke-static {v4, v3, v15, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zza(I[BILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v15

    .line 583
    iget v4, v6, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zza:I

    :cond_0
    move/from16 v29, v15

    move v15, v4

    move/from16 v4, v29

    ushr-int/lit8 v12, v15, 0x3

    const v16, 0xfffff

    and-int/lit8 v11, v15, 0x7

    const/4 v13, 0x3

    if-le v12, v7, :cond_2

    .line 587
    div-int/2addr v8, v13

    .line 588
    iget v7, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zze:I

    if-lt v12, v7, :cond_1

    iget v7, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzf:I

    if-gt v12, v7, :cond_1

    .line 589
    invoke-direct {v0, v12, v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(II)I

    move-result v7

    goto :goto_1

    :cond_1
    const/4 v7, -0x1

    goto :goto_1

    .line 592
    :cond_2
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(I)I

    move-result v7

    :goto_1
    const/4 v8, -0x1

    if-ne v7, v8, :cond_3

    move/from16 v10, p5

    move-object/from16 v19, v1

    move-object v1, v3

    move v3, v4

    move/from16 v17, v8

    move/from16 v27, v9

    move v8, v12

    move/from16 v18, v14

    const/4 v9, 0x0

    move-object v12, v2

    move-object v14, v6

    goto/16 :goto_4b

    .line 596
    :cond_3
    iget-object v8, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc:[I

    add-int/lit8 v18, v7, 0x1

    aget v13, v8, v18

    const/high16 v18, 0xff00000

    and-int v18, v13, v18

    ushr-int/lit8 v3, v18, 0x14

    move/from16 v18, v4

    and-int v4, v13, v16

    int-to-long v4, v4

    move-wide/from16 v19, v4

    .line 603
    const-string v5, ""

    const-wide/16 v21, 0x0

    const/16 v25, 0x1

    const/16 v4, 0x11

    if-gt v3, v4, :cond_16

    add-int/lit8 v4, v7, 0x2

    .line 604
    aget v4, v8, v4

    ushr-int/lit8 v8, v4, 0x14

    shl-int v23, v25, v8

    and-int v4, v4, v16

    if-eq v4, v9, :cond_6

    move/from16 v8, v16

    if-eq v9, v8, :cond_4

    int-to-long v8, v9

    .line 609
    invoke-virtual {v1, v2, v8, v9, v14}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    const v8, 0xfffff

    :cond_4
    if-ne v4, v8, :cond_5

    const/4 v14, 0x0

    goto :goto_2

    :cond_5
    int-to-long v8, v4

    .line 613
    invoke-virtual {v1, v2, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    move v14, v8

    :goto_2
    move/from16 v27, v14

    move v14, v4

    goto :goto_3

    :cond_6
    move/from16 v27, v14

    move v14, v9

    :goto_3
    packed-switch v3, :pswitch_data_0

    move-object/from16 p3, v2

    move-object v2, v1

    move-object/from16 v1, p3

    move v8, v7

    move/from16 p3, v14

    move/from16 v9, v18

    const/16 v17, -0x1

    :goto_4
    move-object/from16 v7, p2

    move/from16 v18, v15

    move-object v15, v6

    goto/16 :goto_18

    :pswitch_0
    const/4 v3, 0x3

    if-ne v11, v3, :cond_7

    .line 707
    invoke-direct {v0, v2, v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    shl-int/lit8 v4, v12, 0x3

    or-int/lit8 v8, v4, 0x4

    .line 710
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zze(I)Lcom/google/android/gms/internal/firebase-auth-api/zzanl;

    move-result-object v4

    move-object/from16 v5, p2

    move-object v9, v6

    move v13, v7

    move/from16 v6, v18

    const/16 v17, -0x1

    move/from16 v7, p4

    .line 711
    invoke-static/range {v3 .. v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzanl;[BIIILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v4

    move-object v7, v5

    .line 712
    invoke-direct {v0, v2, v13, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;ILjava/lang/Object;)V

    or-int v3, v27, v23

    goto/16 :goto_5

    :cond_7
    const/16 v17, -0x1

    move-object/from16 p3, v2

    move-object v2, v1

    move-object/from16 v1, p3

    move v8, v7

    move/from16 p3, v14

    move/from16 v9, v18

    goto :goto_4

    :pswitch_1
    move-object v9, v6

    move v13, v7

    move/from16 v4, v18

    const/16 v17, -0x1

    move-object/from16 v7, p2

    if-nez v11, :cond_8

    .line 700
    invoke-static {v7, v4, v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzd([BILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v8

    .line 701
    iget-wide v3, v9, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zzb:J

    .line 702
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zza(J)J

    move-result-wide v5

    move-wide/from16 v3, v19

    .line 703
    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move-object/from16 v29, v2

    move-object v2, v1

    move-object/from16 v1, v29

    or-int v3, v27, v23

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    move/from16 v5, p4

    move v4, v8

    goto :goto_6

    :cond_8
    move-object/from16 v29, v2

    move-object v2, v1

    move-object/from16 v1, v29

    goto :goto_7

    :pswitch_2
    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    move-object v9, v6

    move v13, v7

    move/from16 v4, v18

    move-wide/from16 v5, v19

    const/16 v17, -0x1

    move-object/from16 v7, p2

    if-nez v11, :cond_9

    .line 693
    invoke-static {v7, v4, v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzc([BILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v4

    .line 694
    iget v3, v9, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zza:I

    .line 695
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zza(I)I

    move-result v3

    .line 696
    invoke-virtual {v2, v1, v5, v6, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v3, v27, v23

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    :goto_5
    move/from16 v5, p4

    :goto_6
    move-object v6, v9

    move v8, v13

    goto/16 :goto_a

    :cond_9
    :goto_7
    move v8, v13

    goto/16 :goto_b

    :pswitch_3
    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    move-object v9, v6

    move v8, v7

    move/from16 v4, v18

    move-wide/from16 v5, v19

    const/16 v17, -0x1

    move-object/from16 v7, p2

    if-nez v11, :cond_c

    .line 681
    invoke-static {v7, v4, v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzc([BILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v4

    .line 682
    iget v3, v9, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zza:I

    .line 683
    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzd(I)Lcom/google/android/gms/internal/firebase-auth-api/zzaly;

    move-result-object v11

    const/high16 v18, -0x80000000

    and-int v13, v13, v18

    if-eqz v13, :cond_b

    if-eqz v11, :cond_b

    .line 687
    invoke-interface {v11, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaly;->zza(I)Z

    move-result v11

    if-eqz v11, :cond_a

    goto :goto_8

    .line 690
    :cond_a
    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzaoa;

    move-result-object v5

    move/from16 p3, v4

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v15, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoa;->zza(ILjava/lang/Object;)V

    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v3, v7

    move-object v6, v9

    move v7, v12

    move v9, v14

    move/from16 v14, v27

    goto/16 :goto_0

    :cond_b
    :goto_8
    move/from16 p3, v4

    .line 688
    invoke-virtual {v2, v1, v5, v6, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v3, v27, v23

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    move/from16 v4, p3

    goto :goto_9

    :pswitch_4
    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    move-object v9, v6

    move v8, v7

    move/from16 v4, v18

    move-wide/from16 v5, v19

    const/4 v3, 0x2

    const/16 v17, -0x1

    move-object/from16 v7, p2

    if-ne v11, v3, :cond_c

    .line 676
    invoke-static {v7, v4, v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zza([BILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v4

    .line 677
    iget-object v3, v9, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zzc:Ljava/lang/Object;

    invoke-virtual {v2, v1, v5, v6, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    or-int v3, v27, v23

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    :goto_9
    move/from16 v5, p4

    move-object v6, v9

    :goto_a
    move v9, v14

    move v14, v3

    move-object v3, v7

    goto :goto_c

    :cond_c
    :goto_b
    move/from16 p3, v14

    move/from16 v18, v15

    move-object v15, v9

    goto/16 :goto_12

    :pswitch_5
    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    move-object v9, v6

    move v8, v7

    move/from16 v4, v18

    const/4 v3, 0x2

    const/16 v17, -0x1

    move-object/from16 v7, p2

    if-ne v11, v3, :cond_d

    move-object v5, v1

    .line 668
    invoke-direct {v0, v5, v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v2

    .line 670
    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zze(I)Lcom/google/android/gms/internal/firebase-auth-api/zzanl;

    move-result-object v2

    move-object v6, v9

    move-object v9, v3

    move-object v3, v7

    move-object v7, v5

    move/from16 v5, p4

    .line 671
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzanl;[BIILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v4

    move-object v2, v3

    move-object v3, v1

    move-object v1, v2

    move-object v2, v6

    .line 672
    invoke-direct {v0, v7, v8, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;ILjava/lang/Object;)V

    or-int v3, v27, v23

    move v5, v3

    move-object v3, v1

    move-object v1, v9

    move v9, v14

    move v14, v5

    move/from16 v5, p4

    move-object v2, v7

    :goto_c
    move v7, v12

    goto/16 :goto_0

    :cond_d
    move-object/from16 v29, v7

    move-object v7, v1

    move-object/from16 v1, v29

    move-object/from16 v29, v9

    move-object v9, v2

    move-object/from16 v2, v29

    move-object/from16 p3, v7

    move-object v7, v1

    move-object/from16 v1, p3

    move/from16 p3, v14

    move/from16 v18, v15

    goto/16 :goto_11

    :pswitch_6
    move-object v9, v1

    move v8, v7

    move/from16 p3, v14

    move/from16 v4, v18

    const/4 v3, 0x2

    const/16 v17, -0x1

    move-object/from16 v1, p2

    move-object v7, v2

    move-object v2, v6

    move/from16 v18, v15

    move-wide/from16 v14, v19

    if-ne v11, v3, :cond_12

    .line 651
    invoke-static {v13}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzg(I)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 652
    invoke-static {v1, v4, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzb([BILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v3

    :goto_d
    move v4, v3

    goto :goto_e

    .line 654
    :cond_e
    invoke-static {v1, v4, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzc([BILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v3

    .line 655
    iget v4, v2, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zza:I

    if-ltz v4, :cond_10

    if-nez v4, :cond_f

    .line 659
    iput-object v5, v2, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zzc:Ljava/lang/Object;

    goto :goto_d

    .line 661
    :cond_f
    new-instance v5, Ljava/lang/String;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v1, v3, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v5, v2, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zzc:Ljava/lang/Object;

    add-int/2addr v3, v4

    goto :goto_d

    .line 664
    :goto_e
    iget-object v3, v2, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zzc:Ljava/lang/Object;

    invoke-virtual {v9, v7, v14, v15, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_10

    .line 657
    :cond_10
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object v1

    throw v1

    :pswitch_7
    move-object v9, v1

    move v8, v7

    move/from16 p3, v14

    move/from16 v4, v18

    const/16 v17, -0x1

    move-object/from16 v1, p2

    move-object v7, v2

    move-object v2, v6

    move/from16 v18, v15

    move-wide/from16 v14, v19

    if-nez v11, :cond_12

    .line 646
    invoke-static {v1, v4, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzd([BILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v4

    .line 647
    iget-wide v5, v2, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zzb:J

    cmp-long v3, v5, v21

    if-eqz v3, :cond_11

    move/from16 v3, v25

    goto :goto_f

    :cond_11
    const/4 v3, 0x0

    :goto_f
    invoke-static {v7, v14, v15, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzc(Ljava/lang/Object;JZ)V

    goto :goto_10

    :pswitch_8
    move-object v9, v1

    move v8, v7

    move/from16 p3, v14

    move/from16 v4, v18

    const/4 v3, 0x5

    const/16 v17, -0x1

    move-object/from16 v1, p2

    move-object v7, v2

    move-object v2, v6

    move/from16 v18, v15

    move-wide/from16 v14, v19

    if-ne v11, v3, :cond_12

    .line 641
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzc([BI)I

    move-result v3

    invoke-virtual {v9, v7, v14, v15, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v4, v4, 0x4

    :goto_10
    or-int v14, v27, v23

    move/from16 v5, p4

    move-object v3, v1

    move-object v6, v2

    move-object v2, v7

    move-object v1, v9

    move v7, v12

    goto/16 :goto_14

    :cond_12
    move-object v15, v7

    move-object v7, v1

    move-object v1, v15

    :goto_11
    move-object v15, v2

    move-object v2, v9

    :goto_12
    move v9, v4

    goto/16 :goto_18

    :pswitch_9
    move-object v9, v1

    move v8, v7

    move/from16 p3, v14

    move/from16 v4, v18

    move/from16 v3, v25

    const/16 v17, -0x1

    move-object/from16 v1, p2

    move-object v7, v2

    move-object v2, v6

    move/from16 v18, v15

    move-wide/from16 v14, v19

    if-ne v11, v3, :cond_13

    .line 636
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzd([BI)J

    move-result-wide v5

    move-object/from16 v29, v7

    move-object v7, v1

    move-object v1, v9

    move v9, v4

    move-wide v3, v14

    move-object v15, v2

    move-object/from16 v2, v29

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v4, v9, 0x8

    or-int v14, v27, v23

    goto/16 :goto_17

    :cond_13
    move-object v15, v2

    move-object v2, v7

    move-object v7, v1

    move-object v1, v9

    move v9, v4

    goto/16 :goto_15

    :pswitch_a
    move v8, v7

    move/from16 p3, v14

    move/from16 v9, v18

    move-wide/from16 v3, v19

    const/16 v17, -0x1

    move-object/from16 v7, p2

    move/from16 v18, v15

    move-object v15, v6

    if-nez v11, :cond_14

    .line 631
    invoke-static {v7, v9, v15}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzc([BILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v5

    .line 632
    iget v6, v15, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zza:I

    invoke-virtual {v1, v2, v3, v4, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v14, v27, v23

    move/from16 v9, p3

    move v4, v5

    move-object v3, v7

    move v7, v12

    move-object v6, v15

    move/from16 v15, v18

    :goto_13
    move/from16 v5, p4

    goto/16 :goto_0

    :pswitch_b
    move v8, v7

    move/from16 p3, v14

    move/from16 v9, v18

    move-wide/from16 v3, v19

    const/16 v17, -0x1

    move-object/from16 v7, p2

    move/from16 v18, v15

    move-object v15, v6

    if-nez v11, :cond_14

    .line 626
    invoke-static {v7, v9, v15}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzd([BILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v9

    .line 627
    iget-wide v5, v15, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zzb:J

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move-object/from16 v29, v2

    move-object v2, v1

    move-object/from16 v1, v29

    or-int v14, v27, v23

    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    move/from16 v5, p4

    move-object v3, v7

    move v4, v9

    move v7, v12

    move-object v6, v15

    :goto_14
    move/from16 v15, v18

    move/from16 v9, p3

    goto/16 :goto_0

    :cond_14
    :goto_15
    move-object/from16 v29, v2

    move-object v2, v1

    move-object/from16 v1, v29

    goto/16 :goto_18

    :pswitch_c
    move-object/from16 p3, v2

    move-object v2, v1

    move-object/from16 v1, p3

    move v8, v7

    move/from16 p3, v14

    move/from16 v9, v18

    move-wide/from16 v3, v19

    const/4 v5, 0x5

    const/16 v17, -0x1

    move-object/from16 v7, p2

    move/from16 v18, v15

    move-object v15, v6

    if-ne v11, v5, :cond_15

    .line 621
    invoke-static {v7, v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzb([BI)F

    move-result v5

    invoke-static {v1, v3, v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zza(Ljava/lang/Object;JF)V

    add-int/lit8 v4, v9, 0x4

    goto :goto_16

    :pswitch_d
    move-object/from16 p3, v2

    move-object v2, v1

    move-object/from16 v1, p3

    move v8, v7

    move/from16 p3, v14

    move/from16 v9, v18

    move-wide/from16 v3, v19

    move/from16 v5, v25

    const/16 v17, -0x1

    move-object/from16 v7, p2

    move/from16 v18, v15

    move-object v15, v6

    if-ne v11, v5, :cond_15

    .line 616
    invoke-static {v7, v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zza([BI)D

    move-result-wide v5

    invoke-static {v1, v3, v4, v5, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zza(Ljava/lang/Object;JD)V

    add-int/lit8 v4, v9, 0x8

    :goto_16
    or-int v14, v27, v23

    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    :goto_17
    move/from16 v9, p3

    move/from16 v5, p4

    move-object v3, v7

    move v7, v12

    move-object v6, v15

    move/from16 v15, v18

    goto/16 :goto_0

    :cond_15
    :goto_18
    move/from16 v10, p5

    move-object/from16 v19, v2

    move v3, v9

    move-object v14, v15

    move/from16 v15, v18

    move/from16 v18, v27

    move/from16 v27, p3

    move v9, v8

    move v8, v12

    move-object v12, v1

    move-object v1, v7

    goto/16 :goto_4b

    :cond_16
    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    move v4, v7

    const/16 v17, -0x1

    move/from16 v29, v15

    move-object v15, v6

    move-wide/from16 v6, v19

    move-object/from16 v20, v8

    move/from16 v19, v18

    move/from16 v18, v29

    const/16 v8, 0x1b

    if-ne v3, v8, :cond_1a

    const/4 v8, 0x2

    if-ne v11, v8, :cond_19

    .line 717
    invoke-virtual {v2, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/zzalx;

    .line 718
    invoke-interface {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzalx;->zzc()Z

    move-result v5

    if-nez v5, :cond_18

    .line 719
    invoke-interface {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzalx;->size()I

    move-result v5

    if-nez v5, :cond_17

    const/16 v5, 0xa

    goto :goto_19

    :cond_17
    shl-int/lit8 v5, v5, 0x1

    .line 722
    :goto_19
    invoke-interface {v3, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzalx;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzalx;

    move-result-object v3

    .line 723
    invoke-virtual {v2, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_18
    move-object v6, v3

    .line 725
    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zze(I)Lcom/google/android/gms/internal/firebase-auth-api/zzanl;

    move-result-object v1

    move-object/from16 v8, p1

    move-object/from16 v3, p2

    move/from16 v5, p4

    move v13, v4

    move-object v7, v15

    move/from16 v4, v19

    move-object v15, v2

    move/from16 v2, v18

    .line 726
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzanl;I[BIILcom/google/android/gms/internal/firebase-auth-api/zzalx;Lcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v4

    move v1, v2

    move-object v2, v15

    move v15, v1

    move-object v1, v2

    move-object/from16 v6, p6

    move-object v2, v8

    move v7, v12

    move v8, v13

    goto/16 :goto_0

    :cond_19
    move-object v8, v1

    move v1, v12

    move-object v12, v8

    move v8, v1

    move-object/from16 v1, p2

    move-object/from16 v5, p6

    move/from16 v27, v9

    move/from16 v15, v18

    move v9, v4

    move/from16 v18, v14

    move/from16 v14, v19

    move/from16 v4, p4

    move-object/from16 v19, v2

    goto/16 :goto_40

    :cond_1a
    move-object v8, v1

    move-object v15, v2

    move v2, v4

    move/from16 v4, v19

    const/16 v1, 0x31

    if-gt v3, v1, :cond_68

    move/from16 v19, v12

    int-to-long v12, v13

    .line 732
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v1, v8, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v20

    move/from16 v23, v4

    move-object/from16 v4, v20

    check-cast v4, Lcom/google/android/gms/internal/firebase-auth-api/zzalx;

    .line 733
    invoke-interface {v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzalx;->zzc()Z

    move-result v20

    if-nez v20, :cond_1b

    .line 734
    invoke-interface {v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzalx;->size()I

    move-result v20

    move/from16 v27, v9

    const/16 v25, 0x1

    shl-int/lit8 v9, v20, 0x1

    .line 735
    invoke-interface {v4, v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzalx;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzalx;

    move-result-object v4

    .line 736
    invoke-virtual {v1, v8, v6, v7, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1a

    :cond_1b
    move/from16 v27, v9

    :goto_1a
    move-object v6, v4

    packed-switch v3, :pswitch_data_1

    move/from16 v4, p4

    move-object/from16 v1, p6

    move v9, v2

    move-object v12, v8

    move/from16 v8, v19

    move-object/from16 v2, p2

    :goto_1b
    move-object/from16 v19, v15

    move/from16 v15, v18

    move/from16 v18, v14

    move/from16 v14, v23

    goto/16 :goto_3b

    :pswitch_e
    const/4 v3, 0x3

    if-ne v11, v3, :cond_1c

    .line 1087
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zze(I)Lcom/google/android/gms/internal/firebase-auth-api/zzanl;

    move-result-object v1

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v7, p6

    move v9, v2

    move/from16 v2, v18

    move/from16 v4, v23

    .line 1088
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzanl;I[BIILcom/google/android/gms/internal/firebase-auth-api/zzalx;Lcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v1

    move-object v12, v8

    move/from16 v18, v14

    move/from16 v8, v19

    move v14, v4

    move v4, v5

    move-object/from16 v19, v15

    move v15, v2

    move-object v2, v3

    move v3, v1

    move-object v1, v7

    goto/16 :goto_3c

    :cond_1c
    move v9, v2

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v1, p6

    move-object v12, v8

    move/from16 v8, v19

    goto :goto_1b

    :pswitch_f
    move-object/from16 v3, p2

    move/from16 v5, p4

    move v9, v2

    move-object v1, v6

    move/from16 v2, v18

    move/from16 v4, v23

    const/4 v7, 0x2

    move-object/from16 v6, p6

    if-ne v11, v7, :cond_21

    .line 1057
    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzamm;

    .line 1058
    invoke-static {v3, v4, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzc([BILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v7

    .line 1059
    iget v11, v6, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zza:I

    if-ltz v11, :cond_20

    .line 1062
    array-length v12, v3

    sub-int/2addr v12, v7

    if-gt v11, v12, :cond_1f

    add-int/2addr v11, v7

    :goto_1c
    if-ge v7, v11, :cond_1d

    .line 1066
    invoke-static {v3, v7, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzd([BILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v7

    .line 1067
    iget-wide v12, v6, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zzb:J

    invoke-static {v12, v13}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zza(J)J

    move-result-wide v12

    invoke-virtual {v1, v12, v13}, Lcom/google/android/gms/internal/firebase-auth-api/zzamm;->zza(J)V

    goto :goto_1c

    :cond_1d
    if-ne v7, v11, :cond_1e

    goto/16 :goto_20

    .line 1069
    :cond_1e
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzj()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object v1

    throw v1

    .line 1063
    :cond_1f
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzj()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object v1

    throw v1

    .line 1061
    :cond_20
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object v1

    throw v1

    :cond_21
    if-nez v11, :cond_28

    .line 1074
    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzamm;

    .line 1075
    invoke-static {v3, v4, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzd([BILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v7

    .line 1076
    iget-wide v11, v6, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zzb:J

    invoke-static {v11, v12}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zza(J)J

    move-result-wide v11

    invoke-virtual {v1, v11, v12}, Lcom/google/android/gms/internal/firebase-auth-api/zzamm;->zza(J)V

    :goto_1d
    if-ge v7, v5, :cond_27

    .line 1078
    invoke-static {v3, v7, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzc([BILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v11

    .line 1079
    iget v12, v6, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zza:I

    if-ne v2, v12, :cond_27

    .line 1080
    invoke-static {v3, v11, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzd([BILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v7

    .line 1081
    iget-wide v11, v6, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zzb:J

    invoke-static {v11, v12}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zza(J)J

    move-result-wide v11

    invoke-virtual {v1, v11, v12}, Lcom/google/android/gms/internal/firebase-auth-api/zzamm;->zza(J)V

    goto :goto_1d

    :pswitch_10
    move-object/from16 v3, p2

    move/from16 v5, p4

    move v9, v2

    move-object v1, v6

    move/from16 v2, v18

    move/from16 v4, v23

    const/4 v7, 0x2

    move-object/from16 v6, p6

    if-ne v11, v7, :cond_26

    .line 1027
    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzalu;

    .line 1028
    invoke-static {v3, v4, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzc([BILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v7

    .line 1029
    iget v11, v6, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zza:I

    if-ltz v11, :cond_25

    .line 1032
    array-length v12, v3

    sub-int/2addr v12, v7

    if-gt v11, v12, :cond_24

    add-int/2addr v11, v7

    :goto_1e
    if-ge v7, v11, :cond_22

    .line 1036
    invoke-static {v3, v7, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzc([BILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v7

    .line 1037
    iget v12, v6, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zza:I

    invoke-static {v12}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zza(I)I

    move-result v12

    invoke-virtual {v1, v12}, Lcom/google/android/gms/internal/firebase-auth-api/zzalu;->zzc(I)V

    goto :goto_1e

    :cond_22
    if-ne v7, v11, :cond_23

    goto :goto_20

    .line 1039
    :cond_23
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzj()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object v1

    throw v1

    .line 1033
    :cond_24
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzj()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object v1

    throw v1

    .line 1031
    :cond_25
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object v1

    throw v1

    :cond_26
    if-nez v11, :cond_28

    .line 1044
    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzalu;

    .line 1045
    invoke-static {v3, v4, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzc([BILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v7

    .line 1046
    iget v11, v6, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zza:I

    invoke-static {v11}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zza(I)I

    move-result v11

    invoke-virtual {v1, v11}, Lcom/google/android/gms/internal/firebase-auth-api/zzalu;->zzc(I)V

    :goto_1f
    if-ge v7, v5, :cond_27

    .line 1048
    invoke-static {v3, v7, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzc([BILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v11

    .line 1049
    iget v12, v6, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zza:I

    if-ne v2, v12, :cond_27

    .line 1050
    invoke-static {v3, v11, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzc([BILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v7

    .line 1051
    iget v11, v6, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zza:I

    invoke-static {v11}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zza(I)I

    move-result v11

    invoke-virtual {v1, v11}, Lcom/google/android/gms/internal/firebase-auth-api/zzalu;->zzc(I)V

    goto :goto_1f

    :cond_27
    :goto_20
    move-object v1, v6

    move-object v12, v8

    move/from16 v18, v14

    move/from16 v8, v19

    move v14, v4

    move v4, v5

    move-object/from16 v19, v15

    move v15, v2

    move-object v2, v3

    move v3, v7

    goto/16 :goto_3c

    :cond_28
    move-object v1, v6

    move-object v12, v8

    move/from16 v18, v14

    move/from16 v8, v19

    move v14, v4

    move v4, v5

    move-object/from16 v19, v15

    move v15, v2

    move-object v2, v3

    goto/16 :goto_3b

    :pswitch_11
    move-object/from16 v3, p2

    move/from16 v5, p4

    move v9, v2

    move-object v1, v6

    move/from16 v2, v18

    move/from16 v4, v23

    const/4 v7, 0x2

    move-object/from16 v6, p6

    if-ne v11, v7, :cond_29

    .line 1018
    invoke-static {v3, v4, v1, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zza([BILcom/google/android/gms/internal/firebase-auth-api/zzalx;Lcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v7

    move/from16 v18, v2

    move-object v12, v3

    move/from16 v23, v4

    move v13, v5

    move v11, v7

    move-object v5, v1

    :goto_21
    move-object v7, v6

    goto :goto_22

    :cond_29
    if-nez v11, :cond_2a

    move/from16 v29, v5

    move-object v5, v1

    move v1, v2

    move-object v2, v3

    move v3, v4

    move/from16 v4, v29

    .line 1020
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zza(I[BIILcom/google/android/gms/internal/firebase-auth-api/zzalx;Lcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v7

    move/from16 v18, v1

    move-object v12, v2

    move/from16 v23, v3

    move v13, v4

    move v1, v7

    move v11, v1

    goto :goto_21

    .line 1022
    :goto_22
    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzd(I)Lcom/google/android/gms/internal/firebase-auth-api/zzaly;

    move-result-object v4

    move-object v6, v5

    const/4 v5, 0x0

    move-object v1, v6

    iget-object v6, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzp:Lcom/google/android/gms/internal/firebase-auth-api/zzaob;

    move-object v3, v1

    move-object v1, v8

    move/from16 v2, v19

    .line 1023
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zza(Ljava/lang/Object;ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzaly;Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzaob;)Ljava/lang/Object;

    move v8, v2

    move-object v1, v7

    move v3, v11

    move-object v2, v12

    move v4, v13

    move-object/from16 v19, v15

    move/from16 v15, v18

    move-object/from16 v12, p1

    move/from16 v18, v14

    move/from16 v14, v23

    goto/16 :goto_3c

    :cond_2a
    move/from16 v8, v19

    move-object/from16 v12, p1

    move-object v1, v6

    move/from16 v18, v14

    move-object/from16 v19, v15

    move v15, v2

    move-object v2, v3

    move v14, v4

    move v4, v5

    goto/16 :goto_3b

    :pswitch_12
    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v7, p6

    move v9, v2

    move-object v5, v6

    move/from16 v1, v18

    move/from16 v8, v19

    move/from16 v4, v23

    const/4 v3, 0x2

    if-ne v11, v3, :cond_32

    .line 991
    invoke-static {v12, v4, v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzc([BILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v2

    .line 992
    iget v3, v7, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zza:I

    if-ltz v3, :cond_31

    .line 995
    array-length v6, v12

    sub-int/2addr v6, v2

    if-gt v3, v6, :cond_30

    if-nez v3, :cond_2b

    .line 998
    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    invoke-interface {v5, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzalx;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 999
    :cond_2b
    invoke-static {v12, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zza([BII)Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzalx;->add(Ljava/lang/Object;)Z

    :goto_23
    add-int/2addr v2, v3

    :goto_24
    if-ge v2, v13, :cond_2f

    .line 1002
    invoke-static {v12, v2, v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzc([BILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v3

    .line 1003
    iget v6, v7, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zza:I

    if-ne v1, v6, :cond_2f

    .line 1004
    invoke-static {v12, v3, v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzc([BILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v2

    .line 1005
    iget v3, v7, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zza:I

    if-ltz v3, :cond_2e

    .line 1008
    array-length v6, v12

    sub-int/2addr v6, v2

    if-gt v3, v6, :cond_2d

    if-nez v3, :cond_2c

    .line 1011
    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    invoke-interface {v5, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzalx;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 1012
    :cond_2c
    invoke-static {v12, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;->zza([BII)Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzalx;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 1009
    :cond_2d
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzj()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object v1

    throw v1

    .line 1007
    :cond_2e
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object v1

    throw v1

    :cond_2f
    move v3, v2

    move-object v2, v12

    move/from16 v18, v14

    move-object/from16 v19, v15

    move-object/from16 v12, p1

    move v15, v1

    move v14, v4

    move-object v1, v7

    move v4, v13

    goto/16 :goto_3c

    .line 996
    :cond_30
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzj()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object v1

    throw v1

    .line 994
    :cond_31
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object v1

    throw v1

    :cond_32
    move-object v2, v12

    move/from16 v18, v14

    move-object/from16 v19, v15

    move-object/from16 v12, p1

    move v15, v1

    move v14, v4

    move-object v1, v7

    goto :goto_25

    :pswitch_13
    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v7, p6

    move v9, v2

    move-object v5, v6

    move/from16 v1, v18

    move/from16 v8, v19

    move/from16 v4, v23

    const/4 v3, 0x2

    if-ne v11, v3, :cond_33

    move v2, v1

    .line 986
    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zze(I)Lcom/google/android/gms/internal/firebase-auth-api/zzanl;

    move-result-object v1

    move-object v6, v5

    move-object v3, v12

    move v5, v13

    .line 987
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzanl;I[BIILcom/google/android/gms/internal/firebase-auth-api/zzalx;Lcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v1

    move-object v6, v3

    move v3, v1

    move v1, v2

    move-object v2, v6

    move-object v6, v7

    move-object/from16 v12, p1

    move/from16 v18, v14

    move-object/from16 v19, v15

    move v15, v1

    move v14, v4

    move v4, v5

    move-object v1, v6

    goto/16 :goto_3c

    :cond_33
    move-object v6, v7

    move-object v2, v12

    move/from16 v18, v14

    move-object/from16 v19, v15

    move-object/from16 v12, p1

    move v15, v1

    move v14, v4

    move-object v1, v6

    :goto_25
    move v4, v13

    goto/16 :goto_3b

    :pswitch_14
    move/from16 v4, p4

    move v9, v2

    move/from16 v1, v18

    move/from16 v7, v23

    const/4 v3, 0x2

    move-object/from16 v2, p2

    move-object/from16 v29, v6

    move-object/from16 v6, p6

    move-wide/from16 v30, v12

    move-object/from16 v13, v29

    move-object v12, v8

    move/from16 v8, v19

    move-wide/from16 v18, v30

    if-ne v11, v3, :cond_3f

    const-wide/32 v23, 0x20000000

    and-long v18, v18, v23

    cmp-long v3, v18, v21

    if-nez v3, :cond_38

    .line 930
    invoke-static {v2, v7, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzc([BILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v3

    .line 931
    iget v11, v6, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zza:I

    if-ltz v11, :cond_37

    if-nez v11, :cond_34

    .line 935
    invoke-interface {v13, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzalx;->add(Ljava/lang/Object;)Z

    move/from16 v18, v14

    move-object/from16 v19, v15

    goto :goto_27

    :cond_34
    move/from16 v18, v14

    .line 936
    new-instance v14, Ljava/lang/String;

    move-object/from16 v19, v15

    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v14, v2, v3, v11, v15}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 937
    invoke-interface {v13, v14}, Lcom/google/android/gms/internal/firebase-auth-api/zzalx;->add(Ljava/lang/Object;)Z

    :goto_26
    add-int/2addr v3, v11

    :goto_27
    if-ge v3, v4, :cond_54

    .line 940
    invoke-static {v2, v3, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzc([BILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v11

    .line 941
    iget v14, v6, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zza:I

    if-ne v1, v14, :cond_54

    .line 942
    invoke-static {v2, v11, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzc([BILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v3

    .line 943
    iget v11, v6, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zza:I

    if-ltz v11, :cond_36

    if-nez v11, :cond_35

    .line 947
    invoke-interface {v13, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzalx;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 948
    :cond_35
    new-instance v14, Ljava/lang/String;

    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v14, v2, v3, v11, v15}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 949
    invoke-interface {v13, v14}, Lcom/google/android/gms/internal/firebase-auth-api/zzalx;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 945
    :cond_36
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object v1

    throw v1

    .line 933
    :cond_37
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object v1

    throw v1

    :cond_38
    move/from16 v18, v14

    move-object/from16 v19, v15

    .line 956
    invoke-static {v2, v7, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzc([BILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v3

    .line 957
    iget v11, v6, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zza:I

    if-ltz v11, :cond_3e

    if-nez v11, :cond_39

    .line 961
    invoke-interface {v13, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzalx;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_39
    add-int v14, v3, v11

    .line 962
    invoke-static {v2, v3, v14}, Lcom/google/android/gms/internal/firebase-auth-api/zzaog;->zzb([BII)Z

    move-result v15

    if-eqz v15, :cond_3d

    .line 964
    new-instance v15, Ljava/lang/String;

    move/from16 p3, v14

    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v15, v2, v3, v11, v14}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 965
    invoke-interface {v13, v15}, Lcom/google/android/gms/internal/firebase-auth-api/zzalx;->add(Ljava/lang/Object;)Z

    :goto_28
    move/from16 v3, p3

    :goto_29
    if-ge v3, v4, :cond_54

    .line 968
    invoke-static {v2, v3, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzc([BILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v11

    .line 969
    iget v14, v6, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zza:I

    if-ne v1, v14, :cond_54

    .line 970
    invoke-static {v2, v11, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzc([BILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v3

    .line 971
    iget v11, v6, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zza:I

    if-ltz v11, :cond_3c

    if-nez v11, :cond_3a

    .line 975
    invoke-interface {v13, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzalx;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_3a
    add-int v14, v3, v11

    .line 976
    invoke-static {v2, v3, v14}, Lcom/google/android/gms/internal/firebase-auth-api/zzaog;->zzb([BII)Z

    move-result v15

    if-eqz v15, :cond_3b

    .line 978
    new-instance v15, Ljava/lang/String;

    move/from16 p3, v14

    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v15, v2, v3, v11, v14}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 979
    invoke-interface {v13, v15}, Lcom/google/android/gms/internal/firebase-auth-api/zzalx;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 977
    :cond_3b
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object v1

    throw v1

    .line 973
    :cond_3c
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object v1

    throw v1

    .line 963
    :cond_3d
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object v1

    throw v1

    .line 959
    :cond_3e
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object v1

    throw v1

    :cond_3f
    move/from16 v18, v14

    move-object/from16 v19, v15

    :cond_40
    move v15, v1

    move-object v1, v6

    move v14, v7

    goto/16 :goto_3b

    :pswitch_15
    move/from16 v4, p4

    move v9, v2

    move-object v13, v6

    move-object v12, v8

    move/from16 v1, v18

    move/from16 v8, v19

    move/from16 v7, v23

    const/4 v3, 0x2

    move-object/from16 v2, p2

    move-object/from16 v6, p6

    move/from16 v18, v14

    move-object/from16 v19, v15

    if-ne v11, v3, :cond_46

    .line 898
    move-object v3, v13

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/zzajz;

    .line 899
    invoke-static {v2, v7, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzc([BILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v5

    .line 900
    iget v11, v6, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zza:I

    if-ltz v11, :cond_45

    .line 903
    array-length v13, v2

    sub-int/2addr v13, v5

    if-gt v11, v13, :cond_44

    add-int/2addr v11, v5

    :goto_2a
    if-ge v5, v11, :cond_42

    .line 907
    invoke-static {v2, v5, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzd([BILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v5

    .line 908
    iget-wide v13, v6, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zzb:J

    cmp-long v13, v13, v21

    if-eqz v13, :cond_41

    const/4 v13, 0x1

    goto :goto_2b

    :cond_41
    const/4 v13, 0x0

    :goto_2b
    invoke-virtual {v3, v13}, Lcom/google/android/gms/internal/firebase-auth-api/zzajz;->zza(Z)V

    goto :goto_2a

    :cond_42
    if-ne v5, v11, :cond_43

    goto/16 :goto_33

    .line 910
    :cond_43
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzj()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object v1

    throw v1

    .line 904
    :cond_44
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzj()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object v1

    throw v1

    .line 902
    :cond_45
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object v1

    throw v1

    :cond_46
    if-nez v11, :cond_40

    .line 915
    move-object v3, v13

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/zzajz;

    .line 916
    invoke-static {v2, v7, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzd([BILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v5

    .line 917
    iget-wide v13, v6, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zzb:J

    cmp-long v11, v13, v21

    if-eqz v11, :cond_47

    const/4 v11, 0x1

    goto :goto_2c

    :cond_47
    const/4 v11, 0x0

    :goto_2c
    invoke-virtual {v3, v11}, Lcom/google/android/gms/internal/firebase-auth-api/zzajz;->zza(Z)V

    :goto_2d
    if-ge v5, v4, :cond_53

    .line 919
    invoke-static {v2, v5, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzc([BILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v11

    .line 920
    iget v13, v6, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zza:I

    if-ne v1, v13, :cond_53

    .line 921
    invoke-static {v2, v11, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzd([BILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v5

    .line 922
    iget-wide v13, v6, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zzb:J

    cmp-long v11, v13, v21

    if-eqz v11, :cond_48

    const/4 v11, 0x1

    goto :goto_2e

    :cond_48
    const/4 v11, 0x0

    :goto_2e
    invoke-virtual {v3, v11}, Lcom/google/android/gms/internal/firebase-auth-api/zzajz;->zza(Z)V

    goto :goto_2d

    :pswitch_16
    move/from16 v4, p4

    move v9, v2

    move-object v13, v6

    move-object v12, v8

    move/from16 v1, v18

    move/from16 v8, v19

    move/from16 v7, v23

    const/4 v3, 0x2

    move-object/from16 v2, p2

    move-object/from16 v6, p6

    move/from16 v18, v14

    move-object/from16 v19, v15

    if-ne v11, v3, :cond_4d

    .line 867
    move-object v3, v13

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/zzalu;

    .line 868
    invoke-static {v2, v7, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzc([BILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v5

    .line 869
    iget v11, v6, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zza:I

    if-ltz v11, :cond_4c

    .line 872
    array-length v13, v2

    sub-int/2addr v13, v5

    if-gt v11, v13, :cond_4b

    add-int v13, v5, v11

    .line 875
    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzalu;->size()I

    move-result v14

    div-int/lit8 v11, v11, 0x4

    add-int/2addr v14, v11

    invoke-virtual {v3, v14}, Lcom/google/android/gms/internal/firebase-auth-api/zzalu;->zzd(I)V

    :goto_2f
    if-ge v5, v13, :cond_49

    .line 877
    invoke-static {v2, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzc([BI)I

    move-result v11

    invoke-virtual {v3, v11}, Lcom/google/android/gms/internal/firebase-auth-api/zzalu;->zzc(I)V

    add-int/lit8 v5, v5, 0x4

    goto :goto_2f

    :cond_49
    if-ne v5, v13, :cond_4a

    goto/16 :goto_33

    .line 880
    :cond_4a
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzj()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object v1

    throw v1

    .line 873
    :cond_4b
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzj()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object v1

    throw v1

    .line 871
    :cond_4c
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object v1

    throw v1

    :cond_4d
    const/4 v3, 0x5

    if-ne v11, v3, :cond_40

    .line 885
    move-object v3, v13

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/zzalu;

    .line 886
    invoke-static {v2, v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzc([BI)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzalu;->zzc(I)V

    add-int/lit8 v5, v7, 0x4

    :goto_30
    if-ge v5, v4, :cond_53

    .line 889
    invoke-static {v2, v5, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzc([BILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v11

    .line 890
    iget v13, v6, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zza:I

    if-ne v1, v13, :cond_53

    .line 891
    invoke-static {v2, v11}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzc([BI)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzalu;->zzc(I)V

    add-int/lit8 v5, v11, 0x4

    goto :goto_30

    :pswitch_17
    move/from16 v4, p4

    move v9, v2

    move-object v13, v6

    move-object v12, v8

    move/from16 v1, v18

    move/from16 v8, v19

    move/from16 v7, v23

    const/4 v3, 0x2

    move-object/from16 v2, p2

    move-object/from16 v6, p6

    move/from16 v18, v14

    move-object/from16 v19, v15

    if-ne v11, v3, :cond_52

    .line 836
    move-object v3, v13

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/zzamm;

    .line 837
    invoke-static {v2, v7, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzc([BILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v5

    .line 838
    iget v11, v6, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zza:I

    if-ltz v11, :cond_51

    .line 841
    array-length v13, v2

    sub-int/2addr v13, v5

    if-gt v11, v13, :cond_50

    add-int v13, v5, v11

    .line 844
    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamm;->size()I

    move-result v14

    div-int/lit8 v11, v11, 0x8

    add-int/2addr v14, v11

    invoke-virtual {v3, v14}, Lcom/google/android/gms/internal/firebase-auth-api/zzamm;->zzc(I)V

    :goto_31
    if-ge v5, v13, :cond_4e

    .line 846
    invoke-static {v2, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzd([BI)J

    move-result-wide v14

    invoke-virtual {v3, v14, v15}, Lcom/google/android/gms/internal/firebase-auth-api/zzamm;->zza(J)V

    add-int/lit8 v5, v5, 0x8

    goto :goto_31

    :cond_4e
    if-ne v5, v13, :cond_4f

    goto :goto_33

    .line 849
    :cond_4f
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzj()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object v1

    throw v1

    .line 842
    :cond_50
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzj()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object v1

    throw v1

    .line 840
    :cond_51
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object v1

    throw v1

    :cond_52
    const/4 v3, 0x1

    if-ne v11, v3, :cond_40

    .line 854
    move-object v3, v13

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/zzamm;

    .line 855
    invoke-static {v2, v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzd([BI)J

    move-result-wide v13

    invoke-virtual {v3, v13, v14}, Lcom/google/android/gms/internal/firebase-auth-api/zzamm;->zza(J)V

    add-int/lit8 v5, v7, 0x8

    :goto_32
    if-ge v5, v4, :cond_53

    .line 858
    invoke-static {v2, v5, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzc([BILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v11

    .line 859
    iget v13, v6, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zza:I

    if-ne v1, v13, :cond_53

    .line 860
    invoke-static {v2, v11}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzd([BI)J

    move-result-wide v13

    invoke-virtual {v3, v13, v14}, Lcom/google/android/gms/internal/firebase-auth-api/zzamm;->zza(J)V

    add-int/lit8 v5, v11, 0x8

    goto :goto_32

    :cond_53
    :goto_33
    move v15, v1

    move v3, v5

    goto :goto_34

    :pswitch_18
    move/from16 v4, p4

    move v9, v2

    move-object v13, v6

    move-object v12, v8

    move/from16 v1, v18

    move/from16 v8, v19

    move/from16 v7, v23

    const/4 v3, 0x2

    move-object/from16 v2, p2

    move-object/from16 v6, p6

    move/from16 v18, v14

    move-object/from16 v19, v15

    if-ne v11, v3, :cond_55

    .line 831
    invoke-static {v2, v7, v13, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zza([BILcom/google/android/gms/internal/firebase-auth-api/zzalx;Lcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v3

    :cond_54
    move v15, v1

    :goto_34
    move-object v1, v6

    move v14, v7

    goto/16 :goto_3c

    :cond_55
    if-nez v11, :cond_40

    move v3, v7

    move-object v5, v13

    .line 833
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zza(I[BIILcom/google/android/gms/internal/firebase-auth-api/zzalx;Lcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v5

    move v15, v1

    move v14, v3

    move-object v1, v6

    move v3, v5

    goto/16 :goto_3c

    :pswitch_19
    move/from16 v4, p4

    move-object/from16 v1, p6

    move v9, v2

    move-object v5, v6

    move-object v12, v8

    move/from16 v8, v19

    const/4 v3, 0x2

    move-object/from16 v2, p2

    move-object/from16 v19, v15

    move/from16 v15, v18

    move/from16 v18, v14

    move/from16 v14, v23

    if-ne v11, v3, :cond_5a

    .line 802
    move-object v6, v5

    check-cast v6, Lcom/google/android/gms/internal/firebase-auth-api/zzamm;

    .line 803
    invoke-static {v2, v14, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzc([BILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v3

    .line 804
    iget v5, v1, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zza:I

    if-ltz v5, :cond_59

    .line 807
    array-length v7, v2

    sub-int/2addr v7, v3

    if-gt v5, v7, :cond_58

    add-int/2addr v5, v3

    :goto_35
    if-ge v3, v5, :cond_56

    .line 811
    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzd([BILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v3

    .line 812
    iget-wide v10, v1, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zzb:J

    invoke-virtual {v6, v10, v11}, Lcom/google/android/gms/internal/firebase-auth-api/zzamm;->zza(J)V

    goto :goto_35

    :cond_56
    if-ne v3, v5, :cond_57

    goto/16 :goto_3c

    .line 814
    :cond_57
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzj()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object v1

    throw v1

    .line 808
    :cond_58
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzj()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object v1

    throw v1

    .line 806
    :cond_59
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object v1

    throw v1

    :cond_5a
    if-nez v11, :cond_65

    .line 819
    move-object v6, v5

    check-cast v6, Lcom/google/android/gms/internal/firebase-auth-api/zzamm;

    .line 820
    invoke-static {v2, v14, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzd([BILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v3

    .line 821
    iget-wide v10, v1, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zzb:J

    invoke-virtual {v6, v10, v11}, Lcom/google/android/gms/internal/firebase-auth-api/zzamm;->zza(J)V

    :goto_36
    if-ge v3, v4, :cond_66

    .line 823
    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzc([BILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v5

    .line 824
    iget v7, v1, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zza:I

    if-ne v15, v7, :cond_66

    .line 825
    invoke-static {v2, v5, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzd([BILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v3

    .line 826
    iget-wide v10, v1, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zzb:J

    invoke-virtual {v6, v10, v11}, Lcom/google/android/gms/internal/firebase-auth-api/zzamm;->zza(J)V

    goto :goto_36

    :pswitch_1a
    move/from16 v4, p4

    move-object/from16 v1, p6

    move v9, v2

    move-object v5, v6

    move-object v12, v8

    move/from16 v8, v19

    const/4 v3, 0x2

    move-object/from16 v2, p2

    move-object/from16 v19, v15

    move/from16 v15, v18

    move/from16 v18, v14

    move/from16 v14, v23

    if-ne v11, v3, :cond_5f

    .line 771
    move-object v6, v5

    check-cast v6, Lcom/google/android/gms/internal/firebase-auth-api/zzals;

    .line 772
    invoke-static {v2, v14, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzc([BILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v3

    .line 773
    iget v5, v1, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zza:I

    if-ltz v5, :cond_5e

    .line 776
    array-length v7, v2

    sub-int/2addr v7, v3

    if-gt v5, v7, :cond_5d

    add-int v7, v3, v5

    .line 779
    invoke-virtual {v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzals;->size()I

    move-result v10

    div-int/lit8 v5, v5, 0x4

    add-int/2addr v10, v5

    invoke-virtual {v6, v10}, Lcom/google/android/gms/internal/firebase-auth-api/zzals;->zzc(I)V

    :goto_37
    if-ge v3, v7, :cond_5b

    .line 781
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzb([BI)F

    move-result v5

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzals;->zza(F)V

    add-int/lit8 v3, v3, 0x4

    goto :goto_37

    :cond_5b
    if-ne v3, v7, :cond_5c

    goto/16 :goto_3c

    .line 784
    :cond_5c
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzj()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object v1

    throw v1

    .line 777
    :cond_5d
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzj()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object v1

    throw v1

    .line 775
    :cond_5e
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object v1

    throw v1

    :cond_5f
    const/4 v3, 0x5

    if-ne v11, v3, :cond_65

    .line 789
    move-object v6, v5

    check-cast v6, Lcom/google/android/gms/internal/firebase-auth-api/zzals;

    .line 790
    invoke-static {v2, v14}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzb([BI)F

    move-result v3

    invoke-virtual {v6, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzals;->zza(F)V

    add-int/lit8 v3, v14, 0x4

    :goto_38
    if-ge v3, v4, :cond_66

    .line 793
    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzc([BILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v5

    .line 794
    iget v7, v1, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zza:I

    if-ne v15, v7, :cond_66

    .line 795
    invoke-static {v2, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzb([BI)F

    move-result v3

    invoke-virtual {v6, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzals;->zza(F)V

    add-int/lit8 v3, v5, 0x4

    goto :goto_38

    :pswitch_1b
    move/from16 v4, p4

    move-object/from16 v1, p6

    move v9, v2

    move-object v5, v6

    move-object v12, v8

    move/from16 v8, v19

    const/4 v3, 0x2

    move-object/from16 v2, p2

    move-object/from16 v19, v15

    move/from16 v15, v18

    move/from16 v18, v14

    move/from16 v14, v23

    if-ne v11, v3, :cond_64

    .line 740
    move-object v6, v5

    check-cast v6, Lcom/google/android/gms/internal/firebase-auth-api/zzald;

    .line 741
    invoke-static {v2, v14, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzc([BILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v3

    .line 742
    iget v5, v1, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zza:I

    if-ltz v5, :cond_63

    .line 745
    array-length v7, v2

    sub-int/2addr v7, v3

    if-gt v5, v7, :cond_62

    add-int v7, v3, v5

    .line 748
    invoke-virtual {v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzald;->size()I

    move-result v10

    div-int/lit8 v5, v5, 0x8

    add-int/2addr v10, v5

    invoke-virtual {v6, v10}, Lcom/google/android/gms/internal/firebase-auth-api/zzald;->zzc(I)V

    :goto_39
    if-ge v3, v7, :cond_60

    .line 750
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zza([BI)D

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Lcom/google/android/gms/internal/firebase-auth-api/zzald;->zza(D)V

    add-int/lit8 v3, v3, 0x8

    goto :goto_39

    :cond_60
    if-ne v3, v7, :cond_61

    goto :goto_3c

    .line 753
    :cond_61
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzj()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object v1

    throw v1

    .line 746
    :cond_62
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzj()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object v1

    throw v1

    .line 744
    :cond_63
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object v1

    throw v1

    :cond_64
    const/4 v3, 0x1

    if-ne v11, v3, :cond_65

    .line 758
    move-object v6, v5

    check-cast v6, Lcom/google/android/gms/internal/firebase-auth-api/zzald;

    .line 759
    invoke-static {v2, v14}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zza([BI)D

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Lcom/google/android/gms/internal/firebase-auth-api/zzald;->zza(D)V

    add-int/lit8 v3, v14, 0x8

    :goto_3a
    if-ge v3, v4, :cond_66

    .line 762
    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzc([BILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v5

    .line 763
    iget v7, v1, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zza:I

    if-ne v15, v7, :cond_66

    .line 764
    invoke-static {v2, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zza([BI)D

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Lcom/google/android/gms/internal/firebase-auth-api/zzald;->zza(D)V

    add-int/lit8 v3, v5, 0x8

    goto :goto_3a

    :cond_65
    :goto_3b
    move v3, v14

    :cond_66
    :goto_3c
    if-ne v3, v14, :cond_67

    move/from16 v10, p5

    move-object v14, v1

    move-object v1, v2

    goto/16 :goto_4b

    :cond_67
    move-object v6, v1

    move v5, v4

    move v7, v8

    move v8, v9

    move/from16 v14, v18

    move-object/from16 v1, v19

    move/from16 v9, v27

    move v4, v3

    move-object v3, v2

    move-object v2, v12

    goto/16 :goto_0

    :cond_68
    move v1, v12

    move-object v12, v8

    move v8, v1

    move-object/from16 v1, p6

    move/from16 v27, v9

    move-object/from16 v19, v15

    move/from16 v15, v18

    move v9, v2

    move/from16 v18, v14

    move-object/from16 v2, p2

    move v14, v4

    move/from16 v4, p4

    const/16 v10, 0x32

    if-ne v3, v10, :cond_74

    const/4 v10, 0x2

    if-ne v11, v10, :cond_73

    .line 1096
    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb:Lsun/misc/Unsafe;

    .line 1097
    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzf(I)Ljava/lang/Object;

    move-result-object v5

    .line 1098
    invoke-virtual {v3, v12, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    .line 1099
    iget-object v11, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzr:Lcom/google/android/gms/internal/firebase-auth-api/zzams;

    invoke-interface {v11, v10}, Lcom/google/android/gms/internal/firebase-auth-api/zzams;->zzf(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_69

    .line 1101
    iget-object v11, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzr:Lcom/google/android/gms/internal/firebase-auth-api/zzams;

    invoke-interface {v11, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzams;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 1102
    iget-object v13, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzr:Lcom/google/android/gms/internal/firebase-auth-api/zzams;

    invoke-interface {v13, v11, v10}, Lcom/google/android/gms/internal/firebase-auth-api/zzams;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1103
    invoke-virtual {v3, v12, v6, v7, v11}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v10, v11

    .line 1104
    :cond_69
    iget-object v3, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzr:Lcom/google/android/gms/internal/firebase-auth-api/zzams;

    .line 1105
    invoke-interface {v3, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzams;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzamq;

    move-result-object v7

    iget-object v3, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzr:Lcom/google/android/gms/internal/firebase-auth-api/zzams;

    .line 1106
    invoke-interface {v3, v10}, Lcom/google/android/gms/internal/firebase-auth-api/zzams;->zze(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v10

    .line 1108
    invoke-static {v2, v14, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzc([BILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v3

    .line 1109
    iget v5, v1, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zza:I

    if-ltz v5, :cond_72

    sub-int v6, v4, v3

    if-gt v5, v6, :cond_72

    add-int v11, v3, v5

    .line 1113
    iget-object v5, v7, Lcom/google/android/gms/internal/firebase-auth-api/zzamq;->zzb:Ljava/lang/Object;

    .line 1114
    iget-object v6, v7, Lcom/google/android/gms/internal/firebase-auth-api/zzamq;->zzd:Ljava/lang/Object;

    move-object v13, v5

    :goto_3d
    if-ge v3, v11, :cond_6f

    add-int/lit8 v5, v3, 0x1

    .line 1116
    aget-byte v3, v2, v3

    if-gez v3, :cond_6a

    .line 1118
    invoke-static {v3, v2, v5, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zza(I[BILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v5

    .line 1119
    iget v3, v1, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zza:I

    :cond_6a
    ushr-int/lit8 v1, v3, 0x3

    and-int/lit8 v2, v3, 0x7

    const/4 v4, 0x1

    if-eq v1, v4, :cond_6d

    const/4 v4, 0x2

    if-eq v1, v4, :cond_6c

    :cond_6b
    move-object/from16 v1, p2

    move/from16 v4, p4

    move v2, v5

    move-object/from16 v5, p6

    goto :goto_3e

    .line 1128
    :cond_6c
    iget-object v1, v7, Lcom/google/android/gms/internal/firebase-auth-api/zzamq;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzaoj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoj;->zza()I

    move-result v1

    if-ne v2, v1, :cond_6b

    move/from16 v26, v4

    .line 1129
    iget-object v4, v7, Lcom/google/android/gms/internal/firebase-auth-api/zzamq;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzaoj;

    iget-object v1, v7, Lcom/google/android/gms/internal/firebase-auth-api/zzamq;->zzd:Ljava/lang/Object;

    .line 1130
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    move/from16 v3, p4

    move-object/from16 v6, p6

    move v2, v5

    move-object v5, v1

    move-object/from16 v1, p2

    .line 1131
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza([BIILcom/google/android/gms/internal/firebase-auth-api/zzaoj;Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v2

    move-object v1, v6

    .line 1132
    iget-object v6, v1, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zzc:Ljava/lang/Object;

    move/from16 v4, p4

    move v3, v2

    move-object/from16 v2, p2

    goto :goto_3d

    :cond_6d
    move-object/from16 v1, p6

    .line 1123
    iget-object v4, v7, Lcom/google/android/gms/internal/firebase-auth-api/zzamq;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaoj;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoj;->zza()I

    move-result v4

    if-ne v2, v4, :cond_6e

    .line 1124
    iget-object v4, v7, Lcom/google/android/gms/internal/firebase-auth-api/zzamq;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaoj;

    move v2, v5

    const/4 v5, 0x0

    move/from16 v3, p4

    move-object v13, v6

    move-object v6, v1

    move-object/from16 v1, p2

    .line 1125
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza([BIILcom/google/android/gms/internal/firebase-auth-api/zzaoj;Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v2

    move v4, v3

    move-object v5, v6

    .line 1126
    iget-object v3, v5, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zzc:Ljava/lang/Object;

    move-object v6, v13

    move-object v13, v3

    move v3, v2

    goto :goto_3f

    :cond_6e
    move/from16 v4, p4

    move v2, v5

    move-object v5, v1

    move-object/from16 v1, p2

    .line 1134
    :goto_3e
    invoke-static {v3, v1, v2, v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zza(I[BIILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v3

    :goto_3f
    move-object v2, v1

    move-object v1, v5

    goto :goto_3d

    :cond_6f
    move-object v5, v1

    move-object v1, v2

    if-ne v3, v11, :cond_71

    .line 1138
    invoke-interface {v10, v13, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-ne v11, v14, :cond_70

    move/from16 v10, p5

    move-object v14, v5

    move v3, v11

    goto/16 :goto_4b

    :cond_70
    move-object v3, v1

    move-object v6, v5

    move v7, v8

    move v8, v9

    move-object v2, v12

    move/from16 v14, v18

    move-object/from16 v1, v19

    move/from16 v9, v27

    move v5, v4

    move v4, v11

    goto/16 :goto_0

    .line 1137
    :cond_71
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzg()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object v1

    throw v1

    .line 1111
    :cond_72
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzj()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object v1

    throw v1

    :cond_73
    move-object v5, v1

    move-object v1, v2

    :goto_40
    move/from16 v10, p5

    move v3, v14

    move-object v14, v5

    goto/16 :goto_4b

    :cond_74
    move-object v1, v2

    .line 1146
    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb:Lsun/misc/Unsafe;

    add-int/lit8 v10, v9, 0x2

    .line 1147
    aget v10, v20, v10

    const v16, 0xfffff

    and-int v10, v10, v16

    move/from16 v20, v3

    int-to-long v3, v10

    packed-switch v20, :pswitch_data_2

    :cond_75
    move/from16 v20, v9

    move v9, v14

    move-object/from16 v14, p6

    goto/16 :goto_49

    :pswitch_1c
    const/4 v10, 0x3

    if-ne v11, v10, :cond_75

    .line 1219
    invoke-direct {v0, v12, v8, v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v1

    and-int/lit8 v2, v15, -0x8

    or-int/lit8 v6, v2, 0x4

    .line 1222
    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zze(I)Lcom/google/android/gms/internal/firebase-auth-api/zzanl;

    move-result-object v2

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v7, p6

    move v4, v14

    .line 1223
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzanl;[BIIILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v2

    move-object v5, v3

    move-object v3, v1

    move-object v1, v5

    move-object v5, v7

    .line 1224
    invoke-direct {v0, v12, v8, v9, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;IILjava/lang/Object;)V

    move v4, v2

    goto :goto_41

    :pswitch_1d
    move-object/from16 v5, p6

    if-nez v11, :cond_78

    .line 1215
    invoke-static {v1, v14, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzd([BILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v10

    move/from16 p3, v10

    .line 1216
    iget-wide v10, v5, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zzb:J

    invoke-static {v10, v11}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zza(J)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v2, v12, v6, v7, v10}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1217
    invoke-virtual {v2, v12, v3, v4, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move/from16 v4, p3

    :goto_41
    move/from16 v20, v9

    goto :goto_44

    :pswitch_1e
    move-object/from16 v5, p6

    if-nez v11, :cond_78

    .line 1211
    invoke-static {v1, v14, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzc([BILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v10

    .line 1212
    iget v11, v5, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zza:I

    invoke-static {v11}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zza(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v12, v6, v7, v11}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1213
    invoke-virtual {v2, v12, v3, v4, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_43

    :pswitch_1f
    move-object/from16 v5, p6

    if-nez v11, :cond_78

    .line 1202
    invoke-static {v1, v14, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzc([BILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v10

    .line 1203
    iget v11, v5, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zza:I

    .line 1204
    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzd(I)Lcom/google/android/gms/internal/firebase-auth-api/zzaly;

    move-result-object v13

    if-eqz v13, :cond_77

    .line 1205
    invoke-interface {v13, v11}, Lcom/google/android/gms/internal/firebase-auth-api/zzaly;->zza(I)Z

    move-result v13

    if-eqz v13, :cond_76

    goto :goto_42

    .line 1208
    :cond_76
    invoke-static {v12}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzaoa;

    move-result-object v2

    int-to-long v3, v11

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v15, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoa;->zza(ILjava/lang/Object;)V

    goto :goto_43

    .line 1206
    :cond_77
    :goto_42
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v12, v6, v7, v11}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1207
    invoke-virtual {v2, v12, v3, v4, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_43

    :pswitch_20
    move-object/from16 v5, p6

    const/4 v10, 0x2

    if-ne v11, v10, :cond_78

    .line 1198
    invoke-static {v1, v14, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zza([BILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v10

    .line 1199
    iget-object v11, v5, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zzc:Ljava/lang/Object;

    invoke-virtual {v2, v12, v6, v7, v11}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1200
    invoke-virtual {v2, v12, v3, v4, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_43
    move/from16 v20, v9

    move v4, v10

    :goto_44
    move v9, v14

    move-object v14, v5

    goto/16 :goto_4a

    :cond_78
    move/from16 v20, v9

    move v9, v14

    move-object v14, v5

    goto/16 :goto_49

    :pswitch_21
    move-object/from16 v5, p6

    const/4 v10, 0x2

    if-ne v11, v10, :cond_79

    .line 1191
    invoke-direct {v0, v12, v8, v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v1

    .line 1193
    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zze(I)Lcom/google/android/gms/internal/firebase-auth-api/zzanl;

    move-result-object v2

    move-object/from16 v3, p2

    move-object v6, v5

    move v4, v14

    move/from16 v5, p4

    .line 1194
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzanl;[BIILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v2

    move-object v14, v3

    move-object v3, v1

    move-object v1, v14

    move-object v14, v6

    .line 1195
    invoke-direct {v0, v12, v8, v9, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;IILjava/lang/Object;)V

    move/from16 v20, v9

    move v9, v4

    move v4, v2

    goto/16 :goto_4a

    :cond_79
    move v4, v14

    move-object v14, v5

    move/from16 v20, v9

    move v9, v4

    goto/16 :goto_49

    :pswitch_22
    move/from16 v20, v9

    move v9, v14

    const/4 v10, 0x2

    move-object/from16 v14, p6

    if-ne v11, v10, :cond_7e

    .line 1178
    invoke-static {v1, v9, v14}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzc([BILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v10

    .line 1179
    iget v11, v14, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zza:I

    if-nez v11, :cond_7a

    .line 1181
    invoke-virtual {v2, v12, v6, v7, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_46

    :cond_7a
    const/high16 v5, 0x20000000

    and-int/2addr v5, v13

    if-eqz v5, :cond_7c

    add-int v5, v10, v11

    .line 1183
    invoke-static {v1, v10, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzaog;->zzb([BII)Z

    move-result v5

    if-eqz v5, :cond_7b

    goto :goto_45

    .line 1184
    :cond_7b
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object v1

    throw v1

    .line 1185
    :cond_7c
    :goto_45
    new-instance v5, Ljava/lang/String;

    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v1, v10, v11, v13}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 1186
    invoke-virtual {v2, v12, v6, v7, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v10, v11

    .line 1188
    :goto_46
    invoke-virtual {v2, v12, v3, v4, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move v4, v10

    goto/16 :goto_4a

    :pswitch_23
    move/from16 v20, v9

    move v9, v14

    move-object/from16 v14, p6

    if-nez v11, :cond_7e

    .line 1174
    invoke-static {v1, v9, v14}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzd([BILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v5

    .line 1175
    iget-wide v10, v14, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zzb:J

    cmp-long v10, v10, v21

    if-eqz v10, :cond_7d

    const/16 v28, 0x1

    goto :goto_47

    :cond_7d
    const/16 v28, 0x0

    :goto_47
    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v2, v12, v6, v7, v10}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1176
    invoke-virtual {v2, v12, v3, v4, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_48

    :pswitch_24
    move/from16 v20, v9

    move v9, v14

    const/4 v5, 0x5

    move-object/from16 v14, p6

    if-ne v11, v5, :cond_7e

    .line 1170
    invoke-static {v1, v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzc([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v12, v6, v7, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v5, v9, 0x4

    .line 1172
    invoke-virtual {v2, v12, v3, v4, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_48

    :pswitch_25
    move/from16 v20, v9

    move v9, v14

    const/4 v5, 0x1

    move-object/from16 v14, p6

    if-ne v11, v5, :cond_7e

    .line 1166
    invoke-static {v1, v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzd([BI)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v12, v6, v7, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v5, v9, 0x8

    .line 1168
    invoke-virtual {v2, v12, v3, v4, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_48

    :pswitch_26
    move/from16 v20, v9

    move v9, v14

    move-object/from16 v14, p6

    if-nez v11, :cond_7e

    .line 1162
    invoke-static {v1, v9, v14}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzc([BILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v5

    .line 1163
    iget v10, v14, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zza:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v12, v6, v7, v10}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1164
    invoke-virtual {v2, v12, v3, v4, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_48

    :pswitch_27
    move/from16 v20, v9

    move v9, v14

    move-object/from16 v14, p6

    if-nez v11, :cond_7e

    .line 1158
    invoke-static {v1, v9, v14}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzd([BILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v5

    .line 1159
    iget-wide v10, v14, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zzb:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v2, v12, v6, v7, v10}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1160
    invoke-virtual {v2, v12, v3, v4, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_48

    :pswitch_28
    move/from16 v20, v9

    move v9, v14

    const/4 v5, 0x5

    move-object/from16 v14, p6

    if-ne v11, v5, :cond_7e

    .line 1154
    invoke-static {v1, v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zzb([BI)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2, v12, v6, v7, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v5, v9, 0x4

    .line 1156
    invoke-virtual {v2, v12, v3, v4, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_48

    :pswitch_29
    move/from16 v20, v9

    move v9, v14

    const/4 v5, 0x1

    move-object/from16 v14, p6

    if-ne v11, v5, :cond_7e

    .line 1150
    invoke-static {v1, v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zza([BI)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v2, v12, v6, v7, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v5, v9, 0x8

    .line 1152
    invoke-virtual {v2, v12, v3, v4, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_48
    move v4, v5

    goto :goto_4a

    :cond_7e
    :goto_49
    move v4, v9

    :goto_4a
    move/from16 v10, p5

    if-ne v4, v9, :cond_82

    move v3, v4

    move/from16 v9, v20

    :goto_4b
    if-ne v15, v10, :cond_80

    if-nez v10, :cond_7f

    goto :goto_4c

    :cond_7f
    move/from16 v13, p4

    move v6, v3

    move-object/from16 v1, v19

    move/from16 v14, v18

    move/from16 v9, v27

    goto/16 :goto_4d

    .line 1229
    :cond_80
    :goto_4c
    iget-boolean v2, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzh:Z

    if-eqz v2, :cond_81

    iget-object v2, v14, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzalf;

    .line 1230
    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzalf;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzalf;

    if-eq v2, v4, :cond_81

    .line 1232
    iget-object v6, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzamv;

    iget-object v7, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzp:Lcom/google/android/gms/internal/firebase-auth-api/zzaob;

    move/from16 v4, p4

    move-object v2, v1

    move v11, v8

    move-object v5, v12

    move-object v8, v14

    move v1, v15

    .line 1233
    invoke-static/range {v1 .. v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zza(I[BIILjava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzamv;Lcom/google/android/gms/internal/firebase-auth-api/zzaob;Lcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v3

    move-object/from16 v6, p6

    move v4, v3

    move-object v2, v5

    move v8, v9

    move v7, v11

    move/from16 v14, v18

    move-object/from16 v1, v19

    move/from16 v9, v27

    move-object/from16 v3, p2

    goto/16 :goto_13

    :cond_81
    move v11, v8

    move v1, v15

    .line 1235
    invoke-static {v12}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzaoa;

    move-result-object v5

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v6, p6

    .line 1236
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzajx;->zza(I[BIILcom/google/android/gms/internal/firebase-auth-api/zzaoa;Lcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    move-result v3

    move v15, v1

    move v5, v4

    move v8, v9

    move v7, v11

    move-object v2, v12

    move/from16 v14, v18

    move-object/from16 v1, v19

    move/from16 v9, v27

    move v4, v3

    move-object/from16 v3, p2

    goto/16 :goto_0

    :cond_82
    move v11, v8

    move v1, v15

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p6

    move v7, v11

    move-object v2, v12

    move/from16 v14, v18

    move-object/from16 v1, v19

    move/from16 v8, v20

    move/from16 v9, v27

    goto/16 :goto_0

    :cond_83
    move/from16 v10, p5

    move-object v12, v2

    move v13, v5

    move/from16 v27, v9

    move/from16 v18, v14

    move v6, v4

    :goto_4d
    const v8, 0xfffff

    if-eq v9, v8, :cond_84

    int-to-long v2, v9

    .line 1239
    invoke-virtual {v1, v12, v2, v3, v14}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1241
    :cond_84
    iget v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzl:I

    const/4 v2, 0x0

    move v7, v1

    move-object v3, v2

    :goto_4e
    iget v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzm:I

    if-ge v7, v1, :cond_85

    .line 1242
    iget-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzk:[I

    aget v2, v1, v7

    iget-object v4, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzp:Lcom/google/android/gms/internal/firebase-auth-api/zzaob;

    move-object/from16 v5, p1

    move-object v1, v12

    .line 1243
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzaob;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/zzaoa;

    add-int/lit8 v7, v7, 0x1

    goto :goto_4e

    :cond_85
    move-object v1, v12

    if-eqz v3, :cond_86

    .line 1246
    iget-object v2, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzp:Lcom/google/android/gms/internal/firebase-auth-api/zzaob;

    .line 1247
    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaob;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_86
    if-nez v10, :cond_88

    if-ne v6, v13, :cond_87

    goto :goto_4f

    .line 1250
    :cond_87
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzg()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object v1

    throw v1

    :cond_88
    if-gt v6, v13, :cond_89

    if-ne v15, v10, :cond_89

    :goto_4f
    return v6

    .line 1252
    :cond_89
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzamd;->zzg()Lcom/google/android/gms/internal/firebase-auth-api/zzamd;

    move-result-object v1

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_18
        :pswitch_11
        :pswitch_16
        :pswitch_17
        :pswitch_10
        :pswitch_f
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_18
        :pswitch_11
        :pswitch_16
        :pswitch_17
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x33
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_26
        :pswitch_1f
        :pswitch_24
        :pswitch_25
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
    .end packed-switch
.end method

.method public final zza()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1566
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzn:Lcom/google/android/gms/internal/firebase-auth-api/zzand;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzamv;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzand;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzakw;Lcom/google/android/gms/internal/firebase-auth-api/zzalf;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzakw;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzalf;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v4, p3

    .line 1718
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzalw;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1719
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzf(Ljava/lang/Object;)V

    .line 1720
    iget-object v5, v1, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzp:Lcom/google/android/gms/internal/firebase-auth-api/zzaob;

    iget-object v0, v1, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzq:Lcom/google/android/gms/internal/firebase-auth-api/zzalh;

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1723
    :goto_0
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzc()I

    move-result v2

    .line 1724
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    const/4 v9, 0x0

    if-gez v3, :cond_9

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_2

    .line 1727
    iget v0, v1, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzl:I

    move-object v4, v6

    :goto_1
    iget v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzm:I

    if-ge v0, v2, :cond_0

    .line 1728
    iget-object v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzk:[I

    aget v3, v2, v0

    move-object/from16 v6, p1

    move-object/from16 v2, p1

    .line 1729
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzaob;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v1

    move-object v1, v2

    add-int/lit8 v0, v0, 0x1

    move-object v1, v10

    goto :goto_1

    :cond_0
    move-object v10, v1

    move-object/from16 v1, p1

    if-eqz v4, :cond_1

    .line 1732
    invoke-virtual {v5, v1, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzaob;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_2
    move-object v1, v10

    goto/16 :goto_12

    :cond_2
    move-object v10, v1

    move-object/from16 v1, p1

    .line 1734
    :try_start_1
    iget-boolean v3, v10, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzh:Z

    if-nez v3, :cond_3

    const/4 v3, 0x0

    goto :goto_3

    .line 1736
    :cond_3
    iget-object v3, v10, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzamv;

    invoke-virtual {v0, v4, v3, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzalh;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzalf;Lcom/google/android/gms/internal/firebase-auth-api/zzamv;I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    :goto_3
    if-eqz v3, :cond_5

    if-nez v7, :cond_4

    .line 1739
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzalh;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzalm;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    :cond_4
    move-object v2, v7

    move-object v7, v5

    move-object v5, v2

    move-object/from16 v2, p2

    .line 1741
    :try_start_2
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzalh;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzakw;Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzalf;Lcom/google/android/gms/internal/firebase-auth-api/zzalm;Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzaob;)Ljava/lang/Object;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v11, v7

    move-object v7, v5

    move-object v5, v11

    move-object v12, v0

    move-object v0, v2

    move-object v11, v4

    move-object v2, v1

    goto/16 :goto_a

    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v5, v7

    goto/16 :goto_14

    :cond_5
    move-object v12, v0

    move-object v2, v1

    move-object v11, v4

    move-object/from16 v0, p2

    .line 1743
    :try_start_3
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaob;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakw;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-nez v6, :cond_6

    .line 1745
    :try_start_4
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaob;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    goto/16 :goto_14

    .line 1746
    :cond_6
    :goto_4
    :try_start_5
    invoke-virtual {v5, v6, v0, v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzaob;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzakw;I)Z

    move-result v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-nez v1, :cond_8

    .line 1747
    iget v0, v10, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzl:I

    move-object v4, v6

    :goto_5
    iget v1, v10, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzm:I

    if-ge v0, v1, :cond_7

    .line 1748
    iget-object v1, v10, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzk:[I

    aget v3, v1, v0

    move-object/from16 v6, p1

    move-object v1, v10

    .line 1749
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzaob;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_7
    move-object v1, v2

    if-eqz v4, :cond_1

    .line 1752
    invoke-virtual {v5, v1, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzaob;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_8
    move-object v1, v2

    goto/16 :goto_a

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto/16 :goto_14

    :cond_9
    move-object v12, v0

    move-object v10, v1

    move-object v11, v4

    move-object/from16 v1, p1

    move-object/from16 v0, p2

    .line 1754
    :try_start_6
    invoke-direct {v10, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(I)I

    move-result v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    const/high16 v13, 0xff00000

    and-int/2addr v13, v4

    ushr-int/lit8 v13, v13, 0x14

    const v14, 0xfffff

    packed-switch v13, :pswitch_data_0

    if-nez v6, :cond_11

    .line 2162
    :try_start_7
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaob;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto/16 :goto_d

    .line 2155
    :pswitch_0
    invoke-direct {v10, v1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/firebase-auth-api/zzamv;

    .line 2157
    invoke-direct {v10, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zze(I)Lcom/google/android/gms/internal/firebase-auth-api/zzanl;

    move-result-object v13

    .line 2158
    invoke-virtual {v0, v4, v13, v11}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzanl;Lcom/google/android/gms/internal/firebase-auth-api/zzalf;)V

    .line 2159
    invoke-direct {v10, v1, v2, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;IILjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_1
    and-int/2addr v4, v14

    int-to-long v13, v4

    .line 2150
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzn()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 2151
    invoke-static {v1, v13, v14, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2152
    invoke-direct {v10, v1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_a

    :pswitch_2
    and-int/2addr v4, v14

    int-to-long v13, v4

    .line 2144
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzi()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 2145
    invoke-static {v1, v13, v14, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2146
    invoke-direct {v10, v1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_a

    :pswitch_3
    and-int/2addr v4, v14

    int-to-long v13, v4

    .line 2138
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzm()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 2139
    invoke-static {v1, v13, v14, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2140
    invoke-direct {v10, v1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_a

    :pswitch_4
    and-int/2addr v4, v14

    int-to-long v13, v4

    .line 2132
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzh()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 2133
    invoke-static {v1, v13, v14, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2134
    invoke-direct {v10, v1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_a

    .line 2120
    :pswitch_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zze()I

    move-result v13

    .line 2121
    invoke-direct {v10, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzd(I)Lcom/google/android/gms/internal/firebase-auth-api/zzaly;

    move-result-object v15

    if-eqz v15, :cond_b

    .line 2122
    invoke-interface {v15, v13}, Lcom/google/android/gms/internal/firebase-auth-api/zzaly;->zza(I)Z

    move-result v15

    if-eqz v15, :cond_a

    goto :goto_6

    .line 2128
    :cond_a
    invoke-static {v1, v2, v13, v6, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zza(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzaob;)Ljava/lang/Object;

    move-result-object v6

    goto/16 :goto_a

    :cond_b
    :goto_6
    and-int/2addr v4, v14

    int-to-long v14, v4

    .line 2125
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v14, v15, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2126
    invoke-direct {v10, v1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_a

    :pswitch_6
    and-int/2addr v4, v14

    int-to-long v13, v4

    .line 2116
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzj()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 2117
    invoke-static {v1, v13, v14, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2118
    invoke-direct {v10, v1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_a

    :pswitch_7
    and-int/2addr v4, v14

    int-to-long v13, v4

    .line 2111
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzp()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object v4

    invoke-static {v1, v13, v14, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2112
    invoke-direct {v10, v1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_a

    .line 2103
    :pswitch_8
    invoke-direct {v10, v1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/firebase-auth-api/zzamv;

    .line 2105
    invoke-direct {v10, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zze(I)Lcom/google/android/gms/internal/firebase-auth-api/zzanl;

    move-result-object v13

    .line 2106
    invoke-virtual {v0, v4, v13, v11}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzanl;Lcom/google/android/gms/internal/firebase-auth-api/zzalf;)V

    .line 2107
    invoke-direct {v10, v1, v2, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;IILjava/lang/Object;)V

    goto/16 :goto_a

    .line 2099
    :pswitch_9
    invoke-direct {v10, v1, v4, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/firebase-auth-api/zzakw;)V

    .line 2100
    invoke-direct {v10, v1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_a

    :pswitch_a
    and-int/2addr v4, v14

    int-to-long v13, v4

    .line 2095
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzs()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 2096
    invoke-static {v1, v13, v14, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2097
    invoke-direct {v10, v1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_a

    :pswitch_b
    and-int/2addr v4, v14

    int-to-long v13, v4

    .line 2089
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzf()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 2090
    invoke-static {v1, v13, v14, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2091
    invoke-direct {v10, v1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_a

    :pswitch_c
    and-int/2addr v4, v14

    int-to-long v13, v4

    .line 2083
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzk()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 2084
    invoke-static {v1, v13, v14, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2085
    invoke-direct {v10, v1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_a

    :pswitch_d
    and-int/2addr v4, v14

    int-to-long v13, v4

    .line 2077
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzg()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 2078
    invoke-static {v1, v13, v14, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2079
    invoke-direct {v10, v1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_a

    :pswitch_e
    and-int/2addr v4, v14

    int-to-long v13, v4

    .line 2071
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzo()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 2072
    invoke-static {v1, v13, v14, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2073
    invoke-direct {v10, v1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_a

    :pswitch_f
    and-int/2addr v4, v14

    int-to-long v13, v4

    .line 2065
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzl()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 2066
    invoke-static {v1, v13, v14, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2067
    invoke-direct {v10, v1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_a

    :pswitch_10
    and-int/2addr v4, v14

    int-to-long v13, v4

    .line 2059
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 2060
    invoke-static {v1, v13, v14, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2061
    invoke-direct {v10, v1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_a

    :pswitch_11
    and-int/2addr v4, v14

    int-to-long v13, v4

    .line 2053
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza()D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 2054
    invoke-static {v1, v13, v14, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2055
    invoke-direct {v10, v1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_a

    .line 2033
    :pswitch_12
    invoke-direct {v10, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzf(I)Ljava/lang/Object;

    move-result-object v2

    .line 2034
    invoke-direct {v10, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(I)I

    move-result v3

    and-int/2addr v3, v14

    int-to-long v3, v3

    .line 2037
    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zze(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_c

    .line 2039
    iget-object v13, v10, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzr:Lcom/google/android/gms/internal/firebase-auth-api/zzams;

    invoke-interface {v13, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzams;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 2040
    invoke-static {v1, v3, v4, v13}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    .line 2041
    :cond_c
    iget-object v14, v10, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzr:Lcom/google/android/gms/internal/firebase-auth-api/zzams;

    invoke-interface {v14, v13}, Lcom/google/android/gms/internal/firebase-auth-api/zzams;->zzf(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 2043
    iget-object v14, v10, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzr:Lcom/google/android/gms/internal/firebase-auth-api/zzams;

    invoke-interface {v14, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzams;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 2044
    iget-object v15, v10, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzr:Lcom/google/android/gms/internal/firebase-auth-api/zzams;

    invoke-interface {v15, v14, v13}, Lcom/google/android/gms/internal/firebase-auth-api/zzams;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2045
    invoke-static {v1, v3, v4, v14}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v13, v14

    .line 2046
    :cond_d
    :goto_7
    iget-object v3, v10, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzr:Lcom/google/android/gms/internal/firebase-auth-api/zzams;

    .line 2047
    invoke-interface {v3, v13}, Lcom/google/android/gms/internal/firebase-auth-api/zzams;->zze(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, v10, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzr:Lcom/google/android/gms/internal/firebase-auth-api/zzams;

    .line 2048
    invoke-interface {v4, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzams;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzamq;

    move-result-object v2

    .line 2049
    invoke-virtual {v0, v3, v2, v11}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza(Ljava/util/Map;Lcom/google/android/gms/internal/firebase-auth-api/zzamq;Lcom/google/android/gms/internal/firebase-auth-api/zzalf;)V

    goto/16 :goto_a

    :pswitch_13
    and-int v2, v4, v14

    int-to-long v13, v2

    .line 2027
    invoke-direct {v10, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zze(I)Lcom/google/android/gms/internal/firebase-auth-api/zzanl;

    move-result-object v2

    .line 2029
    iget-object v3, v10, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzo:Lcom/google/android/gms/internal/firebase-auth-api/zzamh;

    .line 2030
    invoke-interface {v3, v1, v13, v14}, Lcom/google/android/gms/internal/firebase-auth-api/zzamh;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 2031
    invoke-virtual {v0, v3, v2, v11}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza(Ljava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzanl;Lcom/google/android/gms/internal/firebase-auth-api/zzalf;)V

    goto/16 :goto_a

    .line 2019
    :pswitch_14
    iget-object v2, v10, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzo:Lcom/google/android/gms/internal/firebase-auth-api/zzamh;

    and-int v3, v4, v14

    int-to-long v3, v3

    .line 2021
    invoke-interface {v2, v1, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzamh;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 2022
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzm(Ljava/util/List;)V

    goto/16 :goto_a

    .line 2014
    :pswitch_15
    iget-object v2, v10, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzo:Lcom/google/android/gms/internal/firebase-auth-api/zzamh;

    and-int v3, v4, v14

    int-to-long v3, v3

    .line 2016
    invoke-interface {v2, v1, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzamh;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 2017
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzl(Ljava/util/List;)V

    goto/16 :goto_a

    .line 2009
    :pswitch_16
    iget-object v2, v10, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzo:Lcom/google/android/gms/internal/firebase-auth-api/zzamh;

    and-int v3, v4, v14

    int-to-long v3, v3

    .line 2011
    invoke-interface {v2, v1, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzamh;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 2012
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzk(Ljava/util/List;)V

    goto/16 :goto_a

    .line 2004
    :pswitch_17
    iget-object v2, v10, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzo:Lcom/google/android/gms/internal/firebase-auth-api/zzamh;

    and-int v3, v4, v14

    int-to-long v3, v3

    .line 2006
    invoke-interface {v2, v1, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzamh;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 2007
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzj(Ljava/util/List;)V

    goto/16 :goto_a

    .line 1996
    :pswitch_18
    iget-object v13, v10, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzo:Lcom/google/android/gms/internal/firebase-auth-api/zzamh;

    and-int/2addr v4, v14

    int-to-long v14, v4

    .line 1998
    invoke-interface {v13, v1, v14, v15}, Lcom/google/android/gms/internal/firebase-auth-api/zzamh;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1999
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzd(Ljava/util/List;)V

    move-object v13, v4

    .line 2001
    invoke-direct {v10, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzd(I)Lcom/google/android/gms/internal/firebase-auth-api/zzaly;

    move-result-object v4
    :try_end_7
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzamg; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    move-object v3, v6

    move-object v6, v5

    move-object v5, v3

    move-object v3, v13

    .line 2002
    :try_start_8
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zza(Ljava/lang/Object;ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzaly;Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzaob;)Ljava/lang/Object;

    move-result-object v2
    :try_end_8
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzamg; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-object v5, v6

    goto/16 :goto_8

    .line 1991
    :pswitch_19
    :try_start_9
    iget-object v2, v10, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzo:Lcom/google/android/gms/internal/firebase-auth-api/zzamh;

    and-int v3, v4, v14

    int-to-long v3, v3

    .line 1993
    invoke-interface {v2, v1, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzamh;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 1994
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzp(Ljava/util/List;)V

    goto/16 :goto_a

    .line 1986
    :pswitch_1a
    iget-object v2, v10, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzo:Lcom/google/android/gms/internal/firebase-auth-api/zzamh;

    and-int v3, v4, v14

    int-to-long v3, v3

    .line 1988
    invoke-interface {v2, v1, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzamh;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 1989
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza(Ljava/util/List;)V

    goto/16 :goto_a

    .line 1981
    :pswitch_1b
    iget-object v2, v10, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzo:Lcom/google/android/gms/internal/firebase-auth-api/zzamh;

    and-int v3, v4, v14

    int-to-long v3, v3

    .line 1983
    invoke-interface {v2, v1, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzamh;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 1984
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zze(Ljava/util/List;)V

    goto/16 :goto_a

    .line 1976
    :pswitch_1c
    iget-object v2, v10, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzo:Lcom/google/android/gms/internal/firebase-auth-api/zzamh;

    and-int v3, v4, v14

    int-to-long v3, v3

    .line 1978
    invoke-interface {v2, v1, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzamh;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 1979
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzf(Ljava/util/List;)V

    goto/16 :goto_a

    .line 1971
    :pswitch_1d
    iget-object v2, v10, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzo:Lcom/google/android/gms/internal/firebase-auth-api/zzamh;

    and-int v3, v4, v14

    int-to-long v3, v3

    .line 1973
    invoke-interface {v2, v1, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzamh;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 1974
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzh(Ljava/util/List;)V

    goto/16 :goto_a

    .line 1966
    :pswitch_1e
    iget-object v2, v10, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzo:Lcom/google/android/gms/internal/firebase-auth-api/zzamh;

    and-int v3, v4, v14

    int-to-long v3, v3

    .line 1968
    invoke-interface {v2, v1, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzamh;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 1969
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzq(Ljava/util/List;)V

    goto/16 :goto_a

    .line 1961
    :pswitch_1f
    iget-object v2, v10, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzo:Lcom/google/android/gms/internal/firebase-auth-api/zzamh;

    and-int v3, v4, v14

    int-to-long v3, v3

    .line 1963
    invoke-interface {v2, v1, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzamh;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 1964
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzi(Ljava/util/List;)V

    goto/16 :goto_a

    .line 1956
    :pswitch_20
    iget-object v2, v10, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzo:Lcom/google/android/gms/internal/firebase-auth-api/zzamh;

    and-int v3, v4, v14

    int-to-long v3, v3

    .line 1958
    invoke-interface {v2, v1, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzamh;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 1959
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzg(Ljava/util/List;)V

    goto/16 :goto_a

    .line 1951
    :pswitch_21
    iget-object v2, v10, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzo:Lcom/google/android/gms/internal/firebase-auth-api/zzamh;

    and-int v3, v4, v14

    int-to-long v3, v3

    .line 1953
    invoke-interface {v2, v1, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzamh;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 1954
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzc(Ljava/util/List;)V

    goto/16 :goto_a

    .line 1946
    :pswitch_22
    iget-object v2, v10, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzo:Lcom/google/android/gms/internal/firebase-auth-api/zzamh;

    and-int v3, v4, v14

    int-to-long v3, v3

    .line 1948
    invoke-interface {v2, v1, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzamh;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 1949
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzm(Ljava/util/List;)V

    goto/16 :goto_a

    .line 1941
    :pswitch_23
    iget-object v2, v10, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzo:Lcom/google/android/gms/internal/firebase-auth-api/zzamh;

    and-int v3, v4, v14

    int-to-long v3, v3

    .line 1943
    invoke-interface {v2, v1, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzamh;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 1944
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzl(Ljava/util/List;)V

    goto/16 :goto_a

    .line 1936
    :pswitch_24
    iget-object v2, v10, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzo:Lcom/google/android/gms/internal/firebase-auth-api/zzamh;

    and-int v3, v4, v14

    int-to-long v3, v3

    .line 1938
    invoke-interface {v2, v1, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzamh;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 1939
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzk(Ljava/util/List;)V

    goto/16 :goto_a

    .line 1931
    :pswitch_25
    iget-object v2, v10, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzo:Lcom/google/android/gms/internal/firebase-auth-api/zzamh;

    and-int v3, v4, v14

    int-to-long v3, v3

    .line 1933
    invoke-interface {v2, v1, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzamh;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 1934
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzj(Ljava/util/List;)V

    goto/16 :goto_a

    .line 1923
    :pswitch_26
    iget-object v13, v10, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzo:Lcom/google/android/gms/internal/firebase-auth-api/zzamh;

    and-int/2addr v4, v14

    int-to-long v14, v4

    .line 1925
    invoke-interface {v13, v1, v14, v15}, Lcom/google/android/gms/internal/firebase-auth-api/zzamh;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1926
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzd(Ljava/util/List;)V

    move-object v13, v4

    .line 1928
    invoke-direct {v10, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzd(I)Lcom/google/android/gms/internal/firebase-auth-api/zzaly;

    move-result-object v4
    :try_end_9
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzamg; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    move-object v3, v6

    move-object v6, v5

    move-object v5, v3

    move-object v3, v13

    .line 1929
    :try_start_a
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zza(Ljava/lang/Object;ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzaly;Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzaob;)Ljava/lang/Object;

    move-result-object v2
    :try_end_a
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzamg; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-object v5, v6

    :goto_8
    move-object v6, v2

    goto/16 :goto_a

    :catchall_3
    move-exception v0

    move-object/from16 v17, v6

    move-object v6, v5

    move-object/from16 v5, v17

    goto/16 :goto_13

    :catch_0
    move-object/from16 v17, v6

    move-object v6, v5

    move-object/from16 v5, v17

    goto/16 :goto_c

    .line 1918
    :pswitch_27
    :try_start_b
    iget-object v2, v10, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzo:Lcom/google/android/gms/internal/firebase-auth-api/zzamh;

    and-int v3, v4, v14

    int-to-long v3, v3

    .line 1920
    invoke-interface {v2, v1, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzamh;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 1921
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzp(Ljava/util/List;)V

    goto/16 :goto_a

    .line 1913
    :pswitch_28
    iget-object v2, v10, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzo:Lcom/google/android/gms/internal/firebase-auth-api/zzamh;

    and-int v3, v4, v14

    int-to-long v3, v3

    .line 1915
    invoke-interface {v2, v1, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzamh;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 1916
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb(Ljava/util/List;)V

    goto/16 :goto_a

    .line 1904
    :pswitch_29
    invoke-direct {v10, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zze(I)Lcom/google/android/gms/internal/firebase-auth-api/zzanl;

    move-result-object v2

    and-int v3, v4, v14

    int-to-long v3, v3

    .line 1909
    iget-object v13, v10, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzo:Lcom/google/android/gms/internal/firebase-auth-api/zzamh;

    .line 1910
    invoke-interface {v13, v1, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzamh;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 1911
    invoke-virtual {v0, v3, v2, v11}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb(Ljava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzanl;Lcom/google/android/gms/internal/firebase-auth-api/zzalf;)V

    goto/16 :goto_a

    .line 1894
    :pswitch_2a
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzg(I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1895
    iget-object v2, v10, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzo:Lcom/google/android/gms/internal/firebase-auth-api/zzamh;

    and-int v3, v4, v14

    int-to-long v3, v3

    .line 1897
    invoke-interface {v2, v1, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzamh;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 1898
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzo(Ljava/util/List;)V

    goto/16 :goto_a

    .line 1899
    :cond_e
    iget-object v2, v10, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzo:Lcom/google/android/gms/internal/firebase-auth-api/zzamh;

    and-int v3, v4, v14

    int-to-long v3, v3

    .line 1901
    invoke-interface {v2, v1, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzamh;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzn(Ljava/util/List;)V

    goto/16 :goto_a

    .line 1888
    :pswitch_2b
    iget-object v2, v10, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzo:Lcom/google/android/gms/internal/firebase-auth-api/zzamh;

    and-int v3, v4, v14

    int-to-long v3, v3

    .line 1890
    invoke-interface {v2, v1, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzamh;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 1891
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza(Ljava/util/List;)V

    goto/16 :goto_a

    .line 1883
    :pswitch_2c
    iget-object v2, v10, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzo:Lcom/google/android/gms/internal/firebase-auth-api/zzamh;

    and-int v3, v4, v14

    int-to-long v3, v3

    .line 1885
    invoke-interface {v2, v1, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzamh;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 1886
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zze(Ljava/util/List;)V

    goto/16 :goto_a

    .line 1878
    :pswitch_2d
    iget-object v2, v10, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzo:Lcom/google/android/gms/internal/firebase-auth-api/zzamh;

    and-int v3, v4, v14

    int-to-long v3, v3

    .line 1880
    invoke-interface {v2, v1, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzamh;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 1881
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzf(Ljava/util/List;)V

    goto/16 :goto_a

    .line 1873
    :pswitch_2e
    iget-object v2, v10, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzo:Lcom/google/android/gms/internal/firebase-auth-api/zzamh;

    and-int v3, v4, v14

    int-to-long v3, v3

    .line 1875
    invoke-interface {v2, v1, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzamh;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 1876
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzh(Ljava/util/List;)V

    goto/16 :goto_a

    .line 1868
    :pswitch_2f
    iget-object v2, v10, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzo:Lcom/google/android/gms/internal/firebase-auth-api/zzamh;

    and-int v3, v4, v14

    int-to-long v3, v3

    .line 1870
    invoke-interface {v2, v1, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzamh;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 1871
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzq(Ljava/util/List;)V

    goto/16 :goto_a

    .line 1863
    :pswitch_30
    iget-object v2, v10, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzo:Lcom/google/android/gms/internal/firebase-auth-api/zzamh;

    and-int v3, v4, v14

    int-to-long v3, v3

    .line 1865
    invoke-interface {v2, v1, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzamh;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 1866
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzi(Ljava/util/List;)V

    goto/16 :goto_a

    .line 1858
    :pswitch_31
    iget-object v2, v10, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzo:Lcom/google/android/gms/internal/firebase-auth-api/zzamh;

    and-int v3, v4, v14

    int-to-long v3, v3

    .line 1860
    invoke-interface {v2, v1, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzamh;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 1861
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzg(Ljava/util/List;)V

    goto/16 :goto_a

    .line 1853
    :pswitch_32
    iget-object v2, v10, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzo:Lcom/google/android/gms/internal/firebase-auth-api/zzamh;

    and-int v3, v4, v14

    int-to-long v3, v3

    .line 1855
    invoke-interface {v2, v1, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzamh;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 1856
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzc(Ljava/util/List;)V

    goto/16 :goto_a

    .line 1847
    :pswitch_33
    invoke-direct {v10, v1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/zzamv;

    .line 1849
    invoke-direct {v10, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zze(I)Lcom/google/android/gms/internal/firebase-auth-api/zzanl;

    move-result-object v4

    .line 1850
    invoke-virtual {v0, v2, v4, v11}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzanl;Lcom/google/android/gms/internal/firebase-auth-api/zzalf;)V

    .line 1851
    invoke-direct {v10, v1, v3, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_34
    and-int v2, v4, v14

    int-to-long v13, v2

    .line 1844
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzn()J

    move-result-wide v8

    invoke-static {v1, v13, v14, v8, v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zza(Ljava/lang/Object;JJ)V

    .line 1845
    invoke-direct {v10, v1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_a

    :pswitch_35
    and-int/2addr v4, v14

    int-to-long v8, v4

    .line 1839
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzi()I

    move-result v4

    invoke-static {v1, v8, v9, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zza(Ljava/lang/Object;JI)V

    .line 1840
    invoke-direct {v10, v1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_a

    :pswitch_36
    and-int/2addr v4, v14

    int-to-long v8, v4

    .line 1834
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzm()J

    move-result-wide v13

    invoke-static {v1, v8, v9, v13, v14}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zza(Ljava/lang/Object;JJ)V

    .line 1835
    invoke-direct {v10, v1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_a

    :pswitch_37
    and-int/2addr v4, v14

    int-to-long v8, v4

    .line 1829
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzh()I

    move-result v4

    invoke-static {v1, v8, v9, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zza(Ljava/lang/Object;JI)V

    .line 1830
    invoke-direct {v10, v1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_a

    :pswitch_38
    move v8, v2

    .line 1817
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zze()I

    move-result v9

    .line 1818
    invoke-direct {v10, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzd(I)Lcom/google/android/gms/internal/firebase-auth-api/zzaly;

    move-result-object v13

    if-eqz v13, :cond_10

    .line 1819
    invoke-interface {v13, v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzaly;->zza(I)Z

    move-result v13

    if-eqz v13, :cond_f

    goto :goto_9

    .line 1825
    :cond_f
    invoke-static {v1, v8, v9, v6, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zza(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzaob;)Ljava/lang/Object;

    move-result-object v6

    goto/16 :goto_a

    :cond_10
    :goto_9
    and-int/2addr v4, v14

    int-to-long v13, v4

    .line 1822
    invoke-static {v1, v13, v14, v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zza(Ljava/lang/Object;JI)V

    .line 1823
    invoke-direct {v10, v1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_a

    :pswitch_39
    and-int/2addr v4, v14

    int-to-long v8, v4

    .line 1814
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzj()I

    move-result v4

    invoke-static {v1, v8, v9, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zza(Ljava/lang/Object;JI)V

    .line 1815
    invoke-direct {v10, v1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_a

    :pswitch_3a
    and-int/2addr v4, v14

    int-to-long v8, v4

    .line 1809
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzp()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object v4

    invoke-static {v1, v8, v9, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1810
    invoke-direct {v10, v1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_a

    .line 1801
    :pswitch_3b
    invoke-direct {v10, v1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/firebase-auth-api/zzamv;

    .line 1803
    invoke-direct {v10, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zze(I)Lcom/google/android/gms/internal/firebase-auth-api/zzanl;

    move-result-object v8

    .line 1804
    invoke-virtual {v0, v4, v8, v11}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzanl;Lcom/google/android/gms/internal/firebase-auth-api/zzalf;)V

    .line 1805
    invoke-direct {v10, v1, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_a

    .line 1798
    :pswitch_3c
    invoke-direct {v10, v1, v4, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/firebase-auth-api/zzakw;)V

    .line 1799
    invoke-direct {v10, v1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(Ljava/lang/Object;I)V

    goto :goto_a

    :pswitch_3d
    and-int/2addr v4, v14

    int-to-long v8, v4

    .line 1795
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzs()Z

    move-result v4

    invoke-static {v1, v8, v9, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzc(Ljava/lang/Object;JZ)V

    .line 1796
    invoke-direct {v10, v1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(Ljava/lang/Object;I)V

    goto :goto_a

    :pswitch_3e
    and-int/2addr v4, v14

    int-to-long v8, v4

    .line 1790
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzf()I

    move-result v4

    invoke-static {v1, v8, v9, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zza(Ljava/lang/Object;JI)V

    .line 1791
    invoke-direct {v10, v1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(Ljava/lang/Object;I)V

    goto :goto_a

    :pswitch_3f
    and-int/2addr v4, v14

    int-to-long v8, v4

    .line 1785
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzk()J

    move-result-wide v13

    invoke-static {v1, v8, v9, v13, v14}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zza(Ljava/lang/Object;JJ)V

    .line 1786
    invoke-direct {v10, v1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(Ljava/lang/Object;I)V

    goto :goto_a

    :pswitch_40
    and-int/2addr v4, v14

    int-to-long v8, v4

    .line 1780
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzg()I

    move-result v4

    invoke-static {v1, v8, v9, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zza(Ljava/lang/Object;JI)V

    .line 1781
    invoke-direct {v10, v1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(Ljava/lang/Object;I)V

    goto :goto_a

    :pswitch_41
    and-int/2addr v4, v14

    int-to-long v8, v4

    .line 1775
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzo()J

    move-result-wide v13

    invoke-static {v1, v8, v9, v13, v14}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zza(Ljava/lang/Object;JJ)V

    .line 1776
    invoke-direct {v10, v1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(Ljava/lang/Object;I)V

    goto :goto_a

    :pswitch_42
    and-int/2addr v4, v14

    int-to-long v8, v4

    .line 1770
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzl()J

    move-result-wide v13

    invoke-static {v1, v8, v9, v13, v14}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zza(Ljava/lang/Object;JJ)V

    .line 1771
    invoke-direct {v10, v1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(Ljava/lang/Object;I)V

    goto :goto_a

    :pswitch_43
    and-int/2addr v4, v14

    int-to-long v8, v4

    .line 1765
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zzb()F

    move-result v4

    invoke-static {v1, v8, v9, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zza(Ljava/lang/Object;JF)V

    .line 1766
    invoke-direct {v10, v1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(Ljava/lang/Object;I)V

    goto :goto_a

    :pswitch_44
    and-int/2addr v4, v14

    int-to-long v8, v4

    .line 1760
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakw;->zza()D

    move-result-wide v13

    invoke-static {v1, v8, v9, v13, v14}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zza(Ljava/lang/Object;JD)V

    .line 1761
    invoke-direct {v10, v1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(Ljava/lang/Object;I)V
    :try_end_b
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzamg; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :goto_a
    move-object v1, v10

    :goto_b
    move-object v4, v11

    move-object v0, v12

    goto/16 :goto_0

    :catch_1
    :goto_c
    move-object v3, v1

    move-object v1, v10

    goto :goto_10

    :cond_11
    :goto_d
    const/4 v2, 0x0

    .line 2163
    :try_start_c
    invoke-virtual {v5, v6, v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaob;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzakw;I)Z

    move-result v2
    :try_end_c
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzamg; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    if-nez v2, :cond_13

    .line 2164
    iget v0, v10, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzl:I

    move-object v4, v6

    :goto_e
    iget v2, v10, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzm:I

    if-ge v0, v2, :cond_12

    .line 2165
    iget-object v2, v10, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzk:[I

    aget v3, v2, v0

    move-object/from16 v6, p1

    move-object v2, v1

    move-object v1, v10

    .line 2166
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzaob;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v2

    add-int/lit8 v0, v0, 0x1

    move-object v1, v3

    goto :goto_e

    :cond_12
    move-object v3, v1

    move-object v1, v10

    if-eqz v4, :cond_16

    .line 2169
    invoke-virtual {v5, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzaob;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_12

    :cond_13
    move-object v3, v1

    goto :goto_a

    :catchall_4
    move-exception v0

    move-object v3, v1

    move-object v1, v10

    :goto_f
    move-object v2, v3

    goto :goto_15

    .line 2173
    :goto_10
    :try_start_d
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaob;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakw;)Z

    if-nez v6, :cond_14

    .line 2175
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaob;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    :cond_14
    const/4 v2, 0x0

    .line 2176
    invoke-virtual {v5, v6, v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaob;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzakw;I)Z

    move-result v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    if-nez v2, :cond_17

    .line 2177
    iget v0, v1, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzl:I

    move-object v4, v6

    :goto_11
    iget v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzm:I

    if-ge v0, v2, :cond_15

    .line 2178
    iget-object v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzk:[I

    aget v2, v2, v0

    move-object/from16 v6, p1

    move-object/from16 v17, v3

    move v3, v2

    move-object/from16 v2, v17

    .line 2179
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzaob;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    move-object v3, v2

    goto :goto_11

    :cond_15
    move-object v2, v3

    if-eqz v4, :cond_16

    .line 2182
    invoke-virtual {v5, v2, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzaob;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    :goto_12
    return-void

    :cond_17
    move-object v2, v3

    goto :goto_b

    :catchall_5
    move-exception v0

    goto :goto_f

    :catchall_6
    move-exception v0

    :goto_13
    move-object v2, v1

    :goto_14
    move-object v1, v10

    goto :goto_15

    :catchall_7
    move-exception v0

    move-object/from16 v2, p1

    .line 2185
    :goto_15
    iget v3, v1, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzl:I

    move v7, v3

    move-object v4, v6

    :goto_16
    iget v3, v1, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzm:I

    if-ge v7, v3, :cond_18

    .line 2186
    iget-object v3, v1, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzk:[I

    aget v3, v3, v7

    move-object/from16 v6, p1

    .line 2187
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzaob;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v2

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p0

    goto :goto_16

    :cond_18
    move-object v1, v2

    if-eqz v4, :cond_19

    .line 2190
    invoke-virtual {v5, v1, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzaob;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2191
    :cond_19
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
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

.method public final zza(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzale;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzale;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    .line 2292
    iget-boolean v2, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzh:Z

    if-eqz v2, :cond_0

    .line 2293
    iget-object v2, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzq:Lcom/google/android/gms/internal/firebase-auth-api/zzalh;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzalh;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzalm;

    move-result-object v2

    .line 2295
    iget-object v3, v2, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzann;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzann;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2297
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zzc()Ljava/util/Iterator;

    move-result-object v2

    .line 2298
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    move-object v8, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 2301
    :goto_0
    iget-object v2, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc:[I

    array-length v9, v2

    .line 2302
    sget-object v10, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb:Lsun/misc/Unsafe;

    const/4 v2, 0x0

    const v4, 0xfffff

    const/4 v5, 0x0

    :goto_1
    if-ge v2, v9, :cond_9

    .line 2304
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(I)I

    move-result v13

    .line 2306
    iget-object v14, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc:[I

    aget v15, v14, v2

    const/high16 v16, 0xff00000

    and-int v16, v13, v16

    ushr-int/lit8 v7, v16, 0x14

    const/16 v12, 0x11

    const v17, 0xfffff

    if-gt v7, v12, :cond_3

    add-int/lit8 v12, v2, 0x2

    .line 2313
    aget v12, v14, v12

    and-int v14, v12, v17

    if-eq v14, v4, :cond_2

    move/from16 v11, v17

    const/16 v18, 0x1

    if-ne v14, v11, :cond_1

    const/4 v5, 0x0

    goto :goto_2

    :cond_1
    int-to-long v4, v14

    .line 2319
    invoke-virtual {v10, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    move v5, v4

    :goto_2
    move v4, v14

    goto :goto_3

    :cond_2
    const/16 v18, 0x1

    :goto_3
    ushr-int/lit8 v11, v12, 0x14

    shl-int v11, v18, v11

    move/from16 v19, v11

    move-object v11, v3

    move v3, v4

    move v4, v5

    move/from16 v5, v19

    goto :goto_4

    :cond_3
    const/16 v18, 0x1

    move-object v11, v3

    move v3, v4

    move v4, v5

    const/4 v5, 0x0

    :goto_4
    if-eqz v11, :cond_5

    .line 2321
    iget-object v12, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzq:Lcom/google/android/gms/internal/firebase-auth-api/zzalh;

    invoke-virtual {v12, v11}, Lcom/google/android/gms/internal/firebase-auth-api/zzalh;->zza(Ljava/util/Map$Entry;)I

    move-result v12

    if-gt v12, v15, :cond_5

    .line 2322
    iget-object v12, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzq:Lcom/google/android/gms/internal/firebase-auth-api/zzalh;

    invoke-virtual {v12, v6, v11}, Lcom/google/android/gms/internal/firebase-auth-api/zzalh;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzale;Ljava/util/Map$Entry;)V

    .line 2323
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    goto :goto_4

    :cond_4
    const/4 v11, 0x0

    goto :goto_4

    :cond_5
    const v17, 0xfffff

    and-int v12, v13, v17

    int-to-long v12, v12

    packed-switch v7, :pswitch_data_0

    :cond_6
    :goto_5
    const/4 v14, 0x0

    goto/16 :goto_7

    .line 2619
    :pswitch_0
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2621
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zze(I)Lcom/google/android/gms/internal/firebase-auth-api/zzanl;

    move-result-object v7

    .line 2622
    invoke-virtual {v6, v15, v5, v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzale;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzanl;)V

    goto :goto_5

    .line 2617
    :pswitch_1
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2618
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-virtual {v6, v15, v12, v13}, Lcom/google/android/gms/internal/firebase-auth-api/zzale;->zzd(IJ)V

    goto :goto_5

    .line 2615
    :pswitch_2
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2616
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v6, v15, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzale;->zze(II)V

    goto :goto_5

    .line 2613
    :pswitch_3
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2614
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-virtual {v6, v15, v12, v13}, Lcom/google/android/gms/internal/firebase-auth-api/zzale;->zzc(IJ)V

    goto :goto_5

    .line 2611
    :pswitch_4
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2612
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v6, v15, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzale;->zzd(II)V

    goto :goto_5

    .line 2609
    :pswitch_5
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2610
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v6, v15, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzale;->zza(II)V

    goto :goto_5

    .line 2607
    :pswitch_6
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2608
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v6, v15, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzale;->zzf(II)V

    goto :goto_5

    .line 2605
    :pswitch_7
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2606
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    invoke-virtual {v6, v15, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzale;->zza(ILcom/google/android/gms/internal/firebase-auth-api/zzakb;)V

    goto :goto_5

    .line 2601
    :pswitch_8
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2602
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 2603
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zze(I)Lcom/google/android/gms/internal/firebase-auth-api/zzanl;

    move-result-object v7

    invoke-virtual {v6, v15, v5, v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzale;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzanl;)V

    goto/16 :goto_5

    .line 2599
    :pswitch_9
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2600
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v15, v5, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzale;)V

    goto/16 :goto_5

    .line 2595
    :pswitch_a
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2597
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zze(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 2598
    invoke-virtual {v6, v15, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzale;->zza(IZ)V

    goto/16 :goto_5

    .line 2593
    :pswitch_b
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2594
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v6, v15, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzale;->zzb(II)V

    goto/16 :goto_5

    .line 2591
    :pswitch_c
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2592
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-virtual {v6, v15, v12, v13}, Lcom/google/android/gms/internal/firebase-auth-api/zzale;->zza(IJ)V

    goto/16 :goto_5

    .line 2589
    :pswitch_d
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2590
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v6, v15, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzale;->zzc(II)V

    goto/16 :goto_5

    .line 2587
    :pswitch_e
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2588
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-virtual {v6, v15, v12, v13}, Lcom/google/android/gms/internal/firebase-auth-api/zzale;->zze(IJ)V

    goto/16 :goto_5

    .line 2585
    :pswitch_f
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2586
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-virtual {v6, v15, v12, v13}, Lcom/google/android/gms/internal/firebase-auth-api/zzale;->zzb(IJ)V

    goto/16 :goto_5

    .line 2581
    :pswitch_10
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2583
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zze(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 2584
    invoke-virtual {v6, v15, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzale;->zza(IF)V

    goto/16 :goto_5

    .line 2577
    :pswitch_11
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2579
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zze(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    .line 2580
    invoke-virtual {v6, v15, v12, v13}, Lcom/google/android/gms/internal/firebase-auth-api/zzale;->zza(ID)V

    goto/16 :goto_5

    .line 2570
    :pswitch_12
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 2572
    iget-object v7, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzr:Lcom/google/android/gms/internal/firebase-auth-api/zzams;

    .line 2573
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzf(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v7, v12}, Lcom/google/android/gms/internal/firebase-auth-api/zzams;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzamq;

    move-result-object v7

    iget-object v12, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzr:Lcom/google/android/gms/internal/firebase-auth-api/zzams;

    .line 2574
    invoke-interface {v12, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzams;->zzd(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    .line 2575
    invoke-virtual {v6, v15, v7, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzale;->zza(ILcom/google/android/gms/internal/firebase-auth-api/zzamq;Ljava/util/Map;)V

    goto/16 :goto_5

    .line 2564
    :pswitch_13
    iget-object v5, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc:[I

    aget v5, v5, v2

    .line 2566
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 2567
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zze(I)Lcom/google/android/gms/internal/firebase-auth-api/zzanl;

    move-result-object v12

    .line 2568
    invoke-static {v5, v7, v6, v12}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zza(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzale;Lcom/google/android/gms/internal/firebase-auth-api/zzanl;)V

    goto/16 :goto_5

    .line 2558
    :pswitch_14
    iget-object v5, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc:[I

    aget v5, v5, v2

    .line 2559
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    move/from16 v14, v18

    .line 2560
    invoke-static {v5, v7, v6, v14}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzale;Z)V

    goto/16 :goto_5

    :pswitch_15
    move/from16 v14, v18

    .line 2552
    iget-object v5, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc:[I

    aget v5, v5, v2

    .line 2553
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 2554
    invoke-static {v5, v7, v6, v14}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzale;Z)V

    goto/16 :goto_5

    :pswitch_16
    move/from16 v14, v18

    .line 2546
    iget-object v5, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc:[I

    aget v5, v5, v2

    .line 2547
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 2548
    invoke-static {v5, v7, v6, v14}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzale;Z)V

    goto/16 :goto_5

    :pswitch_17
    move/from16 v14, v18

    .line 2540
    iget-object v5, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc:[I

    aget v5, v5, v2

    .line 2541
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 2542
    invoke-static {v5, v7, v6, v14}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzale;Z)V

    goto/16 :goto_5

    :pswitch_18
    move/from16 v14, v18

    .line 2534
    iget-object v5, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc:[I

    aget v5, v5, v2

    .line 2535
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 2536
    invoke-static {v5, v7, v6, v14}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzale;Z)V

    goto/16 :goto_5

    :pswitch_19
    move/from16 v14, v18

    .line 2528
    iget-object v5, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc:[I

    aget v5, v5, v2

    .line 2529
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 2530
    invoke-static {v5, v7, v6, v14}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzale;Z)V

    goto/16 :goto_5

    :pswitch_1a
    move/from16 v14, v18

    .line 2522
    iget-object v5, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc:[I

    aget v5, v5, v2

    .line 2523
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 2524
    invoke-static {v5, v7, v6, v14}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zza(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzale;Z)V

    goto/16 :goto_5

    :pswitch_1b
    move/from16 v14, v18

    .line 2516
    iget-object v5, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc:[I

    aget v5, v5, v2

    .line 2517
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 2518
    invoke-static {v5, v7, v6, v14}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzale;Z)V

    goto/16 :goto_5

    :pswitch_1c
    move/from16 v14, v18

    .line 2510
    iget-object v5, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc:[I

    aget v5, v5, v2

    .line 2511
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 2512
    invoke-static {v5, v7, v6, v14}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zze(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzale;Z)V

    goto/16 :goto_5

    :pswitch_1d
    move/from16 v14, v18

    .line 2504
    iget-object v5, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc:[I

    aget v5, v5, v2

    .line 2505
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 2506
    invoke-static {v5, v7, v6, v14}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzale;Z)V

    goto/16 :goto_5

    :pswitch_1e
    move/from16 v14, v18

    .line 2498
    iget-object v5, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc:[I

    aget v5, v5, v2

    .line 2499
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 2500
    invoke-static {v5, v7, v6, v14}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzale;Z)V

    goto/16 :goto_5

    :pswitch_1f
    move/from16 v14, v18

    .line 2492
    iget-object v5, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc:[I

    aget v5, v5, v2

    .line 2493
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 2494
    invoke-static {v5, v7, v6, v14}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzale;Z)V

    goto/16 :goto_5

    :pswitch_20
    move/from16 v14, v18

    .line 2486
    iget-object v5, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc:[I

    aget v5, v5, v2

    .line 2487
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 2488
    invoke-static {v5, v7, v6, v14}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzale;Z)V

    goto/16 :goto_5

    :pswitch_21
    move/from16 v14, v18

    .line 2480
    iget-object v5, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc:[I

    aget v5, v5, v2

    .line 2481
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 2482
    invoke-static {v5, v7, v6, v14}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzale;Z)V

    goto/16 :goto_5

    .line 2474
    :pswitch_22
    iget-object v5, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc:[I

    aget v5, v5, v2

    .line 2475
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v14, 0x0

    .line 2476
    invoke-static {v5, v7, v6, v14}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzale;Z)V

    goto/16 :goto_7

    :pswitch_23
    const/4 v14, 0x0

    .line 2468
    iget-object v5, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc:[I

    aget v5, v5, v2

    .line 2469
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 2470
    invoke-static {v5, v7, v6, v14}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzale;Z)V

    goto/16 :goto_7

    :pswitch_24
    const/4 v14, 0x0

    .line 2462
    iget-object v5, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc:[I

    aget v5, v5, v2

    .line 2463
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 2464
    invoke-static {v5, v7, v6, v14}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzale;Z)V

    goto/16 :goto_7

    :pswitch_25
    const/4 v14, 0x0

    .line 2456
    iget-object v5, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc:[I

    aget v5, v5, v2

    .line 2457
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 2458
    invoke-static {v5, v7, v6, v14}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzale;Z)V

    goto/16 :goto_7

    :pswitch_26
    const/4 v14, 0x0

    .line 2450
    iget-object v5, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc:[I

    aget v5, v5, v2

    .line 2451
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 2452
    invoke-static {v5, v7, v6, v14}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzale;Z)V

    goto/16 :goto_7

    :pswitch_27
    const/4 v14, 0x0

    .line 2444
    iget-object v5, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc:[I

    aget v5, v5, v2

    .line 2445
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 2446
    invoke-static {v5, v7, v6, v14}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzale;Z)V

    goto/16 :goto_7

    .line 2438
    :pswitch_28
    iget-object v5, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc:[I

    aget v5, v5, v2

    .line 2439
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 2440
    invoke-static {v5, v7, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zza(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzale;)V

    goto/16 :goto_5

    .line 2430
    :pswitch_29
    iget-object v5, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc:[I

    aget v5, v5, v2

    .line 2432
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 2433
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zze(I)Lcom/google/android/gms/internal/firebase-auth-api/zzanl;

    move-result-object v12

    .line 2434
    invoke-static {v5, v7, v6, v12}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzale;Lcom/google/android/gms/internal/firebase-auth-api/zzanl;)V

    goto/16 :goto_5

    .line 2424
    :pswitch_2a
    iget-object v5, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc:[I

    aget v5, v5, v2

    .line 2425
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 2426
    invoke-static {v5, v7, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzale;)V

    goto/16 :goto_5

    .line 2418
    :pswitch_2b
    iget-object v5, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc:[I

    aget v5, v5, v2

    .line 2419
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v14, 0x0

    .line 2420
    invoke-static {v5, v7, v6, v14}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zza(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzale;Z)V

    goto/16 :goto_7

    :pswitch_2c
    const/4 v14, 0x0

    .line 2412
    iget-object v5, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc:[I

    aget v5, v5, v2

    .line 2413
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 2414
    invoke-static {v5, v7, v6, v14}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzale;Z)V

    goto/16 :goto_7

    :pswitch_2d
    const/4 v14, 0x0

    .line 2406
    iget-object v5, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc:[I

    aget v5, v5, v2

    .line 2407
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 2408
    invoke-static {v5, v7, v6, v14}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zze(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzale;Z)V

    goto/16 :goto_7

    :pswitch_2e
    const/4 v14, 0x0

    .line 2400
    iget-object v5, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc:[I

    aget v5, v5, v2

    .line 2401
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 2402
    invoke-static {v5, v7, v6, v14}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzale;Z)V

    goto/16 :goto_7

    :pswitch_2f
    const/4 v14, 0x0

    .line 2394
    iget-object v5, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc:[I

    aget v5, v5, v2

    .line 2395
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 2396
    invoke-static {v5, v7, v6, v14}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzale;Z)V

    goto/16 :goto_7

    :pswitch_30
    const/4 v14, 0x0

    .line 2388
    iget-object v5, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc:[I

    aget v5, v5, v2

    .line 2389
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 2390
    invoke-static {v5, v7, v6, v14}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzale;Z)V

    goto/16 :goto_7

    :pswitch_31
    const/4 v14, 0x0

    .line 2382
    iget-object v5, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc:[I

    aget v5, v5, v2

    .line 2383
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 2384
    invoke-static {v5, v7, v6, v14}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzale;Z)V

    goto/16 :goto_7

    :pswitch_32
    const/4 v14, 0x0

    .line 2376
    iget-object v5, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc:[I

    aget v5, v5, v2

    .line 2377
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 2378
    invoke-static {v5, v7, v6, v14}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzale;Z)V

    goto/16 :goto_7

    :pswitch_33
    const/4 v14, 0x0

    .line 2370
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2372
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zze(I)Lcom/google/android/gms/internal/firebase-auth-api/zzanl;

    move-result-object v7

    .line 2373
    invoke-virtual {v6, v15, v5, v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzale;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzanl;)V

    goto/16 :goto_7

    :pswitch_34
    const/4 v14, 0x0

    .line 2368
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2369
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-virtual {v6, v15, v12, v13}, Lcom/google/android/gms/internal/firebase-auth-api/zzale;->zzd(IJ)V

    goto/16 :goto_6

    :pswitch_35
    const/4 v14, 0x0

    .line 2366
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2367
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-virtual {v6, v15, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzale;->zze(II)V

    goto/16 :goto_6

    :pswitch_36
    const/4 v14, 0x0

    .line 2364
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2365
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-virtual {v6, v15, v12, v13}, Lcom/google/android/gms/internal/firebase-auth-api/zzale;->zzc(IJ)V

    goto/16 :goto_6

    :pswitch_37
    const/4 v14, 0x0

    .line 2362
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2363
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-virtual {v6, v15, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzale;->zzd(II)V

    goto/16 :goto_6

    :pswitch_38
    const/4 v14, 0x0

    .line 2360
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2361
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-virtual {v6, v15, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzale;->zza(II)V

    goto/16 :goto_6

    :pswitch_39
    const/4 v14, 0x0

    .line 2358
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2359
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-virtual {v6, v15, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzale;->zzf(II)V

    goto/16 :goto_6

    :pswitch_3a
    const/4 v14, 0x0

    .line 2356
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2357
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    invoke-virtual {v6, v15, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzale;->zza(ILcom/google/android/gms/internal/firebase-auth-api/zzakb;)V

    goto/16 :goto_6

    :pswitch_3b
    const/4 v14, 0x0

    .line 2352
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2353
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 2354
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zze(I)Lcom/google/android/gms/internal/firebase-auth-api/zzanl;

    move-result-object v7

    invoke-virtual {v6, v15, v5, v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzale;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzanl;)V

    goto/16 :goto_7

    :pswitch_3c
    const/4 v14, 0x0

    .line 2350
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2351
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v15, v0, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzale;)V

    goto :goto_6

    :pswitch_3d
    const/4 v14, 0x0

    .line 2346
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2348
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzh(Ljava/lang/Object;J)Z

    move-result v0

    .line 2349
    invoke-virtual {v6, v15, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzale;->zza(IZ)V

    goto :goto_6

    :pswitch_3e
    const/4 v14, 0x0

    .line 2344
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2345
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-virtual {v6, v15, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzale;->zzb(II)V

    goto :goto_6

    :pswitch_3f
    const/4 v14, 0x0

    .line 2342
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2343
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-virtual {v6, v15, v12, v13}, Lcom/google/android/gms/internal/firebase-auth-api/zzale;->zza(IJ)V

    goto :goto_6

    :pswitch_40
    const/4 v14, 0x0

    .line 2340
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2341
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-virtual {v6, v15, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzale;->zzc(II)V

    goto :goto_6

    :pswitch_41
    const/4 v14, 0x0

    .line 2338
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2339
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-virtual {v6, v15, v12, v13}, Lcom/google/android/gms/internal/firebase-auth-api/zzale;->zze(IJ)V

    goto :goto_6

    :pswitch_42
    const/4 v14, 0x0

    .line 2336
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2337
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-virtual {v6, v15, v12, v13}, Lcom/google/android/gms/internal/firebase-auth-api/zzale;->zzb(IJ)V

    goto :goto_6

    :pswitch_43
    const/4 v14, 0x0

    .line 2332
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2334
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzb(Ljava/lang/Object;J)F

    move-result v0

    .line 2335
    invoke-virtual {v6, v15, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzale;->zza(IF)V

    :cond_7
    :goto_6
    move-object/from16 v0, p0

    goto :goto_7

    :pswitch_44
    const/4 v14, 0x0

    .line 2328
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2330
    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zza(Ljava/lang/Object;J)D

    move-result-wide v12

    .line 2331
    invoke-virtual {v6, v15, v12, v13}, Lcom/google/android/gms/internal/firebase-auth-api/zzale;->zza(ID)V

    :cond_8
    :goto_7
    add-int/lit8 v2, v2, 0x3

    move v5, v4

    move v4, v3

    move-object v3, v11

    goto/16 :goto_1

    :cond_9
    :goto_8
    if-eqz v3, :cond_b

    .line 2625
    iget-object v2, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzq:Lcom/google/android/gms/internal/firebase-auth-api/zzalh;

    invoke-virtual {v2, v6, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzalh;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzale;Ljava/util/Map$Entry;)V

    .line 2626
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    move-object v3, v2

    goto :goto_8

    :cond_a
    const/4 v3, 0x0

    goto :goto_8

    .line 2627
    :cond_b
    iget-object v2, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzp:Lcom/google/android/gms/internal/firebase-auth-api/zzaob;

    .line 2628
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaob;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzaob;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzale;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
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

.method public final zza(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 1634
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzf(Ljava/lang/Object;)V

    .line 1635
    invoke-static {p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzalw;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1636
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1638
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v2, v1

    int-to-long v2, v2

    .line 1643
    iget-object v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc:[I

    aget v4, v4, v0

    const/high16 v5, 0xff00000

    and-int/2addr v1, v5

    ushr-int/lit8 v1, v1, 0x14

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 1712
    :pswitch_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 1709
    :pswitch_1
    invoke-direct {p0, p2, v4, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1710
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zze(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1711
    invoke-direct {p0, p1, v4, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 1707
    :pswitch_2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 1704
    :pswitch_3
    invoke-direct {p0, p2, v4, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1705
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zze(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1706
    invoke-direct {p0, p1, v4, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 1702
    :pswitch_4
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzr:Lcom/google/android/gms/internal/firebase-auth-api/zzams;

    invoke-static {v1, p1, p2, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzams;Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    .line 1700
    :pswitch_5
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzo:Lcom/google/android/gms/internal/firebase-auth-api/zzamh;

    invoke-interface {v1, p1, p2, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamh;->zza(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    .line 1698
    :pswitch_6
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 1695
    :pswitch_7
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1696
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzd(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zza(Ljava/lang/Object;JJ)V

    .line 1697
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 1692
    :pswitch_8
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1693
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zza(Ljava/lang/Object;JI)V

    .line 1694
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 1689
    :pswitch_9
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1690
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzd(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zza(Ljava/lang/Object;JJ)V

    .line 1691
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 1686
    :pswitch_a
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1687
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zza(Ljava/lang/Object;JI)V

    .line 1688
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 1683
    :pswitch_b
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1684
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zza(Ljava/lang/Object;JI)V

    .line 1685
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 1680
    :pswitch_c
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1681
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zza(Ljava/lang/Object;JI)V

    .line 1682
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 1677
    :pswitch_d
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1678
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zze(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1679
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 1675
    :pswitch_e
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 1672
    :pswitch_f
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1673
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zze(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1674
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 1669
    :pswitch_10
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1670
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzh(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzc(Ljava/lang/Object;JZ)V

    .line 1671
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 1666
    :pswitch_11
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1667
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zza(Ljava/lang/Object;JI)V

    .line 1668
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(Ljava/lang/Object;I)V

    goto :goto_1

    .line 1663
    :pswitch_12
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1664
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzd(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zza(Ljava/lang/Object;JJ)V

    .line 1665
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(Ljava/lang/Object;I)V

    goto :goto_1

    .line 1660
    :pswitch_13
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1661
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zza(Ljava/lang/Object;JI)V

    .line 1662
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(Ljava/lang/Object;I)V

    goto :goto_1

    .line 1657
    :pswitch_14
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1658
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzd(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zza(Ljava/lang/Object;JJ)V

    .line 1659
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(Ljava/lang/Object;I)V

    goto :goto_1

    .line 1654
    :pswitch_15
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1655
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzd(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zza(Ljava/lang/Object;JJ)V

    .line 1656
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(Ljava/lang/Object;I)V

    goto :goto_1

    .line 1651
    :pswitch_16
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1652
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzb(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zza(Ljava/lang/Object;JF)V

    .line 1653
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(Ljava/lang/Object;I)V

    goto :goto_1

    .line 1648
    :pswitch_17
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1649
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zza(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zza(Ljava/lang/Object;JD)V

    .line 1650
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb(Ljava/lang/Object;I)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    .line 1714
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzp:Lcom/google/android/gms/internal/firebase-auth-api/zzaob;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaob;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1715
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzh:Z

    if-eqz v0, :cond_2

    .line 1716
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzq:Lcom/google/android/gms/internal/firebase-auth-api/zzalh;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzalh;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
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
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zza(Ljava/lang/Object;[BIILcom/google/android/gms/internal/firebase-auth-api/zzaka;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaka;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    .line 2192
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/firebase-auth-api/zzaka;)I

    return-void
.end method

.method public final zzb(Ljava/lang/Object;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 498
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc:[I

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    const v4, 0xfffff

    if-ge v2, v0, :cond_3

    .line 500
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(I)I

    move-result v5

    const/high16 v6, 0xff00000

    and-int/2addr v6, v5

    ushr-int/lit8 v6, v6, 0x14

    const/16 v7, 0x32

    if-le v6, v7, :cond_0

    const/16 v7, 0x45

    if-lt v6, v7, :cond_2

    :cond_0
    and-int/2addr v4, v5

    int-to-long v4, v4

    const/16 v7, 0x25

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    mul-int/lit8 v3, v3, 0x35

    .line 557
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zze(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_2

    :pswitch_1
    mul-int/lit8 v3, v3, 0x35

    .line 555
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zze(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_2

    .line 550
    :pswitch_2
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zze(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 552
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_1

    :pswitch_3
    mul-int/lit8 v3, v3, 0x35

    .line 547
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzd(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzalw;->zza(J)I

    move-result v4

    goto/16 :goto_2

    :pswitch_4
    mul-int/lit8 v3, v3, 0x35

    .line 545
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzc(Ljava/lang/Object;J)I

    move-result v4

    goto/16 :goto_2

    :pswitch_5
    mul-int/lit8 v3, v3, 0x35

    .line 543
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzd(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzalw;->zza(J)I

    move-result v4

    goto/16 :goto_2

    :pswitch_6
    mul-int/lit8 v3, v3, 0x35

    .line 541
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzc(Ljava/lang/Object;J)I

    move-result v4

    goto/16 :goto_2

    :pswitch_7
    mul-int/lit8 v3, v3, 0x35

    .line 539
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzc(Ljava/lang/Object;J)I

    move-result v4

    goto/16 :goto_2

    :pswitch_8
    mul-int/lit8 v3, v3, 0x35

    .line 537
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzc(Ljava/lang/Object;J)I

    move-result v4

    goto/16 :goto_2

    :pswitch_9
    mul-int/lit8 v3, v3, 0x35

    .line 535
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zze(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_2

    .line 530
    :pswitch_a
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zze(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 532
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :cond_1
    :goto_1
    mul-int/lit8 v3, v3, 0x35

    add-int/2addr v3, v7

    goto :goto_3

    :pswitch_b
    mul-int/lit8 v3, v3, 0x35

    .line 527
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zze(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto :goto_2

    :pswitch_c
    mul-int/lit8 v3, v3, 0x35

    .line 525
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzh(Ljava/lang/Object;J)Z

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzalw;->zza(Z)I

    move-result v4

    goto :goto_2

    :pswitch_d
    mul-int/lit8 v3, v3, 0x35

    .line 523
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzc(Ljava/lang/Object;J)I

    move-result v4

    goto :goto_2

    :pswitch_e
    mul-int/lit8 v3, v3, 0x35

    .line 521
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzd(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzalw;->zza(J)I

    move-result v4

    goto :goto_2

    :pswitch_f
    mul-int/lit8 v3, v3, 0x35

    .line 519
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzc(Ljava/lang/Object;J)I

    move-result v4

    goto :goto_2

    :pswitch_10
    mul-int/lit8 v3, v3, 0x35

    .line 517
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzd(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzalw;->zza(J)I

    move-result v4

    goto :goto_2

    :pswitch_11
    mul-int/lit8 v3, v3, 0x35

    .line 515
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzd(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzalw;->zza(J)I

    move-result v4

    goto :goto_2

    :pswitch_12
    mul-int/lit8 v3, v3, 0x35

    .line 513
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzb(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto :goto_2

    :pswitch_13
    mul-int/lit8 v3, v3, 0x35

    .line 510
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zza(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    .line 511
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzalw;->zza(J)I

    move-result v4

    :goto_2
    add-int/2addr v3, v4

    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    .line 559
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzm:I

    :goto_4
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzk:[I

    array-length v5, v2

    if-ge v0, v5, :cond_5

    .line 560
    aget v2, v2, v0

    .line 561
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;II)Z

    move-result v5

    if-nez v5, :cond_4

    mul-int/lit8 v3, v3, 0x35

    .line 563
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(I)I

    move-result v2

    and-int/2addr v2, v4

    int-to-long v5, v2

    .line 565
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zze(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v3, v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    mul-int/lit8 v3, v3, 0x35

    .line 567
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzp:Lcom/google/android/gms/internal/firebase-auth-api/zzaob;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaob;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v3, v0

    .line 568
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzh:Z

    if-eqz v0, :cond_6

    mul-int/lit8 v3, v3, 0x35

    .line 569
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzq:Lcom/google/android/gms/internal/firebase-auth-api/zzalh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzalh;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzalm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->hashCode()I

    move-result p1

    add-int/2addr v3, p1

    :cond_6
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
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
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzb(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 2631
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc:[I

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const v3, 0xfffff

    const/4 v4, 0x1

    if-ge v2, v0, :cond_4

    .line 2633
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(I)I

    move-result v5

    const/high16 v6, 0xff00000

    and-int/2addr v6, v5

    ushr-int/lit8 v6, v6, 0x14

    const/16 v7, 0x32

    if-le v6, v7, :cond_0

    const/16 v7, 0x45

    if-lt v6, v7, :cond_3

    :cond_0
    and-int/2addr v3, v5

    int-to-long v7, v3

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_2

    .line 2708
    :pswitch_0
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzd(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2709
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zze(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v7, v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zze(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 2710
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_1

    .line 2706
    :pswitch_1
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zze(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v7, v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zze(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 2707
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    goto/16 :goto_2

    .line 2703
    :pswitch_2
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zze(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v7, v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zze(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 2704
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    goto/16 :goto_2

    .line 2698
    :pswitch_3
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2699
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zze(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v7, v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zze(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 2700
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_1

    .line 2695
    :pswitch_4
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2696
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzd(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {p2, v7, v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzd(Ljava/lang/Object;J)J

    move-result-wide v7

    cmp-long v3, v5, v7

    if-eqz v3, :cond_2

    goto/16 :goto_1

    .line 2692
    :pswitch_5
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2693
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzc(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v7, v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzc(Ljava/lang/Object;J)I

    move-result v5

    if-eq v3, v5, :cond_2

    goto/16 :goto_1

    .line 2689
    :pswitch_6
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2690
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzd(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {p2, v7, v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzd(Ljava/lang/Object;J)J

    move-result-wide v7

    cmp-long v3, v5, v7

    if-eqz v3, :cond_2

    goto/16 :goto_1

    .line 2686
    :pswitch_7
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2687
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzc(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v7, v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzc(Ljava/lang/Object;J)I

    move-result v5

    if-eq v3, v5, :cond_2

    goto/16 :goto_1

    .line 2683
    :pswitch_8
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2684
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzc(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v7, v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzc(Ljava/lang/Object;J)I

    move-result v5

    if-eq v3, v5, :cond_2

    goto/16 :goto_1

    .line 2680
    :pswitch_9
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2681
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzc(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v7, v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzc(Ljava/lang/Object;J)I

    move-result v5

    if-eq v3, v5, :cond_2

    goto/16 :goto_1

    .line 2676
    :pswitch_a
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2677
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zze(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v7, v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zze(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 2678
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_1

    .line 2672
    :pswitch_b
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2673
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zze(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v7, v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zze(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 2674
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_1

    .line 2668
    :pswitch_c
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2669
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zze(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v7, v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zze(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 2670
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_1

    .line 2665
    :pswitch_d
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2666
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzh(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {p2, v7, v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzh(Ljava/lang/Object;J)Z

    move-result v5

    if-eq v3, v5, :cond_2

    goto/16 :goto_1

    .line 2662
    :pswitch_e
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2663
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzc(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v7, v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzc(Ljava/lang/Object;J)I

    move-result v5

    if-eq v3, v5, :cond_2

    goto/16 :goto_1

    .line 2659
    :pswitch_f
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2660
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzd(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {p2, v7, v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzd(Ljava/lang/Object;J)J

    move-result-wide v7

    cmp-long v3, v5, v7

    if-eqz v3, :cond_2

    goto :goto_1

    .line 2656
    :pswitch_10
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2657
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzc(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v7, v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzc(Ljava/lang/Object;J)I

    move-result v5

    if-eq v3, v5, :cond_2

    goto :goto_1

    .line 2653
    :pswitch_11
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2654
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzd(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {p2, v7, v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzd(Ljava/lang/Object;J)J

    move-result-wide v7

    cmp-long v3, v5, v7

    if-eqz v3, :cond_2

    goto :goto_1

    .line 2650
    :pswitch_12
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2651
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzd(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {p2, v7, v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzd(Ljava/lang/Object;J)J

    move-result-wide v7

    cmp-long v3, v5, v7

    if-eqz v3, :cond_2

    goto :goto_1

    .line 2646
    :pswitch_13
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2647
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzb(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    .line 2648
    invoke-static {p2, v7, v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zzb(Ljava/lang/Object;J)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    if-eq v3, v5, :cond_2

    goto :goto_1

    .line 2642
    :pswitch_14
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2643
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zza(Ljava/lang/Object;J)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    .line 2644
    invoke-static {p2, v7, v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zza(Ljava/lang/Object;J)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v7

    cmp-long v3, v5, v7

    if-eqz v3, :cond_2

    :cond_1
    :goto_1
    move v4, v1

    :cond_2
    :goto_2
    if-nez v4, :cond_3

    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    .line 2716
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzm:I

    :goto_3
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzk:[I

    array-length v5, v2

    if-ge v0, v5, :cond_7

    .line 2717
    aget v2, v2, v0

    .line 2718
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzd(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v5

    if-nez v5, :cond_5

    return v1

    .line 2720
    :cond_5
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;II)Z

    move-result v5

    if-nez v5, :cond_6

    .line 2721
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(I)I

    move-result v2

    and-int/2addr v2, v3

    int-to-long v5, v2

    .line 2725
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zze(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zze(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 2726
    invoke-static {v2, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzano;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2729
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzp:Lcom/google/android/gms/internal/firebase-auth-api/zzaob;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaob;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2730
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzp:Lcom/google/android/gms/internal/firebase-auth-api/zzaob;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaob;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2731
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    return v1

    .line 2733
    :cond_8
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzh:Z

    if-eqz v0, :cond_9

    .line 2734
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzq:Lcom/google/android/gms/internal/firebase-auth-api/zzalh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzalh;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzalm;

    move-result-object p1

    .line 2735
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzq:Lcom/google/android/gms/internal/firebase-auth-api/zzalh;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzalh;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzalm;

    move-result-object p2

    .line 2736
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_9
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
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
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final zzd(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1600
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzg(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1602
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1603
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    const v2, 0x7fffffff

    .line 1605
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaju;->zza(I)V

    .line 1607
    iput v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;->zza:I

    .line 1608
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;->zzt()V

    .line 1609
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc:[I

    array-length v0, v0

    :goto_0
    if-ge v1, v0, :cond_5

    .line 1611
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    int-to-long v3, v3

    const/high16 v5, 0xff00000

    and-int/2addr v2, v5

    ushr-int/lit8 v2, v2, 0x14

    const/16 v5, 0x9

    if-eq v2, v5, :cond_3

    const/16 v5, 0x3c

    if-eq v2, v5, :cond_2

    const/16 v5, 0x44

    if-eq v2, v5, :cond_2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 1626
    :pswitch_0
    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v2, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 1628
    iget-object v6, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzr:Lcom/google/android/gms/internal/firebase-auth-api/zzams;

    invoke-interface {v6, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzams;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, p1, v3, v4, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    .line 1624
    :pswitch_1
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzo:Lcom/google/android/gms/internal/firebase-auth-api/zzamh;

    invoke-interface {v2, p1, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzamh;->zzb(Ljava/lang/Object;J)V

    goto :goto_1

    .line 1621
    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc:[I

    aget v2, v2, v1

    .line 1622
    invoke-direct {p0, p1, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1623
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zze(I)Lcom/google/android/gms/internal/firebase-auth-api/zzanl;

    move-result-object v2

    sget-object v5, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzanl;->zzd(Ljava/lang/Object;)V

    goto :goto_1

    .line 1618
    :cond_3
    :pswitch_2
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1619
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zze(I)Lcom/google/android/gms/internal/firebase-auth-api/zzanl;

    move-result-object v2

    sget-object v5, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzanl;->zzd(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    .line 1630
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzp:Lcom/google/android/gms/internal/firebase-auth-api/zzaob;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaob;->zzf(Ljava/lang/Object;)V

    .line 1631
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzh:Z

    if-eqz v0, :cond_6

    .line 1632
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzq:Lcom/google/android/gms/internal/firebase-auth-api/zzalh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzalh;->zzc(Ljava/lang/Object;)V

    :cond_6
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zze(Ljava/lang/Object;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const v0, 0xfffff

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    move v4, v2

    .line 2780
    :goto_0
    iget v5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzl:I

    const/4 v6, 0x1

    if-ge v2, v5, :cond_c

    .line 2781
    iget-object v5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzk:[I

    aget v9, v5, v2

    .line 2782
    invoke-direct {p0, v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(I)I

    move-result v5

    .line 2783
    iget-object v7, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc:[I

    add-int/lit8 v8, v9, 0x2

    aget v7, v7, v8

    and-int v8, v7, v0

    ushr-int/lit8 v7, v7, 0x14

    shl-int v12, v6, v7

    if-eq v8, v3, :cond_1

    if-eq v8, v0, :cond_0

    .line 2789
    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzb:Lsun/misc/Unsafe;

    int-to-long v6, v8

    invoke-virtual {v3, p1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    :cond_0
    move v11, v4

    move v10, v8

    goto :goto_1

    :cond_1
    move v10, v3

    move v11, v4

    :goto_1
    const/high16 v3, 0x10000000

    and-int/2addr v3, v5

    if-eqz v3, :cond_2

    move-object v7, p0

    move-object v8, p1

    .line 2793
    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;IIII)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_2
    move-object v7, p0

    move-object v8, p1

    :cond_3
    const/high16 p1, 0xff00000

    and-int/2addr p1, v5

    ushr-int/lit8 p1, p1, 0x14

    const/16 v3, 0x9

    if-eq p1, v3, :cond_a

    const/16 v3, 0x11

    if-eq p1, v3, :cond_a

    const/16 v3, 0x1b

    if-eq p1, v3, :cond_8

    const/16 v3, 0x3c

    if-eq p1, v3, :cond_7

    const/16 v3, 0x44

    if-eq p1, v3, :cond_7

    const/16 v3, 0x31

    if-eq p1, v3, :cond_8

    const/16 v3, 0x32

    if-eq p1, v3, :cond_4

    goto/16 :goto_3

    .line 2821
    :cond_4
    iget-object p1, v7, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzr:Lcom/google/android/gms/internal/firebase-auth-api/zzams;

    and-int v3, v5, v0

    int-to-long v3, v3

    .line 2823
    invoke-static {v8, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zze(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzams;->zzd(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    .line 2824
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    .line 2825
    invoke-direct {p0, v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzf(I)Ljava/lang/Object;

    move-result-object v3

    .line 2826
    iget-object v4, v7, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzr:Lcom/google/android/gms/internal/firebase-auth-api/zzams;

    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzams;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzamq;

    move-result-object v3

    .line 2827
    iget-object v3, v3, Lcom/google/android/gms/internal/firebase-auth-api/zzamq;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzaoj;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoj;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzaoq;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzaoq;->zzi:Lcom/google/android/gms/internal/firebase-auth-api/zzaoq;

    if-ne v3, v4, :cond_b

    .line 2829
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v3, 0x0

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_6

    .line 2831
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzank;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzank;

    move-result-object v3

    move-object v5, v4

    check-cast v5, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzank;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/zzanl;

    move-result-object v3

    .line 2832
    :cond_6
    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzanl;->zze(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    return v1

    .line 2816
    :cond_7
    iget-object p1, v7, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc:[I

    aget p1, p1, v9

    .line 2817
    invoke-direct {p0, v8, p1, v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzc(Ljava/lang/Object;II)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 2818
    invoke-direct {p0, v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zze(I)Lcom/google/android/gms/internal/firebase-auth-api/zzanl;

    move-result-object p1

    invoke-static {v8, v5, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/firebase-auth-api/zzanl;)Z

    move-result p1

    if-nez p1, :cond_b

    return v1

    :cond_8
    and-int p1, v5, v0

    int-to-long v3, p1

    .line 2804
    invoke-static {v8, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzaoc;->zze(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 2805
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    .line 2806
    invoke-direct {p0, v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zze(I)Lcom/google/android/gms/internal/firebase-auth-api/zzanl;

    move-result-object v3

    move v4, v1

    .line 2807
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_b

    .line 2808
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 2809
    invoke-interface {v3, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzanl;->zze(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    return v1

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2798
    :cond_a
    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;IIII)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 2799
    invoke-direct {p0, v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zze(I)Lcom/google/android/gms/internal/firebase-auth-api/zzanl;

    move-result-object p1

    invoke-static {v8, v5, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/firebase-auth-api/zzanl;)Z

    move-result p1

    if-nez p1, :cond_b

    return v1

    :cond_b
    :goto_3
    add-int/lit8 v2, v2, 0x1

    move-object p1, v8

    move v3, v10

    move v4, v11

    goto/16 :goto_0

    :cond_c
    move-object v7, p0

    move-object v8, p1

    .line 2839
    iget-boolean p1, v7, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzh:Z

    if-eqz p1, :cond_d

    .line 2840
    iget-object p1, v7, Lcom/google/android/gms/internal/firebase-auth-api/zzamz;->zzq:Lcom/google/android/gms/internal/firebase-auth-api/zzalh;

    invoke-virtual {p1, v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzalh;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzalm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzalm;->zze()Z

    move-result p1

    if-nez p1, :cond_d

    return v1

    :cond_d
    return v6
.end method
