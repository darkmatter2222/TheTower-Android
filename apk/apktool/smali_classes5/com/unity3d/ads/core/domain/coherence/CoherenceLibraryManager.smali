.class public interface abstract Lcom/unity3d/ads/core/domain/coherence/CoherenceLibraryManager;
.super Ljava/lang/Object;
.source "CoherenceLibraryManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/domain/coherence/CoherenceLibraryManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008`\u0018\u0000 \n2\u00020\u0001:\u0001\nJ\u0012\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0003H&J\n\u0010\t\u001a\u0004\u0018\u00010\u0003H&\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/unity3d/ads/core/domain/coherence/CoherenceLibraryManager;",
        "",
        "getCommonAttributes",
        "",
        "eventId",
        "",
        "initialize",
        "",
        "wasmModule",
        "executeWasmData",
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
.field public static final Companion:Lcom/unity3d/ads/core/domain/coherence/CoherenceLibraryManager$Companion;

.field public static final EVENT_ID_DEFAULT:I = 0x1

.field public static final EVENT_ID_INITIALIZATION:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/unity3d/ads/core/domain/coherence/CoherenceLibraryManager$Companion;->$$INSTANCE:Lcom/unity3d/ads/core/domain/coherence/CoherenceLibraryManager$Companion;

    sput-object v0, Lcom/unity3d/ads/core/domain/coherence/CoherenceLibraryManager;->Companion:Lcom/unity3d/ads/core/domain/coherence/CoherenceLibraryManager$Companion;

    return-void
.end method


# virtual methods
.method public abstract executeWasmData()[B
.end method

.method public abstract getCommonAttributes(I)[B
.end method

.method public abstract initialize([B)V
.end method
