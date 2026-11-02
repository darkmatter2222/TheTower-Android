.class public final Lcom/unity3d/player/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/unity3d/player/UnityPlayerForActivityOrService;


# direct methods
.method public constructor <init>(Lcom/unity3d/player/UnityPlayerForActivityOrService;Ljava/lang/String;)V
    .locals 0

    .line 501
    iput-object p1, p0, Lcom/unity3d/player/t0;->b:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    iput-object p2, p0, Lcom/unity3d/player/t0;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 503
    iget-object v0, p0, Lcom/unity3d/player/t0;->b:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->-$$Nest$fgetmSoftInput(Lcom/unity3d/player/UnityPlayerForActivityOrService;)Lcom/unity3d/player/a/r;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/unity3d/player/t0;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 504
    invoke-interface {v0, v1}, Lcom/unity3d/player/a/r;->setText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
