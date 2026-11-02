.class final Lcom/tapjoy/internal/ge$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/TJConnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/ge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/ge;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/ge;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/tapjoy/internal/ge$2;->a:Lcom/tapjoy/internal/ge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectFailure()V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/tapjoy/internal/ge$2;->a:Lcom/tapjoy/internal/ge;

    const/4 v1, 0x0

    .line 3031
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/ge;->a(Z)V

    return-void
.end method

.method public final onConnectSuccess()V
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/tapjoy/internal/ge$2;->a:Lcom/tapjoy/internal/ge;

    sget v1, Lcom/tapjoy/internal/ge$c;->e:I

    sget v2, Lcom/tapjoy/internal/ge$c;->b:I

    .line 1031
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/ge;->a(I)V

    .line 159
    iget-object v0, p0, Lcom/tapjoy/internal/ge$2;->a:Lcom/tapjoy/internal/ge;

    const/4 v1, 0x1

    .line 2031
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/ge;->a(Z)V

    return-void
.end method
