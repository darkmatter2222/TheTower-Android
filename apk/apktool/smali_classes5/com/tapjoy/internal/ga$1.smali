.class final Lcom/tapjoy/internal/ga$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/ga;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/tapjoy/internal/ga;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/ga;Ljava/util/Map;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/tapjoy/internal/ga$1;->b:Lcom/tapjoy/internal/ga;

    iput-object p2, p0, Lcom/tapjoy/internal/ga$1;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 51
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 52
    iget-object v0, p0, Lcom/tapjoy/internal/ga$1;->b:Lcom/tapjoy/internal/ga;

    .line 1014
    iget-object v0, v0, Lcom/tapjoy/internal/ga;->d:Lcom/tapjoy/TapjoyURLConnection;

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tapjoy/internal/ga$1;->b:Lcom/tapjoy/internal/ga;

    .line 2014
    iget-object v2, v2, Lcom/tapjoy/internal/ga;->a:Ljava/lang/String;

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ga$1;->b:Lcom/tapjoy/internal/ga;

    .line 3014
    iget-object v2, v2, Lcom/tapjoy/internal/ga;->b:Ljava/lang/String;

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tapjoy/internal/ga$1;->a:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v2, v3}, Lcom/tapjoy/TapjoyURLConnection;->getResponseFromURL(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/tapjoy/TapjoyHttpURLResponse;

    return-void
.end method
