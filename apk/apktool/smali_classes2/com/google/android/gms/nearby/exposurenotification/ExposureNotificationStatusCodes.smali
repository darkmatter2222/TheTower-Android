.class public final Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatusCodes;
.super Lcom/google/android/gms/common/api/CommonStatusCodes;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# static fields
.field public static final FAILED:I = 0xd

.field public static final FAILED_ALREADY_STARTED:I = 0x9a4c

.field public static final FAILED_BLUETOOTH_DISABLED:I = 0x9a50

.field public static final FAILED_DISK_IO:I = 0x9a52

.field public static final FAILED_KEY_RELEASE_NOT_PREAUTHORIZED:I = 0x9a56

.field public static final FAILED_NOT_IN_FOREGROUND:I = 0x9a55

.field public static final FAILED_NOT_SUPPORTED:I = 0x9a4d

.field public static final FAILED_RATE_LIMITED:I = 0x9a54

.field public static final FAILED_REJECTED_OPT_IN:I = 0x9a4e

.field public static final FAILED_SERVICE_DISABLED:I = 0x9a4f

.field public static final FAILED_TEMPORARILY_DISABLED:I = 0x9a51

.field public static final FAILED_UNAUTHORIZED:I = 0x9a53


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;-><init>()V

    return-void
.end method

.method public static getStatusCodeString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "FAILED_KEY_RELEASE_NOT_PREAUTHORIZED"

    return-object p0

    :pswitch_1
    const-string p0, "FAILED_NOT_IN_FOREGROUND"

    return-object p0

    :pswitch_2
    const-string p0, "FAILED_RATE_LIMITED"

    return-object p0

    :pswitch_3
    const-string p0, "FAILED_UNAUTHORIZED"

    return-object p0

    :pswitch_4
    const-string p0, "FAILED_DISK_IO"

    return-object p0

    :pswitch_5
    const-string p0, "FAILED_TEMPORARILY_DISABLED"

    return-object p0

    :pswitch_6
    const-string p0, "FAILED_BLUETOOTH_DISABLED"

    return-object p0

    :pswitch_7
    const-string p0, "FAILED_SERVICE_DISABLED"

    return-object p0

    :pswitch_8
    const-string p0, "FAILED_REJECTED_OPT_IN"

    return-object p0

    :pswitch_9
    const-string p0, "FAILED_NOT_SUPPORTED"

    return-object p0

    :pswitch_a
    const-string p0, "FAILED_ALREADY_STARTED"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x9a4c
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
