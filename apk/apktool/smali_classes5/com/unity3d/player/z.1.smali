.class public final Lcom/unity3d/player/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/unity3d/player/B;


# direct methods
.method public constructor <init>(Lcom/unity3d/player/B;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/unity3d/player/z;->a:Lcom/unity3d/player/B;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/unity3d/player/z;->a:Lcom/unity3d/player/B;

    iget-object v0, v0, Lcom/unity3d/player/w;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 48
    iget-object v0, p0, Lcom/unity3d/player/z;->a:Lcom/unity3d/player/B;

    invoke-virtual {v0}, Lcom/unity3d/player/w;->c()V

    return-void
.end method
