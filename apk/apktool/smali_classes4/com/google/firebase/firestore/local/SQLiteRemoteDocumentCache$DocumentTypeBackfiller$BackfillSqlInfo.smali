.class Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentTypeBackfiller$BackfillSqlInfo;
.super Ljava/lang/Object;
.source "SQLiteRemoteDocumentCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentTypeBackfiller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackfillSqlInfo"
.end annotation


# instance fields
.field final bindings:[Ljava/lang/Object;

.field final numDocumentsAffected:I

.field final sql:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;[Ljava/lang/Object;I)V
    .locals 0

    .line 501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 502
    iput-object p1, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentTypeBackfiller$BackfillSqlInfo;->sql:Ljava/lang/String;

    .line 503
    iput-object p2, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentTypeBackfiller$BackfillSqlInfo;->bindings:[Ljava/lang/Object;

    .line 504
    iput p3, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$DocumentTypeBackfiller$BackfillSqlInfo;->numDocumentsAffected:I

    return-void
.end method
