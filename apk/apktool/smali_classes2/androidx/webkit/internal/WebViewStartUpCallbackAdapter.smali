.class public Landroidx/webkit/internal/WebViewStartUpCallbackAdapter;
.super Ljava/lang/Object;
.source "WebViewStartUpCallbackAdapter.java"

# interfaces
.implements Lorg/chromium/support_lib_boundary/WebViewStartUpCallbackBoundaryInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/webkit/internal/WebViewStartUpCallbackAdapter$StartUpLocationImpl;
    }
.end annotation


# instance fields
.field private final mWebViewStartUpCallback:Landroidx/webkit/WebViewCompat$WebViewStartUpCallback;


# direct methods
.method public constructor <init>(Landroidx/webkit/WebViewCompat$WebViewStartUpCallback;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroidx/webkit/internal/WebViewStartUpCallbackAdapter;->mWebViewStartUpCallback:Landroidx/webkit/WebViewCompat$WebViewStartUpCallback;

    return-void
.end method

.method private convertFromThrowables(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/webkit/StartUpLocation;",
            ">;"
        }
    .end annotation

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    .line 121
    new-instance v2, Landroidx/webkit/internal/WebViewStartUpCallbackAdapter$StartUpLocationImpl;

    invoke-direct {v2, v1}, Landroidx/webkit/internal/WebViewStartUpCallbackAdapter$StartUpLocationImpl;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private webViewStartUpResultFromBoundaryInterface(Lorg/chromium/support_lib_boundary/WebViewStartUpResultBoundaryInterface;)Landroidx/webkit/WebViewStartUpResult;
    .locals 3

    .line 82
    invoke-interface {p1}, Lorg/chromium/support_lib_boundary/WebViewStartUpResultBoundaryInterface;->getBlockingStartUpLocations()Ljava/util/List;

    move-result-object v0

    .line 81
    invoke-direct {p0, v0}, Landroidx/webkit/internal/WebViewStartUpCallbackAdapter;->convertFromThrowables(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 84
    sget-object v1, Landroidx/webkit/internal/WebViewFeatureInternal;->ASYNC_WEBVIEW_STARTUP_ASYNC_STARTUP_LOCATIONS:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 85
    invoke-virtual {v1}, Landroidx/webkit/internal/ApiFeature$NoFramework;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    invoke-interface {p1}, Lorg/chromium/support_lib_boundary/WebViewStartUpResultBoundaryInterface;->getAsyncStartUpLocations()Ljava/util/List;

    move-result-object v1

    .line 86
    invoke-direct {p0, v1}, Landroidx/webkit/internal/WebViewStartUpCallbackAdapter;->convertFromThrowables(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 91
    :goto_0
    new-instance v2, Landroidx/webkit/internal/WebViewStartUpCallbackAdapter$1;

    invoke-direct {v2, p0, v0, v1, p1}, Landroidx/webkit/internal/WebViewStartUpCallbackAdapter$1;-><init>(Landroidx/webkit/internal/WebViewStartUpCallbackAdapter;Ljava/util/List;Ljava/util/List;Lorg/chromium/support_lib_boundary/WebViewStartUpResultBoundaryInterface;)V

    return-object v2
.end method


# virtual methods
.method public onSuccess(Ljava/lang/reflect/InvocationHandler;)V
    .locals 1

    .line 54
    const-class v0, Lorg/chromium/support_lib_boundary/WebViewStartUpResultBoundaryInterface;

    .line 55
    invoke-static {v0, p1}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->castToSuppLibClass(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/support_lib_boundary/WebViewStartUpResultBoundaryInterface;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/support_lib_boundary/WebViewStartUpResultBoundaryInterface;

    .line 54
    invoke-direct {p0, p1}, Landroidx/webkit/internal/WebViewStartUpCallbackAdapter;->webViewStartUpResultFromBoundaryInterface(Lorg/chromium/support_lib_boundary/WebViewStartUpResultBoundaryInterface;)Landroidx/webkit/WebViewStartUpResult;

    move-result-object p1

    .line 57
    iget-object v0, p0, Landroidx/webkit/internal/WebViewStartUpCallbackAdapter;->mWebViewStartUpCallback:Landroidx/webkit/WebViewCompat$WebViewStartUpCallback;

    invoke-interface {v0, p1}, Landroidx/webkit/WebViewCompat$WebViewStartUpCallback;->onSuccess(Landroidx/webkit/WebViewStartUpResult;)V

    return-void
.end method
