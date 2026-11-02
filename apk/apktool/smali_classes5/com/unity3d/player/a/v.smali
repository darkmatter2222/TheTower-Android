.class public final Lcom/unity3d/player/a/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/net/ConnectivityManager;

.field public b:I

.field public final c:Lcom/unity3d/player/a/u;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/unity3d/player/a/v;->b:I

    .line 19
    new-instance v1, Lcom/unity3d/player/a/u;

    invoke-direct {v1, p0}, Lcom/unity3d/player/a/u;-><init>(Lcom/unity3d/player/a/v;)V

    iput-object v1, p0, Lcom/unity3d/player/a/v;->c:Lcom/unity3d/player/a/u;

    .line 55
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/unity3d/player/a/v;->a:Landroid/net/ConnectivityManager;

    if-nez p1, :cond_0

    const/4 p1, 0x6

    .line 58
    const-string v0, "NetworkConnectivity: ConnectivityManager not found"

    invoke-static {p1, v0}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    return-void

    .line 72
    :cond_0
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p1, v2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 77
    invoke-virtual {v2, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    .line 62
    :cond_3
    :goto_0
    iput v0, p0, Lcom/unity3d/player/a/v;->b:I

    .line 64
    invoke-virtual {p1, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/unity3d/player/a/v;->a:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    return-void

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/unity3d/player/a/v;->c:Lcom/unity3d/player/a/u;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method
