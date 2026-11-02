.class final synthetic Lcom/google/android/gms/cloudmessaging/zzad;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cloud-messaging@@17.4.0"

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/cloudmessaging/zzad;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/cloudmessaging/zzad;

    invoke-direct {v0}, Lcom/google/android/gms/cloudmessaging/zzad;-><init>()V

    sput-object v0, Lcom/google/android/gms/cloudmessaging/zzad;->zza:Lcom/google/android/gms/cloudmessaging/zzad;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    check-cast p1, Landroid/os/Bundle;

    invoke-static {p1}, Lcom/google/android/gms/cloudmessaging/Rpc;->zzc(Landroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
