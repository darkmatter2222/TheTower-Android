.class public Landroidx/webkit/internal/PageImpl;
.super Ljava/lang/Object;
.source "PageImpl.java"

# interfaces
.implements Landroidx/webkit/Page;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mPageBoundaryInterface:Lorg/chromium/support_lib_boundary/WebViewPageBoundaryInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lorg/chromium/support_lib_boundary/WebViewPageBoundaryInterface;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Landroidx/webkit/internal/PageImpl;->mPageBoundaryInterface:Lorg/chromium/support_lib_boundary/WebViewPageBoundaryInterface;

    return-void
.end method

.method public static forInvocationHandler(Ljava/lang/reflect/InvocationHandler;)Landroidx/webkit/Page;
    .locals 1

    .line 44
    const-class v0, Lorg/chromium/support_lib_boundary/WebViewPageBoundaryInterface;

    .line 45
    invoke-static {v0, p0}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->castToSuppLibClass(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/support_lib_boundary/WebViewPageBoundaryInterface;

    .line 48
    new-instance v0, Landroidx/webkit/internal/PageImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/webkit/internal/PageImpl$$ExternalSyntheticLambda0;-><init>(Lorg/chromium/support_lib_boundary/WebViewPageBoundaryInterface;)V

    .line 49
    invoke-interface {p0, v0}, Lorg/chromium/support_lib_boundary/WebViewPageBoundaryInterface;->getOrCreatePeer(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    .line 48
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/webkit/Page;

    return-object p0
.end method

.method static synthetic lambda$forInvocationHandler$0(Lorg/chromium/support_lib_boundary/WebViewPageBoundaryInterface;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 49
    new-instance v0, Landroidx/webkit/internal/PageImpl;

    invoke-direct {v0, p0}, Landroidx/webkit/internal/PageImpl;-><init>(Lorg/chromium/support_lib_boundary/WebViewPageBoundaryInterface;)V

    return-object v0
.end method
