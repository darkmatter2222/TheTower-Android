.class public interface abstract Lcom/applovin/shadow/okhttp3/Call;
.super Ljava/lang/Object;
.source "Call.kt"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/shadow/okhttp3/Call$Factory;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001:\u0001\u0011J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0008\u0010\u0004\u001a\u00020\u0000H&J\u0010\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0008\u0010\u0008\u001a\u00020\tH&J\u0008\u0010\n\u001a\u00020\u000bH&J\u0008\u0010\u000c\u001a\u00020\u000bH&J\u0008\u0010\r\u001a\u00020\u000eH&J\u0008\u0010\u000f\u001a\u00020\u0010H&\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/applovin/shadow/okhttp3/Call;",
        "",
        "cancel",
        "",
        "clone",
        "enqueue",
        "responseCallback",
        "Lcom/applovin/shadow/okhttp3/Callback;",
        "execute",
        "Lcom/applovin/shadow/okhttp3/Response;",
        "isCanceled",
        "",
        "isExecuted",
        "request",
        "Lcom/applovin/shadow/okhttp3/Request;",
        "timeout",
        "Lcom/applovin/shadow/okio/Timeout;",
        "Factory",
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


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract clone()Lcom/applovin/shadow/okhttp3/Call;
.end method

.method public abstract enqueue(Lcom/applovin/shadow/okhttp3/Callback;)V
.end method

.method public abstract execute()Lcom/applovin/shadow/okhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract isCanceled()Z
.end method

.method public abstract isExecuted()Z
.end method

.method public abstract request()Lcom/applovin/shadow/okhttp3/Request;
.end method

.method public abstract timeout()Lcom/applovin/shadow/okio/Timeout;
.end method
