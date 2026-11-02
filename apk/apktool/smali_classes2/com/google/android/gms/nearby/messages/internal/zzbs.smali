.class final Lcom/google/android/gms/nearby/messages/internal/zzbs;
.super Lcom/google/android/gms/internal/nearby/zznp;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/nearby/zznp;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic notifyListener(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/nearby/messages/PublishCallback;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/nearby/messages/PublishCallback;->onExpired()V

    return-void
.end method
