.class public final Lcom/google/android/play/core/hsdp/protocol/ReportRequest;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/play/core/hsdp/protocol/ReportRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:I

.field private final zzc:I

.field private final zzd:Ljava/lang/String;

.field private final zze:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/play/core/hsdp/protocol/zzo;

    invoke-direct {v0}, Lcom/google/android/play/core/hsdp/protocol/zzo;-><init>()V

    sput-object v0, Lcom/google/android/play/core/hsdp/protocol/ReportRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/play/core/hsdp/protocol/zzp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/play/core/hsdp/protocol/ReportRequest;->zza:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/google/android/play/core/hsdp/protocol/ReportRequest;->zzb:I

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/google/android/play/core/hsdp/protocol/ReportRequest;->zzc:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/play/core/hsdp/protocol/ReportRequest;->zzd:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/play/core/hsdp/protocol/ReportRequest;->zze:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;J)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "targetPackage cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/protocol/ReportRequest;->zza:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/play/core/hsdp/protocol/ReportRequest;->zzb:I

    iput p3, p0, Lcom/google/android/play/core/hsdp/protocol/ReportRequest;->zzc:I

    const-string p1, "sdkVersion cannot be null"

    .line 7
    invoke-static {p4, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/protocol/ReportRequest;->zzd:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/play/core/hsdp/protocol/ReportRequest;->zze:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getOperation()I
    .locals 1

    iget v0, p0, Lcom/google/android/play/core/hsdp/protocol/ReportRequest;->zzb:I

    return v0
.end method

.method public getReportCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/play/core/hsdp/protocol/ReportRequest;->zzc:I

    return v0
.end method

.method public getRequestTimestampMs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/play/core/hsdp/protocol/ReportRequest;->zze:J

    return-wide v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/hsdp/protocol/ReportRequest;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/hsdp/protocol/ReportRequest;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/google/android/play/core/hsdp/protocol/ReportRequest;->zza:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/google/android/play/core/hsdp/protocol/ReportRequest;->zzb:I

    .line 2
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/google/android/play/core/hsdp/protocol/ReportRequest;->zzc:I

    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/google/android/play/core/hsdp/protocol/ReportRequest;->zzd:Ljava/lang/String;

    .line 4
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/google/android/play/core/hsdp/protocol/ReportRequest;->zze:J

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
