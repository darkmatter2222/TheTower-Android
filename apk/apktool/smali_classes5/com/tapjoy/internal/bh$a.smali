.class public abstract Lcom/tapjoy/internal/bh$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/bh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/tapjoy/internal/bh$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/tapjoy/internal/bh$a;
    .locals 1

    .line 47
    sget-object v0, Lcom/tapjoy/internal/bh$a;->a:Lcom/tapjoy/internal/bh$a;

    if-nez v0, :cond_0

    .line 49
    sget-object v0, Lcom/tapjoy/internal/bi;->a:Lcom/tapjoy/internal/bh$a;

    sput-object v0, Lcom/tapjoy/internal/bh$a;->a:Lcom/tapjoy/internal/bh$a;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;)Lcom/tapjoy/internal/bh;
    .locals 2

    .line 55
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/bh$a;->a(Ljava/io/Reader;)Lcom/tapjoy/internal/bh;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/io/Reader;)Lcom/tapjoy/internal/bh;
    .locals 0

    .line 1025
    invoke-static {p1}, Lcom/tapjoy/internal/go;->a(Ljava/lang/Readable;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 59
    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/bh$a;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bh;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lcom/tapjoy/internal/bh;
    .locals 2

    .line 63
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/bh$a;->a(Ljava/io/InputStream;)Lcom/tapjoy/internal/bh;

    move-result-object p1

    return-object p1
.end method
