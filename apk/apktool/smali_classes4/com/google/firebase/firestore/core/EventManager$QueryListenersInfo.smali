.class Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;
.super Ljava/lang/Object;
.source "EventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/core/EventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryListenersInfo"
.end annotation


# instance fields
.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/QueryListener;",
            ">;"
        }
    .end annotation
.end field

.field private targetId:I

.field private viewSnapshot:Lcom/google/firebase/firestore/core/ViewSnapshot;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;->listeners:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;)Ljava/util/List;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;->listeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;)Lcom/google/firebase/firestore/core/ViewSnapshot;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;->viewSnapshot:Lcom/google/firebase/firestore/core/ViewSnapshot;

    return-object p0
.end method

.method static synthetic access$102(Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;Lcom/google/firebase/firestore/core/ViewSnapshot;)Lcom/google/firebase/firestore/core/ViewSnapshot;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;->viewSnapshot:Lcom/google/firebase/firestore/core/ViewSnapshot;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;->targetId:I

    return p0
.end method

.method static synthetic access$202(Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;I)I
    .locals 0

    .line 38
    iput p1, p0, Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;->targetId:I

    return p1
.end method


# virtual methods
.method hasRemoteListeners()Z
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/core/QueryListener;

    .line 50
    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/QueryListener;->listensToRemoteStore()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
