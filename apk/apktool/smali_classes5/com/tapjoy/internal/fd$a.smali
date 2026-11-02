.class public final Lcom/tapjoy/internal/fd$a;
.super Lcom/tapjoy/internal/ej$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/fd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/ej$a<",
        "Lcom/tapjoy/internal/fd;",
        "Lcom/tapjoy/internal/fd$a;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Lcom/tapjoy/internal/fc;

.field public d:Lcom/tapjoy/internal/ew;

.field public e:Lcom/tapjoy/internal/fj;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/tapjoy/internal/ej$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Lcom/tapjoy/internal/fd;
    .locals 5

    .line 123
    new-instance v0, Lcom/tapjoy/internal/fd;

    iget-object v1, p0, Lcom/tapjoy/internal/fd$a;->c:Lcom/tapjoy/internal/fc;

    iget-object v2, p0, Lcom/tapjoy/internal/fd$a;->d:Lcom/tapjoy/internal/ew;

    iget-object v3, p0, Lcom/tapjoy/internal/fd$a;->e:Lcom/tapjoy/internal/fj;

    invoke-super {p0}, Lcom/tapjoy/internal/ej$a;->a()Lcom/tapjoy/internal/je;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tapjoy/internal/fd;-><init>(Lcom/tapjoy/internal/fc;Lcom/tapjoy/internal/ew;Lcom/tapjoy/internal/fj;Lcom/tapjoy/internal/je;)V

    return-object v0
.end method
