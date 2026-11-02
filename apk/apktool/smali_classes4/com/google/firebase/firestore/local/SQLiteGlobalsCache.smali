.class public Lcom/google/firebase/firestore/local/SQLiteGlobalsCache;
.super Ljava/lang/Object;
.source "SQLiteGlobalsCache.java"

# interfaces
.implements Lcom/google/firebase/firestore/local/GlobalsCache;


# static fields
.field private static final SESSION_TOKEN:Ljava/lang/String; = "sessionToken"


# instance fields
.field private final db:Lcom/google/firebase/firestore/local/SQLitePersistence;


# direct methods
.method public constructor <init>(Lcom/google/firebase/firestore/local/SQLitePersistence;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/google/firebase/firestore/local/SQLiteGlobalsCache;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    return-void
.end method

.method private get(Ljava/lang/String;)[B
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteGlobalsCache;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    const-string v1, "SELECT value FROM globals WHERE name = ?"

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/local/SQLitePersistence;->query(Ljava/lang/String;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 43
    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->binding([Ljava/lang/Object;)Lcom/google/firebase/firestore/local/SQLitePersistence$Query;

    move-result-object p1

    new-instance v0, Lcom/google/firebase/firestore/local/SQLiteGlobalsCache$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/firebase/firestore/local/SQLiteGlobalsCache$$ExternalSyntheticLambda0;-><init>()V

    .line 44
    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/local/SQLitePersistence$Query;->firstValue(Lcom/google/firebase/firestore/util/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method static synthetic lambda$get$0(Landroid/database/Cursor;)[B
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p0

    return-object p0
.end method

.method private set(Ljava/lang/String;[B)V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteGlobalsCache;->db:Lcom/google/firebase/firestore/local/SQLitePersistence;

    const-string v1, "INSERT OR REPLACE INTO globals (name, value) VALUES (?, ?)"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/firestore/local/SQLitePersistence;->execute(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getSessionsToken()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 32
    const-string v0, "sessionToken"

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/local/SQLiteGlobalsCache;->get(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    .line 33
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setSessionToken(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 38
    const-string v0, "sessionToken"

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/google/firebase/firestore/local/SQLiteGlobalsCache;->set(Ljava/lang/String;[B)V

    return-void
.end method
