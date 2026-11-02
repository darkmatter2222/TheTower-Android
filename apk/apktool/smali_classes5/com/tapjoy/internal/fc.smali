.class public final Lcom/tapjoy/internal/fc;
.super Lcom/tapjoy/internal/ej;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/fc$b;,
        Lcom/tapjoy/internal/fc$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/ej<",
        "Lcom/tapjoy/internal/fc;",
        "Lcom/tapjoy/internal/fc$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lcom/tapjoy/internal/el;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/el<",
            "Lcom/tapjoy/internal/fc;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/lang/Integer;

.field public static final e:Ljava/lang/Integer;

.field public static final f:Ljava/lang/Integer;


# instance fields
.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/Integer;

.field public final n:Ljava/lang/Integer;

.field public final o:Ljava/lang/Integer;

.field public final p:Ljava/lang/String;

.field public final q:Ljava/lang/String;

.field public final r:Ljava/lang/String;

.field public final s:Ljava/lang/String;

.field public final t:Ljava/lang/String;

.field public final u:Ljava/lang/String;

.field public final v:Ljava/lang/String;

.field public final w:Ljava/lang/String;

.field public final x:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/tapjoy/internal/fc$b;

    invoke-direct {v0}, Lcom/tapjoy/internal/fc$b;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/fc;->c:Lcom/tapjoy/internal/el;

    const/4 v0, 0x0

    .line 38
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/fc;->d:Ljava/lang/Integer;

    .line 40
    sput-object v0, Lcom/tapjoy/internal/fc;->e:Ljava/lang/Integer;

    .line 42
    sput-object v0, Lcom/tapjoy/internal/fc;->f:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/je;)V
    .locals 2

    .line 176
    sget-object v0, Lcom/tapjoy/internal/fc;->c:Lcom/tapjoy/internal/el;

    move-object/from16 v1, p19

    invoke-direct {p0, v0, v1}, Lcom/tapjoy/internal/ej;-><init>(Lcom/tapjoy/internal/el;Lcom/tapjoy/internal/je;)V

    .line 177
    iput-object p1, p0, Lcom/tapjoy/internal/fc;->g:Ljava/lang/String;

    .line 178
    iput-object p2, p0, Lcom/tapjoy/internal/fc;->h:Ljava/lang/String;

    .line 179
    iput-object p3, p0, Lcom/tapjoy/internal/fc;->i:Ljava/lang/String;

    .line 180
    iput-object p4, p0, Lcom/tapjoy/internal/fc;->j:Ljava/lang/String;

    .line 181
    iput-object p5, p0, Lcom/tapjoy/internal/fc;->k:Ljava/lang/String;

    .line 182
    iput-object p6, p0, Lcom/tapjoy/internal/fc;->l:Ljava/lang/String;

    .line 183
    iput-object p7, p0, Lcom/tapjoy/internal/fc;->m:Ljava/lang/Integer;

    .line 184
    iput-object p8, p0, Lcom/tapjoy/internal/fc;->n:Ljava/lang/Integer;

    .line 185
    iput-object p9, p0, Lcom/tapjoy/internal/fc;->o:Ljava/lang/Integer;

    .line 186
    iput-object p10, p0, Lcom/tapjoy/internal/fc;->p:Ljava/lang/String;

    .line 187
    iput-object p11, p0, Lcom/tapjoy/internal/fc;->q:Ljava/lang/String;

    .line 188
    iput-object p12, p0, Lcom/tapjoy/internal/fc;->r:Ljava/lang/String;

    .line 189
    iput-object p13, p0, Lcom/tapjoy/internal/fc;->s:Ljava/lang/String;

    move-object/from16 p1, p14

    .line 190
    iput-object p1, p0, Lcom/tapjoy/internal/fc;->t:Ljava/lang/String;

    move-object/from16 p1, p15

    .line 191
    iput-object p1, p0, Lcom/tapjoy/internal/fc;->u:Ljava/lang/String;

    move-object/from16 p1, p16

    .line 192
    iput-object p1, p0, Lcom/tapjoy/internal/fc;->v:Ljava/lang/String;

    move-object/from16 p1, p17

    .line 193
    iput-object p1, p0, Lcom/tapjoy/internal/fc;->w:Ljava/lang/String;

    move-object/from16 p1, p18

    .line 194
    iput-object p1, p0, Lcom/tapjoy/internal/fc;->x:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 225
    :cond_0
    instance-of v1, p1, Lcom/tapjoy/internal/fc;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 226
    :cond_1
    check-cast p1, Lcom/tapjoy/internal/fc;

    .line 227
    invoke-virtual {p0}, Lcom/tapjoy/internal/fc;->a()Lcom/tapjoy/internal/je;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tapjoy/internal/fc;->a()Lcom/tapjoy/internal/je;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tapjoy/internal/je;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/fc;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/fc;->g:Ljava/lang/String;

    .line 228
    invoke-static {v1, v3}, Lcom/tapjoy/internal/eq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/fc;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/fc;->h:Ljava/lang/String;

    .line 229
    invoke-static {v1, v3}, Lcom/tapjoy/internal/eq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/fc;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/fc;->i:Ljava/lang/String;

    .line 230
    invoke-static {v1, v3}, Lcom/tapjoy/internal/eq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/fc;->j:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/fc;->j:Ljava/lang/String;

    .line 231
    invoke-static {v1, v3}, Lcom/tapjoy/internal/eq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/fc;->k:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/fc;->k:Ljava/lang/String;

    .line 232
    invoke-static {v1, v3}, Lcom/tapjoy/internal/eq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/fc;->l:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/fc;->l:Ljava/lang/String;

    .line 233
    invoke-static {v1, v3}, Lcom/tapjoy/internal/eq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/fc;->m:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/tapjoy/internal/fc;->m:Ljava/lang/Integer;

    .line 234
    invoke-static {v1, v3}, Lcom/tapjoy/internal/eq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/fc;->n:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/tapjoy/internal/fc;->n:Ljava/lang/Integer;

    .line 235
    invoke-static {v1, v3}, Lcom/tapjoy/internal/eq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/fc;->o:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/tapjoy/internal/fc;->o:Ljava/lang/Integer;

    .line 236
    invoke-static {v1, v3}, Lcom/tapjoy/internal/eq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/fc;->p:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/fc;->p:Ljava/lang/String;

    .line 237
    invoke-static {v1, v3}, Lcom/tapjoy/internal/eq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/fc;->q:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/fc;->q:Ljava/lang/String;

    .line 238
    invoke-static {v1, v3}, Lcom/tapjoy/internal/eq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/fc;->r:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/fc;->r:Ljava/lang/String;

    .line 239
    invoke-static {v1, v3}, Lcom/tapjoy/internal/eq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/fc;->s:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/fc;->s:Ljava/lang/String;

    .line 240
    invoke-static {v1, v3}, Lcom/tapjoy/internal/eq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/fc;->t:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/fc;->t:Ljava/lang/String;

    .line 241
    invoke-static {v1, v3}, Lcom/tapjoy/internal/eq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/fc;->u:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/fc;->u:Ljava/lang/String;

    .line 242
    invoke-static {v1, v3}, Lcom/tapjoy/internal/eq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/fc;->v:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/fc;->v:Ljava/lang/String;

    .line 243
    invoke-static {v1, v3}, Lcom/tapjoy/internal/eq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/fc;->w:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/fc;->w:Ljava/lang/String;

    .line 244
    invoke-static {v1, v3}, Lcom/tapjoy/internal/eq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/internal/fc;->x:Ljava/lang/String;

    iget-object p1, p1, Lcom/tapjoy/internal/fc;->x:Ljava/lang/String;

    .line 245
    invoke-static {v1, p1}, Lcom/tapjoy/internal/eq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    .line 250
    iget v0, p0, Lcom/tapjoy/internal/ej;->b:I

    if-nez v0, :cond_12

    .line 252
    invoke-virtual {p0}, Lcom/tapjoy/internal/fc;->a()Lcom/tapjoy/internal/je;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/je;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 253
    iget-object v1, p0, Lcom/tapjoy/internal/fc;->g:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 254
    iget-object v1, p0, Lcom/tapjoy/internal/fc;->h:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 255
    iget-object v1, p0, Lcom/tapjoy/internal/fc;->i:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 256
    iget-object v1, p0, Lcom/tapjoy/internal/fc;->j:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 257
    iget-object v1, p0, Lcom/tapjoy/internal/fc;->k:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 258
    iget-object v1, p0, Lcom/tapjoy/internal/fc;->l:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 259
    iget-object v1, p0, Lcom/tapjoy/internal/fc;->m:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 260
    iget-object v1, p0, Lcom/tapjoy/internal/fc;->n:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    move v1, v2

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 261
    iget-object v1, p0, Lcom/tapjoy/internal/fc;->o:Ljava/lang/Integer;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_8

    :cond_8
    move v1, v2

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 262
    iget-object v1, p0, Lcom/tapjoy/internal/fc;->p:Ljava/lang/String;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_9

    :cond_9
    move v1, v2

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 263
    iget-object v1, p0, Lcom/tapjoy/internal/fc;->q:Ljava/lang/String;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_a

    :cond_a
    move v1, v2

    :goto_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 264
    iget-object v1, p0, Lcom/tapjoy/internal/fc;->r:Ljava/lang/String;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_b

    :cond_b
    move v1, v2

    :goto_b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 265
    iget-object v1, p0, Lcom/tapjoy/internal/fc;->s:Ljava/lang/String;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_c

    :cond_c
    move v1, v2

    :goto_c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 266
    iget-object v1, p0, Lcom/tapjoy/internal/fc;->t:Ljava/lang/String;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_d

    :cond_d
    move v1, v2

    :goto_d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 267
    iget-object v1, p0, Lcom/tapjoy/internal/fc;->u:Ljava/lang/String;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_e

    :cond_e
    move v1, v2

    :goto_e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 268
    iget-object v1, p0, Lcom/tapjoy/internal/fc;->v:Ljava/lang/String;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_f

    :cond_f
    move v1, v2

    :goto_f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 269
    iget-object v1, p0, Lcom/tapjoy/internal/fc;->w:Ljava/lang/String;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_10

    :cond_10
    move v1, v2

    :goto_10
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 270
    iget-object v1, p0, Lcom/tapjoy/internal/fc;->x:Ljava/lang/String;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_11
    add-int/2addr v0, v2

    .line 271
    iput v0, p0, Lcom/tapjoy/internal/ej;->b:I

    :cond_12
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    iget-object v1, p0, Lcom/tapjoy/internal/fc;->g:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ", mac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fc;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    :cond_0
    iget-object v1, p0, Lcom/tapjoy/internal/fc;->h:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, ", deviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fc;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    :cond_1
    iget-object v1, p0, Lcom/tapjoy/internal/fc;->i:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, ", deviceMaker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fc;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    :cond_2
    iget-object v1, p0, Lcom/tapjoy/internal/fc;->j:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, ", deviceModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fc;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    :cond_3
    iget-object v1, p0, Lcom/tapjoy/internal/fc;->k:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v1, ", osName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fc;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    :cond_4
    iget-object v1, p0, Lcom/tapjoy/internal/fc;->l:Ljava/lang/String;

    if-eqz v1, :cond_5

    const-string v1, ", osVer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fc;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    :cond_5
    iget-object v1, p0, Lcom/tapjoy/internal/fc;->m:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    const-string v1, ", displayD="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fc;->m:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 286
    :cond_6
    iget-object v1, p0, Lcom/tapjoy/internal/fc;->n:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    const-string v1, ", displayW="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fc;->n:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 287
    :cond_7
    iget-object v1, p0, Lcom/tapjoy/internal/fc;->o:Ljava/lang/Integer;

    if-eqz v1, :cond_8

    const-string v1, ", displayH="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fc;->o:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 288
    :cond_8
    iget-object v1, p0, Lcom/tapjoy/internal/fc;->p:Ljava/lang/String;

    if-eqz v1, :cond_9

    const-string v1, ", locale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fc;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    :cond_9
    iget-object v1, p0, Lcom/tapjoy/internal/fc;->q:Ljava/lang/String;

    if-eqz v1, :cond_a

    const-string v1, ", timezone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fc;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    :cond_a
    iget-object v1, p0, Lcom/tapjoy/internal/fc;->r:Ljava/lang/String;

    if-eqz v1, :cond_b

    const-string v1, ", pkgId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fc;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    :cond_b
    iget-object v1, p0, Lcom/tapjoy/internal/fc;->s:Ljava/lang/String;

    if-eqz v1, :cond_c

    const-string v1, ", pkgSign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fc;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    :cond_c
    iget-object v1, p0, Lcom/tapjoy/internal/fc;->t:Ljava/lang/String;

    if-eqz v1, :cond_d

    const-string v1, ", sdk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fc;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    :cond_d
    iget-object v1, p0, Lcom/tapjoy/internal/fc;->u:Ljava/lang/String;

    if-eqz v1, :cond_e

    const-string v1, ", countrySim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fc;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    :cond_e
    iget-object v1, p0, Lcom/tapjoy/internal/fc;->v:Ljava/lang/String;

    if-eqz v1, :cond_f

    const-string v1, ", countryNet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fc;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    :cond_f
    iget-object v1, p0, Lcom/tapjoy/internal/fc;->w:Ljava/lang/String;

    if-eqz v1, :cond_10

    const-string v1, ", imei="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fc;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    :cond_10
    iget-object v1, p0, Lcom/tapjoy/internal/fc;->x:Ljava/lang/String;

    if-eqz v1, :cond_11

    const-string v1, ", androidId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fc;->x:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    const/4 v1, 0x2

    .line 297
    const-string v2, "Info{"

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
