.class public final Lads_mobile_sdk/qa2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lads_mobile_sdk/ra2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ra2;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lads_mobile_sdk/qa2;->a:Lads_mobile_sdk/ra2;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 2

    .line 64
    iget-object v0, p0, Lads_mobile_sdk/qa2;->a:Lads_mobile_sdk/ra2;

    monitor-enter v0

    .line 65
    :try_start_0
    iget-object v1, p0, Lads_mobile_sdk/qa2;->a:Lads_mobile_sdk/ra2;

    iput-object p1, v1, Lads_mobile_sdk/ra2;->d:Landroid/net/Network;

    .line 66
    iput-object p2, v1, Lads_mobile_sdk/ra2;->c:Landroid/net/NetworkCapabilities;

    .line 67
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 68
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 2

    .line 72
    iget-object v0, p0, Lads_mobile_sdk/qa2;->a:Lads_mobile_sdk/ra2;

    monitor-enter v0

    .line 73
    :try_start_0
    iget-object v1, p0, Lads_mobile_sdk/qa2;->a:Lads_mobile_sdk/ra2;

    iget-object v1, v1, Lads_mobile_sdk/ra2;->d:Landroid/net/Network;

    invoke-virtual {p1, v1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 74
    iget-object p1, p0, Lads_mobile_sdk/qa2;->a:Lads_mobile_sdk/ra2;

    const/4 v1, 0x0

    iput-object v1, p1, Lads_mobile_sdk/ra2;->d:Landroid/net/Network;

    .line 75
    iput-object v1, p1, Lads_mobile_sdk/ra2;->c:Landroid/net/NetworkCapabilities;

    .line 77
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 78
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
