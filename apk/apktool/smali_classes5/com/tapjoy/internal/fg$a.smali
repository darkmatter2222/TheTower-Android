.class public final Lcom/tapjoy/internal/fg$a;
.super Lcom/tapjoy/internal/ej$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/fg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/ej$a<",
        "Lcom/tapjoy/internal/fg;",
        "Lcom/tapjoy/internal/fg$a;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Ljava/lang/String;

.field public d:Ljava/lang/Long;

.field public e:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 112
    invoke-direct {p0}, Lcom/tapjoy/internal/ej$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Lcom/tapjoy/internal/fg;
    .locals 5

    .line 132
    iget-object v0, p0, Lcom/tapjoy/internal/fg$a;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tapjoy/internal/fg$a;->d:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 137
    new-instance v0, Lcom/tapjoy/internal/fg;

    iget-object v1, p0, Lcom/tapjoy/internal/fg$a;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/tapjoy/internal/fg$a;->d:Ljava/lang/Long;

    iget-object v3, p0, Lcom/tapjoy/internal/fg$a;->e:Ljava/lang/Long;

    invoke-super {p0}, Lcom/tapjoy/internal/ej$a;->a()Lcom/tapjoy/internal/je;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tapjoy/internal/fg;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/tapjoy/internal/je;)V

    return-object v0

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/tapjoy/internal/fg$a;->d:Ljava/lang/Long;

    const-string v2, "received"

    const-string v3, "id"

    filled-new-array {v0, v3, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/eq;->a([Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method
