.class public Lcom/google/android/gms/nearby/uwb/UwbDevice;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/nearby/uwb/UwbAddress;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/nearby/uwb/UwbAddress;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/nearby/uwb/UwbDevice;->zza:Lcom/google/android/gms/nearby/uwb/UwbAddress;

    return-void
.end method

.method public static createForAddress(Ljava/lang/String;)Lcom/google/android/gms/nearby/uwb/UwbDevice;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/nearby/uwb/UwbDevice;

    new-instance v1, Lcom/google/android/gms/nearby/uwb/UwbAddress;

    invoke-direct {v1, p0}, Lcom/google/android/gms/nearby/uwb/UwbAddress;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/nearby/uwb/UwbDevice;-><init>(Lcom/google/android/gms/nearby/uwb/UwbAddress;)V

    return-object v0
.end method

.method public static createForAddress([B)Lcom/google/android/gms/nearby/uwb/UwbDevice;
    .locals 2

    .line 2
    new-instance v0, Lcom/google/android/gms/nearby/uwb/UwbDevice;

    new-instance v1, Lcom/google/android/gms/nearby/uwb/UwbAddress;

    invoke-direct {v1, p0}, Lcom/google/android/gms/nearby/uwb/UwbAddress;-><init>([B)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/nearby/uwb/UwbDevice;-><init>(Lcom/google/android/gms/nearby/uwb/UwbAddress;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/nearby/uwb/UwbDevice;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/gms/nearby/uwb/UwbDevice;

    iget-object v1, p0, Lcom/google/android/gms/nearby/uwb/UwbDevice;->zza:Lcom/google/android/gms/nearby/uwb/UwbAddress;

    .line 3
    iget-object p1, p1, Lcom/google/android/gms/nearby/uwb/UwbDevice;->zza:Lcom/google/android/gms/nearby/uwb/UwbAddress;

    if-eq v1, p1, :cond_3

    .line 4
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_0
    return v0
.end method

.method public getAddress()Lcom/google/android/gms/nearby/uwb/UwbAddress;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/uwb/UwbDevice;->zza:Lcom/google/android/gms/nearby/uwb/UwbAddress;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/nearby/uwb/UwbDevice;->zza:Lcom/google/android/gms/nearby/uwb/UwbAddress;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/nearby/uwb/UwbDevice;->zza:Lcom/google/android/gms/nearby/uwb/UwbAddress;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "UwbDevice {%s}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
