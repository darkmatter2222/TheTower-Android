.class final Lcom/tapjoy/internal/id$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/id;->a(Ljava/net/URL;Ljava/io/InputStream;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/net/URL;

.field final synthetic b:Ljava/io/InputStream;

.field final synthetic c:J

.field final synthetic d:Lcom/tapjoy/internal/id;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/id;Ljava/net/URL;Ljava/io/InputStream;J)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/tapjoy/internal/id$2;->d:Lcom/tapjoy/internal/id;

    iput-object p2, p0, Lcom/tapjoy/internal/id$2;->a:Ljava/net/URL;

    iput-object p3, p0, Lcom/tapjoy/internal/id$2;->b:Ljava/io/InputStream;

    iput-wide p4, p0, Lcom/tapjoy/internal/id$2;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/id$2;->d:Lcom/tapjoy/internal/id;

    .line 1216
    const-string v1, "tj_"

    invoke-virtual {v0}, Lcom/tapjoy/internal/id;->b()Ljava/io/File;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    .line 126
    const-class v0, Lcom/tapjoy/internal/id;

    iget-object v0, p0, Lcom/tapjoy/internal/id$2;->a:Ljava/net/URL;

    filled-new-array {v0}, [Ljava/lang/Object;

    return-void

    .line 129
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 139
    :try_start_1
    iget-object v2, p0, Lcom/tapjoy/internal/id$2;->b:Ljava/io/InputStream;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gn;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 140
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 146
    iget-wide v1, p0, Lcom/tapjoy/internal/id$2;->c:J

    const-wide/32 v3, 0x93a80

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    move-wide v1, v3

    .line 151
    :cond_1
    invoke-static {}, Lcom/tapjoy/internal/u;->b()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v1, v5

    add-long/2addr v3, v1

    .line 153
    iget-object v1, p0, Lcom/tapjoy/internal/id$2;->d:Lcom/tapjoy/internal/id;

    monitor-enter v1

    .line 154
    :try_start_2
    iget-object v2, p0, Lcom/tapjoy/internal/id$2;->d:Lcom/tapjoy/internal/id;

    iget-object v5, p0, Lcom/tapjoy/internal/id$2;->a:Ljava/net/URL;

    invoke-virtual {v2, v5}, Lcom/tapjoy/internal/id;->b(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v2

    .line 155
    iget-object v5, p0, Lcom/tapjoy/internal/id$2;->d:Lcom/tapjoy/internal/id;

    invoke-virtual {v5, v2}, Lcom/tapjoy/internal/id;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 156
    invoke-virtual {v0, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 157
    iget-object v5, p0, Lcom/tapjoy/internal/id$2;->d:Lcom/tapjoy/internal/id;

    invoke-static {v5}, Lcom/tapjoy/internal/id;->c(Lcom/tapjoy/internal/id;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 158
    const-class v3, Lcom/tapjoy/internal/id;

    iget-object v3, p0, Lcom/tapjoy/internal/id$2;->a:Ljava/net/URL;

    filled-new-array {v0, v2, v3}, [Ljava/lang/Object;

    goto :goto_0

    .line 160
    :cond_2
    const-class v0, Lcom/tapjoy/internal/id;

    .line 162
    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 142
    :catch_0
    const-class v0, Lcom/tapjoy/internal/id;

    iget-object v0, p0, Lcom/tapjoy/internal/id$2;->a:Ljava/net/URL;

    filled-new-array {v0}, [Ljava/lang/Object;

    return-void

    .line 134
    :catch_1
    const-class v0, Lcom/tapjoy/internal/id;

    iget-object v0, p0, Lcom/tapjoy/internal/id$2;->a:Ljava/net/URL;

    filled-new-array {v0}, [Ljava/lang/Object;

    return-void

    .line 131
    :catch_2
    const-class v0, Lcom/tapjoy/internal/id;

    iget-object v0, p0, Lcom/tapjoy/internal/id$2;->a:Ljava/net/URL;

    filled-new-array {v0}, [Ljava/lang/Object;

    return-void
.end method
