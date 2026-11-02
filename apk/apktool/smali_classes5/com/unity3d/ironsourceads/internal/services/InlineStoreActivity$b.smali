.class public Lcom/unity3d/ironsourceads/internal/services/InlineStoreActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ironsourceads/internal/services/InlineStoreActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/ironsource/h;

.field private b:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/ironsource/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/unity3d/ironsourceads/internal/services/InlineStoreActivity$b;->a:Lcom/ironsource/h;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/unity3d/ironsourceads/internal/services/InlineStoreActivity$b;->a:Lcom/ironsource/h;

    invoke-interface {v0, p1}, Lcom/ironsource/h;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/unity3d/ironsourceads/internal/services/InlineStoreActivity$b;->b:Landroid/content/Intent;

    const-string v1, "inline_store_intent"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object p1
.end method

.method public a(Landroid/content/Intent;)Lcom/unity3d/ironsourceads/internal/services/InlineStoreActivity$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/unity3d/ironsourceads/internal/services/InlineStoreActivity$b;->b:Landroid/content/Intent;

    return-object p0
.end method
