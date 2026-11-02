.class public final Landroidx/webkit/WebViewStartUpConfig;
.super Ljava/lang/Object;
.source "WebViewStartUpConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/webkit/WebViewStartUpConfig$Builder;
    }
.end annotation


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mProfilesToLoadDuringStartup:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mShouldRunUiThreadStartUpTasks:Z


# direct methods
.method private constructor <init>(Ljava/util/concurrent/Executor;ZLjava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Z",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroidx/webkit/WebViewStartUpConfig;->mExecutor:Ljava/util/concurrent/Executor;

    .line 46
    iput-boolean p2, p0, Landroidx/webkit/WebViewStartUpConfig;->mShouldRunUiThreadStartUpTasks:Z

    .line 47
    iput-object p3, p0, Landroidx/webkit/WebViewStartUpConfig;->mProfilesToLoadDuringStartup:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/Executor;ZLjava/util/Set;Landroidx/webkit/WebViewStartUpConfig$1;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroidx/webkit/WebViewStartUpConfig;-><init>(Ljava/util/concurrent/Executor;ZLjava/util/Set;)V

    return-void
.end method


# virtual methods
.method public getBackgroundExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 51
    iget-object v0, p0, Landroidx/webkit/WebViewStartUpConfig;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getProfilesToLoadDuringStartup()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Landroidx/webkit/WebViewStartUpConfig;->mProfilesToLoadDuringStartup:Ljava/util/Set;

    return-object v0
.end method

.method public shouldRunUiThreadStartUpTasks()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Landroidx/webkit/WebViewStartUpConfig;->mShouldRunUiThreadStartUpTasks:Z

    return v0
.end method
