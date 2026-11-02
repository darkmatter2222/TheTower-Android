.class public final Lcom/unity3d/ads/core/data/datasource/AndroidGoogleAppIdDataSource;
.super Ljava/lang/Object;
.source "AndroidGoogleAppIdDataSource.kt"

# interfaces
.implements Lcom/unity3d/ads/core/data/datasource/GoogleAppIdDataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/data/datasource/AndroidGoogleAppIdDataSource$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidGoogleAppIdDataSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidGoogleAppIdDataSource.kt\ncom/unity3d/ads/core/data/datasource/AndroidGoogleAppIdDataSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,18:1\n1#2:19\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0018\u0000 \u000c2\u00020\u0001:\u0001\u000cB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0006\u001a\u0004\u0018\u00010\u00078VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/unity3d/ads/core/data/datasource/AndroidGoogleAppIdDataSource;",
        "Lcom/unity3d/ads/core/data/datasource/GoogleAppIdDataSource;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "googleAppId",
        "",
        "getGoogleAppId",
        "()Ljava/lang/String;",
        "googleAppId$delegate",
        "Lkotlin/Lazy;",
        "Companion",
        "unity-ads_defaultRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/unity3d/ads/core/data/datasource/AndroidGoogleAppIdDataSource$Companion;

.field public static final GOOGLE_APP_ID_RESOURCE_NAME:Ljava/lang/String; = "google_app_id"


# instance fields
.field private final context:Landroid/content/Context;

.field private final googleAppId$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$WDZIDZTEVt2w0OftG5c1jwo5d1I(Lcom/unity3d/ads/core/data/datasource/AndroidGoogleAppIdDataSource;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/unity3d/ads/core/data/datasource/AndroidGoogleAppIdDataSource;->googleAppId_delegate$lambda$3(Lcom/unity3d/ads/core/data/datasource/AndroidGoogleAppIdDataSource;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/unity3d/ads/core/data/datasource/AndroidGoogleAppIdDataSource$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/data/datasource/AndroidGoogleAppIdDataSource$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/unity3d/ads/core/data/datasource/AndroidGoogleAppIdDataSource;->Companion:Lcom/unity3d/ads/core/data/datasource/AndroidGoogleAppIdDataSource$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/data/datasource/AndroidGoogleAppIdDataSource;->context:Landroid/content/Context;

    .line 6
    new-instance p1, Lcom/unity3d/ads/core/data/datasource/AndroidGoogleAppIdDataSource$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/unity3d/ads/core/data/datasource/AndroidGoogleAppIdDataSource$$ExternalSyntheticLambda0;-><init>(Lcom/unity3d/ads/core/data/datasource/AndroidGoogleAppIdDataSource;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/ads/core/data/datasource/AndroidGoogleAppIdDataSource;->googleAppId$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private static final googleAppId_delegate$lambda$3(Lcom/unity3d/ads/core/data/datasource/AndroidGoogleAppIdDataSource;)Ljava/lang/String;
    .locals 4

    .line 7
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 8
    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/AndroidGoogleAppIdDataSource;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "google_app_id"

    const-string v2, "string"

    iget-object v3, p0, Lcom/unity3d/ads/core/data/datasource/AndroidGoogleAppIdDataSource;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 9
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 10
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_2

    .line 11
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object p0, p0, Lcom/unity3d/ads/core/data/datasource/AndroidGoogleAppIdDataSource;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_2
    return-object v2
.end method


# virtual methods
.method public getGoogleAppId()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/AndroidGoogleAppIdDataSource;->googleAppId$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
