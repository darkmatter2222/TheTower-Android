.class public final Lcom/tapjoy/internal/dx$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/dx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/dx;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/dx;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/internal/dx$1;->a:Lcom/tapjoy/internal/dx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/dx$1;->a:Lcom/tapjoy/internal/dx;

    invoke-static {v0}, Lcom/tapjoy/internal/dx;->a(Lcom/tapjoy/internal/dx;)Lcom/tapjoy/internal/ef;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/ef;->b()V

    return-void
.end method
