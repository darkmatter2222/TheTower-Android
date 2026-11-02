.class public final Lcom/google/crypto/tink/internal/MonitoringUtil;
.super Ljava/lang/Object;
.source "MonitoringUtil.java"


# static fields
.field public static final DO_NOTHING_LOGGER:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/google/crypto/tink/internal/MonitoringUtil$1;

    invoke-direct {v0}, Lcom/google/crypto/tink/internal/MonitoringUtil$1;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/internal/MonitoringUtil;->DO_NOTHING_LOGGER:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
