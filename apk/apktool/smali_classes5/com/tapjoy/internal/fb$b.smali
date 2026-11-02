.class final Lcom/tapjoy/internal/fb$b;
.super Lcom/tapjoy/internal/el;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/fb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/el<",
        "Lcom/tapjoy/internal/fb;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 123
    sget-object v0, Lcom/tapjoy/internal/ei;->c:Lcom/tapjoy/internal/ei;

    const-class v1, Lcom/tapjoy/internal/fb;

    invoke-direct {p0, v0, v1}, Lcom/tapjoy/internal/el;-><init>(Lcom/tapjoy/internal/ei;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)I
    .locals 4

    .line 121
    check-cast p1, Lcom/tapjoy/internal/fb;

    .line 4128
    sget-object v0, Lcom/tapjoy/internal/el;->p:Lcom/tapjoy/internal/el;

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/tapjoy/internal/fb;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/el;->a(ILjava/lang/Object;)I

    move-result v0

    sget-object v1, Lcom/tapjoy/internal/el;->i:Lcom/tapjoy/internal/el;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/tapjoy/internal/fb;->f:Ljava/lang/Long;

    .line 4129
    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/internal/el;->a(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4130
    invoke-virtual {p1}, Lcom/tapjoy/internal/fb;->a()Lcom/tapjoy/internal/je;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tapjoy/internal/je;->c()I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public final synthetic a(Lcom/tapjoy/internal/em;)Ljava/lang/Object;
    .locals 6

    .line 1142
    new-instance v0, Lcom/tapjoy/internal/fb$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/fb$a;-><init>()V

    .line 1143
    invoke-virtual {p1}, Lcom/tapjoy/internal/em;->a()J

    move-result-wide v1

    .line 1144
    :goto_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/em;->b()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 2188
    iget-object v4, p1, Lcom/tapjoy/internal/em;->b:Lcom/tapjoy/internal/ei;

    .line 1150
    invoke-virtual {v4}, Lcom/tapjoy/internal/ei;->a()Lcom/tapjoy/internal/el;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/em;)Ljava/lang/Object;

    move-result-object v5

    .line 1151
    invoke-virtual {v0, v3, v4, v5}, Lcom/tapjoy/internal/fb$a;->a(ILcom/tapjoy/internal/ei;Ljava/lang/Object;)Lcom/tapjoy/internal/ej$a;

    goto :goto_0

    .line 1147
    :cond_0
    sget-object v3, Lcom/tapjoy/internal/el;->i:Lcom/tapjoy/internal/el;

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/em;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 2106
    iput-object v3, v0, Lcom/tapjoy/internal/fb$a;->d:Ljava/lang/Long;

    goto :goto_0

    .line 1146
    :cond_1
    sget-object v3, Lcom/tapjoy/internal/el;->p:Lcom/tapjoy/internal/el;

    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/em;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2101
    iput-object v3, v0, Lcom/tapjoy/internal/fb$a;->c:Ljava/lang/String;

    goto :goto_0

    .line 1155
    :cond_2
    invoke-virtual {p1, v1, v2}, Lcom/tapjoy/internal/em;->a(J)V

    .line 1156
    invoke-virtual {v0}, Lcom/tapjoy/internal/fb$a;->b()Lcom/tapjoy/internal/fb;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Lcom/tapjoy/internal/en;Ljava/lang/Object;)V
    .locals 3

    .line 121
    check-cast p2, Lcom/tapjoy/internal/fb;

    .line 3135
    sget-object v0, Lcom/tapjoy/internal/el;->p:Lcom/tapjoy/internal/el;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/tapjoy/internal/fb;->e:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/en;ILjava/lang/Object;)V

    .line 3136
    sget-object v0, Lcom/tapjoy/internal/el;->i:Lcom/tapjoy/internal/el;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/tapjoy/internal/fb;->f:Ljava/lang/Long;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/el;->a(Lcom/tapjoy/internal/en;ILjava/lang/Object;)V

    .line 3137
    invoke-virtual {p2}, Lcom/tapjoy/internal/fb;->a()Lcom/tapjoy/internal/je;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/en;->a(Lcom/tapjoy/internal/je;)V

    return-void
.end method
