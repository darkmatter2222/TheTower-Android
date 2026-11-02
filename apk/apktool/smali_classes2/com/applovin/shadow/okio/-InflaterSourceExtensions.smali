.class public final Lcom/applovin/shadow/okio/-InflaterSourceExtensions;
.super Ljava/lang/Object;
.source "InflaterSource.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0017\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004H\u0086\u0008\u00a8\u0006\u0005"
    }
    d2 = {
        "inflate",
        "Lcom/applovin/shadow/okio/InflaterSource;",
        "Lcom/applovin/shadow/okio/Source;",
        "inflater",
        "Ljava/util/zip/Inflater;",
        "com.applovin.shadow.okio"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final inflate(Lcom/applovin/shadow/okio/Source;Ljava/util/zip/Inflater;)Lcom/applovin/shadow/okio/InflaterSource;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    new-instance v0, Lcom/applovin/shadow/okio/InflaterSource;

    invoke-direct {v0, p0, p1}, Lcom/applovin/shadow/okio/InflaterSource;-><init>(Lcom/applovin/shadow/okio/Source;Ljava/util/zip/Inflater;)V

    return-object v0
.end method

.method public static synthetic inflate$default(Lcom/applovin/shadow/okio/Source;Ljava/util/zip/Inflater;ILjava/lang/Object;)Lcom/applovin/shadow/okio/InflaterSource;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 145
    new-instance p1, Ljava/util/zip/Inflater;

    invoke-direct {p1}, Ljava/util/zip/Inflater;-><init>()V

    :cond_0
    const-string p2, "<this>"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    new-instance p2, Lcom/applovin/shadow/okio/InflaterSource;

    invoke-direct {p2, p0, p1}, Lcom/applovin/shadow/okio/InflaterSource;-><init>(Lcom/applovin/shadow/okio/Source;Ljava/util/zip/Inflater;)V

    return-object p2
.end method
