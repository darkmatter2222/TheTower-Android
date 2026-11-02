.class public final Lcom/unity3d/player/a/u;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/unity3d/player/a/v;


# direct methods
.method public constructor <init>(Lcom/unity3d/player/a/v;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/unity3d/player/a/u;->a:Lcom/unity3d/player/a/v;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0

    .line 30
    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    const/4 p1, 0x0

    .line 31
    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 32
    iget-object p1, p0, Lcom/unity3d/player/a/u;->a:Lcom/unity3d/player/a/v;

    const/4 p2, 0x1

    iput p2, p1, Lcom/unity3d/player/a/v;->b:I

    return-void

    .line 34
    :cond_0
    iget-object p1, p0, Lcom/unity3d/player/a/u;->a:Lcom/unity3d/player/a/v;

    const/4 p2, 0x2

    iput p2, p1, Lcom/unity3d/player/a/v;->b:I

    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 1

    .line 48
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 49
    iget-object p1, p0, Lcom/unity3d/player/a/u;->a:Lcom/unity3d/player/a/v;

    const/4 v0, 0x0

    iput v0, p1, Lcom/unity3d/player/a/v;->b:I

    return-void
.end method

.method public final onUnavailable()V
    .locals 2

    .line 41
    invoke-super {p0}, Landroid/net/ConnectivityManager$NetworkCallback;->onUnavailable()V

    .line 42
    iget-object v0, p0, Lcom/unity3d/player/a/u;->a:Lcom/unity3d/player/a/v;

    const/4 v1, 0x0

    iput v1, v0, Lcom/unity3d/player/a/v;->b:I

    return-void
.end method
