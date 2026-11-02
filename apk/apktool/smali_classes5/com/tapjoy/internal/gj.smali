.class Lcom/tapjoy/internal/gj;
.super Lcom/tapjoy/internal/gi;
.source "SourceFile"


# instance fields
.field private final b:Ljava/io/File;

.field private final c:Lcom/tapjoy/internal/hi;

.field private volatile d:Landroid/database/sqlite/SQLiteDatabase;

.field private e:J

.field private f:J

.field private g:J


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/tapjoy/internal/hi;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/tapjoy/internal/gi;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/tapjoy/internal/gj;->b:Ljava/io/File;

    .line 58
    iput-object p2, p0, Lcom/tapjoy/internal/gj;->c:Lcom/tapjoy/internal/hi;

    return-void
.end method

.method private b()V
    .locals 23

    move-object/from16 v1, p0

    .line 239
    sget-object v0, Lcom/tapjoy/internal/gi;->a:Ljava/util/Set;

    .line 241
    iget-object v2, v1, Lcom/tapjoy/internal/gj;->d:Landroid/database/sqlite/SQLiteDatabase;

    .line 242
    const-string v3, "SELECT ROWID, * FROM UsageStats ORDER BY ROWID ASC"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 244
    :try_start_0
    iget-object v3, v1, Lcom/tapjoy/internal/gj;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "SELECT * FROM UsageStatValues ORDER BY stat_id ASC"

    invoke-virtual {v3, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 259
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 260
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x0

    .line 261
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v8, 0x1

    .line 262
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v9, 0x2

    .line 263
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 264
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_0

    move-object v11, v4

    goto :goto_1

    :cond_0
    move-object v11, v9

    :goto_1
    const/4 v9, 0x3

    .line 267
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/4 v13, 0x4

    .line 268
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const/4 v4, 0x5

    .line 269
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 272
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x0

    .line 274
    :goto_2
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    cmp-long v18, v18, v6

    if-nez v18, :cond_4

    if-nez v4, :cond_1

    .line 276
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 278
    :cond_1
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 279
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 280
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 281
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v4, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "_max"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v4, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_3

    :cond_2
    const/4 v5, 0x0

    const/4 v8, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :cond_4
    :goto_3
    if-eqz v0, :cond_6

    .line 289
    invoke-interface {v0, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 290
    :cond_6
    :goto_5
    iget-object v9, v1, Lcom/tapjoy/internal/gj;->c:Lcom/tapjoy/internal/hi;

    move-wide v13, v14

    move-wide/from16 v15, v16

    move-object/from16 v17, v4

    invoke-virtual/range {v9 .. v17}, Lcom/tapjoy/internal/hi;->a(Ljava/lang/String;Ljava/lang/String;IJJLjava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 294
    :cond_7
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 297
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 300
    iget-object v0, v1, Lcom/tapjoy/internal/gj;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DELETE FROM UsageStats"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 301
    iget-object v0, v1, Lcom/tapjoy/internal/gj;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DELETE FROM UsageStatValues"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    .line 302
    iput-wide v2, v1, Lcom/tapjoy/internal/gj;->g:J

    iput-wide v2, v1, Lcom/tapjoy/internal/gj;->f:J

    return-void

    :catchall_0
    move-exception v0

    .line 294
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 295
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 297
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 298
    throw v0
.end method


# virtual methods
.method protected a()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/tapjoy/internal/gj;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/tapjoy/internal/gj;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/tapjoy/internal/gp;->a(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    .line 127
    iput-object v0, p0, Lcom/tapjoy/internal/gj;->d:Landroid/database/sqlite/SQLiteDatabase;

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/gj;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const-wide/16 v0, 0x0

    .line 130
    iput-wide v0, p0, Lcom/tapjoy/internal/gj;->g:J

    iput-wide v0, p0, Lcom/tapjoy/internal/gj;->f:J

    return-void
.end method

.method protected a(J)V
    .locals 5

    .line 72
    iget-object v0, p0, Lcom/tapjoy/internal/gj;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/gj;->b:Ljava/io/File;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gj;->d:Landroid/database/sqlite/SQLiteDatabase;

    .line 77
    iget-object v0, p0, Lcom/tapjoy/internal/gj;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 104
    :cond_1
    new-instance p1, Landroid/database/SQLException;

    const-string p2, "Unknown database version: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 80
    :cond_2
    iget-object v0, p0, Lcom/tapjoy/internal/gj;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/gj;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "CREATE TABLE IF NOT EXISTS UsageStats(name TEXT,dimensions TEXT,count INTEGER,first_time INTEGER,last_time INTEGER,PRIMARY KEY(name, dimensions))"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/tapjoy/internal/gj;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "CREATE TABLE IF NOT EXISTS UsageStatValues(stat_id LONG,name TEXT,count INTEGER,avg REAL,max INTEGER,PRIMARY KEY(stat_id, name))"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/tapjoy/internal/gj;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 97
    iget-object v0, p0, Lcom/tapjoy/internal/gj;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 99
    iget-object v0, p0, Lcom/tapjoy/internal/gj;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 107
    :goto_0
    iget-object v0, p0, Lcom/tapjoy/internal/gj;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT MIN(first_time), MAX(last_time) FROM UsageStats"

    invoke-virtual {v0, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 110
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 111
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tapjoy/internal/gj;->f:J

    .line 112
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/tapjoy/internal/gj;->g:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 118
    iget-wide v0, p0, Lcom/tapjoy/internal/gj;->f:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_4

    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    cmp-long p1, v0, p1

    if-gtz p1, :cond_4

    .line 119
    invoke-direct {p0}, Lcom/tapjoy/internal/gj;->b()V

    :cond_4
    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 115
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 116
    throw p1

    :catchall_1
    move-exception p1

    .line 99
    iget-object p2, p0, Lcom/tapjoy/internal/gj;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 100
    throw p1
.end method

.method protected a(JLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 25
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v0, p3

    .line 136
    iget-object v4, v1, Lcom/tapjoy/internal/gj;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_0

    return-void

    .line 140
    :cond_0
    iget-wide v4, v1, Lcom/tapjoy/internal/gj;->e:J

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_1

    .line 142
    iput-wide v2, v1, Lcom/tapjoy/internal/gj;->g:J

    iput-wide v2, v1, Lcom/tapjoy/internal/gj;->e:J

    goto :goto_0

    :cond_1
    cmp-long v6, v2, v4

    const-wide/32 v7, 0x5265c00

    if-ltz v6, :cond_2

    add-long v9, v4, v7

    cmp-long v6, v2, v9

    if-gez v6, :cond_2

    .line 145
    iget-wide v4, v1, Lcom/tapjoy/internal/gj;->g:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_4

    .line 146
    iput-wide v2, v1, Lcom/tapjoy/internal/gj;->g:J

    goto :goto_0

    :cond_2
    cmp-long v4, v2, v4

    if-gez v4, :cond_3

    .line 148
    iget-wide v4, v1, Lcom/tapjoy/internal/gj;->g:J

    sub-long/2addr v4, v2

    cmp-long v4, v4, v7

    if-gez v4, :cond_3

    .line 150
    iput-wide v2, v1, Lcom/tapjoy/internal/gj;->e:J

    goto :goto_0

    .line 152
    :cond_3
    invoke-direct {v1}, Lcom/tapjoy/internal/gj;->b()V

    .line 155
    iput-wide v2, v1, Lcom/tapjoy/internal/gj;->g:J

    iput-wide v2, v1, Lcom/tapjoy/internal/gj;->e:J

    :cond_4
    :goto_0
    if-nez p4, :cond_5

    .line 159
    const-string v4, ""

    goto :goto_1

    :cond_5
    move-object/from16 v4, p4

    .line 162
    :goto_1
    iget-object v5, v1, Lcom/tapjoy/internal/gj;->d:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v9, 0x1

    aput-object v4, v7, v9

    const-string v10, "SELECT ROWID,count,first_time,last_time FROM UsageStats WHERE name = ? AND dimensions = ?"

    invoke-virtual {v5, v10, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 166
    :try_start_0
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 169
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v11, "ROWID = "

    const-string v12, "UsageStats"

    const-string v13, "last_time"

    const-string v14, "first_time"

    const-string v15, "name"

    const-string v6, "count"

    if-eqz v10, :cond_8

    .line 170
    :try_start_1
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 171
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v4, 0x2

    .line 172
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    const/4 v4, 0x3

    .line 173
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    add-int/2addr v0, v9

    .line 175
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    cmp-long v0, v2, v18

    if-gez v0, :cond_6

    .line 177
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_6
    cmp-long v0, v2, v20

    if-lez v0, :cond_7

    .line 180
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v13, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 182
    :cond_7
    iget-object v0, v1, Lcom/tapjoy/internal/gj;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v12, v7, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    .line 184
    :cond_8
    invoke-virtual {v7, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v0, "dimensions"

    invoke-virtual {v7, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 187
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 188
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v13, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 189
    iget-object v0, v1, Lcom/tapjoy/internal/gj;->d:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v0, v12, v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v16

    :goto_2
    if-eqz p5, :cond_c

    .line 192
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 193
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 194
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 197
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 198
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const/4 v4, 0x2

    .line 199
    new-array v2, v4, [Ljava/lang/String;

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v8

    aput-object v3, v2, v9

    .line 200
    iget-object v10, v1, Lcom/tapjoy/internal/gj;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v14, "SELECT ROWID, * FROM UsageStatValues WHERE stat_id = ? AND name = ?"

    .line 201
    invoke-virtual {v10, v14, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 204
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v14, "UsageStatValues"

    const-string v4, "max"

    move/from16 v18, v9

    const-string v9, "avg"

    if-eqz v10, :cond_b

    .line 205
    :try_start_3
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    const/4 v10, 0x3

    .line 208
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v8, 0x4

    .line 209
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v21

    const/4 v8, 0x5

    .line 210
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 212
    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    add-int/lit8 v3, v3, 0x1

    .line 213
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v8, v11

    long-to-double v10, v12

    sub-double v10, v10, v21

    move-object/from16 p2, v2

    int-to-double v2, v3

    div-double/2addr v10, v2

    add-double v21, v21, v10

    .line 214
    :try_start_4
    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v7, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    cmp-long v2, v12, v23

    if-lez v2, :cond_a

    .line 216
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 218
    :cond_a
    iget-object v2, v1, Lcom/tapjoy/internal/gj;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v14, v7, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_4

    :cond_b
    move-object/from16 p2, v2

    move-object v8, v11

    .line 220
    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .line 221
    const-string v2, "stat_id"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 222
    invoke-virtual {v7, v15, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 224
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 225
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 226
    iget-object v2, v1, Lcom/tapjoy/internal/gj;->d:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v2, v14, v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 229
    :goto_4
    :try_start_5
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V

    move-object v11, v8

    move/from16 v9, v18

    const/4 v8, 0x0

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 p2, v2

    :goto_5
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V

    .line 230
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 234
    :cond_c
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_2
    move-exception v0

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 235
    throw v0
.end method

.method protected finalize()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/tapjoy/internal/gj;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/tapjoy/internal/gj;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/tapjoy/internal/gp;->a(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/tapjoy/internal/gj;->d:Landroid/database/sqlite/SQLiteDatabase;

    .line 67
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
