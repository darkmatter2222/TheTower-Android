.class final Lcom/google/android/gms/nearby/messages/internal/zzbw;
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
    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzbv;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/internal/zzbv;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/messages/internal/zzbw;->zza:Lcom/google/android/gms/internal/nearby/zznp;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/internal/ListenerHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/nearby/messages/internal/zzaa;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/nearby/messages/internal/zzbw;->zzb:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    return-void
.end method


# virtual methods
.method public final zzd()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzbw;->zzb:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    sget-object v1, Lcom/google/android/gms/nearby/messages/internal/zzbw;->zza:Lcom/google/android/gms/internal/nearby/zznp;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->notifyListener(Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;)V

    return-void
.end method
