.class public interface abstract Lorg/chromium/net/httpflags/FlagValueOrBuilder;
.super Ljava/lang/Object;
.source "FlagValueOrBuilder.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# virtual methods
.method public abstract getConstrainedValues(I)Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getConstrainedValuesCount()I
.end method

.method public abstract getConstrainedValuesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;",
            ">;"
        }
    .end annotation
.end method
