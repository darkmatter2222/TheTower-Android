.class public final Lads_mobile_sdk/do;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Ljava/util/HashMap;

.field public static volatile e:Lads_mobile_sdk/do;


# instance fields
.field public final a:Lads_mobile_sdk/eo;

.field public final b:Landroid/content/Context;

.field public volatile c:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lads_mobile_sdk/do;->d:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lads_mobile_sdk/eo;

    invoke-direct {v0}, Lads_mobile_sdk/eo;-><init>()V

    iput-object v0, p0, Lads_mobile_sdk/do;->a:Lads_mobile_sdk/eo;

    if-eqz p1, :cond_0

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lads_mobile_sdk/do;->b:Landroid/content/Context;

    .line 35
    invoke-virtual {p0}, Lads_mobile_sdk/do;->b()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lads_mobile_sdk/do;
    .locals 2

    .line 111
    sget-object v0, Lads_mobile_sdk/do;->e:Lads_mobile_sdk/do;

    if-nez v0, :cond_1

    .line 112
    const-class v0, Lads_mobile_sdk/do;

    monitor-enter v0

    .line 113
    :try_start_0
    sget-object v1, Lads_mobile_sdk/do;->e:Lads_mobile_sdk/do;

    if-nez v1, :cond_0

    .line 114
    new-instance v1, Lads_mobile_sdk/do;

    invoke-direct {v1, p0}, Lads_mobile_sdk/do;-><init>(Landroid/content/Context;)V

    sput-object v1, Lads_mobile_sdk/do;->e:Lads_mobile_sdk/do;

    .line 116
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 118
    :cond_1
    :goto_0
    sget-object p0, Lads_mobile_sdk/do;->e:Lads_mobile_sdk/do;

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 5

    .line 80
    iget-object v0, p0, Lads_mobile_sdk/do;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lads_mobile_sdk/do;->c:Ljava/util/ArrayList;

    return-object v0

    .line 83
    :cond_0
    monitor-enter p0

    .line 84
    :try_start_0
    iget-object v0, p0, Lads_mobile_sdk/do;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lads_mobile_sdk/do;->c:Ljava/util/ArrayList;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 89
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    sget-object v1, Lads_mobile_sdk/do;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 91
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lads_mobile_sdk/ru1;

    check-cast v3, Lads_mobile_sdk/ds0;

    .line 92
    invoke-virtual {v3}, Lads_mobile_sdk/ds0;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 93
    iget-object v3, p0, Lads_mobile_sdk/do;->a:Lads_mobile_sdk/eo;

    .line 94
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v4, p0, Lads_mobile_sdk/do;->b:Landroid/content/Context;

    .line 95
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v2}, Lads_mobile_sdk/eo;->a(Landroid/content/Context;Ljava/lang/String;)Lads_mobile_sdk/cs0;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 98
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 102
    :cond_3
    iput-object v0, p0, Lads_mobile_sdk/do;->c:Ljava/util/ArrayList;

    .line 103
    iget-object v0, p0, Lads_mobile_sdk/do;->c:Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    .line 105
    const-string v1, "Error getting supported attestation mechanisms"

    .line 106
    const-string v2, "OMIDLIB"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lads_mobile_sdk/do;->c:Ljava/util/ArrayList;

    .line 108
    iget-object v0, p0, Lads_mobile_sdk/do;->c:Ljava/util/ArrayList;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 110
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final b()V
    .locals 3

    .line 1
    sget-object v0, Lads_mobile_sdk/do;->d:Ljava/util/HashMap;

    iget-object v1, p0, Lads_mobile_sdk/do;->b:Landroid/content/Context;

    .line 3
    invoke-static {v1}, Lads_mobile_sdk/ds0;->a(Landroid/content/Context;)Lads_mobile_sdk/ds0;

    move-result-object v1

    .line 4
    const-string v2, "FireTVFOSDAT"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
