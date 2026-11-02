.class Lcom/applovin/impl/q3$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/w2$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/q3;->setListAdapter(Lcom/applovin/impl/s3;Lcom/applovin/impl/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/c;

.field final synthetic b:Lcom/applovin/impl/q3;


# direct methods
.method constructor <init>(Lcom/applovin/impl/q3;Lcom/applovin/impl/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/q3$b;->b:Lcom/applovin/impl/q3;

    iput-object p2, p0, Lcom/applovin/impl/q3$b;->a:Lcom/applovin/impl/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/impl/n2;Lcom/applovin/impl/v2;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/applovin/impl/n2;->b()I

    move-result v0

    .line 3
    sget-object v1, Lcom/applovin/impl/s3$e;->a:Lcom/applovin/impl/s3$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 5
    invoke-virtual {p2}, Lcom/applovin/impl/v2;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/applovin/impl/v2;->b()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/applovin/impl/q3$b;->b:Lcom/applovin/impl/q3;

    invoke-static {p1, p2, v0}, Lcom/applovin/impl/u7;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void

    .line 7
    :cond_0
    sget-object v1, Lcom/applovin/impl/s3$e;->b:Lcom/applovin/impl/s3$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/applovin/impl/q3$b;->b:Lcom/applovin/impl/q3;

    invoke-static {p1}, Lcom/applovin/impl/q3;->b(Lcom/applovin/impl/q3;)Lcom/applovin/impl/s3;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/applovin/impl/s3;->a(Lcom/applovin/impl/v2;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 11
    iget-object p1, p0, Lcom/applovin/impl/q3$b;->b:Lcom/applovin/impl/q3;

    iget-object p2, p0, Lcom/applovin/impl/q3$b;->a:Lcom/applovin/impl/c;

    new-instance v0, Lcom/applovin/impl/q3$b$a;

    invoke-direct {v0, p0}, Lcom/applovin/impl/q3$b$a;-><init>(Lcom/applovin/impl/q3$b;)V

    const-class v1, Lcom/applovin/mediation/MaxDebuggerUnifiedFlowActivity;

    invoke-static {p1, v1, p2, v0}, Lcom/applovin/impl/d;->a(Landroid/content/Context;Ljava/lang/Class;Lcom/applovin/impl/c;Lcom/applovin/impl/d$b;)V

    return-void

    .line 22
    :cond_1
    invoke-virtual {p2}, Lcom/applovin/impl/v2;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/applovin/impl/v2;->b()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/applovin/impl/q3$b;->b:Lcom/applovin/impl/q3;

    invoke-static {p1, p2, v0}, Lcom/applovin/impl/u7;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void

    .line 25
    :cond_2
    sget-object v1, Lcom/applovin/impl/s3$e;->c:Lcom/applovin/impl/s3$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 27
    invoke-virtual {p1}, Lcom/applovin/impl/n2;->a()I

    move-result v0

    sget-object v1, Lcom/applovin/impl/s3$d;->a:Lcom/applovin/impl/s3$d;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 29
    iget-object p1, p0, Lcom/applovin/impl/q3$b;->b:Lcom/applovin/impl/q3;

    invoke-static {p1}, Lcom/applovin/impl/q3;->b(Lcom/applovin/impl/q3;)Lcom/applovin/impl/s3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/s3;->u()Lcom/applovin/impl/sdk/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/l;->t0()Lcom/applovin/impl/f7;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/f7;->j()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 31
    iget-object p1, p0, Lcom/applovin/impl/q3$b;->b:Lcom/applovin/impl/q3;

    iget-object p2, p0, Lcom/applovin/impl/q3$b;->a:Lcom/applovin/impl/c;

    new-instance v0, Lcom/applovin/impl/q3$b$b;

    invoke-direct {v0, p0}, Lcom/applovin/impl/q3$b$b;-><init>(Lcom/applovin/impl/q3$b;)V

    const-class v1, Lcom/applovin/mediation/MaxDebuggerTcfInfoListActivity;

    invoke-static {p1, v1, p2, v0}, Lcom/applovin/impl/d;->a(Landroid/content/Context;Ljava/lang/Class;Lcom/applovin/impl/c;Lcom/applovin/impl/d$b;)V

    return-void

    .line 42
    :cond_3
    invoke-virtual {p2}, Lcom/applovin/impl/v2;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/applovin/impl/v2;->b()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/applovin/impl/q3$b;->b:Lcom/applovin/impl/q3;

    invoke-static {p1, p2, v0}, Lcom/applovin/impl/u7;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void

    .line 45
    :cond_4
    invoke-virtual {p1}, Lcom/applovin/impl/n2;->a()I

    move-result p1

    sget-object p2, Lcom/applovin/impl/s3$d;->b:Lcom/applovin/impl/s3$d;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-ne p1, p2, :cond_12

    .line 47
    iget-object p1, p0, Lcom/applovin/impl/q3$b;->b:Lcom/applovin/impl/q3;

    iget-object p2, p0, Lcom/applovin/impl/q3$b;->a:Lcom/applovin/impl/c;

    new-instance v0, Lcom/applovin/impl/q3$b$c;

    invoke-direct {v0, p0}, Lcom/applovin/impl/q3$b$c;-><init>(Lcom/applovin/impl/q3$b;)V

    const-class v1, Lcom/applovin/mediation/MaxDebuggerTcfConsentStatusesListActivity;

    invoke-static {p1, v1, p2, v0}, Lcom/applovin/impl/d;->a(Landroid/content/Context;Ljava/lang/Class;Lcom/applovin/impl/c;Lcom/applovin/impl/d$b;)V

    return-void

    .line 57
    :cond_5
    sget-object v1, Lcom/applovin/impl/s3$e;->d:Lcom/applovin/impl/s3$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_f

    .line 59
    invoke-virtual {p1}, Lcom/applovin/impl/n2;->a()I

    move-result v0

    sget-object v1, Lcom/applovin/impl/s3$b;->a:Lcom/applovin/impl/s3$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 61
    iget-object p1, p0, Lcom/applovin/impl/q3$b;->b:Lcom/applovin/impl/q3;

    invoke-static {p1}, Lcom/applovin/impl/q3;->b(Lcom/applovin/impl/q3;)Lcom/applovin/impl/s3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/s3;->f()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_6

    .line 63
    iget-object p1, p0, Lcom/applovin/impl/q3$b;->b:Lcom/applovin/impl/q3;

    iget-object p2, p0, Lcom/applovin/impl/q3$b;->a:Lcom/applovin/impl/c;

    new-instance v0, Lcom/applovin/impl/q3$b$d;

    invoke-direct {v0, p0}, Lcom/applovin/impl/q3$b$d;-><init>(Lcom/applovin/impl/q3$b;)V

    const-class v1, Lcom/applovin/mediation/MaxDebuggerAdUnitsListActivity;

    invoke-static {p1, v1, p2, v0}, Lcom/applovin/impl/d;->a(Landroid/content/Context;Ljava/lang/Class;Lcom/applovin/impl/c;Lcom/applovin/impl/d$b;)V

    return-void

    .line 74
    :cond_6
    iget-object p1, p0, Lcom/applovin/impl/q3$b;->b:Lcom/applovin/impl/q3;

    const-string p2, "No live ad units"

    const-string v0, "Please setup or enable your MAX ad units on https://applovin.com."

    invoke-static {p2, v0, p1}, Lcom/applovin/impl/u7;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void

    .line 77
    :cond_7
    invoke-virtual {p1}, Lcom/applovin/impl/n2;->a()I

    move-result v0

    sget-object v1, Lcom/applovin/impl/s3$b;->b:Lcom/applovin/impl/s3$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "Please complete integrations in order to access this."

    const-string v3, "Complete Integrations"

    const-string v4, "Restart Required"

    if-ne v0, v1, :cond_b

    .line 79
    iget-object p1, p0, Lcom/applovin/impl/q3$b;->b:Lcom/applovin/impl/q3;

    invoke-static {p1}, Lcom/applovin/impl/q3;->b(Lcom/applovin/impl/q3;)Lcom/applovin/impl/s3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/s3;->k()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_9

    iget-object p1, p0, Lcom/applovin/impl/q3$b;->b:Lcom/applovin/impl/q3;

    invoke-static {p1}, Lcom/applovin/impl/q3;->b(Lcom/applovin/impl/q3;)Lcom/applovin/impl/s3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/s3;->x()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_8

    goto :goto_0

    .line 99
    :cond_8
    iget-object p1, p0, Lcom/applovin/impl/q3$b;->b:Lcom/applovin/impl/q3;

    invoke-static {v3, v2, p1}, Lcom/applovin/impl/u7;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void

    .line 100
    :cond_9
    :goto_0
    iget-object p1, p0, Lcom/applovin/impl/q3$b;->b:Lcom/applovin/impl/q3;

    invoke-static {p1}, Lcom/applovin/impl/q3;->b(Lcom/applovin/impl/q3;)Lcom/applovin/impl/s3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/s3;->u()Lcom/applovin/impl/sdk/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/l;->u0()Lcom/applovin/impl/l7;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/l7;->c()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 103
    invoke-virtual {p2}, Lcom/applovin/impl/v2;->b()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/applovin/impl/q3$b;->b:Lcom/applovin/impl/q3;

    invoke-static {v4, p1, p2}, Lcom/applovin/impl/u7;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void

    .line 107
    :cond_a
    iget-object p1, p0, Lcom/applovin/impl/q3$b;->b:Lcom/applovin/impl/q3;

    iget-object p2, p0, Lcom/applovin/impl/q3$b;->a:Lcom/applovin/impl/c;

    new-instance v0, Lcom/applovin/impl/q3$b$e;

    invoke-direct {v0, p0}, Lcom/applovin/impl/q3$b$e;-><init>(Lcom/applovin/impl/q3$b;)V

    const-class v1, Lcom/applovin/mediation/MaxDebuggerTestLiveNetworkActivity;

    invoke-static {p1, v1, p2, v0}, Lcom/applovin/impl/d;->a(Landroid/content/Context;Ljava/lang/Class;Lcom/applovin/impl/c;Lcom/applovin/impl/d$b;)V

    return-void

    .line 121
    :cond_b
    invoke-virtual {p1}, Lcom/applovin/impl/n2;->a()I

    move-result v0

    sget-object v1, Lcom/applovin/impl/s3$b;->c:Lcom/applovin/impl/s3$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_e

    .line 123
    iget-object p1, p0, Lcom/applovin/impl/q3$b;->b:Lcom/applovin/impl/q3;

    invoke-static {p1}, Lcom/applovin/impl/q3;->b(Lcom/applovin/impl/q3;)Lcom/applovin/impl/s3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/s3;->u()Lcom/applovin/impl/sdk/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/l;->u0()Lcom/applovin/impl/l7;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/l7;->c()Z

    move-result p1

    if-nez p1, :cond_c

    .line 125
    iget-object p1, p0, Lcom/applovin/impl/q3$b;->b:Lcom/applovin/impl/q3;

    invoke-virtual {p1}, Lcom/applovin/impl/q3;->getSdk()Lcom/applovin/impl/sdk/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/l;->u0()Lcom/applovin/impl/l7;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/l7;->a()V

    .line 128
    invoke-virtual {p2}, Lcom/applovin/impl/v2;->b()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/applovin/impl/q3$b;->b:Lcom/applovin/impl/q3;

    invoke-static {v4, p1, p2}, Lcom/applovin/impl/u7;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void

    .line 132
    :cond_c
    iget-object p1, p0, Lcom/applovin/impl/q3$b;->b:Lcom/applovin/impl/q3;

    invoke-static {p1}, Lcom/applovin/impl/q3;->b(Lcom/applovin/impl/q3;)Lcom/applovin/impl/s3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/s3;->w()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_d

    .line 134
    iget-object p1, p0, Lcom/applovin/impl/q3$b;->b:Lcom/applovin/impl/q3;

    iget-object p2, p0, Lcom/applovin/impl/q3$b;->a:Lcom/applovin/impl/c;

    new-instance v0, Lcom/applovin/impl/q3$b$f;

    invoke-direct {v0, p0}, Lcom/applovin/impl/q3$b$f;-><init>(Lcom/applovin/impl/q3$b;)V

    const-class v1, Lcom/applovin/mediation/MaxDebuggerTestModeNetworkActivity;

    invoke-static {p1, v1, p2, v0}, Lcom/applovin/impl/d;->a(Landroid/content/Context;Ljava/lang/Class;Lcom/applovin/impl/c;Lcom/applovin/impl/d$b;)V

    return-void

    .line 145
    :cond_d
    iget-object p1, p0, Lcom/applovin/impl/q3$b;->b:Lcom/applovin/impl/q3;

    invoke-static {v3, v2, p1}, Lcom/applovin/impl/u7;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void

    .line 148
    :cond_e
    invoke-virtual {p1}, Lcom/applovin/impl/n2;->a()I

    move-result p1

    sget-object p2, Lcom/applovin/impl/s3$b;->d:Lcom/applovin/impl/s3$b;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-ne p1, p2, :cond_12

    .line 150
    iget-object p1, p0, Lcom/applovin/impl/q3$b;->b:Lcom/applovin/impl/q3;

    iget-object p2, p0, Lcom/applovin/impl/q3$b;->a:Lcom/applovin/impl/c;

    new-instance v0, Lcom/applovin/impl/q3$b$g;

    invoke-direct {v0, p0}, Lcom/applovin/impl/q3$b$g;-><init>(Lcom/applovin/impl/q3$b;)V

    const-class v1, Lcom/applovin/mediation/MaxDebuggerAdUnitsListActivity;

    invoke-static {p1, v1, p2, v0}, Lcom/applovin/impl/d;->a(Landroid/content/Context;Ljava/lang/Class;Lcom/applovin/impl/c;Lcom/applovin/impl/d$b;)V

    return-void

    .line 160
    :cond_f
    sget-object p1, Lcom/applovin/impl/s3$e;->e:Lcom/applovin/impl/s3$e;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-ne v0, p1, :cond_10

    .line 162
    iget-object p1, p0, Lcom/applovin/impl/q3$b;->b:Lcom/applovin/impl/q3;

    iget-object p2, p0, Lcom/applovin/impl/q3$b;->a:Lcom/applovin/impl/c;

    new-instance v0, Lcom/applovin/impl/q3$b$h;

    invoke-direct {v0, p0}, Lcom/applovin/impl/q3$b$h;-><init>(Lcom/applovin/impl/q3$b;)V

    const-class v1, Lcom/applovin/mediation/MaxDebuggerAxonEventsListActivity;

    invoke-static {p1, v1, p2, v0}, Lcom/applovin/impl/d;->a(Landroid/content/Context;Ljava/lang/Class;Lcom/applovin/impl/c;Lcom/applovin/impl/d$b;)V

    return-void

    .line 171
    :cond_10
    sget-object p1, Lcom/applovin/impl/s3$e;->f:Lcom/applovin/impl/s3$e;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eq v0, p1, :cond_11

    sget-object p1, Lcom/applovin/impl/s3$e;->g:Lcom/applovin/impl/s3$e;

    .line 172
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-ne v0, p1, :cond_12

    .line 174
    :cond_11
    instance-of p1, p2, Lcom/applovin/impl/e4;

    if-eqz p1, :cond_12

    .line 176
    iget-object p1, p0, Lcom/applovin/impl/q3$b;->b:Lcom/applovin/impl/q3;

    iget-object v0, p0, Lcom/applovin/impl/q3$b;->a:Lcom/applovin/impl/c;

    new-instance v1, Lcom/applovin/impl/q3$b$i;

    invoke-direct {v1, p0, p2}, Lcom/applovin/impl/q3$b$i;-><init>(Lcom/applovin/impl/q3$b;Lcom/applovin/impl/v2;)V

    const-class p2, Lcom/applovin/mediation/MaxDebuggerDetailActivity;

    invoke-static {p1, p2, v0, v1}, Lcom/applovin/impl/d;->a(Landroid/content/Context;Ljava/lang/Class;Lcom/applovin/impl/c;Lcom/applovin/impl/d$b;)V

    :cond_12
    return-void
.end method
