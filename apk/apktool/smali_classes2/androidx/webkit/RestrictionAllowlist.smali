.class public final Landroidx/webkit/RestrictionAllowlist;
.super Ljava/lang/Object;
.source "RestrictionAllowlist.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/webkit/RestrictionAllowlist$ConfigTask;,
        Landroidx/webkit/RestrictionAllowlist$Builder;
    }
.end annotation


# instance fields
.field private final mConfigTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/webkit/RestrictionAllowlist$ConfigTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/webkit/RestrictionAllowlist$ConfigTask;",
            ">;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Landroidx/webkit/RestrictionAllowlist;->mConfigTasks:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Landroidx/webkit/RestrictionAllowlist$1;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Landroidx/webkit/RestrictionAllowlist;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method configure(Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;)V
    .locals 2

    .line 53
    iget-object v0, p0, Landroidx/webkit/RestrictionAllowlist;->mConfigTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/webkit/RestrictionAllowlist$ConfigTask;

    .line 54
    invoke-interface {v1, p1}, Landroidx/webkit/RestrictionAllowlist$ConfigTask;->configure(Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;)V

    goto :goto_0

    :cond_0
    return-void
.end method
