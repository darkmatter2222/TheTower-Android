.class public final Lcom/unity3d/player/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1062
    iput-object p1, p0, Lcom/unity3d/player/h0;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1064
    iget-object v0, p0, Lcom/unity3d/player/h0;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->-$$Nest$smnativeSetLaunchURL(Ljava/lang/String;)V

    return-void
.end method
