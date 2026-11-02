.class public Lcom/tapjoy/internal/ie;
.super Lcom/tapjoy/internal/ia;
.source "SourceFile"


# static fields
.field public static final n:Lcom/tapjoy/internal/bc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/bc<",
            "Lcom/tapjoy/internal/ie;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lcom/tapjoy/internal/ih;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public b:Lcom/tapjoy/internal/ih;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public c:Lcom/tapjoy/internal/ih;

.field public d:Landroid/graphics/Point;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public e:Lcom/tapjoy/internal/ih;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public f:Lcom/tapjoy/internal/ih;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public g:Ljava/lang/String;

.field public h:Lcom/tapjoy/internal/gv;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tapjoy/internal/ic;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tapjoy/internal/ic;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public l:J

.field public m:Lcom/tapjoy/internal/if;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 186
    new-instance v0, Lcom/tapjoy/internal/ie$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/ie$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/ie;->n:Lcom/tapjoy/internal/bc;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/tapjoy/internal/ia;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/ie;->i:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/ie;->j:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(Lcom/tapjoy/internal/bh;)V
    .locals 8

    .line 53
    invoke-direct {p0}, Lcom/tapjoy/internal/ia;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/ie;->i:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/ie;->j:Ljava/util/ArrayList;

    .line 57
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->h()V

    const/4 v0, 0x0

    move-object v1, v0

    .line 58
    :goto_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->j()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 59
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->l()Ljava/lang/String;

    move-result-object v2

    .line 60
    const-string v3, "frame"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "landscape"

    const-string v5, "portrait"

    if-eqz v3, :cond_5

    .line 61
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->h()V

    .line 62
    :goto_1
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->j()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 63
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->l()Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 65
    sget-object v2, Lcom/tapjoy/internal/ih;->e:Lcom/tapjoy/internal/bc;

    .line 1212
    invoke-interface {v2, p1}, Lcom/tapjoy/internal/bc;->a(Lcom/tapjoy/internal/bh;)Ljava/lang/Object;

    move-result-object v2

    .line 65
    check-cast v2, Lcom/tapjoy/internal/ih;

    iput-object v2, p0, Lcom/tapjoy/internal/ie;->a:Lcom/tapjoy/internal/ih;

    goto :goto_1

    .line 66
    :cond_0
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 67
    sget-object v2, Lcom/tapjoy/internal/ih;->e:Lcom/tapjoy/internal/bc;

    .line 2212
    invoke-interface {v2, p1}, Lcom/tapjoy/internal/bc;->a(Lcom/tapjoy/internal/bh;)Ljava/lang/Object;

    move-result-object v2

    .line 67
    check-cast v2, Lcom/tapjoy/internal/ih;

    iput-object v2, p0, Lcom/tapjoy/internal/ie;->b:Lcom/tapjoy/internal/ih;

    goto :goto_1

    .line 68
    :cond_1
    const-string v3, "close_button"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 69
    sget-object v2, Lcom/tapjoy/internal/ih;->e:Lcom/tapjoy/internal/bc;

    .line 3212
    invoke-interface {v2, p1}, Lcom/tapjoy/internal/bc;->a(Lcom/tapjoy/internal/bh;)Ljava/lang/Object;

    move-result-object v2

    .line 69
    check-cast v2, Lcom/tapjoy/internal/ih;

    iput-object v2, p0, Lcom/tapjoy/internal/ie;->c:Lcom/tapjoy/internal/ih;

    goto :goto_1

    .line 70
    :cond_2
    const-string v3, "close_button_offset"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 71
    sget-object v2, Lcom/tapjoy/internal/bd;->a:Lcom/tapjoy/internal/bc;

    .line 4212
    invoke-interface {v2, p1}, Lcom/tapjoy/internal/bc;->a(Lcom/tapjoy/internal/bh;)Ljava/lang/Object;

    move-result-object v2

    .line 71
    check-cast v2, Landroid/graphics/Point;

    iput-object v2, p0, Lcom/tapjoy/internal/ie;->d:Landroid/graphics/Point;

    goto :goto_1

    .line 73
    :cond_3
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->s()V

    goto :goto_1

    .line 76
    :cond_4
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->i()V

    goto :goto_0

    .line 77
    :cond_5
    const-string v3, "creative"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 78
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->h()V

    .line 79
    :goto_2
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->j()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 80
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->l()Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 82
    sget-object v2, Lcom/tapjoy/internal/ih;->e:Lcom/tapjoy/internal/bc;

    .line 5212
    invoke-interface {v2, p1}, Lcom/tapjoy/internal/bc;->a(Lcom/tapjoy/internal/bh;)Ljava/lang/Object;

    move-result-object v2

    .line 82
    check-cast v2, Lcom/tapjoy/internal/ih;

    iput-object v2, p0, Lcom/tapjoy/internal/ie;->e:Lcom/tapjoy/internal/ih;

    goto :goto_2

    .line 83
    :cond_6
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 84
    sget-object v2, Lcom/tapjoy/internal/ih;->e:Lcom/tapjoy/internal/bc;

    .line 6212
    invoke-interface {v2, p1}, Lcom/tapjoy/internal/bc;->a(Lcom/tapjoy/internal/bh;)Ljava/lang/Object;

    move-result-object v2

    .line 84
    check-cast v2, Lcom/tapjoy/internal/ih;

    iput-object v2, p0, Lcom/tapjoy/internal/ie;->f:Lcom/tapjoy/internal/ih;

    goto :goto_2

    .line 86
    :cond_7
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->s()V

    goto :goto_2

    .line 89
    :cond_8
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->i()V

    goto/16 :goto_0

    .line 90
    :cond_9
    const-string v3, "url"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 91
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/internal/ie;->g:Ljava/lang/String;

    goto/16 :goto_0

    .line 92
    :cond_a
    invoke-static {v2}, Lcom/tapjoy/internal/hy;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 93
    invoke-static {v2, p1}, Lcom/tapjoy/internal/hy;->a(Ljava/lang/String;Lcom/tapjoy/internal/bh;)Lcom/tapjoy/internal/hy;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/internal/ie;->h:Lcom/tapjoy/internal/gv;

    goto/16 :goto_0

    .line 94
    :cond_b
    const-string v3, "mappings"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 95
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->h()V

    .line 96
    :goto_3
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->j()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 97
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->l()Ljava/lang/String;

    move-result-object v2

    .line 98
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 99
    iget-object v2, p0, Lcom/tapjoy/internal/ie;->i:Ljava/util/ArrayList;

    sget-object v3, Lcom/tapjoy/internal/ic;->h:Lcom/tapjoy/internal/bc;

    invoke-virtual {p1, v2, v3}, Lcom/tapjoy/internal/bh;->a(Ljava/util/List;Lcom/tapjoy/internal/bc;)V

    goto :goto_3

    .line 100
    :cond_c
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 101
    iget-object v2, p0, Lcom/tapjoy/internal/ie;->j:Ljava/util/ArrayList;

    sget-object v3, Lcom/tapjoy/internal/ic;->h:Lcom/tapjoy/internal/bc;

    invoke-virtual {p1, v2, v3}, Lcom/tapjoy/internal/bh;->a(Ljava/util/List;Lcom/tapjoy/internal/bc;)V

    goto :goto_3

    .line 103
    :cond_d
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->s()V

    goto :goto_3

    .line 106
    :cond_e
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->i()V

    goto/16 :goto_0

    .line 107
    :cond_f
    const-string v3, "meta"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 108
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->d()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/internal/ie;->k:Ljava/util/Map;

    goto/16 :goto_0

    .line 109
    :cond_10
    const-string v3, "ttl"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 110
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->p()D

    move-result-wide v2

    .line 111
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v6

    double-to-long v2, v2

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/tapjoy/internal/ie;->l:J

    goto/16 :goto_0

    .line 112
    :cond_11
    const-string v3, "no_more_today"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 113
    sget-object v2, Lcom/tapjoy/internal/if;->d:Lcom/tapjoy/internal/bc;

    .line 7212
    invoke-interface {v2, p1}, Lcom/tapjoy/internal/bc;->a(Lcom/tapjoy/internal/bh;)Ljava/lang/Object;

    move-result-object v2

    .line 113
    check-cast v2, Lcom/tapjoy/internal/if;

    iput-object v2, p0, Lcom/tapjoy/internal/ie;->m:Lcom/tapjoy/internal/if;

    goto/16 :goto_0

    .line 114
    :cond_12
    const-string v3, "ad_content"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 115
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->b()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 116
    :cond_13
    const-string v3, "redirect_url"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 117
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->b()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 119
    :cond_14
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->s()V

    goto/16 :goto_0

    .line 122
    :cond_15
    invoke-virtual {p1}, Lcom/tapjoy/internal/bh;->i()V

    .line 124
    iget-object p1, p0, Lcom/tapjoy/internal/ie;->g:Ljava/lang/String;

    if-nez p1, :cond_16

    .line 125
    const-string p1, ""

    iput-object p1, p0, Lcom/tapjoy/internal/ie;->g:Ljava/lang/String;

    .line 128
    :cond_16
    iget-object p1, p0, Lcom/tapjoy/internal/ie;->i:Ljava/util/ArrayList;

    if-eqz p1, :cond_19

    .line 129
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_17
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/internal/ic;

    .line 130
    iget-object v3, v2, Lcom/tapjoy/internal/ic;->f:Ljava/lang/String;

    if-nez v3, :cond_18

    .line 131
    iput-object v0, v2, Lcom/tapjoy/internal/ic;->f:Ljava/lang/String;

    .line 133
    :cond_18
    iget-object v3, v2, Lcom/tapjoy/internal/ic;->e:Ljava/lang/String;

    if-nez v3, :cond_17

    .line 134
    iput-object v1, v2, Lcom/tapjoy/internal/ic;->e:Ljava/lang/String;

    goto :goto_4

    .line 138
    :cond_19
    iget-object p1, p0, Lcom/tapjoy/internal/ie;->j:Ljava/util/ArrayList;

    if-eqz p1, :cond_1c

    .line 139
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1a
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/internal/ic;

    .line 140
    iget-object v3, v2, Lcom/tapjoy/internal/ic;->f:Ljava/lang/String;

    if-nez v3, :cond_1b

    .line 141
    iput-object v0, v2, Lcom/tapjoy/internal/ic;->f:Ljava/lang/String;

    .line 143
    :cond_1b
    iget-object v3, v2, Lcom/tapjoy/internal/ic;->e:Ljava/lang/String;

    if-nez v3, :cond_1a

    .line 144
    iput-object v1, v2, Lcom/tapjoy/internal/ic;->e:Ljava/lang/String;

    goto :goto_5

    :cond_1c
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/tapjoy/internal/ie;->c:Lcom/tapjoy/internal/ih;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/ie;->a:Lcom/tapjoy/internal/ih;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/ie;->e:Lcom/tapjoy/internal/ih;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Z
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/tapjoy/internal/ie;->c:Lcom/tapjoy/internal/ih;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/ie;->b:Lcom/tapjoy/internal/ih;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/ie;->f:Lcom/tapjoy/internal/ih;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
