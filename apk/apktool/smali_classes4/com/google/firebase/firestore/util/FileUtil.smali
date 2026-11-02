.class public Lcom/google/firebase/firestore/util/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/util/FileUtil$DefaultFileDeleter;,
        Lcom/google/firebase/firestore/util/FileUtil$LegacyFileDeleter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static delete(Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-static {p0}, Lcom/google/firebase/firestore/util/FileUtil$DefaultFileDeleter;->delete(Ljava/io/File;)V

    return-void
.end method
