.class public final Lcom/tapjoy/internal/ey$a;
.super Lcom/tapjoy/internal/ej$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/ey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/ej$a<",
        "Lcom/tapjoy/internal/ey;",
        "Lcom/tapjoy/internal/ey$a;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tapjoy/internal/ex;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Lcom/tapjoy/internal/ej$a;-><init>()V

    .line 80
    invoke-static {}, Lcom/tapjoy/internal/eq;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/ey$a;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final b()Lcom/tapjoy/internal/ey;
    .locals 3

    .line 91
    new-instance v0, Lcom/tapjoy/internal/ey;

    iget-object v1, p0, Lcom/tapjoy/internal/ey$a;->c:Ljava/util/List;

    invoke-super {p0}, Lcom/tapjoy/internal/ej$a;->a()Lcom/tapjoy/internal/je;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/internal/ey;-><init>(Ljava/util/List;Lcom/tapjoy/internal/je;)V

    return-object v0
.end method
