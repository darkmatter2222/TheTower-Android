.class final Lcom/tapjoy/internal/fe$b;
.super Lcom/tapjoy/internal/el;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/fe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/el<",
        "Lcom/tapjoy/internal/fe;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 135
    sget-object v0, Lcom/tapjoy/internal/ei;->c:Lcom/tapjoy/internal/ei;

    const-class v1, Lcom/tapjoy/internal/fe;

    invoke-direct {p0, v0, v1}, Lcom/tapjoy/internal/el;-><init>(Lcom/tapjoy/internal/ei;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)I
    .locals 5

    .line 133
    check-cast p1, Lcom/tapjoy/internal/fe;

    .line 4140
    iget-object v0, p1, Lcom/tapjoy/internal/fe;->d:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tapjoy/internal/el;->p:Lcom/tapjoy/internal/el;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/tapjoy/internal/fe;->d:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/el;->a(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p1, Lcom/tapjoy/internal/fe;->e:Ljava/lang/String;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/tapjoy/internal/el;->p:Lcom/tapjoy/internal/el;

    const/4 v3, 0x2

    iget-object v4, p1, Lcom/tapjoy/internal/fe;->e:Ljava/lang/String;

    .line 4141
    invoke-virtual {v2, v3, v4}, Lcom/tapjoy/internal/el;->a(ILjava/lang/Object;)I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    iget-object v2, p1, Lcom/tapjoy/internal/fe;->f:Ljava/lang/String;

    if-eqz v2, :cond_2

    sget-object v1, Lcom/tapjoy/internal/el;->p:Lcom/tapjoy/internal/el;

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/tapjoy/internal/fe;->f:Ljava/lang/String;

    .line 4142
    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/internal/el;->a(ILjava/lang/Object;)I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    .line 4143
    invoke-virtual {p1}, Lcom/tapjoy/internal/fe;->a()Lcom/tapjoy/internal/je;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tapjoy/internal/je;->c()I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public final synthetic a(Lcom/tapjoy/internal/em;)Ljava/lang/Object;
    .locals 6

    .line 1156
    new-instance v0, Lcom/tapjoy/internal/fe$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/fe$a;-><init>()V

    .line 1157
    invoke-virtual {p1}, Lcom/tapjoy/internal/em;->a()J

    move-result-wide v1

    .line 1158
    :goto_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/em;->b()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 2188
    iget-object v4, p1, Lcom/tapjoy/internal/em;->b:Lcom/tapjoy/internal/ei;

    .line 1165
    invoke-virtual {v4}, Lcom/tapjoy/internal/ei;->a()Lcom/tapjoy/internal/el;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/em;)Ljava/lang/Object;

    move-result-object v5

    .line 1166
    invoke-virtual {v0, v3, v4, v5}, Lcom/tapjoy/internal/fe$a;->a(ILcom/tapjoy/internal/ei;Ljava/lang/Object;)Lcom/tapjoy/internal/ej$a;

    goto :goto_0

    .line 1162
    :cond_0
    sget-object v3, Lcom/tapjoy/internal/el;->p:Lcom/tapjoy/internal/el;

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/em;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2123
    iput-object v3, v0, Lcom/tapjoy/internal/fe$a;->e:Ljava/lang/String;

    goto :goto_0

    .line 1161
    :cond_1
    sget-object v3, Lcom/tapjoy/internal/el;->p:Lcom/tapjoy/internal/el;

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/em;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2118
    iput-object v3, v0, Lcom/tapjoy/internal/fe$a;->d:Ljava/lang/String;

    goto :goto_0

    .line 1160
    :cond_2
    sget-object v3, Lcom/tapjoy/internal/el;->p:Lcom/tapjoy/internal/el;

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/em;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2113
    iput-object v3, v0, Lcom/tapjoy/internal/fe$a;->c:Ljava/lang/String;

    goto :goto_0

    .line 1170
    :cond_3
    invoke-virtual {p1, v1, v2}, Lcom/tapjoy/internal/em;->a(J)V

    .line 1171
    invoke-virtual {v0}, Lcom/tapjoy/internal/fe$a;->b()Lcom/tapjoy/internal/fe;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Lcom/tapjoy/internal/en;Ljava/lang/Object;)V
    .locals 3

    .line 133
    check-cast p2, Lcom/tapjoy/internal/fe;

    .line 3148
    iget-object v0, p2, Lcom/tapjoy/internal/fe;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tapjoy/internal/el;->p:Lcom/tapjoy/internal/el;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/tapjoy/internal/fe;->d:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/en;ILjava/lang/Object;)V

    .line 3149
    :cond_0
    iget-object v0, p2, Lcom/tapjoy/internal/fe;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tapjoy/internal/el;->p:Lcom/tapjoy/internal/el;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/tapjoy/internal/fe;->e:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/en;ILjava/lang/Object;)V

    .line 3150
    :cond_1
    iget-object v0, p2, Lcom/tapjoy/internal/fe;->f:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tapjoy/internal/el;->p:Lcom/tapjoy/internal/el;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/tapjoy/internal/fe;->f:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/en;ILjava/lang/Object;)V

    .line 3151
    :cond_2
    invoke-virtual {p2}, Lcom/tapjoy/internal/fe;->a()Lcom/tapjoy/internal/je;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/en;->a(Lcom/tapjoy/internal/je;)V

    return-void
.end method
