.class public final Lcom/ironsource/K8$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/G8$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/K8;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/K8;


# direct methods
.method constructor <init>(Lcom/ironsource/K8;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/K8$c;->a:Lcom/ironsource/K8;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/Dg;)V
    .locals 1

    const-string v0, "viewVisibilityParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/K8$c;->a:Lcom/ironsource/K8;

    invoke-virtual {v0}, Lcom/ironsource/K8;->n()Lcom/ironsource/K8$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ironsource/K8$a;->a(Lcom/ironsource/Dg;)V

    :cond_0
    return-void
.end method
