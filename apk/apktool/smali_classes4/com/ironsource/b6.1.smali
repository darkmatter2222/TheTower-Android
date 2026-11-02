.class public Lcom/ironsource/b6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/ironsource/j5;

.field private final c:Lcom/ironsource/a6;

.field private final d:Lcom/ironsource/Ub;

.field private final e:Lcom/ironsource/B7;


# direct methods
.method static bridge synthetic -$$Nest$fgetd(Lcom/ironsource/b6;)Lcom/ironsource/Ub;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/b6;->d:Lcom/ironsource/Ub;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ironsource/j5;Lcom/ironsource/a6;Lcom/ironsource/Ub;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/ironsource/Pb;->k0()Lcom/ironsource/M7;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/M7;->a()Lcom/ironsource/B7;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/b6;->e:Lcom/ironsource/B7;

    .line 3
    iput-object p1, p0, Lcom/ironsource/b6;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/ironsource/b6;->b:Lcom/ironsource/j5;

    .line 5
    iput-object p3, p0, Lcom/ironsource/b6;->c:Lcom/ironsource/a6;

    .line 6
    iput-object p4, p0, Lcom/ironsource/b6;->d:Lcom/ironsource/Ub;

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/D8;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 56
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 59
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/ironsource/b6;->d:Lcom/ironsource/Ub;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/Ub;->a(Ljava/lang/String;)Z

    return-void

    .line 64
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Failed to delete file"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/ironsource/D8;Ljava/lang/String;IILcom/ironsource/Vc;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4
    iget-object v0, p0, Lcom/ironsource/b6;->e:Lcom/ironsource/B7;

    iget-object v1, p0, Lcom/ironsource/b6;->b:Lcom/ironsource/j5;

    .line 5
    invoke-virtual {v1}, Lcom/ironsource/j5;->a()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-interface {v0, v1}, Lcom/ironsource/B7;->a(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 12
    iget-object v0, p0, Lcom/ironsource/b6;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ironsource/X3;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16
    iget-object v0, p0, Lcom/ironsource/b6;->c:Lcom/ironsource/a6;

    .line 17
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ironsource/b6$a;

    invoke-direct {v2, p0, p5}, Lcom/ironsource/b6$a;-><init>(Lcom/ironsource/b6;Lcom/ironsource/Vc;)V

    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/ironsource/a6;->a(Ljava/lang/String;Lcom/ironsource/Vc;)V

    .line 44
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p5

    if-eqz p5, :cond_0

    .line 45
    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    .line 46
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 p1, 0x3f7

    .line 47
    iput p1, p2, Landroid/os/Message;->what:I

    .line 48
    iget-object p1, p0, Lcom/ironsource/b6;->c:Lcom/ironsource/a6;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/ironsource/b6;->b:Lcom/ironsource/j5;

    iget-object v5, p0, Lcom/ironsource/b6;->c:Lcom/ironsource/a6;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/ironsource/j5;->a(Lcom/ironsource/D8;Ljava/lang/String;IILandroid/os/Handler;)V

    return-void

    .line 53
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "no_network_connection"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 54
    :cond_2
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "no_disk_space"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_3
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Missing params for file"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/ironsource/D8;Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 65
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/ironsource/b6;->d:Lcom/ironsource/Ub;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/Ub;->b(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 72
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Failed to update attribute"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "File does not exist"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_2
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Missing attributes to update"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lcom/ironsource/D8;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->getFilesInFolderRecursive(Lcom/ironsource/D8;)Ljava/util/ArrayList;

    move-result-object v0

    .line 6
    invoke-static {p1}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->deleteFolderContentRecursive(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/ironsource/b6;->d:Lcom/ironsource/Ub;

    invoke-virtual {p1, v0}, Lcom/ironsource/Ub;->a(Ljava/util/ArrayList;)Z

    return-void

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Failed to delete folder"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Lcom/ironsource/D8;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/ironsource/b6;->d:Lcom/ironsource/Ub;

    .line 5
    invoke-virtual {v0}, Lcom/ironsource/Ub;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 6
    invoke-static {p1, v0}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->buildFilesMapOfDirectory(Lcom/ironsource/D8;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Folder does not exist"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Lcom/ironsource/D8;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p1}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->getTotalSizeOfDir(Lcom/ironsource/D8;)J

    move-result-wide v0

    return-wide v0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Folder does not exist"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method
