.class public final Lorg/chromium/net/DnsOptions;
.super Ljava/lang/Object;
.source "DnsOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/net/DnsOptions$Builder;,
        Lorg/chromium/net/DnsOptions$StaleDnsOptions;,
        Lorg/chromium/net/DnsOptions$Experimental;
    }
.end annotation


# instance fields
.field private final mEnableStaleDns:Ljava/lang/Boolean;

.field private final mPersistHostCache:Ljava/lang/Boolean;

.field private final mPersistHostCachePeriodMillis:Ljava/lang/Long;

.field private final mPreestablishConnectionsToStaleDnsResults:Ljava/lang/Boolean;

.field private final mStaleDnsOptions:Lorg/chromium/net/DnsOptions$StaleDnsOptions;

.field private final mUseBuiltInDnsResolver:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lorg/chromium/net/DnsOptions$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p1}, Lorg/chromium/net/DnsOptions$Builder;->-$$Nest$fgetmEnableStaleDns(Lorg/chromium/net/DnsOptions$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/DnsOptions;->mEnableStaleDns:Ljava/lang/Boolean;

    .line 54
    invoke-static {p1}, Lorg/chromium/net/DnsOptions$Builder;->-$$Nest$fgetmStaleDnsOptions(Lorg/chromium/net/DnsOptions$Builder;)Lorg/chromium/net/DnsOptions$StaleDnsOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/DnsOptions;->mStaleDnsOptions:Lorg/chromium/net/DnsOptions$StaleDnsOptions;

    .line 55
    invoke-static {p1}, Lorg/chromium/net/DnsOptions$Builder;->-$$Nest$fgetmPersistHostCachePeriodMillis(Lorg/chromium/net/DnsOptions$Builder;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/DnsOptions;->mPersistHostCachePeriodMillis:Ljava/lang/Long;

    .line 56
    invoke-static {p1}, Lorg/chromium/net/DnsOptions$Builder;->-$$Nest$fgetmPreestablishConnectionsToStaleDnsResults(Lorg/chromium/net/DnsOptions$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/DnsOptions;->mPreestablishConnectionsToStaleDnsResults:Ljava/lang/Boolean;

    .line 58
    invoke-static {p1}, Lorg/chromium/net/DnsOptions$Builder;->-$$Nest$fgetmUseBuiltInDnsResolver(Lorg/chromium/net/DnsOptions$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/DnsOptions;->mUseBuiltInDnsResolver:Ljava/lang/Boolean;

    .line 59
    invoke-static {p1}, Lorg/chromium/net/DnsOptions$Builder;->-$$Nest$fgetmPersistHostCache(Lorg/chromium/net/DnsOptions$Builder;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/net/DnsOptions;->mPersistHostCache:Ljava/lang/Boolean;

    return-void
.end method

.method public static builder()Lorg/chromium/net/DnsOptions$Builder;
    .locals 1

    .line 93
    new-instance v0, Lorg/chromium/net/DnsOptions$Builder;

    invoke-direct {v0}, Lorg/chromium/net/DnsOptions$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getEnableStaleDns()Ljava/lang/Boolean;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/chromium/net/DnsOptions;->mEnableStaleDns:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPersistHostCache()Ljava/lang/Boolean;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/chromium/net/DnsOptions;->mPersistHostCache:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPersistHostCachePeriodMillis()Ljava/lang/Long;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/chromium/net/DnsOptions;->mPersistHostCachePeriodMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public getPreestablishConnectionsToStaleDnsResults()Ljava/lang/Boolean;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/chromium/net/DnsOptions;->mPreestablishConnectionsToStaleDnsResults:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getStaleDnsOptions()Lorg/chromium/net/DnsOptions$StaleDnsOptions;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/chromium/net/DnsOptions;->mStaleDnsOptions:Lorg/chromium/net/DnsOptions$StaleDnsOptions;

    return-object v0
.end method

.method public getUseBuiltInDnsResolver()Ljava/lang/Boolean;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/chromium/net/DnsOptions;->mUseBuiltInDnsResolver:Ljava/lang/Boolean;

    return-object v0
.end method
