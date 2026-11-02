.class public final synthetic Lcom/google/android/gms/internal/nearby/zzw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/nearby/zzw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/nearby/zzw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/nearby/zzw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/nearby/zzw;->zza:Lcom/google/android/gms/internal/nearby/zzw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/nearby/zzn;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    sget v0, Lcom/google/android/gms/internal/nearby/zzax;->zza:I

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/nearby/zzn;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/nearby/zzdr;

    new-instance v0, Lcom/google/android/gms/internal/nearby/zzet;

    invoke-direct {v0}, Lcom/google/android/gms/internal/nearby/zzet;-><init>()V

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/nearby/zzao;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/nearby/zzao;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/nearby/zzet;->zza(Lcom/google/android/gms/common/api/internal/IStatusCallback;)Lcom/google/android/gms/internal/nearby/zzet;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/nearby/zzet;->zzb()Lcom/google/android/gms/internal/nearby/zzev;

    move-result-object p2

    .line 4
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/nearby/zzdr;->zzs(Lcom/google/android/gms/internal/nearby/zzev;)V

    return-void
.end method
