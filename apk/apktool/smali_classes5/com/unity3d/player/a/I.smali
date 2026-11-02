.class public final Lcom/unity3d/player/a/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic a:Lcom/unity3d/player/D;


# direct methods
.method public constructor <init>(Lcom/unity3d/player/D;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/unity3d/player/a/I;->a:Lcom/unity3d/player/D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/unity3d/player/a/I;->a:Lcom/unity3d/player/D;

    invoke-virtual {v0}, Lcom/unity3d/player/D;->reportSoftInputArea()V

    return-void
.end method
