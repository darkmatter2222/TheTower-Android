.class public Lorg/chromium/net/ConnectionMigrationOptions$Builder;
.super Ljava/lang/Object;
.source "ConnectionMigrationOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/ConnectionMigrationOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAllowNonDefaultNetworkUsage:Ljava/lang/Boolean;

.field private mAllowServerMigration:Ljava/lang/Boolean;

.field private mEnableDefaultNetworkConnectionMigration:Ljava/lang/Boolean;

.field private mEnablePathDegradationMigration:Ljava/lang/Boolean;

.field private mIdleConnectionMigrationPeriodSeconds:Ljava/lang/Long;

.field private mMaxPathDegradingEagerMigrationsCount:Ljava/lang/Integer;

.field private mMaxTimeOnNonDefaultNetworkSeconds:Ljava/lang/Long;

.field private mMaxWriteErrorEagerMigrationsCount:Ljava/lang/Integer;

.field private mMigrateIdleConnections:Ljava/lang/Boolean;

.field private mRetryPreHandshakeErrorsOnAlternateNetwork:Ljava/lang/Boolean;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAllowNonDefaultNetworkUsage(Lorg/chromium/net/ConnectionMigrationOptions$Builder;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lorg/chromium/net/ConnectionMigrationOptions$Builder;->mAllowNonDefaultNetworkUsage:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAllowServerMigration(Lorg/chromium/net/ConnectionMigrationOptions$Builder;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lorg/chromium/net/ConnectionMigrationOptions$Builder;->mAllowServerMigration:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEnableDefaultNetworkConnectionMigration(Lorg/chromium/net/ConnectionMigrationOptions$Builder;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lorg/chromium/net/ConnectionMigrationOptions$Builder;->mEnableDefaultNetworkConnectionMigration:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEnablePathDegradationMigration(Lorg/chromium/net/ConnectionMigrationOptions$Builder;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lorg/chromium/net/ConnectionMigrationOptions$Builder;->mEnablePathDegradationMigration:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIdleConnectionMigrationPeriodSeconds(Lorg/chromium/net/ConnectionMigrationOptions$Builder;)Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lorg/chromium/net/ConnectionMigrationOptions$Builder;->mIdleConnectionMigrationPeriodSeconds:Ljava/lang/Long;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMaxPathDegradingEagerMigrationsCount(Lorg/chromium/net/ConnectionMigrationOptions$Builder;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lorg/chromium/net/ConnectionMigrationOptions$Builder;->mMaxPathDegradingEagerMigrationsCount:Ljava/lang/Integer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMaxTimeOnNonDefaultNetworkSeconds(Lorg/chromium/net/ConnectionMigrationOptions$Builder;)Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lorg/chromium/net/ConnectionMigrationOptions$Builder;->mMaxTimeOnNonDefaultNetworkSeconds:Ljava/lang/Long;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMaxWriteErrorEagerMigrationsCount(Lorg/chromium/net/ConnectionMigrationOptions$Builder;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lorg/chromium/net/ConnectionMigrationOptions$Builder;->mMaxWriteErrorEagerMigrationsCount:Ljava/lang/Integer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMigrateIdleConnections(Lorg/chromium/net/ConnectionMigrationOptions$Builder;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lorg/chromium/net/ConnectionMigrationOptions$Builder;->mMigrateIdleConnections:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRetryPreHandshakeErrorsOnAlternateNetwork(Lorg/chromium/net/ConnectionMigrationOptions$Builder;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lorg/chromium/net/ConnectionMigrationOptions$Builder;->mRetryPreHandshakeErrorsOnAlternateNetwork:Ljava/lang/Boolean;

    return-object p0
.end method

.method private constructor <init>()V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/net/ConnectionMigrationOptions-IA;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/net/ConnectionMigrationOptions$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public allowNonDefaultNetworkUsage(Z)Lorg/chromium/net/ConnectionMigrationOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 207
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/net/ConnectionMigrationOptions$Builder;->mAllowNonDefaultNetworkUsage:Ljava/lang/Boolean;

    return-object p0
.end method

.method public allowServerMigration(Z)Lorg/chromium/net/ConnectionMigrationOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allowServerMigration"
        }
    .end annotation

    .line 158
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/net/ConnectionMigrationOptions$Builder;->mAllowServerMigration:Ljava/lang/Boolean;

    return-object p0
.end method

.method public build()Lorg/chromium/net/ConnectionMigrationOptions;
    .locals 2

    .line 283
    new-instance v0, Lorg/chromium/net/ConnectionMigrationOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/net/ConnectionMigrationOptions;-><init>(Lorg/chromium/net/ConnectionMigrationOptions$Builder;Lorg/chromium/net/ConnectionMigrationOptions-IA;)V

    return-object v0
.end method

.method public enableDefaultNetworkMigration(Z)Lorg/chromium/net/ConnectionMigrationOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enableDefaultNetworkConnectionMigration"
        }
    .end annotation

    .line 130
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/net/ConnectionMigrationOptions$Builder;->mEnableDefaultNetworkConnectionMigration:Ljava/lang/Boolean;

    return-object p0
.end method

.method public enablePathDegradationMigration(Z)Lorg/chromium/net/ConnectionMigrationOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 146
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/net/ConnectionMigrationOptions$Builder;->mEnablePathDegradationMigration:Ljava/lang/Boolean;

    return-object p0
.end method

.method public migrateIdleConnections(Z)Lorg/chromium/net/ConnectionMigrationOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "migrateIdleConnections"
        }
    .end annotation

    .line 174
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/net/ConnectionMigrationOptions$Builder;->mMigrateIdleConnections:Ljava/lang/Boolean;

    return-object p0
.end method

.method public retryPreHandshakeErrorsOnNonDefaultNetwork(Z)Lorg/chromium/net/ConnectionMigrationOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "retryPreHandshakeErrorsOnAlternateNetwork"
        }
    .end annotation

    .line 274
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/net/ConnectionMigrationOptions$Builder;->mRetryPreHandshakeErrorsOnAlternateNetwork:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setIdleConnectionMigrationPeriodSeconds(J)Lorg/chromium/net/ConnectionMigrationOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idleConnectionMigrationPeriodSeconds"
        }
    .end annotation

    .line 189
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/net/ConnectionMigrationOptions$Builder;->mIdleConnectionMigrationPeriodSeconds:Ljava/lang/Long;

    return-object p0
.end method

.method public setMaxPathDegradingNonDefaultNetworkMigrationsCount(I)Lorg/chromium/net/ConnectionMigrationOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxPathDegradingEagerMigrationsCount"
        }
    .end annotation

    .line 254
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/net/ConnectionMigrationOptions$Builder;->mMaxPathDegradingEagerMigrationsCount:Ljava/lang/Integer;

    return-object p0
.end method

.method public setMaxTimeOnNonDefaultNetworkSeconds(J)Lorg/chromium/net/ConnectionMigrationOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxTimeOnNonDefaultNetworkSeconds"
        }
    .end annotation

    .line 224
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/net/ConnectionMigrationOptions$Builder;->mMaxTimeOnNonDefaultNetworkSeconds:Ljava/lang/Long;

    return-object p0
.end method

.method public setMaxWriteErrorNonDefaultNetworkMigrationsCount(I)Lorg/chromium/net/ConnectionMigrationOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxWriteErrorEagerMigrationsCount"
        }
    .end annotation

    .line 239
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/net/ConnectionMigrationOptions$Builder;->mMaxWriteErrorEagerMigrationsCount:Ljava/lang/Integer;

    return-object p0
.end method
