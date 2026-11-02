.class final Lorg/chromium/net/CronetProvider$ProviderInfo;
.super Ljava/lang/Object;
.source "CronetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/CronetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ProviderInfo"
.end annotation


# instance fields
.field public logSource:Lorg/chromium/net/impl/CronetLogger$CronetSource;

.field public provider:Lorg/chromium/net/CronetProvider;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 158
    instance-of v0, p1, Lorg/chromium/net/CronetProvider$ProviderInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/net/CronetProvider$ProviderInfo;->provider:Lorg/chromium/net/CronetProvider;

    check-cast p1, Lorg/chromium/net/CronetProvider$ProviderInfo;

    iget-object p1, p1, Lorg/chromium/net/CronetProvider$ProviderInfo;->provider:Lorg/chromium/net/CronetProvider;

    .line 159
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/chromium/net/CronetProvider$ProviderInfo;->provider:Lorg/chromium/net/CronetProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
