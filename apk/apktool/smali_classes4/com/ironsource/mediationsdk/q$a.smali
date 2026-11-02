.class Lcom/ironsource/mediationsdk/q$a;
.super Lcom/ironsource/mediationsdk/q$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/ironsource/mediationsdk/q;


# direct methods
.method public static synthetic $r8$lambda$iUSQCv7vs6iZ6unTgQ0GwDxzAj0()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method constructor <init>(Lcom/ironsource/mediationsdk/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/q$f;-><init>(Lcom/ironsource/mediationsdk/q;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    :try_start_0
    invoke-static {}, Lcom/ironsource/mediationsdk/p;->g()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgets(Lcom/ironsource/mediationsdk/q;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-static {}, Lcom/ironsource/O6;->a()Lcom/ironsource/O6;

    move-result-object v1

    const-string v2, "userId"

    iget-object v3, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    invoke-static {v3}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgets(Lcom/ironsource/mediationsdk/q;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ironsource/O6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgett(Lcom/ironsource/mediationsdk/q;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8
    invoke-static {}, Lcom/ironsource/O6;->a()Lcom/ironsource/O6;

    move-result-object v1

    const-string v2, "appKey"

    iget-object v3, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    invoke-static {v3}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgett(Lcom/ironsource/mediationsdk/q;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ironsource/O6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    :cond_1
    iget-object v1, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgetx(Lcom/ironsource/mediationsdk/q;)Lcom/ironsource/ba;

    move-result-object v2

    invoke-static {v1}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgets(Lcom/ironsource/mediationsdk/q;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/ironsource/ba;->i(Ljava/lang/String;)V

    .line 15
    iget-object v1, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fputw(Lcom/ironsource/mediationsdk/q;J)V

    .line 18
    invoke-static {}, Lcom/ironsource/Nd;->c()Lcom/ironsource/Nd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/Nd;->a()V

    .line 21
    iget-object v1, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    .line 23
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    invoke-static {v3}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgets(Lcom/ironsource/mediationsdk/q;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ironsource/mediationsdk/q$f;->c:Lcom/ironsource/mediationsdk/p$c;

    .line 24
    invoke-virtual {v0, v2, v3, v4}, Lcom/ironsource/mediationsdk/p;->b(Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/mediationsdk/p$c;)Lcom/ironsource/Ue;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fputu(Lcom/ironsource/mediationsdk/q;Lcom/ironsource/Ue;)V

    .line 27
    iget-object v1, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgetu(Lcom/ironsource/mediationsdk/q;)Lcom/ironsource/Ue;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_8

    .line 28
    invoke-static {v1}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgetm(Lcom/ironsource/mediationsdk/q;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 30
    iget-object v1, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgetu(Lcom/ironsource/mediationsdk/q;)Lcom/ironsource/Ue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/Ue;->q()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 32
    iget-object v1, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    sget-object v2, Lcom/ironsource/mediationsdk/q$d;->d:Lcom/ironsource/mediationsdk/q$d;

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/q;->b(Lcom/ironsource/mediationsdk/q$d;)V

    .line 35
    new-instance v1, Lcom/ironsource/Qb;

    invoke-direct {v1}, Lcom/ironsource/Qb;-><init>()V

    .line 36
    iget-object v2, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    invoke-static {v2}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgetu(Lcom/ironsource/mediationsdk/q;)Lcom/ironsource/Ue;

    move-result-object v2

    .line 38
    invoke-virtual {v2}, Lcom/ironsource/Ue;->c()Lcom/ironsource/S3;

    move-result-object v2

    .line 39
    invoke-virtual {v2}, Lcom/ironsource/S3;->b()Lcom/ironsource/K1;

    move-result-object v2

    .line 40
    invoke-virtual {v2}, Lcom/ironsource/K1;->e()Lcom/ironsource/T1;

    move-result-object v2

    .line 41
    invoke-virtual {v2}, Lcom/ironsource/T1;->b()Ljava/util/Map;

    move-result-object v2

    .line 43
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/p;->u()Z

    move-result v3

    .line 44
    invoke-virtual {v1, v2, v3}, Lcom/ironsource/Qb;->a(Ljava/util/Map;Z)V

    .line 47
    iget-object v1, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgetu(Lcom/ironsource/mediationsdk/q;)Lcom/ironsource/Ue;

    move-result-object v1

    .line 49
    invoke-virtual {v1}, Lcom/ironsource/Ue;->c()Lcom/ironsource/S3;

    move-result-object v1

    .line 50
    invoke-virtual {v1}, Lcom/ironsource/S3;->b()Lcom/ironsource/K1;

    move-result-object v1

    .line 51
    invoke-virtual {v1}, Lcom/ironsource/K1;->f()Lcom/ironsource/U1;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 54
    sget-object v2, Lcom/ironsource/a5;->a:Lcom/ironsource/a5;

    .line 55
    invoke-virtual {v1}, Lcom/ironsource/U1;->h()Z

    move-result v3

    .line 56
    invoke-virtual {v2, v3}, Lcom/ironsource/a5;->c(Z)V

    .line 59
    invoke-virtual {v1}, Lcom/ironsource/U1;->g()Z

    move-result v3

    .line 60
    invoke-virtual {v2, v3}, Lcom/ironsource/a5;->a(Z)V

    .line 63
    invoke-virtual {v1}, Lcom/ironsource/U1;->k()I

    move-result v3

    .line 64
    invoke-virtual {v2, v3}, Lcom/ironsource/a5;->a(I)V

    .line 66
    sget-object v2, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    .line 67
    invoke-virtual {v1}, Lcom/ironsource/U1;->i()Z

    move-result v3

    .line 68
    invoke-virtual {v2, v3}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->setUseSharedExecutorService(Z)V

    .line 70
    iget-object v2, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    invoke-static {v2}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgetc(Lcom/ironsource/mediationsdk/q;)Lcom/ironsource/o7;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/ironsource/o7;->a(Lcom/ironsource/U1;)V

    .line 73
    :cond_2
    iget-object v2, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    .line 74
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    invoke-static {v4}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgetu(Lcom/ironsource/mediationsdk/q;)Lcom/ironsource/Ue;

    move-result-object v4

    .line 75
    invoke-virtual {v2, v3, v4}, Lcom/ironsource/mediationsdk/q;->a(Landroid/content/Context;Lcom/ironsource/Ue;)V

    .line 79
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    invoke-static {v4}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgetw(Lcom/ironsource/mediationsdk/q;)J

    move-result-wide v5

    sub-long/2addr v2, v5

    .line 80
    invoke-static {v4}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgetu(Lcom/ironsource/mediationsdk/q;)Lcom/ironsource/Ue;

    move-result-object v4

    .line 81
    invoke-virtual {v4}, Lcom/ironsource/Ue;->i()Lcom/ironsource/Ue$a;

    move-result-object v4

    .line 82
    invoke-virtual {v0, v2, v3, v4}, Lcom/ironsource/mediationsdk/p;->a(JLcom/ironsource/Ue$a;)V

    if-eqz v1, :cond_3

    .line 86
    invoke-virtual {v1}, Lcom/ironsource/U1;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 87
    new-instance v0, Lcom/ironsource/Qd;

    .line 89
    invoke-static {}, Lcom/ironsource/Pb;->k0()Lcom/ironsource/M7;

    move-result-object v1

    invoke-interface {v1}, Lcom/ironsource/M7;->q()Lcom/ironsource/G1;

    move-result-object v1

    new-instance v2, Lcom/ironsource/mediationsdk/q$a$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/ironsource/mediationsdk/q$a$$ExternalSyntheticLambda0;-><init>()V

    .line 91
    invoke-static {}, Lcom/ironsource/Pb;->k0()Lcom/ironsource/M7;

    move-result-object v3

    sget-object v4, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    .line 92
    invoke-virtual {v4}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->getThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ironsource/Qd;-><init>(Lcom/ironsource/F7;Lkotlin/jvm/functions/Function0;Lcom/ironsource/M7;Ljava/util/concurrent/Executor;)V

    .line 94
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 95
    invoke-virtual {v0, v1}, Lcom/ironsource/Qd;->c(Landroid/content/Context;)V

    .line 100
    :cond_3
    iget-object v0, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    new-instance v1, Lcom/ironsource/Ye;

    invoke-direct {v1}, Lcom/ironsource/Ye;-><init>()V

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fputa(Lcom/ironsource/mediationsdk/q;Lcom/ironsource/Ye;)V

    .line 101
    iget-object v0, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgeta(Lcom/ironsource/mediationsdk/q;)Lcom/ironsource/Ye;

    move-result-object v1

    invoke-static {v0}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgetc(Lcom/ironsource/mediationsdk/q;)Lcom/ironsource/o7;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ironsource/Ye;->a(Lcom/ironsource/o7;)V

    .line 107
    iget-object v0, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgetu(Lcom/ironsource/mediationsdk/q;)Lcom/ironsource/Ue;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lcom/ironsource/Ue;->c()Lcom/ironsource/S3;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lcom/ironsource/S3;->b()Lcom/ironsource/K1;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lcom/ironsource/K1;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 111
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 112
    sget-object v0, Lcom/ironsource/y9;->a:Lcom/ironsource/y9$a;

    .line 113
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 114
    invoke-virtual {v0, v1}, Lcom/ironsource/y9$a;->a(Landroid/content/Context;)V

    .line 119
    :cond_4
    iget-object v0, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgetu(Lcom/ironsource/mediationsdk/q;)Lcom/ironsource/Ue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/Ue;->h()Ljava/util/List;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgetr(Lcom/ironsource/mediationsdk/q;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/Sc;

    .line 122
    iget-object v3, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    .line 123
    invoke-static {v3}, Lcom/ironsource/mediationsdk/q;->-$$Nest$mg(Lcom/ironsource/mediationsdk/q;)Z

    move-result v3

    iget-object v4, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    invoke-static {v4}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgetu(Lcom/ironsource/mediationsdk/q;)Lcom/ironsource/Ue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/Ue;->c()Lcom/ironsource/S3;

    move-result-object v4

    .line 124
    invoke-interface {v2, v0, v3, v4}, Lcom/ironsource/Sc;->a(Ljava/util/List;ZLcom/ironsource/S3;)V

    goto :goto_0

    .line 128
    :cond_5
    sget-object v0, Lcom/ironsource/jd;->P:Lcom/ironsource/jd;

    invoke-virtual {v0}, Lcom/ironsource/jd;->i()V

    .line 131
    iget-object v0, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgetu(Lcom/ironsource/mediationsdk/q;)Lcom/ironsource/Ue;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Lcom/ironsource/Ue;->c()Lcom/ironsource/S3;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Lcom/ironsource/S3;->b()Lcom/ironsource/K1;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lcom/ironsource/K1;->d()Lcom/ironsource/O1;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Lcom/ironsource/O1;->f()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 137
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->d()Ljava/lang/String;

    move-result-object v7

    .line 138
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v2

    .line 140
    invoke-virtual {v0}, Lcom/ironsource/O1;->b()Ljava/util/HashSet;

    move-result-object v3

    .line 141
    invoke-virtual {v0}, Lcom/ironsource/O1;->d()Ljava/lang/String;

    move-result-object v4

    .line 142
    invoke-virtual {v0}, Lcom/ironsource/O1;->c()Ljava/lang/String;

    move-result-object v5

    .line 143
    invoke-virtual {v0}, Lcom/ironsource/O1;->e()Z

    move-result v6

    .line 145
    invoke-virtual {v0}, Lcom/ironsource/O1;->a()I

    move-result v8

    .line 146
    invoke-virtual {v0}, Lcom/ironsource/O1;->g()Z

    move-result v9

    .line 147
    invoke-virtual/range {v2 .. v9}, Lcom/ironsource/r4;->a(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IZ)V

    .line 157
    :cond_6
    invoke-static {}, Lcom/ironsource/Pb;->k0()Lcom/ironsource/M7;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/M7;->h()Lcom/ironsource/D7;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/u5;->H()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 158
    invoke-static {}, Lcom/ironsource/Pb;->k0()Lcom/ironsource/M7;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/M7;->u()Lcom/ironsource/n7;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/n7;->start()V

    return-void

    .line 163
    :cond_7
    iget-object v0, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgetl(Lcom/ironsource/mediationsdk/q;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 164
    sget-object v1, Lcom/ironsource/mediationsdk/q$d;->c:Lcom/ironsource/mediationsdk/q$d;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/q;->b(Lcom/ironsource/mediationsdk/q$d;)V

    .line 165
    iget-object v0, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    invoke-static {v0, v3}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fputl(Lcom/ironsource/mediationsdk/q;Z)V

    .line 167
    invoke-static {v0}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgetr(Lcom/ironsource/mediationsdk/q;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/Sc;

    .line 168
    const-string v2, "serverResponseIsNotValid"

    invoke-interface {v1, v2}, Lcom/ironsource/Sc;->g(Ljava/lang/String;)V

    goto :goto_1

    .line 174
    :cond_8
    invoke-static {v1}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgetg(Lcom/ironsource/mediationsdk/q;)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_9

    .line 175
    invoke-static {v1, v3}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fputv(Lcom/ironsource/mediationsdk/q;Z)V

    .line 177
    invoke-static {v1}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgetr(Lcom/ironsource/mediationsdk/q;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/Sc;

    .line 178
    invoke-interface {v1}, Lcom/ironsource/Sc;->a()V

    goto :goto_2

    .line 182
    :cond_9
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/q$f;->a:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgetg(Lcom/ironsource/mediationsdk/q;)I

    move-result v1

    invoke-static {v0}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgeth(Lcom/ironsource/mediationsdk/q;)I

    move-result v2

    if-ge v1, v2, :cond_a

    .line 183
    invoke-static {v0, v3}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fputk(Lcom/ironsource/mediationsdk/q;Z)V

    .line 184
    invoke-static {v0}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgetm(Lcom/ironsource/mediationsdk/q;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgetf(Lcom/ironsource/mediationsdk/q;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    invoke-virtual {v1, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 185
    iget-object v0, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgetg(Lcom/ironsource/mediationsdk/q;)I

    move-result v1

    invoke-static {v0}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgeti(Lcom/ironsource/mediationsdk/q;)I

    move-result v2

    if-ge v1, v2, :cond_a

    invoke-static {v0}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgetf(Lcom/ironsource/mediationsdk/q;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fputf(Lcom/ironsource/mediationsdk/q;I)V

    .line 187
    :cond_a
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/q$f;->a:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgetg(Lcom/ironsource/mediationsdk/q;)I

    move-result v1

    invoke-static {v0}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgetj(Lcom/ironsource/mediationsdk/q;)I

    move-result v0

    if-ne v1, v0, :cond_e

    .line 188
    :cond_b
    iget-object v0, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgetl(Lcom/ironsource/mediationsdk/q;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 189
    invoke-static {v0, v3}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fputl(Lcom/ironsource/mediationsdk/q;Z)V

    .line 190
    iget-object v0, p0, Lcom/ironsource/mediationsdk/q$f;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 191
    const-string v0, "noServerResponse"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/q$f;->b:Ljava/lang/String;

    .line 194
    :cond_c
    iget-object v0, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgetr(Lcom/ironsource/mediationsdk/q;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/Sc;

    .line 195
    iget-object v2, p0, Lcom/ironsource/mediationsdk/q$f;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/ironsource/Sc;->g(Ljava/lang/String;)V

    goto :goto_3

    .line 198
    :cond_d
    iget-object v0, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    sget-object v1, Lcom/ironsource/mediationsdk/q$d;->c:Lcom/ironsource/mediationsdk/q$d;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/q;->b(Lcom/ironsource/mediationsdk/q$d;)V

    .line 199
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "Mediation availability false reason: No server response"

    .line 200
    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 206
    :cond_e
    iget-object v0, p0, Lcom/ironsource/mediationsdk/q$a;->e:Lcom/ironsource/mediationsdk/q;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fgetg(Lcom/ironsource/mediationsdk/q;)I

    move-result v1

    add-int/2addr v1, v3

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/q;->-$$Nest$fputg(Lcom/ironsource/mediationsdk/q;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 210
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 211
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :cond_f
    return-void
.end method
