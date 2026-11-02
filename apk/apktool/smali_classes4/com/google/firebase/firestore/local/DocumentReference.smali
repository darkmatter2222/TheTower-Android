.class Lcom/google/firebase/firestore/local/DocumentReference;
.super Ljava/lang/Object;
.source "DocumentReference.java"


# static fields
.field static final BY_KEY:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/firebase/firestore/local/DocumentReference;",
            ">;"
        }
    .end annotation
.end field

.field static final BY_TARGET:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/firebase/firestore/local/DocumentReference;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final key:Lcom/google/firebase/firestore/model/DocumentKey;

.field private final targetOrBatchId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Lcom/google/firebase/firestore/local/DocumentReference$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/firebase/firestore/local/DocumentReference$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/firebase/firestore/local/DocumentReference;->BY_KEY:Ljava/util/Comparator;

    .line 64
    new-instance v0, Lcom/google/firebase/firestore/local/DocumentReference$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/google/firebase/firestore/local/DocumentReference$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/google/firebase/firestore/local/DocumentReference;->BY_TARGET:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/firestore/model/DocumentKey;I)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/firebase/firestore/local/DocumentReference;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    .line 37
    iput p2, p0, Lcom/google/firebase/firestore/local/DocumentReference;->targetOrBatchId:I

    return-void
.end method

.method static synthetic lambda$static$0(Lcom/google/firebase/firestore/local/DocumentReference;Lcom/google/firebase/firestore/local/DocumentReference;)I
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/google/firebase/firestore/local/DocumentReference;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    iget-object v1, p1, Lcom/google/firebase/firestore/local/DocumentReference;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/model/DocumentKey;->compareTo(Lcom/google/firebase/firestore/model/DocumentKey;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 61
    :cond_0
    iget p0, p0, Lcom/google/firebase/firestore/local/DocumentReference;->targetOrBatchId:I

    iget p1, p1, Lcom/google/firebase/firestore/local/DocumentReference;->targetOrBatchId:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$static$1(Lcom/google/firebase/firestore/local/DocumentReference;Lcom/google/firebase/firestore/local/DocumentReference;)I
    .locals 2

    .line 66
    iget v0, p0, Lcom/google/firebase/firestore/local/DocumentReference;->targetOrBatchId:I

    iget v1, p1, Lcom/google/firebase/firestore/local/DocumentReference;->targetOrBatchId:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 72
    :cond_0
    iget-object p0, p0, Lcom/google/firebase/firestore/local/DocumentReference;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    iget-object p1, p1, Lcom/google/firebase/firestore/local/DocumentReference;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/model/DocumentKey;->compareTo(Lcom/google/firebase/firestore/model/DocumentKey;)I

    move-result p0

    return p0
.end method


# virtual methods
.method getId()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/google/firebase/firestore/local/DocumentReference;->targetOrBatchId:I

    return v0
.end method

.method getKey()Lcom/google/firebase/firestore/model/DocumentKey;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/google/firebase/firestore/local/DocumentReference;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    return-object v0
.end method
