.class public final Lorg/chromium/net/Proxy;
.super Ljava/lang/Object;
.source "Proxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/net/Proxy$Callback;,
        Lorg/chromium/net/Proxy$Scheme;
    }
.end annotation


# static fields
.field public static final HTTP:I = 0x0

.field public static final HTTPS:I = 0x1


# instance fields
.field private final mCallback:Lorg/chromium/net/Proxy$Callback;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mHost:Ljava/lang/String;

.field private final mPort:I

.field private final mScheme:I


# direct methods
.method public constructor <init>(ILjava/lang/String;ILjava/util/concurrent/Executor;Lorg/chromium/net/Proxy$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "scheme",
            "host",
            "port",
            "executor",
            "callback"
        }
    .end annotation

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p3, "Unknown scheme %s"

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 171
    :cond_1
    :goto_0
    iput p1, p0, Lorg/chromium/net/Proxy;->mScheme:I

    .line 172
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lorg/chromium/net/Proxy;->mHost:Ljava/lang/String;

    .line 173
    iput p3, p0, Lorg/chromium/net/Proxy;->mPort:I

    .line 174
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lorg/chromium/net/Proxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 175
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/net/Proxy$Callback;

    iput-object p1, p0, Lorg/chromium/net/Proxy;->mCallback:Lorg/chromium/net/Proxy$Callback;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILorg/chromium/net/Proxy$Callback;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "scheme",
            "host",
            "port",
            "callback"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 193
    new-instance v4, Lorg/chromium/net/Proxy$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lorg/chromium/net/Proxy$$ExternalSyntheticLambda0;-><init>()V

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/chromium/net/Proxy;-><init>(ILjava/lang/String;ILjava/util/concurrent/Executor;Lorg/chromium/net/Proxy$Callback;)V

    return-void
.end method

.method static synthetic lambda$new$0(Ljava/lang/Runnable;)V
    .locals 0

    .line 198
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public getCallback()Lorg/chromium/net/Proxy$Callback;
    .locals 1

    .line 225
    iget-object v0, p0, Lorg/chromium/net/Proxy;->mCallback:Lorg/chromium/net/Proxy$Callback;

    return-object v0
.end method

.method public getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 220
    iget-object v0, p0, Lorg/chromium/net/Proxy;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 210
    iget-object v0, p0, Lorg/chromium/net/Proxy;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 215
    iget v0, p0, Lorg/chromium/net/Proxy;->mPort:I

    return v0
.end method

.method public getScheme()I
    .locals 1

    .line 205
    iget v0, p0, Lorg/chromium/net/Proxy;->mScheme:I

    return v0
.end method
