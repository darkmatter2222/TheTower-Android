.class public final Lcom/unity3d/player/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/unity3d/player/IPermissionRequestCallbacks;


# instance fields
.field public final a:J

.field public final synthetic b:Lcom/unity3d/player/UnityPlayer;


# direct methods
.method public constructor <init>(JLcom/unity3d/player/UnityPlayer;)V
    .locals 0

    .line 714
    iput-object p3, p0, Lcom/unity3d/player/o0;->b:Lcom/unity3d/player/UnityPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 715
    iput-wide p1, p0, Lcom/unity3d/player/o0;->a:J

    return-void
.end method


# virtual methods
.method public final onPermissionResult([Ljava/lang/String;[I)V
    .locals 3

    .line 721
    array-length p1, p2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 p1, 0x6

    .line 730
    const-string p2, "Only a single permission request is supported"

    invoke-static {p1, p2}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    return-void

    .line 727
    :cond_0
    aget p1, p2, v0

    if-ne p1, v1, :cond_1

    move v0, v1

    .line 744
    :cond_1
    iget-wide p1, p0, Lcom/unity3d/player/o0;->a:J

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-nez p1, :cond_2

    return-void

    .line 746
    :cond_2
    iget-object p1, p0, Lcom/unity3d/player/o0;->b:Lcom/unity3d/player/UnityPlayer;

    new-instance p2, Lcom/unity3d/player/n0;

    invoke-direct {p2, p0, v0}, Lcom/unity3d/player/n0;-><init>(Lcom/unity3d/player/o0;Z)V

    invoke-static {p1, p2}, Lcom/unity3d/player/UnityPlayer;->-$$Nest$minvokeOnMainThread(Lcom/unity3d/player/UnityPlayer;Lcom/unity3d/player/UnityPlayer$b;)V

    return-void
.end method
