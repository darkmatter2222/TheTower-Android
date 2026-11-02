.class public final Lcom/unity3d/ironsourceads/InitRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ironsourceads/InitRequest$Builder;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/unity3d/ironsourceads/IronSourceAds$AdFormat;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/unity3d/ironsourceads/LogLevel;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/unity3d/ironsourceads/LogLevel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/unity3d/ironsourceads/IronSourceAds$AdFormat;",
            ">;",
            "Lcom/unity3d/ironsourceads/LogLevel;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/unity3d/ironsourceads/InitRequest;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/unity3d/ironsourceads/InitRequest;->b:Ljava/util/List;

    .line 5
    iput-object p3, p0, Lcom/unity3d/ironsourceads/InitRequest;->c:Lcom/unity3d/ironsourceads/LogLevel;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/unity3d/ironsourceads/LogLevel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/unity3d/ironsourceads/InitRequest;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/unity3d/ironsourceads/LogLevel;)V

    return-void
.end method


# virtual methods
.method public final getAppKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/unity3d/ironsourceads/InitRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getLegacyAdFormats()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/unity3d/ironsourceads/IronSourceAds$AdFormat;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/unity3d/ironsourceads/InitRequest;->b:Ljava/util/List;

    return-object v0
.end method

.method public final getLogLevel()Lcom/unity3d/ironsourceads/LogLevel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/unity3d/ironsourceads/InitRequest;->c:Lcom/unity3d/ironsourceads/LogLevel;

    return-object v0
.end method
