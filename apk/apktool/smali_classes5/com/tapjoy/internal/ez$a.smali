.class public final Lcom/tapjoy/internal/ez$a;
.super Lcom/tapjoy/internal/ej$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/ez;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/ej$a<",
        "Lcom/tapjoy/internal/ez;",
        "Lcom/tapjoy/internal/ez$a;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Lcom/tapjoy/internal/fa;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/tapjoy/internal/ej$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Lcom/tapjoy/internal/ez;
    .locals 5

    .line 131
    iget-object v0, p0, Lcom/tapjoy/internal/ez$a;->c:Lcom/tapjoy/internal/fa;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tapjoy/internal/ez$a;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 136
    new-instance v0, Lcom/tapjoy/internal/ez;

    iget-object v1, p0, Lcom/tapjoy/internal/ez$a;->c:Lcom/tapjoy/internal/fa;

    iget-object v2, p0, Lcom/tapjoy/internal/ez$a;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/tapjoy/internal/ez$a;->e:Ljava/lang/String;

    invoke-super {p0}, Lcom/tapjoy/internal/ej$a;->a()Lcom/tapjoy/internal/je;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tapjoy/internal/ez;-><init>(Lcom/tapjoy/internal/fa;Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/je;)V

    return-object v0

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/tapjoy/internal/ez$a;->d:Ljava/lang/String;

    const-string v2, "name"

    const-string v3, "type"

    filled-new-array {v0, v3, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/eq;->a([Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method
