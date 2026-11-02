.class public final Lorg/chromium/net/impl/CronetLogger$CronetInitializedInfo;
.super Ljava/lang/Object;
.source "CronetLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/impl/CronetLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CronetInitializedInfo"
.end annotation


# instance fields
.field public cronetImplVersion:Ljava/lang/String;

.field public cronetInitializationRef:J

.field public engineAsyncLatencyMillis:I

.field public engineCreationLatencyMillis:I

.field public httpFlagsLatencyMillis:I

.field public httpFlagsNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public httpFlagsSuccessful:Ljava/lang/Boolean;

.field public httpFlagsValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public source:Lorg/chromium/net/impl/CronetLogger$CronetSource;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 81
    iput v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetInitializedInfo;->engineCreationLatencyMillis:I

    .line 82
    iput v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetInitializedInfo;->engineAsyncLatencyMillis:I

    .line 83
    iput v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetInitializedInfo;->httpFlagsLatencyMillis:I

    .line 88
    sget-object v0, Lorg/chromium/net/impl/CronetLogger$CronetSource;->CRONET_SOURCE_UNSPECIFIED:Lorg/chromium/net/impl/CronetLogger$CronetSource;

    iput-object v0, p0, Lorg/chromium/net/impl/CronetLogger$CronetInitializedInfo;->source:Lorg/chromium/net/impl/CronetLogger$CronetSource;

    return-void
.end method
