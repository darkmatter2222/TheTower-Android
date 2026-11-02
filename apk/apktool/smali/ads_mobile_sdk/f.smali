.class public abstract Lads_mobile_sdk/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/tw1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lads_mobile_sdk/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lads_mobile_sdk/f<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lads_mobile_sdk/f$a<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lads_mobile_sdk/tw1;"
    }
.end annotation


# instance fields
.field protected transient a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lads_mobile_sdk/f;->a:I

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 288
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Serializing "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " threw an IOException (should never happen)."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static a(Ljava/lang/Iterable;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/util/List<",
            "-TT;>;)V"
        }
    .end annotation

    .line 151
    invoke-static {p0, p1}, Lads_mobile_sdk/f$a;->a(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public abstract a(Lads_mobile_sdk/la3;)I
.end method

.method public b()Lads_mobile_sdk/xv3;
    .locals 1

    .line 1
    new-instance v0, Lads_mobile_sdk/xv3;

    invoke-direct {v0, p0}, Lads_mobile_sdk/xv3;-><init>(Lads_mobile_sdk/tw1;)V

    return-object v0
.end method

.method public c()[B
    .locals 3

    .line 65
    :try_start_0
    invoke-interface {p0}, Lads_mobile_sdk/tw1;->getSerializedSize()I

    move-result v0

    if-nez v0, :cond_0

    .line 67
    sget-object v0, Lads_mobile_sdk/yh1;->a:[B

    return-object v0

    .line 69
    :cond_0
    new-array v0, v0, [B

    .line 70
    invoke-static {v0}, Lads_mobile_sdk/oy;->b([B)Lads_mobile_sdk/oy;

    move-result-object v1

    .line 71
    invoke-interface {p0, v1}, Lads_mobile_sdk/tw1;->a(Lads_mobile_sdk/oy;)V

    .line 72
    invoke-virtual {v1}, Lads_mobile_sdk/oy;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 75
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "byte array"

    invoke-direct {p0, v2}, Lads_mobile_sdk/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    invoke-interface {p0}, Lads_mobile_sdk/tw1;->getSerializedSize()I

    move-result v0

    invoke-static {v0}, Lads_mobile_sdk/oy;->e(I)I

    move-result v0

    .line 82
    invoke-static {p1, v0}, Lads_mobile_sdk/oy;->a(Ljava/io/OutputStream;I)Lads_mobile_sdk/oy;

    move-result-object p1

    .line 83
    invoke-interface {p0, p1}, Lads_mobile_sdk/tw1;->a(Lads_mobile_sdk/oy;)V

    .line 84
    invoke-virtual {p1}, Lads_mobile_sdk/oy;->b()V

    return-void
.end method
