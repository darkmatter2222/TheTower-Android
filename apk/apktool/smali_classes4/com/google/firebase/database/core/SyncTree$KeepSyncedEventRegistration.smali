.class Lcom/google/firebase/database/core/SyncTree$KeepSyncedEventRegistration;
.super Lcom/google/firebase/database/core/EventRegistration;
.source "SyncTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/core/SyncTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeepSyncedEventRegistration"
.end annotation


# instance fields
.field private spec:Lcom/google/firebase/database/core/view/QuerySpec;


# direct methods
.method public constructor <init>(Lcom/google/firebase/database/core/view/QuerySpec;)V
    .locals 0

    .line 802
    invoke-direct {p0}, Lcom/google/firebase/database/core/EventRegistration;-><init>()V

    .line 803
    iput-object p1, p0, Lcom/google/firebase/database/core/SyncTree$KeepSyncedEventRegistration;->spec:Lcom/google/firebase/database/core/view/QuerySpec;

    return-void
.end method


# virtual methods
.method public clone(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/EventRegistration;
    .locals 1

    .line 824
    new-instance v0, Lcom/google/firebase/database/core/SyncTree$KeepSyncedEventRegistration;

    invoke-direct {v0, p1}, Lcom/google/firebase/database/core/SyncTree$KeepSyncedEventRegistration;-><init>(Lcom/google/firebase/database/core/view/QuerySpec;)V

    return-object v0
.end method

.method public createEvent(Lcom/google/firebase/database/core/view/Change;Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/view/DataEvent;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 840
    instance-of v0, p1, Lcom/google/firebase/database/core/SyncTree$KeepSyncedEventRegistration;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/firebase/database/core/SyncTree$KeepSyncedEventRegistration;

    iget-object p1, p1, Lcom/google/firebase/database/core/SyncTree$KeepSyncedEventRegistration;->spec:Lcom/google/firebase/database/core/view/QuerySpec;

    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree$KeepSyncedEventRegistration;->spec:Lcom/google/firebase/database/core/view/QuerySpec;

    .line 841
    invoke-virtual {p1, v0}, Lcom/google/firebase/database/core/view/QuerySpec;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public fireCancelEvent(Lcom/google/firebase/database/DatabaseError;)V
    .locals 0

    return-void
.end method

.method public fireEvent(Lcom/google/firebase/database/core/view/DataEvent;)V
    .locals 0

    return-void
.end method

.method public getQuerySpec()Lcom/google/firebase/database/core/view/QuerySpec;
    .locals 1

    .line 835
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree$KeepSyncedEventRegistration;->spec:Lcom/google/firebase/database/core/view/QuerySpec;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 846
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree$KeepSyncedEventRegistration;->spec:Lcom/google/firebase/database/core/view/QuerySpec;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/QuerySpec;->hashCode()I

    move-result v0

    return v0
.end method

.method public isSameListener(Lcom/google/firebase/database/core/EventRegistration;)Z
    .locals 0

    .line 829
    instance-of p1, p1, Lcom/google/firebase/database/core/SyncTree$KeepSyncedEventRegistration;

    return p1
.end method

.method public respondsTo(Lcom/google/firebase/database/core/view/Event$EventType;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
