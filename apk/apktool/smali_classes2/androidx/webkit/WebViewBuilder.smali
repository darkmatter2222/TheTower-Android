.class public final Landroidx/webkit/WebViewBuilder;
.super Ljava/lang/Object;
.source "WebViewBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/webkit/WebViewBuilder$Preset;,
        Landroidx/webkit/WebViewBuilder$Experimental;
    }
.end annotation


# static fields
.field public static final PRESET_LEGACY:I


# instance fields
.field private final mAllowLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/webkit/RestrictionAllowlist;",
            ">;"
        }
    .end annotation
.end field

.field mBuilderStateBoundary:Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface;

.field private mProfileName:Ljava/lang/String;

.field private mRestrictJavascriptInterface:Z


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/webkit/WebViewBuilder;->mAllowLists:Ljava/util/List;

    if-nez p1, :cond_0

    return-void

    .line 91
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid preset: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addAllowlist(Landroidx/webkit/RestrictionAllowlist;)Landroidx/webkit/WebViewBuilder;
    .locals 1

    .line 143
    iget-object v0, p0, Landroidx/webkit/WebViewBuilder;->mAllowLists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build(Landroid/content/Context;)Landroid/webkit/WebView;
    .locals 3

    .line 159
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WEBVIEW_BUILDER_V1:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 160
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$NoFramework;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 168
    iget-object v0, p0, Landroidx/webkit/WebViewBuilder;->mBuilderStateBoundary:Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface;

    if-nez v0, :cond_0

    .line 169
    invoke-static {}, Landroidx/webkit/internal/WebViewGlueCommunicator;->getFactory()Landroidx/webkit/internal/WebViewProviderFactory;

    move-result-object v0

    invoke-interface {v0}, Landroidx/webkit/internal/WebViewProviderFactory;->getWebViewBuilder()Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface;

    move-result-object v0

    iput-object v0, p0, Landroidx/webkit/WebViewBuilder;->mBuilderStateBoundary:Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface;

    .line 172
    :cond_0
    new-instance v0, Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;

    invoke-direct {v0}, Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;-><init>()V

    .line 175
    iget-boolean v1, p0, Landroidx/webkit/WebViewBuilder;->mRestrictJavascriptInterface:Z

    iput-boolean v1, v0, Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;->restrictJavascriptInterface:Z

    .line 176
    iget-object v1, p0, Landroidx/webkit/WebViewBuilder;->mProfileName:Ljava/lang/String;

    iput-object v1, v0, Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;->profileName:Ljava/lang/String;

    .line 179
    :try_start_0
    iget-object v1, p0, Landroidx/webkit/WebViewBuilder;->mAllowLists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/webkit/RestrictionAllowlist;

    .line 180
    invoke-virtual {v2, v0}, Landroidx/webkit/RestrictionAllowlist;->configure(Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;)V

    goto :goto_0

    .line 183
    :cond_1
    iget-object v1, p0, Landroidx/webkit/WebViewBuilder;->mBuilderStateBoundary:Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface;

    invoke-interface {v1, p1, v0}, Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface;->build(Landroid/content/Context;Ljava/util/function/Consumer;)Landroid/webkit/WebView;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 185
    new-instance v0, Landroidx/webkit/WebViewBuilderException;

    invoke-direct {v0, p1}, Landroidx/webkit/WebViewBuilderException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 161
    :cond_2
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public restrictJavaScriptInterfaces()Landroidx/webkit/WebViewBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 110
    iput-boolean v0, p0, Landroidx/webkit/WebViewBuilder;->mRestrictJavascriptInterface:Z

    return-object p0
.end method

.method public setProfile(Ljava/lang/String;)Landroidx/webkit/WebViewBuilder;
    .locals 0

    .line 128
    iput-object p1, p0, Landroidx/webkit/WebViewBuilder;->mProfileName:Ljava/lang/String;

    return-object p0
.end method
