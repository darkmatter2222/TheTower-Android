.class public interface abstract Lads_mobile_sdk/tw1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lads_mobile_sdk/tw1$a;
    }
.end annotation


# virtual methods
.method public abstract a(Lads_mobile_sdk/oy;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getParserForType()Lads_mobile_sdk/aj2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lads_mobile_sdk/aj2<",
            "+",
            "Lads_mobile_sdk/tw1;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSerializedSize()I
.end method

.method public abstract newBuilderForType()Lads_mobile_sdk/tw1$a;
.end method

.method public abstract writeTo(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
