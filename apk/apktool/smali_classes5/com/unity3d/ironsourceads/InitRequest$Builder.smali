.class public final Lcom/unity3d/ironsourceads/InitRequest$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ironsourceads/InitRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInitRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InitRequest.kt\ncom/unity3d/ironsourceads/InitRequest$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,56:1\n1#2:57\n*E\n"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/unity3d/ironsourceads/IronSourceAds$AdFormat;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/unity3d/ironsourceads/LogLevel;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "appKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/unity3d/ironsourceads/InitRequest$Builder;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final build()Lcom/unity3d/ironsourceads/InitRequest;
    .locals 5

    .line 1
    new-instance v0, Lcom/unity3d/ironsourceads/InitRequest;

    iget-object v1, p0, Lcom/unity3d/ironsourceads/InitRequest$Builder;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/unity3d/ironsourceads/InitRequest$Builder;->b:Ljava/util/List;

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    :cond_0
    iget-object v3, p0, Lcom/unity3d/ironsourceads/InitRequest$Builder;->c:Lcom/unity3d/ironsourceads/LogLevel;

    if-nez v3, :cond_1

    sget-object v3, Lcom/unity3d/ironsourceads/LogLevel;->NONE:Lcom/unity3d/ironsourceads/LogLevel;

    :cond_1
    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/unity3d/ironsourceads/InitRequest;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/unity3d/ironsourceads/LogLevel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final getAppKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/unity3d/ironsourceads/InitRequest$Builder;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final withLegacyAdFormats(Ljava/util/List;)Lcom/unity3d/ironsourceads/InitRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/unity3d/ironsourceads/IronSourceAds$AdFormat;",
            ">;)",
            "Lcom/unity3d/ironsourceads/InitRequest$Builder;"
        }
    .end annotation

    const-string v0, "legacyAdFormats"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/unity3d/ironsourceads/InitRequest$Builder;->b:Ljava/util/List;

    return-object p0
.end method

.method public final withLogLevel(Lcom/unity3d/ironsourceads/LogLevel;)Lcom/unity3d/ironsourceads/InitRequest$Builder;
    .locals 1

    const-string v0, "logLevel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/unity3d/ironsourceads/InitRequest$Builder;->c:Lcom/unity3d/ironsourceads/LogLevel;

    return-object p0
.end method
