.class public final Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-nearby@@18.5.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zza:I

.field public final zzb:Lcom/google/android/gms/nearby/messages/internal/zzo;

.field public final zzc:Lcom/google/android/gms/nearby/messages/Strategy;

.field public final zzd:Lcom/google/android/gms/nearby/messages/internal/zzr;

.field public final zze:Lcom/google/android/gms/nearby/messages/MessageFilter;

.field public final zzf:Landroid/app/PendingIntent;

.field public final zzg:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final zzh:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final zzi:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final zzj:[B

.field public final zzk:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final zzl:Lcom/google/android/gms/nearby/messages/internal/zzab;

.field public final zzm:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final zzn:Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final zzo:Z

.field public final zzp:I

.field public final zzq:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzcd;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/internal/zzcd;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/os/IBinder;Lcom/google/android/gms/nearby/messages/Strategy;Landroid/os/IBinder;Lcom/google/android/gms/nearby/messages/MessageFilter;Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;[BZLandroid/os/IBinder;ZLcom/google/android/gms/nearby/messages/internal/ClientAppContext;ZII)V
    .locals 4

    move-object/from16 v0, p12

    move/from16 v1, p13

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zza:I

    const/4 p1, 0x0

    if-nez p2, :cond_0

    :goto_0
    move-object v2, p1

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/IBinder;

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "com.google.android.gms.nearby.messages.internal.IMessageListener"

    .line 3
    invoke-interface {p2, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 4
    instance-of v3, v2, Lcom/google/android/gms/nearby/messages/internal/zzo;

    if-eqz v3, :cond_2

    .line 5
    check-cast v2, Lcom/google/android/gms/nearby/messages/internal/zzo;

    goto :goto_1

    :cond_2
    new-instance v2, Lcom/google/android/gms/nearby/messages/internal/zzm;

    invoke-direct {v2, p2}, Lcom/google/android/gms/nearby/messages/internal/zzm;-><init>(Landroid/os/IBinder;)V

    .line 1
    :goto_1
    iput-object v2, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzb:Lcom/google/android/gms/nearby/messages/internal/zzo;

    iput-object p3, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzc:Lcom/google/android/gms/nearby/messages/Strategy;

    if-nez p4, :cond_3

    move-object p2, p1

    goto :goto_2

    .line 11
    :cond_3
    const-string p2, "com.google.android.gms.nearby.messages.internal.INearbyMessagesCallback"

    .line 6
    invoke-interface {p4, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 7
    instance-of p3, p2, Lcom/google/android/gms/nearby/messages/internal/zzr;

    if-eqz p3, :cond_4

    .line 8
    check-cast p2, Lcom/google/android/gms/nearby/messages/internal/zzr;

    goto :goto_2

    :cond_4
    new-instance p2, Lcom/google/android/gms/nearby/messages/internal/zzp;

    invoke-direct {p2, p4}, Lcom/google/android/gms/nearby/messages/internal/zzp;-><init>(Landroid/os/IBinder;)V

    .line 1
    :goto_2
    iput-object p2, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzd:Lcom/google/android/gms/nearby/messages/internal/zzr;

    iput-object p5, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zze:Lcom/google/android/gms/nearby/messages/MessageFilter;

    iput-object p6, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzf:Landroid/app/PendingIntent;

    iput p7, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzg:I

    iput-object p8, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzh:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzi:Ljava/lang/String;

    move-object p2, p10

    iput-object p2, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzj:[B

    move p2, p11

    iput-boolean p2, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzk:Z

    if-nez v0, :cond_5

    goto :goto_3

    .line 12
    :cond_5
    const-string p1, "com.google.android.gms.nearby.messages.internal.ISubscribeCallback"

    .line 9
    invoke-interface {v0, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    .line 10
    instance-of p2, p1, Lcom/google/android/gms/nearby/messages/internal/zzab;

    if-eqz p2, :cond_6

    .line 11
    check-cast p1, Lcom/google/android/gms/nearby/messages/internal/zzab;

    goto :goto_3

    :cond_6
    new-instance p1, Lcom/google/android/gms/nearby/messages/internal/zzz;

    invoke-direct {p1, v0}, Lcom/google/android/gms/nearby/messages/internal/zzz;-><init>(Landroid/os/IBinder;)V

    .line 1
    :goto_3
    iput-object p1, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzl:Lcom/google/android/gms/nearby/messages/internal/zzab;

    iput-boolean v1, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzm:Z

    move-object/from16 p1, p14

    .line 12
    invoke-static {p1, p9, p8, v1}, Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;->zza(Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzn:Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;

    move/from16 p1, p15

    iput-boolean p1, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzo:Z

    move/from16 p1, p16

    iput p1, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzp:I

    move/from16 p1, p17

    iput p1, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzq:I

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;Lcom/google/android/gms/nearby/messages/Strategy;Landroid/os/IBinder;Lcom/google/android/gms/nearby/messages/MessageFilter;Landroid/app/PendingIntent;[BLandroid/os/IBinder;ZII)V
    .locals 18

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v1, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v12, p7

    move/from16 v17, p10

    .line 13
    invoke-direct/range {v0 .. v17}, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;-><init>(ILandroid/os/IBinder;Lcom/google/android/gms/nearby/messages/Strategy;Landroid/os/IBinder;Lcom/google/android/gms/nearby/messages/MessageFilter;Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;[BZLandroid/os/IBinder;ZLcom/google/android/gms/nearby/messages/internal/ClientAppContext;ZII)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzb:Lcom/google/android/gms/nearby/messages/internal/zzo;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzc:Lcom/google/android/gms/nearby/messages/Strategy;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzd:Lcom/google/android/gms/nearby/messages/internal/zzr;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zze:Lcom/google/android/gms/nearby/messages/MessageFilter;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzf:Landroid/app/PendingIntent;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzj:[B

    if-nez v6, :cond_0

    const/4 v6, 0x0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "<"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v6, v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " bytes>"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1
    :goto_0
    iget-object v7, v0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzl:Lcom/google/android/gms/nearby/messages/internal/zzab;

    .line 2
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget-boolean v8, v0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzm:Z

    iget-object v9, v0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzn:Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iget-boolean v10, v0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzo:Z

    iget-object v11, v0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzh:Ljava/lang/String;

    iget-object v12, v0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzi:Ljava/lang/String;

    iget-boolean v13, v0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzk:Z

    iget v14, v0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzq:I

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v0, "SubscribeRequest{messageListener="

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", strategy="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", callback="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", filter="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", pendingIntent="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", hint="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", subscribeCallback="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", useRealClientApiKey="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", clientAppContext="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isDiscardPendingIntent="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", zeroPartyPackageName="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", realClientPackageName="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isIgnoreNearbyPermission="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", callingContext="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zza:I

    .line 2
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzb:Lcom/google/android/gms/nearby/messages/internal/zzo;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 19
    :cond_0
    invoke-interface {v1}, Lcom/google/android/gms/nearby/messages/internal/zzo;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 3
    invoke-static {p1, v3, v1, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v1, 0x3

    iget-object v3, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzc:Lcom/google/android/gms/nearby/messages/Strategy;

    .line 4
    invoke-static {p1, v1, v3, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzd:Lcom/google/android/gms/nearby/messages/internal/zzr;

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_1

    .line 19
    :cond_1
    invoke-interface {v1}, Lcom/google/android/gms/nearby/messages/internal/zzr;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_1
    const/4 v3, 0x4

    .line 5
    invoke-static {p1, v3, v1, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v1, 0x5

    iget-object v3, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zze:Lcom/google/android/gms/nearby/messages/MessageFilter;

    .line 6
    invoke-static {p1, v1, v3, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x6

    iget-object v3, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzf:Landroid/app/PendingIntent;

    .line 7
    invoke-static {p1, v1, v3, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x7

    iget v3, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzg:I

    .line 8
    invoke-static {p1, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/16 v1, 0x8

    iget-object v3, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzh:Ljava/lang/String;

    .line 9
    invoke-static {p1, v1, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x9

    iget-object v3, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzi:Ljava/lang/String;

    .line 10
    invoke-static {p1, v1, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0xa

    iget-object v3, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzj:[B

    .line 11
    invoke-static {p1, v1, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByteArray(Landroid/os/Parcel;I[BZ)V

    const/16 v1, 0xb

    iget-boolean v3, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzk:Z

    .line 12
    invoke-static {p1, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzl:Lcom/google/android/gms/nearby/messages/internal/zzab;

    if-nez v1, :cond_2

    goto :goto_2

    .line 19
    :cond_2
    invoke-interface {v1}, Lcom/google/android/gms/nearby/messages/internal/zzab;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_2
    const/16 v1, 0xc

    .line 13
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/16 v1, 0xd

    iget-boolean v2, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzm:Z

    .line 14
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzn:Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;

    .line 15
    invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 p2, 0xf

    iget-boolean v1, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzo:Z

    .line 16
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 p2, 0x10

    iget v1, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzp:I

    .line 17
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/16 p2, 0x11

    iget v1, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzq:I

    .line 18
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 19
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
