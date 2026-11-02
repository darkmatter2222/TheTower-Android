.class final Lcom/google/android/gms/internal/nearby/zznl;
.super Lcom/google/android/gms/internal/nearby/zznp;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# instance fields
.field final synthetic zza:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/nearby/zznm;Ljava/util/List;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/nearby/zznl;->zza:Ljava/util/List;

    invoke-direct {p0}, Lcom/google/android/gms/internal/nearby/zznp;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic notifyListener(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/nearby/messages/MessageListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zznl;->zza:Ljava/util/List;

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/nearby/zznm;->zzc(Ljava/lang/Iterable;Lcom/google/android/gms/nearby/messages/MessageListener;)V

    return-void
.end method
