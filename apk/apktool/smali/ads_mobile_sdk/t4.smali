.class public final Lads_mobile_sdk/t4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic b:[Lkotlin/reflect/KProperty;


# instance fields
.field public final a:Lads_mobile_sdk/tn3;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Lads_mobile_sdk/t4;

    const-string v1, "adMetadata"

    const-string v2, "getAdMetadata()Landroid/os/Bundle;"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lads_mobile_sdk/kk;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    const/4 v1, 0x1

    .line 13
    new-array v1, v1, [Lkotlin/reflect/KProperty;

    aput-object v0, v1, v3

    sput-object v1, Lads_mobile_sdk/t4;->b:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lads_mobile_sdk/tn3;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lads_mobile_sdk/tn3;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lads_mobile_sdk/t4;->a:Lads_mobile_sdk/tn3;

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 3

    .line 13
    iget-object v0, p0, Lads_mobile_sdk/t4;->a:Lads_mobile_sdk/tn3;

    sget-object v1, Lads_mobile_sdk/t4;->b:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lads_mobile_sdk/tn3;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method
