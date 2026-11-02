.class final Lcom/tapjoy/internal/fd$b;
.super Lcom/tapjoy/internal/el;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/fd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/el<",
        "Lcom/tapjoy/internal/fd;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 129
    sget-object v0, Lcom/tapjoy/internal/ei;->c:Lcom/tapjoy/internal/ei;

    const-class v1, Lcom/tapjoy/internal/fd;

    invoke-direct {p0, v0, v1}, Lcom/tapjoy/internal/el;-><init>(Lcom/tapjoy/internal/ei;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)I
    .locals 5

    .line 127
    check-cast p1, Lcom/tapjoy/internal/fd;

    .line 4134
    iget-object v0, p1, Lcom/tapjoy/internal/fd;->d:Lcom/tapjoy/internal/fc;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tapjoy/internal/fc;->c:Lcom/tapjoy/internal/el;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/tapjoy/internal/fd;->d:Lcom/tapjoy/internal/fc;

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/el;->a(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p1, Lcom/tapjoy/internal/fd;->e:Lcom/tapjoy/internal/ew;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/tapjoy/internal/ew;->c:Lcom/tapjoy/internal/el;

    const/4 v3, 0x2

    iget-object v4, p1, Lcom/tapjoy/internal/fd;->e:Lcom/tapjoy/internal/ew;

    .line 4135
    invoke-virtual {v2, v3, v4}, Lcom/tapjoy/internal/el;->a(ILjava/lang/Object;)I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    iget-object v2, p1, Lcom/tapjoy/internal/fd;->f:Lcom/tapjoy/internal/fj;

    if-eqz v2, :cond_2

    sget-object v1, Lcom/tapjoy/internal/fj;->c:Lcom/tapjoy/internal/el;

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/tapjoy/internal/fd;->f:Lcom/tapjoy/internal/fj;

    .line 4136
    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/internal/el;->a(ILjava/lang/Object;)I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    .line 4137
    invoke-virtual {p1}, Lcom/tapjoy/internal/fd;->a()Lcom/tapjoy/internal/je;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tapjoy/internal/je;->c()I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public final synthetic a(Lcom/tapjoy/internal/em;)Ljava/lang/Object;
    .locals 6

    .line 1150
    new-instance v0, Lcom/tapjoy/internal/fd$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/fd$a;-><init>()V

    .line 1151
    invoke-virtual {p1}, Lcom/tapjoy/internal/em;->a()J

    move-result-wide v1

    .line 1152
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

    .line 1159
    invoke-virtual {v4}, Lcom/tapjoy/internal/ei;->a()Lcom/tapjoy/internal/el;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/em;)Ljava/lang/Object;

    move-result-object v5

    .line 1160
    invoke-virtual {v0, v3, v4, v5}, Lcom/tapjoy/internal/fd$a;->a(ILcom/tapjoy/internal/ei;Ljava/lang/Object;)Lcom/tapjoy/internal/ej$a;

    goto :goto_0

    .line 1156
    :cond_0
    sget-object v3, Lcom/tapjoy/internal/fj;->c:Lcom/tapjoy/internal/el;

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/em;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tapjoy/internal/fj;

    .line 2117
    iput-object v3, v0, Lcom/tapjoy/internal/fd$a;->e:Lcom/tapjoy/internal/fj;

    goto :goto_0

    .line 1155
    :cond_1
    sget-object v3, Lcom/tapjoy/internal/ew;->c:Lcom/tapjoy/internal/el;

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/em;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tapjoy/internal/ew;

    .line 2112
    iput-object v3, v0, Lcom/tapjoy/internal/fd$a;->d:Lcom/tapjoy/internal/ew;

    goto :goto_0

    .line 1154
    :cond_2
    sget-object v3, Lcom/tapjoy/internal/fc;->c:Lcom/tapjoy/internal/el;

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/em;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tapjoy/internal/fc;

    .line 2107
    iput-object v3, v0, Lcom/tapjoy/internal/fd$a;->c:Lcom/tapjoy/internal/fc;

    goto :goto_0

    .line 1164
    :cond_3
    invoke-virtual {p1, v1, v2}, Lcom/tapjoy/internal/em;->a(J)V

    .line 1165
    invoke-virtual {v0}, Lcom/tapjoy/internal/fd$a;->b()Lcom/tapjoy/internal/fd;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Lcom/tapjoy/internal/en;Ljava/lang/Object;)V
    .locals 3

    .line 127
    check-cast p2, Lcom/tapjoy/internal/fd;

    .line 3142
    iget-object v0, p2, Lcom/tapjoy/internal/fd;->d:Lcom/tapjoy/internal/fc;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tapjoy/internal/fc;->c:Lcom/tapjoy/internal/el;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/tapjoy/internal/fd;->d:Lcom/tapjoy/internal/fc;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/en;ILjava/lang/Object;)V

    .line 3143
    :cond_0
    iget-object v0, p2, Lcom/tapjoy/internal/fd;->e:Lcom/tapjoy/internal/ew;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tapjoy/internal/ew;->c:Lcom/tapjoy/internal/el;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/tapjoy/internal/fd;->e:Lcom/tapjoy/internal/ew;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/en;ILjava/lang/Object;)V

    .line 3144
    :cond_1
    iget-object v0, p2, Lcom/tapjoy/internal/fd;->f:Lcom/tapjoy/internal/fj;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tapjoy/internal/fj;->c:Lcom/tapjoy/internal/el;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/tapjoy/internal/fd;->f:Lcom/tapjoy/internal/fj;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/en;ILjava/lang/Object;)V

    .line 3145
    :cond_2
    invoke-virtual {p2}, Lcom/tapjoy/internal/fd;->a()Lcom/tapjoy/internal/je;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/en;->a(Lcom/tapjoy/internal/je;)V

    return-void
.end method
