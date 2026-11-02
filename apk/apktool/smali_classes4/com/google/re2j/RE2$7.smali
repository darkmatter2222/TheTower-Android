.class Lcom/google/re2j/RE2$7;
.super Ljava/lang/Object;
.source "RE2.java"

# interfaces
.implements Lcom/google/re2j/RE2$DeliverFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/re2j/RE2;->findAllUTF8Submatch([BI)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/re2j/RE2;

.field final synthetic val$b:[B

.field final synthetic val$result:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/re2j/RE2;[BLjava/util/List;)V
    .locals 0

    .line 805
    iput-object p1, p0, Lcom/google/re2j/RE2$7;->this$0:Lcom/google/re2j/RE2;

    iput-object p2, p0, Lcom/google/re2j/RE2$7;->val$b:[B

    iput-object p3, p0, Lcom/google/re2j/RE2$7;->val$result:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deliver([I)V
    .locals 6

    .line 808
    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [[B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    mul-int/lit8 v3, v2, 0x2

    .line 810
    aget v4, p1, v3

    if-ltz v4, :cond_0

    .line 811
    iget-object v5, p0, Lcom/google/re2j/RE2$7;->val$b:[B

    add-int/lit8 v3, v3, 0x1

    aget v3, p1, v3

    invoke-static {v5, v4, v3}, Lcom/google/re2j/Utils;->subarray([BII)[B

    move-result-object v3

    aput-object v3, v1, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 814
    :cond_1
    iget-object p1, p0, Lcom/google/re2j/RE2$7;->val$result:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
