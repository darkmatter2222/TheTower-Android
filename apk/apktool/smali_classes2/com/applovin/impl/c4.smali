.class public Lcom/applovin/impl/c4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/c4$a;,
        Lcom/applovin/impl/c4$b;,
        Lcom/applovin/impl/c4$c;
    }
.end annotation


# instance fields
.field private final a:Lcom/applovin/impl/sdk/l;

.field private final b:Lcom/applovin/impl/sdk/p;

.field private final c:Lcom/applovin/impl/sdk/ad/a;

.field private final d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:[B

.field private g:Ljava/util/List;

.field private h:Ljava/util/List;

.field private i:Ljava/util/List;

.field private j:Ljava/util/List;

.field private final k:Ljava/lang/Object;

.field private volatile l:Z


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/ad/a;Ljava/lang/String;Lcom/applovin/impl/sdk/l;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/c4;->k:Ljava/lang/Object;

    .line 8
    iput-object p1, p0, Lcom/applovin/impl/c4;->c:Lcom/applovin/impl/sdk/ad/a;

    .line 9
    iput-object p2, p0, Lcom/applovin/impl/c4;->d:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Lcom/applovin/impl/c4;->a:Lcom/applovin/impl/sdk/l;

    .line 11
    invoke-virtual {p3}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/c4;->b:Lcom/applovin/impl/sdk/p;

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/applovin/impl/c4$a;)Ljava/lang/String;
    .locals 7

    .line 41
    iget-object v0, p0, Lcom/applovin/impl/c4;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->I()Lcom/applovin/impl/sdk/n;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/applovin/impl/c4;->c:Lcom/applovin/impl/sdk/ad/a;

    invoke-static {v1}, Lcom/applovin/impl/j2;->a(Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;)Ljava/util/Map;

    move-result-object v1

    .line 43
    iget-object v2, p0, Lcom/applovin/impl/c4;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/applovin/impl/c4;->c:Lcom/applovin/impl/sdk/ad/a;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/ad/b;->V()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v2, v3, p1, v1}, Lcom/applovin/impl/sdk/n;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;)[B

    move-result-object p1

    const/4 v1, 0x0

    const/16 v2, -0xc8

    const-string v3, "MpdManager"

    if-nez p1, :cond_1

    .line 46
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/applovin/impl/c4;->b:Lcom/applovin/impl/sdk/p;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Failed to download MPD: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/applovin/impl/c4;->d:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_0
    invoke-interface {p2, v2}, Lcom/applovin/impl/c4$a;->a(I)V

    return-object v1

    .line 51
    :cond_1
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/applovin/impl/c4;->b:Lcom/applovin/impl/sdk/p;

    const-string v5, "Successfully downloaded MPD"

    invoke-virtual {v4, v3, v5}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_2
    new-instance v4, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, p1, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 54
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 56
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/applovin/impl/c4;->b:Lcom/applovin/impl/sdk/p;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Failed to read MPD data: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/applovin/impl/c4;->d:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_3
    invoke-interface {p2, v2}, Lcom/applovin/impl/c4$a;->a(I)V

    return-object v1

    .line 62
    :cond_4
    const-string p2, "https://"

    const-string v1, "sdk://"

    invoke-virtual {v4, p2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    iput-object p2, p0, Lcom/applovin/impl/c4;->f:[B

    .line 65
    iget-object p2, p0, Lcom/applovin/impl/c4;->d:Ljava/lang/String;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iget-object v2, p0, Lcom/applovin/impl/c4;->c:Lcom/applovin/impl/sdk/ad/a;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/ad/b;->getCachePrefix()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/applovin/impl/c4;->a:Lcom/applovin/impl/sdk/l;

    invoke-static {p2, v2, v5}, Lcom/applovin/impl/u7;->a(Landroid/net/Uri;Ljava/lang/String;Lcom/applovin/impl/sdk/l;)Ljava/lang/String;

    move-result-object p2

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 67
    iget-object v2, p0, Lcom/applovin/impl/c4;->c:Lcom/applovin/impl/sdk/ad/a;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/ad/a;->h1()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/applovin/impl/c4;->d:Ljava/lang/String;

    invoke-static {v5, v6, v1}, Lcom/applovin/impl/sdk/utils/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/applovin/impl/sdk/ad/a;->d(Ljava/lang/String;)V

    .line 68
    iput-object v1, p0, Lcom/applovin/impl/c4;->e:Ljava/lang/String;

    .line 71
    iget-object v1, p0, Lcom/applovin/impl/c4;->a:Lcom/applovin/impl/sdk/l;

    sget-object v2, Lcom/applovin/impl/c5;->e1:Lcom/applovin/impl/c5;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 73
    invoke-static {}, Lcom/applovin/impl/sdk/l;->p()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/applovin/impl/sdk/n;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 76
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 p1, 0x1

    invoke-virtual {v0, v1, p2, p1}, Lcom/applovin/impl/sdk/n;->a(Ljava/io/InputStream;Ljava/io/File;Z)Z

    return-object v4

    .line 80
    :cond_5
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/applovin/impl/c4;->b:Lcom/applovin/impl/sdk/p;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Failed to create cached file for MPD: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/c4;->d:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-object v4
.end method

.method private a(Lcom/applovin/impl/u8;)Ljava/util/List;
    .locals 3

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    const-string v1, "Initialization"

    invoke-virtual {p1, v1}, Lcom/applovin/impl/u8;->c(Ljava/lang/String;)Lcom/applovin/impl/u8;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {v1}, Lcom/applovin/impl/u8;->a()Ljava/util/Map;

    move-result-object v1

    const-string v2, "range"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 87
    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_0
    const-string v1, "SegmentURL"

    invoke-virtual {p1, v1}, Lcom/applovin/impl/u8;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 94
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/impl/u8;

    .line 96
    invoke-virtual {v1}, Lcom/applovin/impl/u8;->a()Ljava/util/Map;

    move-result-object v1

    const-string v2, "mediaRange"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 97
    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method static synthetic a(Lcom/applovin/impl/c4;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/applovin/impl/c4;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/applovin/impl/c4;->d:Ljava/lang/String;

    const-string v1, "url"

    invoke-static {v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->hashMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lcom/applovin/impl/c4;->c:Lcom/applovin/impl/sdk/ad/a;

    invoke-static {v1}, Lcom/applovin/impl/j2;->a(Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 156
    iget-object v1, p0, Lcom/applovin/impl/c4;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/l;->E()Lcom/applovin/impl/s1;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/h2;->b1:Lcom/applovin/impl/h2;

    invoke-virtual {v1, v2, p1, v0}, Lcom/applovin/impl/i2;->a(Lcom/applovin/impl/h2;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/List;ZZLjava/lang/String;Lcom/applovin/impl/c4$a;)V
    .locals 3

    .line 100
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p2}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 102
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 105
    new-instance v2, Lcom/applovin/impl/c4$b;

    invoke-direct {v2, p1, v1, p5, p4}, Lcom/applovin/impl/c4$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 106
    new-instance v1, Lcom/applovin/impl/c4$c;

    invoke-direct {v1, p0, v2, p6}, Lcom/applovin/impl/c4$c;-><init>(Lcom/applovin/impl/c4;Lcom/applovin/impl/c4$b;Lcom/applovin/impl/c4$a;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_3

    if-eqz p4, :cond_2

    .line 113
    iput-object v0, p0, Lcom/applovin/impl/c4;->g:Ljava/util/List;

    return-void

    .line 117
    :cond_2
    iget-object p1, p0, Lcom/applovin/impl/c4;->k:Ljava/lang/Object;

    monitor-enter p1

    .line 119
    :try_start_0
    iput-object v0, p0, Lcom/applovin/impl/c4;->i:Ljava/util/List;

    .line 120
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_3
    if-eqz p4, :cond_4

    .line 127
    iput-object v0, p0, Lcom/applovin/impl/c4;->h:Ljava/util/List;

    return-void

    .line 131
    :cond_4
    iget-object p1, p0, Lcom/applovin/impl/c4;->k:Ljava/lang/Object;

    monitor-enter p1

    .line 133
    :try_start_1
    iput-object v0, p0, Lcom/applovin/impl/c4;->j:Ljava/util/List;

    .line 134
    monitor-exit p1

    return-void

    :catchall_1
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p2

    :cond_5
    :goto_1
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 2

    .line 145
    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 147
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/impl/c4$c;

    .line 149
    invoke-static {v1}, Lcom/applovin/impl/c4$c;->b(Lcom/applovin/impl/c4$c;)V

    goto :goto_0

    .line 152
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/List;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 135
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz p2, :cond_1

    .line 136
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v0

    .line 137
    :goto_1
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    :goto_2
    if-ge v0, v3, :cond_5

    .line 141
    iget-boolean v4, p0, Lcom/applovin/impl/c4;->l:Z

    if-eqz v4, :cond_2

    goto :goto_3

    :cond_2
    if-ge v0, v1, :cond_3

    .line 143
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/applovin/impl/c4$c;

    invoke-static {v4}, Lcom/applovin/impl/c4$c;->a(Lcom/applovin/impl/c4$c;)V

    :cond_3
    if-ge v0, v2, :cond_4

    .line 144
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/applovin/impl/c4$c;

    invoke-static {v4}, Lcom/applovin/impl/c4$c;->a(Lcom/applovin/impl/c4$c;)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/c4;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/applovin/impl/c4;->l:Z

    return p0
.end method

.method static synthetic a(Lcom/applovin/impl/c4;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/applovin/impl/c4;->l:Z

    return p1
.end method

.method static synthetic b(Lcom/applovin/impl/c4;)Lcom/applovin/impl/sdk/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/c4;->a:Lcom/applovin/impl/sdk/l;

    return-object p0
.end method

.method private b(Ljava/lang/String;Lcom/applovin/impl/c4$a;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/applovin/impl/c4;->d:Ljava/lang/String;

    const-string v1, "url"

    invoke-static {v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->hashMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 7
    const-string v1, "details"

    invoke-static {v1, p1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 8
    iget-object p1, p0, Lcom/applovin/impl/c4;->c:Lcom/applovin/impl/sdk/ad/a;

    invoke-static {p1}, Lcom/applovin/impl/j2;->a(Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 9
    iget-object p1, p0, Lcom/applovin/impl/c4;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/l;->g()Lcom/applovin/impl/f;

    move-result-object p1

    sget-object v1, Lcom/applovin/impl/h2;->W:Lcom/applovin/impl/h2;

    invoke-virtual {p1, v1, v0}, Lcom/applovin/impl/i2;->d(Lcom/applovin/impl/h2;Ljava/util/Map;)V

    const/16 p1, -0xc8

    .line 11
    invoke-interface {p2, p1}, Lcom/applovin/impl/c4$a;->a(I)V

    return-void
.end method

.method static synthetic c(Lcom/applovin/impl/c4;)Lcom/applovin/impl/sdk/ad/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/c4;->c:Lcom/applovin/impl/sdk/ad/a;

    return-object p0
.end method

.method static synthetic d(Lcom/applovin/impl/c4;)Lcom/applovin/impl/sdk/p;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/c4;->b:Lcom/applovin/impl/sdk/p;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 4
    iget-object v0, p0, Lcom/applovin/impl/c4;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/c4;->i:Ljava/util/List;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/applovin/impl/c4;->i:Ljava/util/List;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 11
    :goto_0
    iget-object v3, p0, Lcom/applovin/impl/c4;->j:Ljava/util/List;

    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 13
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/applovin/impl/c4;->j:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 15
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/c4;->b:Lcom/applovin/impl/sdk/p;

    const-string v3, "MpdManager"

    const-string v4, "Caching optional MPD segments..."

    invoke-virtual {v0, v3, v4}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_2
    invoke-direct {p0, v1, v2}, Lcom/applovin/impl/c4;->a(Ljava/util/List;Ljava/util/List;)V

    .line 20
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/applovin/impl/c4;->b:Lcom/applovin/impl/sdk/p;

    const-string v1, "MpdManager"

    const-string v2, "Finished caching optional MPD segments"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    :catchall_0
    move-exception v1

    .line 21
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 11

    .line 22
    invoke-static {}, Lcom/applovin/impl/sdk/l;->p()Landroid/content/Context;

    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/applovin/impl/c4;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/l;->I()Lcom/applovin/impl/sdk/n;

    move-result-object v2

    .line 24
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/applovin/impl/c4;->c:Lcom/applovin/impl/sdk/ad/a;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/ad/b;->getCachePrefix()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/applovin/impl/c4;->a:Lcom/applovin/impl/sdk/l;

    invoke-static {v1, v3, v4}, Lcom/applovin/impl/u7;->a(Landroid/net/Uri;Ljava/lang/String;Lcom/applovin/impl/sdk/l;)Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-virtual {v2, v1, v0}, Lcom/applovin/impl/sdk/n;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    const/4 v10, 0x0

    const-string v4, "MpdManager"

    if-nez v3, :cond_1

    .line 28
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/applovin/impl/c4;->b:Lcom/applovin/impl/sdk/p;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to get cached file for segment: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v4, p1}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v10

    .line 32
    :cond_1
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/applovin/impl/c4;->b:Lcom/applovin/impl/sdk/p;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Serving segment: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " range: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_2
    iget-object v4, p0, Lcom/applovin/impl/c4;->c:Lcom/applovin/impl/sdk/ad/a;

    invoke-static {v4}, Lcom/applovin/impl/j2;->a(Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;)Ljava/util/Map;

    move-result-object v9

    .line 35
    iget-object v4, p0, Lcom/applovin/impl/c4;->c:Lcom/applovin/impl/sdk/ad/a;

    invoke-virtual {v2, p1, v4}, Lcom/applovin/impl/sdk/n;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/ad/b;)I

    move-result v7

    .line 36
    iget-object v4, p0, Lcom/applovin/impl/c4;->c:Lcom/applovin/impl/sdk/ad/a;

    invoke-virtual {v4}, Lcom/applovin/impl/sdk/ad/b;->V()Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v2 .. v9}, Lcom/applovin/impl/sdk/n;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Ljava/util/Map;)Z

    move-result p1

    if-nez p1, :cond_3

    return-object v10

    .line 39
    :cond_3
    invoke-virtual {v2, v1, v5}, Lcom/applovin/impl/sdk/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 40
    invoke-virtual {v2, p1, v0}, Lcom/applovin/impl/sdk/n;->d(Ljava/lang/String;Landroid/content/Context;)[B

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 3

    .line 2
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    const-string v1, "MpdManager"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/c4;->b:Lcom/applovin/impl/sdk/p;

    const-string v2, "Caching required MPD segments..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/c4;->g:Ljava/util/List;

    iget-object v2, p0, Lcom/applovin/impl/c4;->h:Ljava/util/List;

    invoke-direct {p0, v0, v2}, Lcom/applovin/impl/c4;->a(Ljava/util/List;Ljava/util/List;)V

    .line 5
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/c4;->b:Lcom/applovin/impl/sdk/p;

    const-string v2, "Finished caching required MPD segments"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public c()V
    .locals 3

    .line 78
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/c4;->b:Lcom/applovin/impl/sdk/p;

    const-string v1, "MpdManager"

    const-string v2, "Cancelling MPD segment caching..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lcom/applovin/impl/c4;->l:Z

    .line 81
    iget-object v0, p0, Lcom/applovin/impl/c4;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 83
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/c4;->i:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/applovin/impl/c4;->a(Ljava/util/List;)V

    .line 84
    iget-object v1, p0, Lcom/applovin/impl/c4;->j:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/applovin/impl/c4;->a(Ljava/util/List;)V

    .line 85
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c(Ljava/lang/String;Lcom/applovin/impl/c4$a;)V
    .locals 13

    .line 2
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    const-string v8, "MpdManager"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/c4;->b:Lcom/applovin/impl/sdk/p;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Parsing MPD manifest: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/applovin/impl/c4;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-direct/range {p0 .. p2}, Lcom/applovin/impl/c4;->a(Ljava/lang/String;Lcom/applovin/impl/c4$a;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_5

    .line 10
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/c4;->a:Lcom/applovin/impl/sdk/l;

    invoke-static {v0, v1}, Lcom/applovin/impl/v8;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/l;)Lcom/applovin/impl/u8;

    move-result-object v0
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    const-string v1, "Period"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/u8;->b(Ljava/lang/String;)Lcom/applovin/impl/u8;

    move-result-object v0

    if-nez v0, :cond_2

    .line 22
    const-string p1, "missing_period"

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/c4;->b(Ljava/lang/String;Lcom/applovin/impl/c4$a;)V

    return-void

    .line 26
    :cond_2
    const-string v1, "AdaptationSet"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/u8;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 29
    const-string p1, "missing_adaptation_set"

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/c4;->b(Ljava/lang/String;Lcom/applovin/impl/c4$a;)V

    return-void

    .line 33
    :cond_3
    iget-object v1, p0, Lcom/applovin/impl/c4;->c:Lcom/applovin/impl/sdk/ad/a;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/a;->m1()I

    move-result v9

    .line 34
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/impl/u8;

    .line 36
    const-string v2, "Representation"

    invoke-virtual {v1, v2}, Lcom/applovin/impl/u8;->b(Ljava/lang/String;)Lcom/applovin/impl/u8;

    move-result-object v2

    if-nez v2, :cond_4

    .line 39
    const-string p1, "missing_representation"

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/c4;->b(Ljava/lang/String;Lcom/applovin/impl/c4$a;)V

    return-void

    .line 43
    :cond_4
    const-string v3, "SegmentList"

    invoke-virtual {v2, v3}, Lcom/applovin/impl/u8;->c(Ljava/lang/String;)Lcom/applovin/impl/u8;

    move-result-object v3

    if-nez v3, :cond_5

    .line 46
    const-string p1, "missing_segment_list"

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/c4;->b(Ljava/lang/String;Lcom/applovin/impl/c4$a;)V

    return-void

    .line 52
    :cond_5
    invoke-direct {p0, v3}, Lcom/applovin/impl/c4;->a(Lcom/applovin/impl/u8;)Ljava/util/List;

    move-result-object v10

    .line 53
    invoke-static {v10}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 55
    const-string p1, "empty_segment_list"

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/c4;->b(Ljava/lang/String;Lcom/applovin/impl/c4$a;)V

    return-void

    .line 59
    :cond_6
    const-string v3, "BaseURL"

    invoke-virtual {v2, v3}, Lcom/applovin/impl/u8;->c(Ljava/lang/String;)Lcom/applovin/impl/u8;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 60
    invoke-virtual {v3}, Lcom/applovin/impl/u8;->d()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_7
    const/4 v3, 0x0

    .line 61
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 63
    const-string p1, "missing_base_url"

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/c4;->b(Ljava/lang/String;Lcom/applovin/impl/c4$a;)V

    return-void

    .line 67
    :cond_8
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    mul-int/2addr v4, v9

    add-int/lit8 v4, v4, 0x63

    div-int/lit8 v11, v4, 0x64

    .line 68
    invoke-virtual {v1}, Lcom/applovin/impl/u8;->a()Ljava/util/Map;

    move-result-object v1

    const-string v4, "contentType"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 69
    invoke-virtual {v2}, Lcom/applovin/impl/u8;->a()Ljava/util/Map;

    move-result-object v2

    const-string v4, "mimeType"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 70
    const-string v4, "video"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v5, 0x0

    if-nez v1, :cond_a

    if-eqz v2, :cond_9

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_2

    :cond_9
    move v1, v5

    goto :goto_3

    :cond_a
    :goto_2
    const/4 v1, 0x1

    .line 72
    :goto_3
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/applovin/impl/c4;->b:Lcom/applovin/impl/sdk/p;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v12, "Creating "

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, " "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v1, :cond_b

    goto :goto_4

    :cond_b
    const-string v4, "audio"

    :goto_4
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " segment download operations ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " required, "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v11

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " optional), baseUrl = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v8, v4}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_c
    invoke-interface {v10, v5, v11}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    const/4 v5, 0x1

    move-object v4, v3

    move-object v3, v2

    move-object v2, v4

    move-object v6, p1

    move-object v7, p2

    move v4, v1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/applovin/impl/c4;->a(Ljava/lang/String;Ljava/util/List;ZZLjava/lang/String;Lcom/applovin/impl/c4$a;)V

    .line 75
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v10, v11, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/applovin/impl/c4;->a(Ljava/lang/String;Ljava/util/List;ZZLjava/lang/String;Lcom/applovin/impl/c4$a;)V

    goto/16 :goto_0

    :cond_d
    :goto_5
    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 76
    iget-object v0, p0, Lcom/applovin/impl/c4;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->E()Lcom/applovin/impl/s1;

    move-result-object v0

    const-string v2, "parseManifest"

    invoke-virtual {v0, v8, v2, p1}, Lcom/applovin/impl/s1;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 p1, -0xc8

    .line 77
    invoke-interface {p2, p1}, Lcom/applovin/impl/c4$a;->a(I)V

    return-void
.end method

.method public d()[B
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/c4;->f:[B

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/c4;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/c4;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/c4;->c:Lcom/applovin/impl/sdk/ad/a;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/b;->getCachePrefix()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/c4;->a:Lcom/applovin/impl/sdk/l;

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/u7;->a(Landroid/net/Uri;Ljava/lang/String;Lcom/applovin/impl/sdk/l;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sdk://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/applovin/impl/c4;->e:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/applovin/impl/c4;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/l;->I()Lcom/applovin/impl/sdk/n;

    move-result-object v1

    .line 5
    invoke-static {}, Lcom/applovin/impl/sdk/l;->p()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/applovin/impl/sdk/n;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    return v3

    .line 8
    :cond_0
    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/n;->f(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v3

    .line 11
    :cond_1
    const-string v1, "https://"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/c4;->f:[B

    const/4 v0, 0x1

    return v0
.end method
