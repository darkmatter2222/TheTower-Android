.class public Lcom/google/android/gms/nearby/connection/Payload;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/nearby/connection/Payload$Type;,
        Lcom/google/android/gms/nearby/connection/Payload$File;,
        Lcom/google/android/gms/nearby/connection/Payload$Stream;
    }
.end annotation


# static fields
.field public static final zza:Lcom/google/android/gms/internal/nearby/zzsq;

.field public static final zzb:Lcom/google/android/gms/internal/nearby/zzsq;

.field public static final zzc:Lcom/google/android/gms/internal/nearby/zzsq;

.field public static final zzd:Lcom/google/android/gms/internal/nearby/zzsq;

.field public static final zze:Lcom/google/android/gms/internal/nearby/zzsq;

.field public static final zzf:Lcom/google/android/gms/internal/nearby/zzsq;

.field public static final zzg:Lcom/google/android/gms/internal/nearby/zzsq;

.field public static final zzh:Lcom/google/android/gms/internal/nearby/zzsq;


# instance fields
.field private final zzi:J

.field private final zzj:I

.field private final zzk:[B

.field private final zzl:Lcom/google/android/gms/nearby/connection/Payload$File;

.field private final zzm:Lcom/google/android/gms/nearby/connection/Payload$Stream;

.field private zzn:J

.field private zzo:Z

.field private zzp:Ljava/lang/String;

.field private zzq:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 1
    const-string v0, "/"

    const-string v1, "\\"

    const-string v2, "../"

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/nearby/zzsq;->zzo(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/nearby/zzsq;

    move-result-object v3

    sput-object v3, Lcom/google/android/gms/nearby/connection/Payload;->zza:Lcom/google/android/gms/internal/nearby/zzsq;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "\r"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "\t"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "\u000c"

    aput-object v5, v3, v4

    const-string v14, "\u0000"

    const-string v15, "\n"

    .line 2
    const-string v4, "../"

    const-string v5, "/"

    const-string v6, "\\"

    const-string v7, "?"

    const-string v8, "*"

    const-string v9, "\""

    const-string v10, "<"

    const-string v11, ">"

    const-string v12, "|"

    const-string v13, ":"

    move-object/from16 v16, v3

    invoke-static/range {v4 .. v16}, Lcom/google/android/gms/internal/nearby/zzsq;->zzr(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/android/gms/internal/nearby/zzsq;

    move-result-object v3

    sput-object v3, Lcom/google/android/gms/nearby/connection/Payload;->zzb:Lcom/google/android/gms/internal/nearby/zzsq;

    const-string v3, ".."

    const-string v4, "."

    .line 3
    invoke-static {v3, v4, v1, v0}, Lcom/google/android/gms/internal/nearby/zzsq;->zzp(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/nearby/zzsq;

    move-result-object v3

    sput-object v3, Lcom/google/android/gms/nearby/connection/Payload;->zzc:Lcom/google/android/gms/internal/nearby/zzsq;

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/internal/nearby/zzsq;->zzm(Ljava/lang/Object;)Lcom/google/android/gms/internal/nearby/zzsq;

    move-result-object v3

    sput-object v3, Lcom/google/android/gms/nearby/connection/Payload;->zzd:Lcom/google/android/gms/internal/nearby/zzsq;

    const-string v3, "..\\"

    .line 5
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/nearby/zzsq;->zzn(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/nearby/zzsq;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/nearby/connection/Payload;->zze:Lcom/google/android/gms/internal/nearby/zzsq;

    const-string v11, "\t"

    const-string v12, "\u000c"

    .line 6
    const-string v3, "?"

    const-string v4, "*"

    const-string v5, "\""

    const-string v6, "|"

    const-string v7, ":"

    const-string v8, "\u0000"

    const-string v9, "\n"

    const-string v10, "\r"

    invoke-static/range {v3 .. v12}, Lcom/google/android/gms/internal/nearby/zzsq;->zzq(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/nearby/zzsq;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/nearby/connection/Payload;->zzf:Lcom/google/android/gms/internal/nearby/zzsq;

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/internal/nearby/zzsq;->zzm(Ljava/lang/Object;)Lcom/google/android/gms/internal/nearby/zzsq;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/nearby/connection/Payload;->zzg:Lcom/google/android/gms/internal/nearby/zzsq;

    .line 8
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/nearby/zzsq;->zzn(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/nearby/zzsq;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/nearby/connection/Payload;->zzh:Lcom/google/android/gms/internal/nearby/zzsq;

    return-void
.end method

.method private constructor <init>(JI[BLcom/google/android/gms/nearby/connection/Payload$File;Lcom/google/android/gms/nearby/connection/Payload$Stream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/nearby/connection/Payload;->zzi:J

    iput p3, p0, Lcom/google/android/gms/nearby/connection/Payload;->zzj:I

    iput-object p4, p0, Lcom/google/android/gms/nearby/connection/Payload;->zzk:[B

    iput-object p5, p0, Lcom/google/android/gms/nearby/connection/Payload;->zzl:Lcom/google/android/gms/nearby/connection/Payload$File;

    iput-object p6, p0, Lcom/google/android/gms/nearby/connection/Payload;->zzm:Lcom/google/android/gms/nearby/connection/Payload$Stream;

    return-void
.end method

.method public static fromBytes([B)Lcom/google/android/gms/nearby/connection/Payload;
    .locals 2

    .line 1
    const-string v0, "Cannot create a Payload from null bytes."

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/nearby/connection/Payload;->zza([BJ)Lcom/google/android/gms/nearby/connection/Payload;

    move-result-object p0

    return-object p0
.end method

.method public static fromFile(Landroid/os/ParcelFileDescriptor;)Lcom/google/android/gms/nearby/connection/Payload;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/nearby/connection/Payload$File;->zzb(Landroid/os/ParcelFileDescriptor;)Lcom/google/android/gms/nearby/connection/Payload$File;

    move-result-object p0

    .line 2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/nearby/connection/Payload;->zzb(Lcom/google/android/gms/nearby/connection/Payload$File;J)Lcom/google/android/gms/nearby/connection/Payload;

    move-result-object p0

    return-object p0
.end method

.method public static fromFile(Ljava/io/File;)Lcom/google/android/gms/nearby/connection/Payload;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/high16 v0, 0x10000000

    .line 3
    invoke-static {p0, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 5
    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 6
    invoke-static {p0, v0, v1, v2, v3}, Lcom/google/android/gms/nearby/connection/Payload$File;->zza(Ljava/io/File;Landroid/os/ParcelFileDescriptor;JLandroid/net/Uri;)Lcom/google/android/gms/nearby/connection/Payload$File;

    move-result-object p0

    .line 7
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/nearby/connection/Payload;->zzb(Lcom/google/android/gms/nearby/connection/Payload$File;J)Lcom/google/android/gms/nearby/connection/Payload;

    move-result-object p0

    return-object p0
.end method

.method public static fromStream(Landroid/os/ParcelFileDescriptor;)Lcom/google/android/gms/nearby/connection/Payload;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/nearby/connection/Payload$Stream;->zzb(Landroid/os/ParcelFileDescriptor;)Lcom/google/android/gms/nearby/connection/Payload$Stream;

    move-result-object p0

    .line 2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/nearby/connection/Payload;->zzc(Lcom/google/android/gms/nearby/connection/Payload$Stream;J)Lcom/google/android/gms/nearby/connection/Payload;

    move-result-object p0

    return-object p0
.end method

.method public static fromStream(Ljava/io/InputStream;)Lcom/google/android/gms/nearby/connection/Payload;
    .locals 2

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/nearby/connection/Payload$Stream;->zza(Ljava/io/InputStream;)Lcom/google/android/gms/nearby/connection/Payload$Stream;

    move-result-object p0

    .line 4
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/nearby/connection/Payload;->zzc(Lcom/google/android/gms/nearby/connection/Payload$Stream;J)Lcom/google/android/gms/nearby/connection/Payload;

    move-result-object p0

    return-object p0
.end method

.method public static zza([BJ)Lcom/google/android/gms/nearby/connection/Payload;
    .locals 7

    new-instance v0, Lcom/google/android/gms/nearby/connection/Payload;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x1

    move-object v4, p0

    move-wide v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/nearby/connection/Payload;-><init>(JI[BLcom/google/android/gms/nearby/connection/Payload$File;Lcom/google/android/gms/nearby/connection/Payload$Stream;)V

    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/nearby/connection/Payload$File;J)Lcom/google/android/gms/nearby/connection/Payload;
    .locals 7

    new-instance v0, Lcom/google/android/gms/nearby/connection/Payload;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x2

    move-object v5, p0

    move-wide v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/nearby/connection/Payload;-><init>(JI[BLcom/google/android/gms/nearby/connection/Payload$File;Lcom/google/android/gms/nearby/connection/Payload$Stream;)V

    return-object v0
.end method

.method public static zzc(Lcom/google/android/gms/nearby/connection/Payload$Stream;J)Lcom/google/android/gms/nearby/connection/Payload;
    .locals 7

    new-instance v0, Lcom/google/android/gms/nearby/connection/Payload;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x3

    move-object v6, p0

    move-wide v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/nearby/connection/Payload;-><init>(JI[BLcom/google/android/gms/nearby/connection/Payload$File;Lcom/google/android/gms/nearby/connection/Payload$Stream;)V

    return-object v0
.end method


# virtual methods
.method public asBytes()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/connection/Payload;->zzk:[B

    return-object v0
.end method

.method public asFile()Lcom/google/android/gms/nearby/connection/Payload$File;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/connection/Payload;->zzl:Lcom/google/android/gms/nearby/connection/Payload$File;

    return-object v0
.end method

.method public asStream()Lcom/google/android/gms/nearby/connection/Payload$Stream;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/connection/Payload;->zzm:Lcom/google/android/gms/nearby/connection/Payload$Stream;

    return-object v0
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/nearby/connection/Payload;->zzl:Lcom/google/android/gms/nearby/connection/Payload$File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/nearby/connection/Payload$File;->close()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/nearby/connection/Payload;->zzm:Lcom/google/android/gms/nearby/connection/Payload$Stream;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/nearby/connection/Payload$Stream;->close()V

    :cond_1
    return-void
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/nearby/connection/Payload;->zzi:J

    return-wide v0
.end method

.method public getOffset()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/nearby/connection/Payload;->zzn:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/nearby/connection/Payload;->zzj:I

    return v0
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/nearby/zzsi;->zzb(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/nearby/connection/Payload;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 4
    sget-object v0, Lcom/google/android/gms/nearby/connection/Payload;->zza:Lcom/google/android/gms/internal/nearby/zzsq;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 5
    check-cast v3, Ljava/lang/String;

    .line 6
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    add-int/lit8 v2, v2, 0x1

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "File name "

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " contains illegal string "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/nearby/connection/Payload;->zzp:Ljava/lang/String;

    return-void

    .line 3
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Payload type must be FILE."

    .line 4
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Payload file name should not be null or empty."

    .line 2
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOffset(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_4

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/nearby/connection/Payload;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/connection/Payload;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Payload offset only support FILE or STREAM type."

    .line 5
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/nearby/connection/Payload;->zzl:Lcom/google/android/gms/nearby/connection/Payload$File;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/nearby/connection/Payload$File;->getSize()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Payload offset should be smaller than the file size."

    .line 4
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/nearby/connection/Payload;->getType()I

    iput-wide p1, p0, Lcom/google/android/gms/nearby/connection/Payload;->zzn:J

    return-void

    .line 1
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Payload offset must be positive or zero."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setParentFolder(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/nearby/zzsi;->zzb(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/nearby/connection/Payload;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 4
    sget-object v0, Lcom/google/android/gms/nearby/connection/Payload;->zze:Lcom/google/android/gms/internal/nearby/zzsq;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 5
    check-cast v3, Ljava/lang/String;

    .line 6
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    add-int/lit8 v2, v2, 0x1

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Folder name contains illegal string."

    .line 7
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/nearby/connection/Payload;->zzq:Ljava/lang/String;

    return-void

    .line 3
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Payload type must be FILE."

    .line 4
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Payload parent folder should not be null or empty."

    .line 2
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSensitive(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/nearby/connection/Payload;->zzo:Z

    return-void
.end method

.method public final zzd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/connection/Payload;->zzp:Ljava/lang/String;

    return-object v0
.end method

.method public final zze()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/connection/Payload;->zzq:Ljava/lang/String;

    return-object v0
.end method

.method public final zzf()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/nearby/connection/Payload;->zzo:Z

    return v0
.end method
