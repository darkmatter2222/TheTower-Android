.class public final Lcom/applovin/shadow/okio/Options;
.super Lkotlin/collections/AbstractList;
.source "Options.kt"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/shadow/okio/Options$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/collections/AbstractList<",
        "Lcom/applovin/shadow/okio/ByteString;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0018\u0000 \u00152\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00060\u0003j\u0002`\u0004:\u0001\u0015B\u001f\u0008\u0002\u0012\u000e\u0010\u0005\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0011\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u000eH\u0096\u0002R\u001e\u0010\u0005\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00020\u0006X\u0080\u0004\u00a2\u0006\n\n\u0002\u0010\u000c\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\r\u001a\u00020\u000e8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0007\u001a\u00020\u0008X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/applovin/shadow/okio/Options;",
        "Lkotlin/collections/AbstractList;",
        "Lcom/applovin/shadow/okio/ByteString;",
        "Ljava/util/RandomAccess;",
        "Lkotlin/collections/RandomAccess;",
        "byteStrings",
        "",
        "trie",
        "",
        "([Lokio/ByteString;[I)V",
        "getByteStrings$okio",
        "()[Lokio/ByteString;",
        "[Lcom/applovin/shadow/okio/ByteString;",
        "size",
        "",
        "getSize",
        "()I",
        "getTrie$okio",
        "()[I",
        "get",
        "index",
        "Companion",
        "com.applovin.shadow.okio"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/applovin/shadow/okio/Options$Companion;


# instance fields
.field private final byteStrings:[Lcom/applovin/shadow/okio/ByteString;

.field private final trie:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/applovin/shadow/okio/Options$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/applovin/shadow/okio/Options$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/applovin/shadow/okio/Options;->Companion:Lcom/applovin/shadow/okio/Options$Companion;

    return-void
.end method

.method private constructor <init>([Lcom/applovin/shadow/okio/ByteString;[I)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lkotlin/collections/AbstractList;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/applovin/shadow/okio/Options;->byteStrings:[Lcom/applovin/shadow/okio/ByteString;

    .line 23
    iput-object p2, p0, Lcom/applovin/shadow/okio/Options;->trie:[I

    return-void
.end method

.method public synthetic constructor <init>([Lcom/applovin/shadow/okio/ByteString;[ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/applovin/shadow/okio/Options;-><init>([Lcom/applovin/shadow/okio/ByteString;[I)V

    return-void
.end method

.method public static final varargs of([Lcom/applovin/shadow/okio/ByteString;)Lcom/applovin/shadow/okio/Options;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/applovin/shadow/okio/Options;->Companion:Lcom/applovin/shadow/okio/Options$Companion;

    invoke-virtual {v0, p0}, Lcom/applovin/shadow/okio/Options$Companion;->of([Lcom/applovin/shadow/okio/ByteString;)Lcom/applovin/shadow/okio/Options;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge contains(Lcom/applovin/shadow/okio/ByteString;)Z
    .locals 0

    .line 21
    invoke-super {p0, p1}, Lkotlin/collections/AbstractList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    .line 21
    instance-of v0, p1, Lcom/applovin/shadow/okio/ByteString;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lcom/applovin/shadow/okio/ByteString;

    invoke-virtual {p0, p1}, Lcom/applovin/shadow/okio/Options;->contains(Lcom/applovin/shadow/okio/ByteString;)Z

    move-result p1

    return p1
.end method

.method public get(I)Lcom/applovin/shadow/okio/ByteString;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/applovin/shadow/okio/Options;->byteStrings:[Lcom/applovin/shadow/okio/ByteString;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/applovin/shadow/okio/Options;->get(I)Lcom/applovin/shadow/okio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final getByteStrings$okio()[Lcom/applovin/shadow/okio/ByteString;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/applovin/shadow/okio/Options;->byteStrings:[Lcom/applovin/shadow/okio/ByteString;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/applovin/shadow/okio/Options;->byteStrings:[Lcom/applovin/shadow/okio/ByteString;

    array-length v0, v0

    return v0
.end method

.method public final getTrie$okio()[I
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/applovin/shadow/okio/Options;->trie:[I

    return-object v0
.end method

.method public bridge indexOf(Lcom/applovin/shadow/okio/ByteString;)I
    .locals 0

    .line 21
    invoke-super {p0, p1}, Lkotlin/collections/AbstractList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 21
    instance-of v0, p1, Lcom/applovin/shadow/okio/ByteString;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    check-cast p1, Lcom/applovin/shadow/okio/ByteString;

    invoke-virtual {p0, p1}, Lcom/applovin/shadow/okio/Options;->indexOf(Lcom/applovin/shadow/okio/ByteString;)I

    move-result p1

    return p1
.end method

.method public bridge lastIndexOf(Lcom/applovin/shadow/okio/ByteString;)I
    .locals 0

    .line 21
    invoke-super {p0, p1}, Lkotlin/collections/AbstractList;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 21
    instance-of v0, p1, Lcom/applovin/shadow/okio/ByteString;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    check-cast p1, Lcom/applovin/shadow/okio/ByteString;

    invoke-virtual {p0, p1}, Lcom/applovin/shadow/okio/Options;->lastIndexOf(Lcom/applovin/shadow/okio/ByteString;)I

    move-result p1

    return p1
.end method
