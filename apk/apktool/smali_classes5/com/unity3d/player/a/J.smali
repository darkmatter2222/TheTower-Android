.class public final Lcom/unity3d/player/a/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic a:Lcom/unity3d/player/D;


# direct methods
.method public constructor <init>(Lcom/unity3d/player/D;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/unity3d/player/a/J;->a:Lcom/unity3d/player/D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 345
    iget-object p1, p0, Lcom/unity3d/player/a/J;->a:Lcom/unity3d/player/D;

    .line 131
    iget-object p1, p1, Lcom/unity3d/player/w;->f:Lcom/unity3d/player/M0;

    if-eqz p1, :cond_0

    .line 132
    invoke-virtual {p1}, Lcom/unity3d/player/M0;->a()V

    :cond_0
    return-void
.end method
