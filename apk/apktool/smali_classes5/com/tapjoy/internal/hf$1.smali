.class final Lcom/tapjoy/internal/hf$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/hf;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/hf;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/hf;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/tapjoy/internal/hf$1;->a:Lcom/tapjoy/internal/hf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/tapjoy/internal/hf$1;->a:Lcom/tapjoy/internal/hf;

    invoke-static {v0}, Lcom/tapjoy/internal/hf;->a(Lcom/tapjoy/internal/hf;)V

    return-void
.end method
