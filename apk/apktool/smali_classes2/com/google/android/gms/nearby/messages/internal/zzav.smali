.class final Lcom/google/android/gms/nearby/messages/internal/zzav;
.super Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic buildClient(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$Client;
    .locals 1

    .line 1
    check-cast p4, Lcom/google/android/gms/nearby/messages/MessagesOptions;

    move-object v0, p5

    move-object p5, p3

    move-object p3, v0

    move-object v0, p6

    move-object p6, p4

    move-object p4, v0

    .line 2
    invoke-static/range {p1 .. p6}, Lcom/google/android/gms/nearby/messages/internal/zzai;->zzq(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/nearby/messages/MessagesOptions;)Lcom/google/android/gms/nearby/messages/internal/zzai;

    move-result-object p1

    return-object p1
.end method

.method public final getPriority()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method
