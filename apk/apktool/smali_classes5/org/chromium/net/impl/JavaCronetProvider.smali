.class public Lorg/chromium/net/impl/JavaCronetProvider;
.super Lorg/chromium/net/CronetProvider;
.source "JavaCronetProvider.java"


# static fields
.field public static final FORCE_HTTPENGINE_FLAG:Ljava/lang/String; = "Cronet_ForceHttpEngineInFallback"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1}, Lorg/chromium/net/CronetProvider;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private shouldUseHttpEngine()Z
    .locals 3

    .line 34
    invoke-static {}, Lorg/chromium/net/impl/HttpEngineNativeProvider;->isHttpEngineAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 35
    :cond_0
    iget-object v0, p0, Lorg/chromium/net/impl/JavaCronetProvider;->mContext:Landroid/content/Context;

    sget-object v2, Lorg/chromium/net/impl/CronetLogger$CronetSource;->CRONET_SOURCE_FALLBACK:Lorg/chromium/net/impl/CronetLogger$CronetSource;

    .line 36
    invoke-static {v0, v2}, Lorg/chromium/net/impl/HttpFlagsForImpl;->getHttpFlags(Landroid/content/Context;Lorg/chromium/net/impl/CronetLogger$CronetSource;)Lorg/chromium/net/httpflags/ResolvedFlags;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lorg/chromium/net/httpflags/ResolvedFlags;->flags()Ljava/util/Map;

    move-result-object v0

    const-string v2, "Cronet_ForceHttpEngineInFallback"

    .line 38
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/net/httpflags/ResolvedFlags$Value;

    if-eqz v0, :cond_1

    .line 39
    invoke-virtual {v0}, Lorg/chromium/net/httpflags/ResolvedFlags$Value;->getBoolValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method


# virtual methods
.method public createBuilder()Lorg/chromium/net/CronetEngine$Builder;
    .locals 2

    .line 44
    invoke-direct {p0}, Lorg/chromium/net/impl/JavaCronetProvider;->shouldUseHttpEngine()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    new-instance v0, Lorg/chromium/net/impl/HttpEngineNativeProvider;

    iget-object v1, p0, Lorg/chromium/net/impl/JavaCronetProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/chromium/net/impl/HttpEngineNativeProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lorg/chromium/net/impl/HttpEngineNativeProvider;->createBuilder()Lorg/chromium/net/CronetEngine$Builder;

    move-result-object v0

    return-object v0

    .line 47
    :cond_0
    new-instance v0, Lorg/chromium/net/impl/JavaCronetEngineBuilderImpl;

    iget-object v1, p0, Lorg/chromium/net/impl/JavaCronetProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/chromium/net/impl/JavaCronetEngineBuilderImpl;-><init>(Landroid/content/Context;)V

    .line 48
    new-instance v1, Lorg/chromium/net/ExperimentalCronetEngine$Builder;

    invoke-direct {v1, v0}, Lorg/chromium/net/ExperimentalCronetEngine$Builder;-><init>(Lorg/chromium/net/ICronetEngineBuilder;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    if-eq p1, p0, :cond_1

    .line 74
    instance-of v0, p1, Lorg/chromium/net/impl/JavaCronetProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/net/impl/JavaCronetProvider;->mContext:Landroid/content/Context;

    check-cast p1, Lorg/chromium/net/impl/JavaCronetProvider;

    iget-object p1, p1, Lorg/chromium/net/impl/JavaCronetProvider;->mContext:Landroid/content/Context;

    .line 76
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 54
    const-string v0, "Fallback-Cronet-Provider"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 59
    invoke-static {}, Lorg/chromium/net/impl/ImplVersion;->getCronetVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 69
    const-class v0, Lorg/chromium/net/impl/JavaCronetProvider;

    iget-object v1, p0, Lorg/chromium/net/impl/JavaCronetProvider;->mContext:Landroid/content/Context;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
