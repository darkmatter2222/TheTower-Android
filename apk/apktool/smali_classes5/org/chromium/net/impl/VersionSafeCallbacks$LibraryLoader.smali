.class public final Lorg/chromium/net/impl/VersionSafeCallbacks$LibraryLoader;
.super Lorg/chromium/net/CronetEngine$Builder$LibraryLoader;
.source "VersionSafeCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/impl/VersionSafeCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LibraryLoader"
.end annotation


# instance fields
.field private final mWrappedLoader:Lorg/chromium/net/CronetEngine$Builder$LibraryLoader;


# direct methods
.method public constructor <init>(Lorg/chromium/net/CronetEngine$Builder$LibraryLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "libraryLoader"
        }
    .end annotation

    .line 278
    invoke-direct {p0}, Lorg/chromium/net/CronetEngine$Builder$LibraryLoader;-><init>()V

    .line 279
    iput-object p1, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$LibraryLoader;->mWrappedLoader:Lorg/chromium/net/CronetEngine$Builder$LibraryLoader;

    return-void
.end method


# virtual methods
.method public loadLibrary(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "libName"
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$LibraryLoader;->mWrappedLoader:Lorg/chromium/net/CronetEngine$Builder$LibraryLoader;

    invoke-virtual {v0, p1}, Lorg/chromium/net/CronetEngine$Builder$LibraryLoader;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method
