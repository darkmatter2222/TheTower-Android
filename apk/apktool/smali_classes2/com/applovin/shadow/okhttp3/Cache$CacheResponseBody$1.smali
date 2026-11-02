.class public final Lcom/applovin/shadow/okhttp3/Cache$CacheResponseBody$1;
.super Lcom/applovin/shadow/okio/ForwardingSource;
.source "Cache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/shadow/okhttp3/Cache$CacheResponseBody;-><init>(Lcom/applovin/shadow/okhttp3/internal/cache/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/applovin/shadow/okhttp3/Cache$CacheResponseBody$1",
        "Lcom/applovin/shadow/okio/ForwardingSource;",
        "close",
        "",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/applovin/shadow/okhttp3/Cache$CacheResponseBody;


# direct methods
.method constructor <init>(Lcom/applovin/shadow/okio/Source;Lcom/applovin/shadow/okhttp3/Cache$CacheResponseBody;)V
    .locals 0

    iput-object p2, p0, Lcom/applovin/shadow/okhttp3/Cache$CacheResponseBody$1;->this$0:Lcom/applovin/shadow/okhttp3/Cache$CacheResponseBody;

    .line 681
    invoke-direct {p0, p1}, Lcom/applovin/shadow/okio/ForwardingSource;-><init>(Lcom/applovin/shadow/okio/Source;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 684
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/Cache$CacheResponseBody$1;->this$0:Lcom/applovin/shadow/okhttp3/Cache$CacheResponseBody;

    invoke-virtual {v0}, Lcom/applovin/shadow/okhttp3/Cache$CacheResponseBody;->getSnapshot()Lcom/applovin/shadow/okhttp3/internal/cache/DiskLruCache$Snapshot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/shadow/okhttp3/internal/cache/DiskLruCache$Snapshot;->close()V

    .line 685
    invoke-super {p0}, Lcom/applovin/shadow/okio/ForwardingSource;->close()V

    return-void
.end method
