.class final Lcom/unity3d/coherence/NativeIdentityProvider;
.super Ljava/lang/Object;
.source "NativeIdentityProvider.java"

# interfaces
.implements Lcom/unity3d/coherence/IdentityProvider;


# instance fields
.field private final library:Lcom/unity3d/coherence/CoherenceLibrary;


# direct methods
.method constructor <init>(Lcom/unity3d/coherence/CoherenceLibrary;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/unity3d/coherence/NativeIdentityProvider;->library:Lcom/unity3d/coherence/CoherenceLibrary;

    return-void
.end method


# virtual methods
.method public setExternalUserId(Ljava/lang/String;)V
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/unity3d/coherence/NativeIdentityProvider;->library:Lcom/unity3d/coherence/CoherenceLibrary;

    invoke-virtual {v0}, Lcom/unity3d/coherence/CoherenceLibrary;->apiPtr()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/unity3d/coherence/CoherenceBridge;->setExternalUserId(JLjava/lang/String;)V

    return-void
.end method
