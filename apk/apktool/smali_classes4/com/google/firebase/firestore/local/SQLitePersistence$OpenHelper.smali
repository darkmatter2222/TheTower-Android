.class Lcom/google/firebase/firestore/local/SQLitePersistence$OpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SQLitePersistence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/local/SQLitePersistence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OpenHelper"
.end annotation


# instance fields
.field private configured:Z

.field private final serializer:Lcom/google/firebase/firestore/local/LocalSerializer;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/firebase/firestore/local/LocalSerializer;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x12

    .line 311
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/firebase/firestore/local/SQLitePersistence$OpenHelper;-><init>(Landroid/content/Context;Lcom/google/firebase/firestore/local/LocalSerializer;Ljava/lang/String;I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/firebase/firestore/local/LocalSerializer;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 317
    invoke-direct {p0, p1, p3, v0, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 318
    iput-object p2, p0, Lcom/google/firebase/firestore/local/SQLitePersistence$OpenHelper;->serializer:Lcom/google/firebase/firestore/local/LocalSerializer;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/firebase/firestore/local/LocalSerializer;Ljava/lang/String;Lcom/google/firebase/firestore/local/SQLitePersistence$1;)V
    .locals 0

    .line 305
    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/firestore/local/SQLitePersistence$OpenHelper;-><init>(Landroid/content/Context;Lcom/google/firebase/firestore/local/LocalSerializer;Ljava/lang/String;)V

    return-void
.end method

.method private ensureConfigured(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 336
    iget-boolean v0, p0, Lcom/google/firebase/firestore/local/SQLitePersistence$OpenHelper;->configured:Z

    if-nez v0, :cond_0

    .line 337
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/local/SQLitePersistence$OpenHelper;->onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const/4 v0, 0x1

    .line 325
    iput-boolean v0, p0, Lcom/google/firebase/firestore/local/SQLitePersistence$OpenHelper;->configured:Z

    const/4 v0, 0x0

    .line 326
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "PRAGMA locking_mode = EXCLUSIVE"

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 327
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 343
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/local/SQLitePersistence$OpenHelper;->ensureConfigured(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 344
    new-instance v0, Lcom/google/firebase/firestore/local/SQLiteSchema;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLitePersistence$OpenHelper;->serializer:Lcom/google/firebase/firestore/local/LocalSerializer;

    invoke-direct {v0, p1, v1}, Lcom/google/firebase/firestore/local/SQLiteSchema;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/firebase/firestore/local/LocalSerializer;)V

    const/4 p1, 0x0

    .line 345
    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/local/SQLiteSchema;->runSchemaUpgrades(I)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 357
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/local/SQLitePersistence$OpenHelper;->ensureConfigured(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 374
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/local/SQLitePersistence$OpenHelper;->ensureConfigured(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .line 350
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/local/SQLitePersistence$OpenHelper;->ensureConfigured(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 351
    new-instance p3, Lcom/google/firebase/firestore/local/SQLiteSchema;

    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLitePersistence$OpenHelper;->serializer:Lcom/google/firebase/firestore/local/LocalSerializer;

    invoke-direct {p3, p1, v0}, Lcom/google/firebase/firestore/local/SQLiteSchema;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/firebase/firestore/local/LocalSerializer;)V

    .line 352
    invoke-virtual {p3, p2}, Lcom/google/firebase/firestore/local/SQLiteSchema;->runSchemaUpgrades(I)V

    return-void
.end method
