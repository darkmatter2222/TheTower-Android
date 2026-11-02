.class public final Lcom/tapjoy/internal/fc$a;
.super Lcom/tapjoy/internal/ej$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/fc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/ej$a<",
        "Lcom/tapjoy/internal/fc;",
        "Lcom/tapjoy/internal/fc$a;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/Integer;

.field public j:Ljava/lang/Integer;

.field public k:Ljava/lang/Integer;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 337
    invoke-direct {p0}, Lcom/tapjoy/internal/ej$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Lcom/tapjoy/internal/fc;
    .locals 22

    move-object/from16 v0, p0

    .line 432
    new-instance v1, Lcom/tapjoy/internal/fc;

    iget-object v2, v0, Lcom/tapjoy/internal/fc$a;->c:Ljava/lang/String;

    iget-object v3, v0, Lcom/tapjoy/internal/fc$a;->d:Ljava/lang/String;

    iget-object v4, v0, Lcom/tapjoy/internal/fc$a;->e:Ljava/lang/String;

    iget-object v5, v0, Lcom/tapjoy/internal/fc$a;->f:Ljava/lang/String;

    iget-object v6, v0, Lcom/tapjoy/internal/fc$a;->g:Ljava/lang/String;

    iget-object v7, v0, Lcom/tapjoy/internal/fc$a;->h:Ljava/lang/String;

    iget-object v8, v0, Lcom/tapjoy/internal/fc$a;->i:Ljava/lang/Integer;

    iget-object v9, v0, Lcom/tapjoy/internal/fc$a;->j:Ljava/lang/Integer;

    iget-object v10, v0, Lcom/tapjoy/internal/fc$a;->k:Ljava/lang/Integer;

    iget-object v11, v0, Lcom/tapjoy/internal/fc$a;->l:Ljava/lang/String;

    iget-object v12, v0, Lcom/tapjoy/internal/fc$a;->m:Ljava/lang/String;

    iget-object v13, v0, Lcom/tapjoy/internal/fc$a;->n:Ljava/lang/String;

    iget-object v14, v0, Lcom/tapjoy/internal/fc$a;->o:Ljava/lang/String;

    iget-object v15, v0, Lcom/tapjoy/internal/fc$a;->p:Ljava/lang/String;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/tapjoy/internal/fc$a;->q:Ljava/lang/String;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/tapjoy/internal/fc$a;->r:Ljava/lang/String;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/tapjoy/internal/fc$a;->s:Ljava/lang/String;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/tapjoy/internal/fc$a;->t:Ljava/lang/String;

    invoke-super {v0}, Lcom/tapjoy/internal/ej$a;->a()Lcom/tapjoy/internal/je;

    move-result-object v20

    move-object/from16 v21, v19

    move-object/from16 v19, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v21

    invoke-direct/range {v1 .. v20}, Lcom/tapjoy/internal/fc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/je;)V

    move-object/from16 v16, v1

    return-object v16
.end method
