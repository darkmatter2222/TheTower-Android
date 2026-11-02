.class public final Lcom/google/android/play/core/hsdp/service/HsdpReportRequest;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:I

.field private final zzc:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "targetPackage cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/HsdpReportRequest;->zza:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/play/core/hsdp/service/HsdpReportRequest;->zzb:I

    iput p3, p0, Lcom/google/android/play/core/hsdp/service/HsdpReportRequest;->zzc:I

    return-void
.end method


# virtual methods
.method public operation()I
    .locals 1

    iget v0, p0, Lcom/google/android/play/core/hsdp/service/HsdpReportRequest;->zzb:I

    return v0
.end method

.method public reportCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/play/core/hsdp/service/HsdpReportRequest;->zzc:I

    return v0
.end method

.method public targetPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/HsdpReportRequest;->zza:Ljava/lang/String;

    return-object v0
.end method
