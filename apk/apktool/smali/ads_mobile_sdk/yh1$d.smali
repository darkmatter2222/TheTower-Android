.class public Lads_mobile_sdk/yh1$d;
.super Ljava/util/AbstractList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lads_mobile_sdk/yh1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lads_mobile_sdk/yh1$d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lads_mobile_sdk/yh1$c;

.field private final b:Lads_mobile_sdk/yh1$d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/yh1$d$a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lads_mobile_sdk/yh1$c;Lads_mobile_sdk/yh1$d$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lads_mobile_sdk/yh1$c;",
            "Lads_mobile_sdk/yh1$d$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 435
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 436
    iput-object p1, p0, Lads_mobile_sdk/yh1$d;->a:Lads_mobile_sdk/yh1$c;

    .line 437
    iput-object p2, p0, Lads_mobile_sdk/yh1$d;->b:Lads_mobile_sdk/yh1$d$a;

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 442
    iget-object v0, p0, Lads_mobile_sdk/yh1$d;->b:Lads_mobile_sdk/yh1$d$a;

    iget-object v1, p0, Lads_mobile_sdk/yh1$d;->a:Lads_mobile_sdk/yh1$c;

    invoke-interface {v1, p1}, Lads_mobile_sdk/yh1$c;->c(I)I

    move-result p1

    invoke-interface {v0, p1}, Lads_mobile_sdk/yh1$d$a;->a(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 447
    iget-object v0, p0, Lads_mobile_sdk/yh1$d;->a:Lads_mobile_sdk/yh1$c;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
