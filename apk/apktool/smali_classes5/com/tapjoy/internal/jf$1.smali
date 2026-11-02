.class final Lcom/tapjoy/internal/jf$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/jl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/jf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/jn;

.field final synthetic b:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/jn;Ljava/io/OutputStream;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/tapjoy/internal/jf$1;->a:Lcom/tapjoy/internal/jn;

    iput-object p2, p0, Lcom/tapjoy/internal/jf$1;->b:Ljava/io/OutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tapjoy/internal/jb;J)V
    .locals 6

    .line 75
    iget-wide v0, p1, Lcom/tapjoy/internal/jb;->b:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/tapjoy/internal/jo;->a(JJJ)V

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/tapjoy/internal/jf$1;->a:Lcom/tapjoy/internal/jn;

    invoke-virtual {v0}, Lcom/tapjoy/internal/jn;->a()V

    .line 78
    iget-object v0, p1, Lcom/tapjoy/internal/jb;->a:Lcom/tapjoy/internal/ji;

    .line 79
    iget v1, v0, Lcom/tapjoy/internal/ji;->c:I

    iget v2, v0, Lcom/tapjoy/internal/ji;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    .line 80
    iget-object v2, p0, Lcom/tapjoy/internal/jf$1;->b:Ljava/io/OutputStream;

    iget-object v3, v0, Lcom/tapjoy/internal/ji;->a:[B

    iget v4, v0, Lcom/tapjoy/internal/ji;->b:I

    invoke-virtual {v2, v3, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 82
    iget v2, v0, Lcom/tapjoy/internal/ji;->b:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/tapjoy/internal/ji;->b:I

    int-to-long v1, v1

    sub-long/2addr p2, v1

    .line 84
    iget-wide v3, p1, Lcom/tapjoy/internal/jb;->b:J

    sub-long/2addr v3, v1

    iput-wide v3, p1, Lcom/tapjoy/internal/jb;->b:J

    .line 86
    iget v1, v0, Lcom/tapjoy/internal/ji;->b:I

    iget v2, v0, Lcom/tapjoy/internal/ji;->c:I

    if-ne v1, v2, :cond_0

    .line 87
    invoke-virtual {v0}, Lcom/tapjoy/internal/ji;->a()Lcom/tapjoy/internal/ji;

    move-result-object v1

    iput-object v1, p1, Lcom/tapjoy/internal/jb;->a:Lcom/tapjoy/internal/ji;

    .line 88
    invoke-static {v0}, Lcom/tapjoy/internal/jj;->a(Lcom/tapjoy/internal/ji;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final close()V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/tapjoy/internal/jf$1;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public final flush()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/tapjoy/internal/jf$1;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sink("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tapjoy/internal/jf$1;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
