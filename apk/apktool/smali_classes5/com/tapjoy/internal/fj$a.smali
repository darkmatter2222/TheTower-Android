.class public final Lcom/tapjoy/internal/fj$a;
.super Lcom/tapjoy/internal/ej$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/fj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/ej$a<",
        "Lcom/tapjoy/internal/fj;",
        "Lcom/tapjoy/internal/fj$a;",
        ">;"
    }
.end annotation


# instance fields
.field public A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public B:Ljava/lang/Boolean;

.field public c:Ljava/lang/Long;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/Integer;

.field public f:Ljava/lang/Integer;

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tapjoy/internal/fg;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/lang/Integer;

.field public i:Ljava/lang/Long;

.field public j:Ljava/lang/Long;

.field public k:Ljava/lang/Long;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/Integer;

.field public n:Ljava/lang/Double;

.field public o:Ljava/lang/Long;

.field public p:Ljava/lang/Double;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/Boolean;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/Integer;

.field public u:Ljava/lang/Integer;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 457
    invoke-direct {p0}, Lcom/tapjoy/internal/ej$a;-><init>()V

    .line 458
    invoke-static {}, Lcom/tapjoy/internal/eq;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/fj$a;->g:Ljava/util/List;

    .line 459
    invoke-static {}, Lcom/tapjoy/internal/eq;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/fj$a;->A:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final b()Lcom/tapjoy/internal/fj;
    .locals 30

    move-object/from16 v0, p0

    .line 596
    new-instance v1, Lcom/tapjoy/internal/fj;

    iget-object v2, v0, Lcom/tapjoy/internal/fj$a;->c:Ljava/lang/Long;

    iget-object v3, v0, Lcom/tapjoy/internal/fj$a;->d:Ljava/lang/String;

    iget-object v4, v0, Lcom/tapjoy/internal/fj$a;->e:Ljava/lang/Integer;

    iget-object v5, v0, Lcom/tapjoy/internal/fj$a;->f:Ljava/lang/Integer;

    iget-object v6, v0, Lcom/tapjoy/internal/fj$a;->g:Ljava/util/List;

    iget-object v7, v0, Lcom/tapjoy/internal/fj$a;->h:Ljava/lang/Integer;

    iget-object v8, v0, Lcom/tapjoy/internal/fj$a;->i:Ljava/lang/Long;

    iget-object v9, v0, Lcom/tapjoy/internal/fj$a;->j:Ljava/lang/Long;

    iget-object v10, v0, Lcom/tapjoy/internal/fj$a;->k:Ljava/lang/Long;

    iget-object v11, v0, Lcom/tapjoy/internal/fj$a;->l:Ljava/lang/String;

    iget-object v12, v0, Lcom/tapjoy/internal/fj$a;->m:Ljava/lang/Integer;

    iget-object v13, v0, Lcom/tapjoy/internal/fj$a;->n:Ljava/lang/Double;

    iget-object v14, v0, Lcom/tapjoy/internal/fj$a;->o:Ljava/lang/Long;

    iget-object v15, v0, Lcom/tapjoy/internal/fj$a;->p:Ljava/lang/Double;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/tapjoy/internal/fj$a;->q:Ljava/lang/String;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/tapjoy/internal/fj$a;->r:Ljava/lang/Boolean;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/tapjoy/internal/fj$a;->s:Ljava/lang/String;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/tapjoy/internal/fj$a;->t:Ljava/lang/Integer;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/tapjoy/internal/fj$a;->u:Ljava/lang/Integer;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/tapjoy/internal/fj$a;->v:Ljava/lang/String;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/tapjoy/internal/fj$a;->w:Ljava/lang/String;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/tapjoy/internal/fj$a;->x:Ljava/lang/String;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/tapjoy/internal/fj$a;->y:Ljava/lang/String;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/tapjoy/internal/fj$a;->z:Ljava/lang/String;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/tapjoy/internal/fj$a;->A:Ljava/util/List;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/tapjoy/internal/fj$a;->B:Ljava/lang/Boolean;

    invoke-super {v0}, Lcom/tapjoy/internal/ej$a;->a()Lcom/tapjoy/internal/je;

    move-result-object v28

    move-object/from16 v29, v27

    move-object/from16 v27, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v25

    move-object/from16 v25, v26

    move-object/from16 v26, v29

    invoke-direct/range {v1 .. v28}, Lcom/tapjoy/internal/fj;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Long;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Lcom/tapjoy/internal/je;)V

    move-object/from16 v16, v1

    return-object v16
.end method
