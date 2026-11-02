.class public final Lcom/unity3d/player/a/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lcom/unity3d/player/D;


# direct methods
.method public constructor <init>(Lcom/unity3d/player/D;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/unity3d/player/a/H;->a:Lcom/unity3d/player/D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 322
    iget-object p1, p0, Lcom/unity3d/player/a/H;->a:Lcom/unity3d/player/D;

    invoke-virtual {p1}, Lcom/unity3d/player/w;->invokeOnClose()V

    return-void
.end method
