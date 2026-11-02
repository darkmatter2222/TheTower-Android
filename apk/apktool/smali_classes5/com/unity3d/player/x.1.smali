.class public final Lcom/unity3d/player/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/unity3d/player/y;


# direct methods
.method public constructor <init>(Lcom/unity3d/player/y;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/unity3d/player/x;->a:Lcom/unity3d/player/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 197
    iget-object v0, p0, Lcom/unity3d/player/x;->a:Lcom/unity3d/player/y;

    iget-object v0, v0, Lcom/unity3d/player/y;->d:Lcom/unity3d/player/D;

    invoke-virtual {v0}, Lcom/unity3d/player/w;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/unity3d/player/w;->a(Ljava/lang/String;Z)V

    return-void
.end method
