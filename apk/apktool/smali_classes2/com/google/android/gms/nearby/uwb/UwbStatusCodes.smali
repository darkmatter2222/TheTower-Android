.class public final Lcom/google/android/gms/nearby/uwb/UwbStatusCodes;
.super Lcom/google/android/gms/common/api/CommonStatusCodes;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# static fields
.field public static final INVALID_API_CALL:I = 0xa412

.field public static final NULL_RANGING_DEVICE:I = 0xa411

.field public static final RANGING_ALREADY_STARTED:I = 0xa413

.field public static final SERVICE_NOT_AVAILABLE:I = 0xa410

.field public static final STATUS_ERROR:I = 0xd

.field public static final STATUS_OK:I = 0x0

.field public static final UWB_SYSTEM_CALLBACK_FAILURE:I = 0xa415


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;-><init>()V

    return-void
.end method

.method public static zza(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "UWB_SYSTEM_CALLBACK_FAILURE"

    return-object p0

    :pswitch_1
    const-string p0, "MISSING_PERMISSION_UWB_RANGING"

    return-object p0

    :pswitch_2
    const-string p0, "RANGING_ALREADY_STARTED"

    return-object p0

    :pswitch_3
    const-string p0, "INVALID_API_CALL"

    return-object p0

    :pswitch_4
    const-string p0, "NULL_RANGING_DEVICE"

    return-object p0

    :pswitch_5
    const-string p0, "SERVICE_NOT_AVAILABLE"

    return-object p0

    :pswitch_data_0
    .packed-switch 0xa410
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
