.class public final synthetic Lcom/google/android/gms/internal/nearby/zzt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/nearby/zzt;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/nearby/zzt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/nearby/zzt;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/nearby/zzt;->zza:Lcom/google/android/gms/internal/nearby/zzt;

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

    new-instance v0, Lcom/google/android/gms/internal/nearby/zzeh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/nearby/zzeh;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/nearby/zzeh;->zza(Z)Lcom/google/android/gms/internal/nearby/zzeh;

    .line 3
    new-instance v1, Lcom/google/android/gms/internal/nearby/zzao;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/nearby/zzao;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/nearby/zzeh;->zzb(Lcom/google/android/gms/common/api/internal/IStatusCallback;)Lcom/google/android/gms/internal/nearby/zzeh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/nearby/zzeh;->zzc()Lcom/google/android/gms/internal/nearby/zzej;

    move-result-object p2

    .line 5
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/nearby/zzdr;->zzp(Lcom/google/android/gms/internal/nearby/zzej;)V

    return-void
.end method
