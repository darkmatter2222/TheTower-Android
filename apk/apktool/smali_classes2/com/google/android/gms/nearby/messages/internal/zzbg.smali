.class Lcom/google/android/gms/nearby/messages/internal/zzbg;
.super Lcom/google/android/gms/nearby/messages/internal/zzaa;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/nearby/zznp;


# instance fields
.field private final zzb:Lcom/google/android/gms/common/api/internal/ListenerHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzbf;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/internal/zzbf;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/messages/internal/zzbg;->zza:Lcom/google/android/gms/internal/nearby/zznp;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/internal/ListenerHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/nearby/messages/internal/zzaa;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/nearby/messages/internal/zzbg;->zzb:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    return-void
.end method


# virtual methods
.method public zzd()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzbg;->zzb:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/google/android/gms/nearby/messages/internal/zzbg;->zza:Lcom/google/android/gms/internal/nearby/zznp;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->notifyListener(Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;)V

    :cond_0
    return-void
.end method
