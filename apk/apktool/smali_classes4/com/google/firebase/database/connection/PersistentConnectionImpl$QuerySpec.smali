.class Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;
.super Ljava/lang/Object;
.source "PersistentConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/connection/PersistentConnectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QuerySpec"
.end annotation


# instance fields
.field private final path:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final queryParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;->path:Ljava/util/List;

    .line 50
    iput-object p2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;->queryParams:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$100(Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;)Ljava/util/List;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;->path:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;)Ljava/util/Map;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;->queryParams:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 56
    :cond_0
    instance-of v0, p1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 60
    :cond_1
    check-cast p1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;

    .line 62
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;->path:Ljava/util/List;

    iget-object v2, p1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;->path:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;->queryParams:Ljava/util/Map;

    iget-object p1, p1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;->queryParams:Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;->path:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 71
    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;->queryParams:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;->path:Ljava/util/List;

    invoke-static {v1}, Lcom/google/firebase/database/connection/ConnectionUtils;->pathToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (params: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;->queryParams:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
