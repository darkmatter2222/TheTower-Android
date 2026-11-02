.class public final Landroidx/webkit/WebViewStartUpConfig$Builder;
.super Ljava/lang/Object;
.source "WebViewStartUpConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/webkit/WebViewStartUpConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private mProfilesToLoadDuringStartup:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mShouldRunUiThreadStartUpTasks:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 90
    iput-boolean v0, p0, Landroidx/webkit/WebViewStartUpConfig$Builder;->mShouldRunUiThreadStartUpTasks:Z

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Landroidx/webkit/WebViewStartUpConfig$Builder;->mProfilesToLoadDuringStartup:Ljava/util/Set;

    .line 101
    iput-object p1, p0, Landroidx/webkit/WebViewStartUpConfig$Builder;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public build()Landroidx/webkit/WebViewStartUpConfig;
    .locals 5

    .line 177
    new-instance v0, Landroidx/webkit/WebViewStartUpConfig;

    iget-object v1, p0, Landroidx/webkit/WebViewStartUpConfig$Builder;->mExecutor:Ljava/util/concurrent/Executor;

    iget-boolean v2, p0, Landroidx/webkit/WebViewStartUpConfig$Builder;->mShouldRunUiThreadStartUpTasks:Z

    iget-object v3, p0, Landroidx/webkit/WebViewStartUpConfig$Builder;->mProfilesToLoadDuringStartup:Ljava/util/Set;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/webkit/WebViewStartUpConfig;-><init>(Ljava/util/concurrent/Executor;ZLjava/util/Set;Landroidx/webkit/WebViewStartUpConfig$1;)V

    return-object v0
.end method

.method public setProfilesToLoadDuringStartup(Ljava/util/Set;)Landroidx/webkit/WebViewStartUpConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/webkit/WebViewStartUpConfig$Builder;"
        }
    .end annotation

    .line 162
    iget-boolean v0, p0, Landroidx/webkit/WebViewStartUpConfig$Builder;->mShouldRunUiThreadStartUpTasks:Z

    if-eqz v0, :cond_0

    .line 167
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroidx/webkit/WebViewStartUpConfig$Builder;->mProfilesToLoadDuringStartup:Ljava/util/Set;

    return-object p0

    .line 163
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t specify profiles to load without running UI thread startup tasks"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setShouldRunUiThreadStartUpTasks(Z)Landroidx/webkit/WebViewStartUpConfig$Builder;
    .locals 1

    .line 120
    iget-object v0, p0, Landroidx/webkit/WebViewStartUpConfig$Builder;->mProfilesToLoadDuringStartup:Ljava/util/Set;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 121
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t specify profiles to load without running UI thread startup tasks"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 124
    :cond_1
    :goto_0
    iput-boolean p1, p0, Landroidx/webkit/WebViewStartUpConfig$Builder;->mShouldRunUiThreadStartUpTasks:Z

    return-object p0
.end method
