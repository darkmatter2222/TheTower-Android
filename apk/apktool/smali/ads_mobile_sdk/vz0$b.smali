.class public Lads_mobile_sdk/vz0$b;
.super Lads_mobile_sdk/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lads_mobile_sdk/vz0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lads_mobile_sdk/vz0<",
        "TT;*>;>",
        "Lads_mobile_sdk/h<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final b:Lads_mobile_sdk/vz0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetb(Lads_mobile_sdk/vz0$b;)Lads_mobile_sdk/vz0;
    .locals 0

    iget-object p0, p0, Lads_mobile_sdk/vz0$b;->b:Lads_mobile_sdk/vz0;

    return-object p0
.end method

.method public constructor <init>(Lads_mobile_sdk/vz0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1684
    invoke-direct {p0}, Lads_mobile_sdk/h;-><init>()V

    .line 1685
    iput-object p1, p0, Lads_mobile_sdk/vz0$b;->b:Lads_mobile_sdk/vz0;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lads_mobile_sdk/my;Lads_mobile_sdk/er0;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation

    .line 1679
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/vz0$b;->d(Lads_mobile_sdk/my;Lads_mobile_sdk/er0;)Lads_mobile_sdk/vz0;

    move-result-object p1

    return-object p1
.end method

.method public d(Lads_mobile_sdk/my;Lads_mobile_sdk/er0;)Lads_mobile_sdk/vz0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lads_mobile_sdk/my;",
            "Lads_mobile_sdk/er0;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation

    .line 1691
    iget-object v0, p0, Lads_mobile_sdk/vz0$b;->b:Lads_mobile_sdk/vz0;

    invoke-static {v0, p1, p2}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/vz0;Lads_mobile_sdk/my;Lads_mobile_sdk/er0;)Lads_mobile_sdk/vz0;

    move-result-object p1

    return-object p1
.end method
