.class Lads_mobile_sdk/gl1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lads_mobile_sdk/gl1$b;,
        Lads_mobile_sdk/gl1$a;
    }
.end annotation


# instance fields
.field private final a:Lads_mobile_sdk/tw1;

.field private final b:Lads_mobile_sdk/er0;

.field private volatile c:Lads_mobile_sdk/du;

.field protected volatile d:Lads_mobile_sdk/tw1;

.field private volatile e:Z


# direct methods
.method public constructor <init>(Lads_mobile_sdk/tw1;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 72
    iput-object p1, p0, Lads_mobile_sdk/gl1;->d:Lads_mobile_sdk/tw1;

    .line 73
    invoke-interface {p1}, Lads_mobile_sdk/uw1;->getDefaultInstanceForType()Lads_mobile_sdk/tw1;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/gl1;->a:Lads_mobile_sdk/tw1;

    .line 74
    invoke-static {}, Lads_mobile_sdk/er0;->a()Lads_mobile_sdk/er0;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/gl1;->b:Lads_mobile_sdk/er0;

    const/4 p1, 0x0

    .line 75
    iput-object p1, p0, Lads_mobile_sdk/gl1;->c:Lads_mobile_sdk/du;

    const/4 p1, 0x0

    .line 76
    iput-boolean p1, p0, Lads_mobile_sdk/gl1;->e:Z

    return-void

    .line 77
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "message cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lads_mobile_sdk/gl1;->d:Lads_mobile_sdk/tw1;

    if-eqz v0, :cond_0

    return-void

    .line 208
    :cond_0
    monitor-enter p0

    .line 209
    :try_start_0
    iget-boolean v0, p0, Lads_mobile_sdk/gl1;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 214
    :try_start_1
    iget-object v1, p0, Lads_mobile_sdk/gl1;->c:Lads_mobile_sdk/du;

    invoke-virtual {v1}, Lads_mobile_sdk/du;->g()Lads_mobile_sdk/my;

    move-result-object v1

    .line 215
    invoke-virtual {v1, v0}, Lads_mobile_sdk/my;->a(Z)V

    .line 221
    iget-object v2, p0, Lads_mobile_sdk/gl1;->b:Lads_mobile_sdk/er0;

    invoke-virtual {v2}, Lads_mobile_sdk/er0;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 222
    iget-object v2, p0, Lads_mobile_sdk/gl1;->a:Lads_mobile_sdk/tw1;

    invoke-interface {v2}, Lads_mobile_sdk/tw1;->getParserForType()Lads_mobile_sdk/aj2;

    move-result-object v2

    iget-object v3, p0, Lads_mobile_sdk/gl1;->b:Lads_mobile_sdk/er0;

    invoke-interface {v2, v1, v3}, Lads_mobile_sdk/aj2;->a(Lads_mobile_sdk/my;Lads_mobile_sdk/er0;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/tw1;

    goto :goto_0

    .line 223
    :cond_1
    iget-object v2, p0, Lads_mobile_sdk/gl1;->a:Lads_mobile_sdk/tw1;

    invoke-interface {v2}, Lads_mobile_sdk/tw1;->getParserForType()Lads_mobile_sdk/aj2;

    move-result-object v2

    iget-object v3, p0, Lads_mobile_sdk/gl1;->b:Lads_mobile_sdk/er0;

    invoke-interface {v2, v1, v3}, Lads_mobile_sdk/aj2;->b(Lads_mobile_sdk/my;Lads_mobile_sdk/er0;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/tw1;

    :goto_0
    iput-object v2, p0, Lads_mobile_sdk/gl1;->d:Lads_mobile_sdk/tw1;

    const/4 v2, 0x0

    .line 224
    invoke-virtual {v1, v2}, Lads_mobile_sdk/my;->a(I)V
    :try_end_1
    .catch Lads_mobile_sdk/np1; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    :try_start_2
    monitor-exit p0

    return-void

    :catch_0
    move-exception v1

    .line 230
    iput-boolean v0, p0, Lads_mobile_sdk/gl1;->e:Z

    .line 231
    throw v1

    .line 232
    :cond_2
    new-instance v0, Lads_mobile_sdk/np1;

    const-string v1, "Repeat access to corrupted lazy field"

    invoke-direct {v0, v1}, Lads_mobile_sdk/np1;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 251
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 274
    invoke-virtual {p0}, Lads_mobile_sdk/gl1;->c()I

    move-result v0

    invoke-static {v0}, Lads_mobile_sdk/oy;->d(I)I

    move-result v0

    return v0
.end method

.method public c()I
    .locals 1

    .line 257
    iget-object v0, p0, Lads_mobile_sdk/gl1;->c:Lads_mobile_sdk/du;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lads_mobile_sdk/gl1;->c:Lads_mobile_sdk/du;

    invoke-virtual {v0}, Lads_mobile_sdk/du;->size()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lads_mobile_sdk/gl1;->d:Lads_mobile_sdk/tw1;

    invoke-interface {v0}, Lads_mobile_sdk/tw1;->getSerializedSize()I

    move-result v0

    return v0
.end method

.method public d()Lads_mobile_sdk/tw1;
    .locals 2

    .line 241
    :try_start_0
    invoke-direct {p0}, Lads_mobile_sdk/gl1;->b()V

    .line 242
    iget-object v0, p0, Lads_mobile_sdk/gl1;->d:Lads_mobile_sdk/tw1;
    :try_end_0
    .catch Lads_mobile_sdk/np1; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 244
    iget-object v1, p0, Lads_mobile_sdk/gl1;->b:Lads_mobile_sdk/er0;

    invoke-virtual {v1}, Lads_mobile_sdk/er0;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 249
    iget-object v0, p0, Lads_mobile_sdk/gl1;->a:Lads_mobile_sdk/tw1;

    return-object v0

    .line 250
    :cond_0
    new-instance v1, Lads_mobile_sdk/mp1;

    invoke-direct {v1, v0}, Lads_mobile_sdk/mp1;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    .line 312
    :cond_1
    instance-of v1, p1, Lads_mobile_sdk/gl1;

    if-eqz v1, :cond_3

    .line 313
    check-cast p1, Lads_mobile_sdk/gl1;

    .line 314
    iget-object v1, p0, Lads_mobile_sdk/gl1;->c:Lads_mobile_sdk/du;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lads_mobile_sdk/gl1;->c:Lads_mobile_sdk/du;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lads_mobile_sdk/gl1;->b:Lads_mobile_sdk/er0;

    iget-object v2, p1, Lads_mobile_sdk/gl1;->b:Lads_mobile_sdk/er0;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lads_mobile_sdk/gl1;->c:Lads_mobile_sdk/du;

    iget-object v2, p1, Lads_mobile_sdk/gl1;->c:Lads_mobile_sdk/du;

    .line 317
    invoke-virtual {v1, v2}, Lads_mobile_sdk/du;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    .line 320
    :cond_2
    invoke-virtual {p0}, Lads_mobile_sdk/gl1;->d()Lads_mobile_sdk/tw1;

    move-result-object v0

    invoke-virtual {p1}, Lads_mobile_sdk/gl1;->d()Lads_mobile_sdk/tw1;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 322
    :cond_3
    invoke-virtual {p0}, Lads_mobile_sdk/gl1;->d()Lads_mobile_sdk/tw1;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 297
    invoke-virtual {p0}, Lads_mobile_sdk/gl1;->d()Lads_mobile_sdk/tw1;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 328
    invoke-virtual {p0}, Lads_mobile_sdk/gl1;->d()Lads_mobile_sdk/tw1;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
