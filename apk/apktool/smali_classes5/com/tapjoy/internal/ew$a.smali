.class public final Lcom/tapjoy/internal/ew$a;
.super Lcom/tapjoy/internal/ej$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/ew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/ej$a<",
        "Lcom/tapjoy/internal/ew;",
        "Lcom/tapjoy/internal/ew$a;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Ljava/lang/String;

.field public d:Ljava/lang/Integer;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 140
    invoke-direct {p0}, Lcom/tapjoy/internal/ej$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Lcom/tapjoy/internal/ew;
    .locals 7

    .line 170
    new-instance v0, Lcom/tapjoy/internal/ew;

    iget-object v1, p0, Lcom/tapjoy/internal/ew$a;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/tapjoy/internal/ew$a;->d:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/tapjoy/internal/ew$a;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/tapjoy/internal/ew$a;->f:Ljava/lang/String;

    iget-object v5, p0, Lcom/tapjoy/internal/ew$a;->g:Ljava/lang/String;

    invoke-super {p0}, Lcom/tapjoy/internal/ej$a;->a()Lcom/tapjoy/internal/je;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/tapjoy/internal/ew;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/je;)V

    return-object v0
.end method
