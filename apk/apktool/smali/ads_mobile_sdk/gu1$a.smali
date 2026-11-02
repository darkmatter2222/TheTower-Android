.class Lads_mobile_sdk/gu1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lads_mobile_sdk/gu1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lads_mobile_sdk/u24$a;

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public final c:Lads_mobile_sdk/u24$a;

.field public final d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lads_mobile_sdk/u24$a;Ljava/lang/Object;Lads_mobile_sdk/u24$a;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lads_mobile_sdk/u24$a;",
            "TK;",
            "Lads_mobile_sdk/u24$a;",
            "TV;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lads_mobile_sdk/gu1$a;->a:Lads_mobile_sdk/u24$a;

    .line 41
    iput-object p2, p0, Lads_mobile_sdk/gu1$a;->b:Ljava/lang/Object;

    .line 42
    iput-object p3, p0, Lads_mobile_sdk/gu1$a;->c:Lads_mobile_sdk/u24$a;

    .line 43
    iput-object p4, p0, Lads_mobile_sdk/gu1$a;->d:Ljava/lang/Object;

    return-void
.end method
