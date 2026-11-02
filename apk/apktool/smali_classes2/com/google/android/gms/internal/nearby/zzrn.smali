.class public final synthetic Lcom/google/android/gms/internal/nearby/zzrn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/nearby/zzrn;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/nearby/zzrn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/nearby/zzrn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/nearby/zzrn;->zza:Lcom/google/android/gms/internal/nearby/zzrn;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/nearby/zzqs;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method
