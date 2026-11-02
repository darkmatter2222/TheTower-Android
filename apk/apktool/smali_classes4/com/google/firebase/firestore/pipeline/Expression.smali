.class public abstract Lcom/google/firebase/firestore/pipeline/Expression;
.super Ljava/lang/Object;
.source "expressions.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/pipeline/Expression$Companion;,
        Lcom/google/firebase/firestore/pipeline/Expression$Constant;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a6\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0004\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0011\n\u0002\u00084\n\u0002\u0010\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\t\n\u0002\u0008.\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008&\u0018\u0000 \u00e9\u00012\u00020\u0001:\u0004\u00e8\u0001\u00e9\u0001B\t\u0008\u0000\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\r\u0010\u0004\u001a\u00020\u0005H \u00a2\u0006\u0002\u0008\u0006J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0000J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0000J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0000J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\tJ\u0006\u0010\u000c\u001a\u00020\u0000J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0000J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0000J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0010J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0005H\u0016J\u0006\u0010\u0014\u001a\u00020\u0000J\u0006\u0010\u0015\u001a\u00020\u0000J\u0006\u0010\u0016\u001a\u00020\u0000J\u0006\u0010\u0017\u001a\u00020\u0000J\u0006\u0010\u0018\u001a\u00020\u0000J\u000e\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u0000J\u000e\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u001bJ\u000e\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u0000J\u000e\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u001bJ\u000e\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u0000J\u000e\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u001bJ\u000e\u0010\u001f\u001a\u00020\u00002\u0006\u0010 \u001a\u00020\u0000J\u000e\u0010\u001f\u001a\u00020\u00002\u0006\u0010 \u001a\u00020\u001bJ\u000e\u0010!\u001a\u00020\u00002\u0006\u0010 \u001a\u00020\u0000J\u000e\u0010!\u001a\u00020\u00002\u0006\u0010 \u001a\u00020\u001bJ\u0006\u0010\"\u001a\u00020\u0000J\u000e\u0010#\u001a\u00020\u00002\u0006\u0010$\u001a\u00020\u0010J\u000e\u0010#\u001a\u00020\u00002\u0006\u0010$\u001a\u00020\u0000J\u0006\u0010%\u001a\u00020\u0000J\u000e\u0010&\u001a\u00020\u00002\u0006\u0010$\u001a\u00020\u0010J\u000e\u0010&\u001a\u00020\u00002\u0006\u0010$\u001a\u00020\u0000J\u0006\u0010\'\u001a\u00020\u0000J\u0006\u0010(\u001a\u00020\u0000J\u000e\u0010)\u001a\u00020\u00002\u0006\u0010*\u001a\u00020\u001bJ\u000e\u0010)\u001a\u00020\u00002\u0006\u0010*\u001a\u00020\u0000J\u0006\u0010+\u001a\u00020\u0000J\u0006\u0010,\u001a\u00020\u0000J\u0006\u0010-\u001a\u00020\u0000J\u0014\u0010.\u001a\u00020/2\u000c\u00100\u001a\u0008\u0012\u0004\u0012\u00020\u000101J\u000e\u0010.\u001a\u00020/2\u0006\u00102\u001a\u00020\u0000J\u0014\u00103\u001a\u00020/2\u000c\u00100\u001a\u0008\u0012\u0004\u0012\u00020\u000101J\u000e\u00103\u001a\u00020/2\u0006\u00102\u001a\u00020\u0000J\u0006\u00104\u001a\u00020/J\u0006\u00105\u001a\u00020\u0000J\u0006\u00106\u001a\u00020\u0000J\u0006\u00107\u001a\u00020\u0000J\u000e\u00108\u001a\u00020/2\u0006\u00109\u001a\u00020\u0000J\u0006\u0010:\u001a\u00020\u0000J\u000e\u0010;\u001a\u00020/2\u0006\u0010:\u001a\u00020\u0005J\u000e\u0010<\u001a\u00020\u00002\u0006\u0010=\u001a\u00020\u0000J\u000e\u0010<\u001a\u00020\u00002\u0006\u0010=\u001a\u00020\u0005J\u000e\u0010<\u001a\u00020\u00002\u0006\u0010=\u001a\u00020>J\u000e\u0010?\u001a\u00020\u00002\u0006\u0010=\u001a\u00020\u0005J\u000e\u0010?\u001a\u00020\u00002\u0006\u0010@\u001a\u00020\u0000J\u000e\u00108\u001a\u00020/2\u0006\u00109\u001a\u00020\u0005J\u000e\u0010A\u001a\u00020/2\u0006\u00109\u001a\u00020\u0000J\u000e\u0010A\u001a\u00020/2\u0006\u00109\u001a\u00020\u0005J\u000e\u0010B\u001a\u00020/2\u0006\u00109\u001a\u00020\u0000J\u000e\u0010B\u001a\u00020/2\u0006\u00109\u001a\u00020\u0005J\u001f\u0010C\u001a\u00020\u00002\u0012\u0010D\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00000E\"\u00020\u0000\u00a2\u0006\u0002\u0010FJ\u001f\u0010C\u001a\u00020\u00002\u0012\u0010D\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010E\"\u00020\u0001\u00a2\u0006\u0002\u0010GJ\u001f\u0010H\u001a\u00020\u00002\u0012\u0010D\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00000E\"\u00020\u0000\u00a2\u0006\u0002\u0010FJ\u001f\u0010H\u001a\u00020\u00002\u0012\u0010D\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010E\"\u00020\u0001\u00a2\u0006\u0002\u0010GJ\u0006\u0010I\u001a\u00020\u0000J\u000e\u0010J\u001a\u00020/2\u0006\u0010K\u001a\u00020\u0000J\u000e\u0010J\u001a\u00020/2\u0006\u0010K\u001a\u00020\u0005J\u000e\u0010L\u001a\u00020/2\u0006\u0010M\u001a\u00020\u0000J\u000e\u0010L\u001a\u00020/2\u0006\u0010M\u001a\u00020\u0005J\u000e\u0010N\u001a\u00020/2\u0006\u0010O\u001a\u00020\u0000J\u000e\u0010N\u001a\u00020/2\u0006\u0010O\u001a\u00020\u0005J\u0006\u0010P\u001a\u00020\u0000J\u0016\u0010K\u001a\u00020\u00002\u0006\u0010Q\u001a\u00020\u00002\u0006\u00105\u001a\u00020\u0000J\u0016\u0010K\u001a\u00020\u00002\u0006\u0010Q\u001a\u00020\u00102\u0006\u00105\u001a\u00020\u0010J\u0006\u0010R\u001a\u00020\u0000J\u0006\u0010S\u001a\u00020\u0000J\u0006\u0010T\u001a\u00020\u0000J\u000e\u0010U\u001a\u00020\u00002\u0006\u0010V\u001a\u00020\u0005J\u000e\u0010U\u001a\u00020\u00002\u0006\u0010V\u001a\u00020\u0000J\u0006\u0010W\u001a\u00020\u0000J\u000e\u0010X\u001a\u00020\u00002\u0006\u0010Y\u001a\u00020\u0005J\u000e\u0010X\u001a\u00020\u00002\u0006\u0010Y\u001a\u00020\u0000J\u0006\u0010Z\u001a\u00020\u0000J\u000e\u0010[\u001a\u00020\u00002\u0006\u0010Y\u001a\u00020\u0005J\u000e\u0010[\u001a\u00020\u00002\u0006\u0010Y\u001a\u00020\u0000J\u000e\u0010\\\u001a\u00020\u00002\u0006\u0010]\u001a\u00020\u0010J\u000e\u0010\\\u001a\u00020\u00002\u0006\u0010]\u001a\u00020\u0000J\u0016\u0010^\u001a\u00020\u00002\u0006\u0010_\u001a\u00020\u00052\u0006\u0010`\u001a\u00020\u0005J\u0016\u0010^\u001a\u00020\u00002\u0006\u0010_\u001a\u00020\u00002\u0006\u0010`\u001a\u00020\u0000J\u0016\u0010a\u001a\u00020\u00002\u0006\u0010_\u001a\u00020\u00052\u0006\u0010`\u001a\u00020\u0005J\u0016\u0010a\u001a\u00020\u00002\u0006\u0010_\u001a\u00020\u00002\u0006\u0010`\u001a\u00020\u0000J\u000e\u0010b\u001a\u00020\u00002\u0006\u0010K\u001a\u00020\u0005J\u000e\u0010b\u001a\u00020\u00002\u0006\u0010K\u001a\u00020\u0000J\u001f\u0010c\u001a\u00020\u00002\u0012\u0010d\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00000E\"\u00020\u0000\u00a2\u0006\u0002\u0010FJ\u001f\u0010c\u001a\u00020\u00002\u0012\u0010e\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00050E\"\u00020\u0005\u00a2\u0006\u0002\u0010fJ\u001f\u0010c\u001a\u00020\u00002\u0012\u0010e\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010E\"\u00020\u0001\u00a2\u0006\u0002\u0010GJ\u000e\u0010g\u001a\u00020\u00002\u0006\u0010h\u001a\u00020\u0000J\u000e\u0010g\u001a\u00020\u00002\u0006\u0010i\u001a\u00020\u0005J\'\u0010j\u001a\u00020\u00002\u0006\u0010k\u001a\u00020\u00002\u0012\u0010l\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00000E\"\u00020\u0000\u00a2\u0006\u0002\u0010mJ\u000e\u0010n\u001a\u00020\u00002\u0006\u0010i\u001a\u00020\u0005J\u000e\u0010n\u001a\u00020\u00002\u0006\u0010h\u001a\u00020\u0000J\u000e\u0010o\u001a\u00020\u00002\u0006\u0010h\u001a\u00020\u0000J\u000e\u0010o\u001a\u00020\u00002\u0006\u0010i\u001a\u00020\u0005J/\u0010p\u001a\u00020\u00002\u0006\u0010i\u001a\u00020\u00002\u0006\u0010q\u001a\u00020\u00002\u0012\u0010r\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00000E\"\u00020\u0000\u00a2\u0006\u0002\u0010sJ1\u0010p\u001a\u00020\u00002\u0006\u0010i\u001a\u00020\u00052\u0008\u0010q\u001a\u0004\u0018\u00010\u00012\u0012\u0010r\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010E\"\u00020\u0001\u00a2\u0006\u0002\u0010tJ\u0006\u0010u\u001a\u00020\u0000J\u0006\u0010v\u001a\u00020\u0000J\u0006\u0010w\u001a\u00020\u0000J\u000e\u0010x\u001a\u00020\u00002\u0006\u0010y\u001a\u00020\u0000J\u000e\u0010x\u001a\u00020\u00002\u0006\u0010y\u001a\u00020zJ\u000e\u0010x\u001a\u00020\u00002\u0006\u0010y\u001a\u00020{J\u000e\u0010|\u001a\u00020\u00002\u0006\u0010y\u001a\u00020\u0000J\u000e\u0010|\u001a\u00020\u00002\u0006\u0010y\u001a\u00020zJ\u000e\u0010|\u001a\u00020\u00002\u0006\u0010y\u001a\u00020{J\u000e\u0010}\u001a\u00020\u00002\u0006\u0010y\u001a\u00020\u0000J\u000e\u0010}\u001a\u00020\u00002\u0006\u0010y\u001a\u00020zJ\u000e\u0010}\u001a\u00020\u00002\u0006\u0010y\u001a\u00020{J\u0006\u0010~\u001a\u00020\u0000J\u0006\u0010\u007f\u001a\u00020\u0000J\u0007\u0010\u0080\u0001\u001a\u00020\u0000J\u0007\u0010\u0081\u0001\u001a\u00020\u0000J\u0007\u0010\u0082\u0001\u001a\u00020\u0000J\u0007\u0010\u0083\u0001\u001a\u00020\u0000J\u0007\u0010\u0084\u0001\u001a\u00020\u0000J\u0019\u0010\u0085\u0001\u001a\u00020\u00002\u0007\u0010\u0086\u0001\u001a\u00020\u00002\u0007\u0010\u0087\u0001\u001a\u00020\u0000J\u001a\u0010\u0085\u0001\u001a\u00020\u00002\u0007\u0010\u0086\u0001\u001a\u00020\u00052\u0008\u0010\u0087\u0001\u001a\u00030\u0088\u0001J\u0010\u0010\u0089\u0001\u001a\u00020\u00002\u0007\u0010\u008a\u0001\u001a\u00020\u0005J\u0010\u0010\u0089\u0001\u001a\u00020\u00002\u0007\u0010\u008a\u0001\u001a\u00020\u0000J\u0019\u0010\u008b\u0001\u001a\u00020\u00002\u0007\u0010\u008a\u0001\u001a\u00020\u00052\u0007\u0010\u008c\u0001\u001a\u00020\u0005J\u0019\u0010\u008b\u0001\u001a\u00020\u00002\u0007\u0010\u008a\u0001\u001a\u00020\u00002\u0007\u0010\u008c\u0001\u001a\u00020\u0005J\u0019\u0010\u008b\u0001\u001a\u00020\u00002\u0007\u0010\u008a\u0001\u001a\u00020\u00052\u0007\u0010\u008c\u0001\u001a\u00020\u0000J\u0019\u0010\u008b\u0001\u001a\u00020\u00002\u0007\u0010\u008a\u0001\u001a\u00020\u00002\u0007\u0010\u008c\u0001\u001a\u00020\u0000J\u0018\u0010\u008d\u0001\u001a\u00020\u00002\u0006\u0010Q\u001a\u00020\u00002\u0007\u0010\u0086\u0001\u001a\u00020\u0000J\u0018\u0010\u008d\u0001\u001a\u00020\u00002\u0006\u0010Q\u001a\u00020\u00002\u0007\u0010\u0086\u0001\u001a\u00020\u0005J\u0019\u0010\u008d\u0001\u001a\u00020\u00002\u0007\u0010\u008e\u0001\u001a\u00020\u00052\u0007\u0010\u0086\u0001\u001a\u00020\u0005J\u0010\u0010\u008f\u0001\u001a\u00020\u00002\u0007\u0010\u0090\u0001\u001a\u00020\u0000J\u0010\u0010\u008f\u0001\u001a\u00020\u00002\u0007\u0010\u0090\u0001\u001a\u00020\u0005J\u0019\u0010\u0091\u0001\u001a\u00020\u00002\u0007\u0010\u0090\u0001\u001a\u00020\u00002\u0007\u0010\u008c\u0001\u001a\u00020\u0005J\u0019\u0010\u0091\u0001\u001a\u00020\u00002\u0007\u0010\u0090\u0001\u001a\u00020\u00052\u0007\u0010\u008c\u0001\u001a\u00020\u0005J\u0019\u0010\u0091\u0001\u001a\u00020\u00002\u0007\u0010\u0090\u0001\u001a\u00020\u00002\u0007\u0010\u008c\u0001\u001a\u00020\u0000J\u0019\u0010\u0091\u0001\u001a\u00020\u00002\u0007\u0010\u0090\u0001\u001a\u00020\u00052\u0007\u0010\u008c\u0001\u001a\u00020\u0000J\u0019\u0010\u0092\u0001\u001a\u00020\u00002\u0007\u0010\u0086\u0001\u001a\u00020\u00002\u0007\u0010\u0087\u0001\u001a\u00020\u0000J\u001a\u0010\u0092\u0001\u001a\u00020\u00002\u0007\u0010\u0086\u0001\u001a\u00020\u00052\u0008\u0010\u0087\u0001\u001a\u00030\u0088\u0001J)\u0010\u0093\u0001\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u00002\u0012\u0010D\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010E\"\u00020\u0001\u00a2\u0006\u0003\u0010\u0094\u0001J)\u0010\u0093\u0001\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u00012\u0012\u0010D\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010E\"\u00020\u0001\u00a2\u0006\u0003\u0010\u0095\u0001J+\u0010\u0096\u0001\u001a\u00020\u00002\u0007\u0010\u0097\u0001\u001a\u00020\u00002\u0013\u0010\u0098\u0001\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010E\"\u00020\u0001\u00a2\u0006\u0003\u0010\u0094\u0001J+\u0010\u0096\u0001\u001a\u00020\u00002\u0007\u0010\u0097\u0001\u001a\u00020\u00012\u0013\u0010\u0098\u0001\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010E\"\u00020\u0001\u00a2\u0006\u0003\u0010\u0095\u0001J\u0007\u0010\u0099\u0001\u001a\u00020\u0000J\u0018\u0010\u009a\u0001\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u00052\u0007\u0010\u009b\u0001\u001a\u00020/J\u0019\u0010\u009c\u0001\u001a\u00020\u00002\u0007\u0010\u009d\u0001\u001a\u00020\u00052\u0007\u0010\u009e\u0001\u001a\u00020\u0000J\"\u0010\u009f\u0001\u001a\u00020\u00002\u0007\u0010\u009d\u0001\u001a\u00020\u00052\u0007\u0010\u00a0\u0001\u001a\u00020\u00052\u0007\u0010\u009e\u0001\u001a\u00020\u0000J\u0010\u0010\u00a1\u0001\u001a\u00020\u00002\u0007\u0010\u00a2\u0001\u001a\u00020\u0010J\u0010\u0010\u00a1\u0001\u001a\u00020\u00002\u0007\u0010\u00a2\u0001\u001a\u00020\u0000J\u0018\u0010\u00a3\u0001\u001a\u00020\u00002\u0007\u0010\u00a2\u0001\u001a\u00020\u00102\u0006\u00105\u001a\u00020\u0010J\u0018\u0010\u00a3\u0001\u001a\u00020\u00002\u0007\u0010\u00a2\u0001\u001a\u00020\u00002\u0006\u00105\u001a\u00020\u0000J\u0007\u0010\u00a4\u0001\u001a\u00020\u0000J\u0010\u0010\u00a5\u0001\u001a\u00020/2\u0007\u0010\u00a6\u0001\u001a\u00020\u0000J\u0010\u0010\u00a5\u0001\u001a\u00020/2\u0007\u0010\u00a6\u0001\u001a\u00020\u0001J\u0015\u0010\u00a7\u0001\u001a\u00020/2\u000c\u00100\u001a\u0008\u0012\u0004\u0012\u00020\u000101J\u000f\u0010\u00a7\u0001\u001a\u00020/2\u0006\u00102\u001a\u00020\u0000J\u0015\u0010\u00a8\u0001\u001a\u00020/2\u000c\u00100\u001a\u0008\u0012\u0004\u0012\u00020\u000101J\u000f\u0010\u00a8\u0001\u001a\u00020/2\u0006\u00102\u001a\u00020\u0000J\u0007\u0010\u00a9\u0001\u001a\u00020\u0000J\u0007\u0010\u00aa\u0001\u001a\u00020\u0000J\u0010\u0010\u00ab\u0001\u001a\u00020\u00002\u0007\u0010\u00ac\u0001\u001a\u00020\u0010J\u0010\u0010\u00ab\u0001\u001a\u00020\u00002\u0007\u0010\u00ac\u0001\u001a\u00020\u0000J\u0007\u0010\u00ad\u0001\u001a\u00020\u0000J\u0010\u0010\u00ae\u0001\u001a\u00020\u00002\u0007\u0010\u00ac\u0001\u001a\u00020\u0010J\u0010\u0010\u00ae\u0001\u001a\u00020\u00002\u0007\u0010\u00ac\u0001\u001a\u00020\u0000J\u0007\u0010\u00af\u0001\u001a\u00020\u0000J\u0007\u0010\u00b0\u0001\u001a\u00020\u0000J\u0010\u0010\u00b1\u0001\u001a\u00020\u00002\u0007\u0010\u00ac\u0001\u001a\u00020\u0010J\u0010\u0010\u00b1\u0001\u001a\u00020\u00002\u0007\u0010\u00ac\u0001\u001a\u00020\u0000J\u0010\u0010\u00b2\u0001\u001a\u00020\u00002\u0007\u0010\u00ac\u0001\u001a\u00020\u0010J\u0010\u0010\u00b2\u0001\u001a\u00020\u00002\u0007\u0010\u00ac\u0001\u001a\u00020\u0000J\u0011\u0010\u00b3\u0001\u001a\u00020\u00002\u0008\u0010q\u001a\u0004\u0018\u00010\u0001J\u0011\u0010\u00b4\u0001\u001a\u00020\u00002\u0008\u0010q\u001a\u0004\u0018\u00010\u0001J\u0011\u0010\u00b5\u0001\u001a\u00020\u00002\u0008\u0010q\u001a\u0004\u0018\u00010\u0001J\u0010\u0010\u00b6\u0001\u001a\u00020\u00002\u0007\u0010\u00a2\u0001\u001a\u00020\u0000J\u0010\u0010\u00b6\u0001\u001a\u00020\u00002\u0007\u0010\u00a2\u0001\u001a\u00020\u0010J\u0007\u0010]\u001a\u00030\u00b7\u0001J\u0008\u0010\u00b8\u0001\u001a\u00030\u00b7\u0001J\u0008\u0010\u00b9\u0001\u001a\u00030\u00b7\u0001J\u0008\u0010\u00ba\u0001\u001a\u00030\u00b7\u0001J\u0008\u0010\u00bb\u0001\u001a\u00030\u00b7\u0001J\u0008\u0010\u00bc\u0001\u001a\u00030\u00b7\u0001J\u0008\u0010\u00bd\u0001\u001a\u00030\u00b7\u0001J\u0008\u0010\u00be\u0001\u001a\u00030\u00b7\u0001J\u0008\u0010\u00bf\u0001\u001a\u00030\u00b7\u0001J\u0008\u0010\u00c0\u0001\u001a\u00030\u00b7\u0001J\u0008\u0010\u00c1\u0001\u001a\u00030\u00c2\u0001J\u0008\u0010\u00c3\u0001\u001a\u00030\u00c2\u0001J\u0010\u0010\u00c4\u0001\u001a\u00020/2\u0007\u0010\u00c5\u0001\u001a\u00020\u0000J\u000f\u0010\u00c4\u0001\u001a\u00020/2\u0006\u0010q\u001a\u00020\u0001J\u0010\u0010\u00c6\u0001\u001a\u00020/2\u0007\u0010\u00c5\u0001\u001a\u00020\u0000J\u000f\u0010\u00c6\u0001\u001a\u00020/2\u0006\u0010q\u001a\u00020\u0001J\u0010\u0010\u00c7\u0001\u001a\u00020/2\u0007\u0010\u00c5\u0001\u001a\u00020\u0000J\u000f\u0010\u00c7\u0001\u001a\u00020/2\u0006\u0010q\u001a\u00020\u0001J\u0010\u0010\u00c8\u0001\u001a\u00020/2\u0007\u0010\u00c5\u0001\u001a\u00020\u0000J\u000f\u0010\u00c8\u0001\u001a\u00020/2\u0006\u0010q\u001a\u00020\u0001J\u0010\u0010\u00c9\u0001\u001a\u00020/2\u0007\u0010\u00c5\u0001\u001a\u00020\u0000J\u000f\u0010\u00c9\u0001\u001a\u00020/2\u0006\u0010q\u001a\u00020\u0001J\u0010\u0010\u00ca\u0001\u001a\u00020/2\u0007\u0010\u00c5\u0001\u001a\u00020\u0000J\u000f\u0010\u00ca\u0001\u001a\u00020/2\u0006\u0010q\u001a\u00020\u0001J\u0007\u0010\u00cb\u0001\u001a\u00020/J\u0010\u0010\u00cc\u0001\u001a\u00020\u00002\u0007\u0010\u00cd\u0001\u001a\u00020\u0000J\u0010\u0010\u00cc\u0001\u001a\u00020\u00002\u0007\u0010\u00ce\u0001\u001a\u00020\u0001J\u0010\u0010\u00cf\u0001\u001a\u00020\u00002\u0007\u0010\u00d0\u0001\u001a\u00020\u0000J\u0010\u0010\u00cf\u0001\u001a\u00020\u00002\u0007\u0010\u00d1\u0001\u001a\u00020\u0001J\u0010\u0010\u00d2\u0001\u001a\u00020\u00002\u0007\u0010\u00d3\u0001\u001a\u00020\u0000J\u0010\u0010\u00d2\u0001\u001a\u00020\u00002\u0007\u0010\u00d1\u0001\u001a\u00020\u0001J*\u0010\u00d4\u0001\u001a\u00020\u00002\u0007\u0010\u00d5\u0001\u001a\u00020\u00012\u0012\u0010D\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010E\"\u00020\u0001\u00a2\u0006\u0003\u0010\u0095\u0001J\u0007\u0010\u00d6\u0001\u001a\u00020/J\u0007\u0010\u00d7\u0001\u001a\u00020/J\u001a\u0010\u00d8\u0001\u001a\u00030\u00d9\u00012\u0008\u0010\u00da\u0001\u001a\u00030\u00db\u0001H \u00a2\u0006\u0003\u0008\u00dc\u0001J?\u0010\u00dd\u0001\u001a(\u0012\u0017\u0012\u00150\u00df\u0001\u00a2\u0006\u000f\u0008\u00e0\u0001\u0012\n\u0008\u00e1\u0001\u0012\u0005\u0008\u0008(\u00e2\u0001\u0012\u0005\u0012\u00030\u00e3\u00010\u00de\u0001j\u0003`\u00e4\u00012\u0008\u0010\u00e5\u0001\u001a\u00030\u00e6\u0001H \u00a2\u0006\u0003\u0008\u00e7\u0001\u00a8\u0006\u00ea\u0001"
    }
    d2 = {
        "Lcom/google/firebase/firestore/pipeline/Expression;",
        "",
        "<init>",
        "()V",
        "canonicalId",
        "",
        "canonicalId$com_google_firebase_firebase_firestore",
        "bitAnd",
        "bitsOther",
        "",
        "bitOr",
        "bitXor",
        "bitNot",
        "bitLeftShift",
        "numberExpr",
        "number",
        "",
        "bitRightShift",
        "alias",
        "Lcom/google/firebase/firestore/pipeline/AliasedExpression;",
        "documentId",
        "parent",
        "collectionId",
        "abs",
        "exp",
        "add",
        "second",
        "",
        "subtract",
        "subtrahend",
        "multiply",
        "divide",
        "divisor",
        "mod",
        "round",
        "roundToPrecision",
        "decimalPlace",
        "trunc",
        "truncToPrecision",
        "ceil",
        "floor",
        "pow",
        "exponent",
        "sqrt",
        "ln",
        "log10",
        "equalAny",
        "Lcom/google/firebase/firestore/pipeline/BooleanExpression;",
        "values",
        "",
        "arrayExpression",
        "notEqualAny",
        "isAbsent",
        "length",
        "charLength",
        "byteLength",
        "like",
        "pattern",
        "type",
        "isType",
        "split",
        "delimiter",
        "Lcom/google/firebase/firestore/Blob;",
        "join",
        "delimiterExpression",
        "regexContains",
        "regexMatch",
        "logicalMaximum",
        "others",
        "",
        "([Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;",
        "([Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;",
        "logicalMinimum",
        "reverse",
        "stringContains",
        "substring",
        "startsWith",
        "prefix",
        "endsWith",
        "suffix",
        "stringReverse",
        "start",
        "toLower",
        "toUpper",
        "trim",
        "trimValue",
        "valueToTrim",
        "ltrim",
        "ltrimValue",
        "valuesToTrim",
        "rtrim",
        "rtrimValue",
        "stringRepeat",
        "count",
        "stringReplaceAll",
        "oldValue",
        "newValue",
        "stringReplaceOne",
        "stringIndexOf",
        "stringConcat",
        "stringExpressions",
        "strings",
        "([Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;",
        "mapGet",
        "keyExpression",
        "key",
        "mapMerge",
        "mapExpr",
        "otherMaps",
        "(Lcom/google/firebase/firestore/pipeline/Expression;[Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;",
        "getField",
        "mapRemove",
        "mapSet",
        "value",
        "moreKeyValues",
        "(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;[Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;",
        "(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;",
        "mapKeys",
        "mapValues",
        "mapEntries",
        "cosineDistance",
        "vector",
        "",
        "Lcom/google/firebase/firestore/VectorValue;",
        "dotProduct",
        "euclideanDistance",
        "vectorLength",
        "unixMicrosToTimestamp",
        "timestampToUnixMicros",
        "unixMillisToTimestamp",
        "timestampToUnixMillis",
        "unixSecondsToTimestamp",
        "timestampToUnixSeconds",
        "timestampAdd",
        "unit",
        "amount",
        "",
        "timestampTruncate",
        "granularity",
        "timestampTruncateWithTimezone",
        "timezone",
        "timestampDiff",
        "startFieldName",
        "timestampExtract",
        "part",
        "timestampExtractWithTimezone",
        "timestampSubtract",
        "concat",
        "(Lcom/google/firebase/firestore/pipeline/Expression;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;",
        "(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;",
        "arrayConcat",
        "secondArray",
        "otherArrays",
        "arrayReverse",
        "arrayFilter",
        "filter",
        "arrayTransform",
        "elementAlias",
        "transform",
        "arrayTransformWithIndex",
        "indexAlias",
        "arraySliceToEnd",
        "offset",
        "arraySlice",
        "arraySum",
        "arrayContains",
        "element",
        "arrayContainsAll",
        "arrayContainsAny",
        "arrayLength",
        "arrayFirst",
        "arrayFirstN",
        "n",
        "arrayLast",
        "arrayLastN",
        "arrayMinimum",
        "arrayMaximum",
        "arrayMinimumN",
        "arrayMaximumN",
        "arrayIndexOf",
        "arrayLastIndexOf",
        "arrayIndexOfAll",
        "arrayGet",
        "Lcom/google/firebase/firestore/pipeline/AggregateFunction;",
        "countDistinct",
        "sum",
        "average",
        "minimum",
        "maximum",
        "first",
        "last",
        "arrayAgg",
        "arrayAggDistinct",
        "ascending",
        "Lcom/google/firebase/firestore/pipeline/Ordering;",
        "descending",
        "equal",
        "other",
        "notEqual",
        "greaterThan",
        "greaterThanOrEqual",
        "lessThan",
        "lessThanOrEqual",
        "exists",
        "ifError",
        "catchExpr",
        "catchValue",
        "ifAbsent",
        "elseExpr",
        "elseValue",
        "ifNull",
        "elseExpression",
        "coalesce",
        "replacement",
        "isError",
        "asBoolean",
        "toProto",
        "Lcom/google/firestore/v1/Value;",
        "userDataReader",
        "Lcom/google/firebase/firestore/UserDataReader;",
        "toProto$com_google_firebase_firebase_firestore",
        "evaluateFunction",
        "Lkotlin/Function1;",
        "Lcom/google/firebase/firestore/model/MutableDocument;",
        "Lkotlin/ParameterName;",
        "name",
        "input",
        "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
        "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateDocument;",
        "context",
        "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluationContext;",
        "evaluateFunction$com_google_firebase_firebase_firestore",
        "Constant",
        "Companion",
        "com.google.firebase-firebase-firestore"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

.field private static final NULL:Lcom/google/firebase/firestore/pipeline/Expression;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    .line 133
    new-instance v0, Lcom/google/firebase/firestore/pipeline/Expression$Constant;

    sget-object v1, Lcom/google/firebase/firestore/model/Values;->NULL_VALUE:Lcom/google/firestore/v1/Value;

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/pipeline/Expression$Constant;-><init>(Lcom/google/firestore/v1/Value;)V

    check-cast v0, Lcom/google/firebase/firestore/pipeline/Expression;

    sput-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->NULL:Lcom/google/firebase/firestore/pipeline/Expression;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final abs(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->abs(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final abs(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->abs(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getNULL$cp()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 60
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->NULL:Lcom/google/firebase/firestore/pipeline/Expression;

    return-object v0
.end method

.method public static final add(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->add(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final add(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->add(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final add(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->add(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final add(Ljava/lang/String;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->add(Ljava/lang/String;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs and(Lcom/google/firebase/firestore/pipeline/BooleanExpression;[Lcom/google/firebase/firestore/pipeline/BooleanExpression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->and(Lcom/google/firebase/firestore/pipeline/BooleanExpression;[Lcom/google/firebase/firestore/pipeline/BooleanExpression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final array(Ljava/util/List;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/firebase/firestore/pipeline/Expression;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->array(Ljava/util/List;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs array([Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->array([Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs arrayConcat(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayConcat(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs arrayConcat(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayConcat(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs arrayConcat(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayConcat(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs arrayConcat(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayConcat(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final arrayContains(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayContains(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final arrayContains(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayContains(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final arrayContains(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayContains(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final arrayContains(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayContains(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final arrayContainsAll(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayContainsAll(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final arrayContainsAll(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/util/List;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/pipeline/Expression;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/firebase/firestore/pipeline/BooleanExpression;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayContainsAll(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/util/List;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final arrayContainsAll(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayContainsAll(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final arrayContainsAll(Ljava/lang/String;Ljava/util/List;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/firebase/firestore/pipeline/BooleanExpression;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayContainsAll(Ljava/lang/String;Ljava/util/List;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final arrayContainsAny(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayContainsAny(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final arrayContainsAny(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/util/List;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/pipeline/Expression;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/firebase/firestore/pipeline/BooleanExpression;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayContainsAny(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/util/List;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final arrayContainsAny(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayContainsAny(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final arrayContainsAny(Ljava/lang/String;Ljava/util/List;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/firebase/firestore/pipeline/BooleanExpression;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayContainsAny(Ljava/lang/String;Ljava/util/List;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final arrayFilter(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/BooleanExpression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayFilter(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/BooleanExpression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final arrayFilter(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/BooleanExpression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayFilter(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/BooleanExpression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final arrayFirst(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayFirst(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final arrayFirst(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayFirst(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final arrayFirstN(Lcom/google/firebase/firestore/pipeline/Expression;I)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayFirstN(Lcom/google/firebase/firestore/pipeline/Expression;I)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final arrayFirstN(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayFirstN(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final arrayFirstN(Ljava/lang/String;I)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayFirstN(Ljava/lang/String;I)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final arrayFirstN(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayFirstN(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final arrayGet(Lcom/google/firebase/firestore/pipeline/Expression;I)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayGet(Lcom/google/firebase/firestore/pipeline/Expression;I)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final arrayGet(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayGet(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final arrayGet(Ljava/lang/String;I)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayGet(Ljava/lang/String;I)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final arrayGet(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayGet(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final arrayIndexOf(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayIndexOf(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final arrayIndexOf(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayIndexOf(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final arrayIndexOfAll(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayIndexOfAll(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final arrayIndexOfAll(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayIndexOfAll(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final arrayLast(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayLast(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final arrayLast(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayLast(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final arrayLastIndexOf(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayLastIndexOf(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final arrayLastIndexOf(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayLastIndexOf(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final arrayLastN(Lcom/google/firebase/firestore/pipeline/Expression;I)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayLastN(Lcom/google/firebase/firestore/pipeline/Expression;I)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final arrayLastN(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayLastN(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final arrayLastN(Ljava/lang/String;I)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayLastN(Ljava/lang/String;I)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final arrayLastN(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayLastN(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final arrayLength(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayLength(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final arrayLength(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayLength(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final arrayMaximum(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayMaximum(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final arrayMaximum(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayMaximum(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final arrayMaximumN(Lcom/google/firebase/firestore/pipeline/Expression;I)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayMaximumN(Lcom/google/firebase/firestore/pipeline/Expression;I)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final arrayMaximumN(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayMaximumN(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final arrayMaximumN(Ljava/lang/String;I)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayMaximumN(Ljava/lang/String;I)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final arrayMaximumN(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayMaximumN(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final arrayMinimum(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayMinimum(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final arrayMinimum(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayMinimum(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final arrayMinimumN(Lcom/google/firebase/firestore/pipeline/Expression;I)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayMinimumN(Lcom/google/firebase/firestore/pipeline/Expression;I)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final arrayMinimumN(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayMinimumN(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final arrayMinimumN(Ljava/lang/String;I)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayMinimumN(Ljava/lang/String;I)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final arrayMinimumN(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayMinimumN(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final arrayReverse(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayReverse(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final arrayReverse(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayReverse(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final arraySlice(Lcom/google/firebase/firestore/pipeline/Expression;II)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arraySlice(Lcom/google/firebase/firestore/pipeline/Expression;II)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final arraySlice(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arraySlice(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final arraySlice(Ljava/lang/String;II)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arraySlice(Ljava/lang/String;II)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final arraySlice(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arraySlice(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final arraySliceToEnd(Lcom/google/firebase/firestore/pipeline/Expression;I)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arraySliceToEnd(Lcom/google/firebase/firestore/pipeline/Expression;I)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final arraySliceToEnd(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arraySliceToEnd(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final arraySliceToEnd(Ljava/lang/String;I)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arraySliceToEnd(Ljava/lang/String;I)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final arraySliceToEnd(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arraySliceToEnd(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final arraySum(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arraySum(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final arraySum(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arraySum(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final arrayTransform(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayTransform(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final arrayTransform(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayTransform(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final arrayTransformWithIndex(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayTransformWithIndex(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final arrayTransformWithIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayTransformWithIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final bitAnd(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->bitAnd(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final bitAnd(Lcom/google/firebase/firestore/pipeline/Expression;[B)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->bitAnd(Lcom/google/firebase/firestore/pipeline/Expression;[B)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final bitAnd(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->bitAnd(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final bitAnd(Ljava/lang/String;[B)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->bitAnd(Ljava/lang/String;[B)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final bitLeftShift(Lcom/google/firebase/firestore/pipeline/Expression;I)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->bitLeftShift(Lcom/google/firebase/firestore/pipeline/Expression;I)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final bitLeftShift(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->bitLeftShift(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final bitLeftShift(Ljava/lang/String;I)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->bitLeftShift(Ljava/lang/String;I)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final bitLeftShift(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->bitLeftShift(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final bitNot(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->bitNot(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final bitNot(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->bitNot(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final bitOr(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->bitOr(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final bitOr(Lcom/google/firebase/firestore/pipeline/Expression;[B)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->bitOr(Lcom/google/firebase/firestore/pipeline/Expression;[B)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final bitOr(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->bitOr(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final bitOr(Ljava/lang/String;[B)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->bitOr(Ljava/lang/String;[B)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final bitRightShift(Lcom/google/firebase/firestore/pipeline/Expression;I)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->bitRightShift(Lcom/google/firebase/firestore/pipeline/Expression;I)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final bitRightShift(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->bitRightShift(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final bitRightShift(Ljava/lang/String;I)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->bitRightShift(Ljava/lang/String;I)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final bitRightShift(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->bitRightShift(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final bitXor(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->bitXor(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final bitXor(Lcom/google/firebase/firestore/pipeline/Expression;[B)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->bitXor(Lcom/google/firebase/firestore/pipeline/Expression;[B)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final bitXor(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->bitXor(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final bitXor(Ljava/lang/String;[B)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->bitXor(Ljava/lang/String;[B)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final byteLength(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->byteLength(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final byteLength(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->byteLength(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final ceil(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->ceil(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final ceil(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->ceil(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final charLength(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->charLength(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final charLength(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->charLength(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs coalesce(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->coalesce(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs coalesce(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->coalesce(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final collectionId(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->collectionId(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final collectionId(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->collectionId(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs concat(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->concat(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs concat(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->concat(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs concat(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->concat(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs concat(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->concat(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final conditional(Lcom/google/firebase/firestore/pipeline/BooleanExpression;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->conditional(Lcom/google/firebase/firestore/pipeline/BooleanExpression;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final conditional(Lcom/google/firebase/firestore/pipeline/BooleanExpression;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->conditional(Lcom/google/firebase/firestore/pipeline/BooleanExpression;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final constant(Z)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->constant(Z)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final constant(Lcom/google/firebase/Timestamp;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->constant(Lcom/google/firebase/Timestamp;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final constant(Lcom/google/firebase/firestore/Blob;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->constant(Lcom/google/firebase/firestore/Blob;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final constant(Lcom/google/firebase/firestore/DocumentReference;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->constant(Lcom/google/firebase/firestore/DocumentReference;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final constant(Lcom/google/firebase/firestore/GeoPoint;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->constant(Lcom/google/firebase/firestore/GeoPoint;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final constant(Lcom/google/firebase/firestore/VectorValue;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->constant(Lcom/google/firebase/firestore/VectorValue;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final constant(Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->constant(Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final constant(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->constant(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final constant(Ljava/util/Date;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->constant(Ljava/util/Date;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final constant([B)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->constant([B)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final cosineDistance(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/VectorValue;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->cosineDistance(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/VectorValue;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final cosineDistance(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->cosineDistance(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final cosineDistance(Lcom/google/firebase/firestore/pipeline/Expression;[D)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->cosineDistance(Lcom/google/firebase/firestore/pipeline/Expression;[D)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final cosineDistance(Ljava/lang/String;Lcom/google/firebase/firestore/VectorValue;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->cosineDistance(Ljava/lang/String;Lcom/google/firebase/firestore/VectorValue;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final cosineDistance(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->cosineDistance(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final cosineDistance(Ljava/lang/String;[D)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->cosineDistance(Ljava/lang/String;[D)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final currentDocument()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->currentDocument()Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public static final currentTimestamp()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->currentTimestamp()Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public static final divide(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->divide(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final divide(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->divide(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final divide(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->divide(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final divide(Ljava/lang/String;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->divide(Ljava/lang/String;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final documentId(Lcom/google/firebase/firestore/DocumentReference;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->documentId(Lcom/google/firebase/firestore/DocumentReference;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final documentId(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->documentId(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final documentId(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->documentId(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final documentMatches(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->documentMatches(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final dotProduct(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/VectorValue;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->dotProduct(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/VectorValue;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final dotProduct(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->dotProduct(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final dotProduct(Lcom/google/firebase/firestore/pipeline/Expression;[D)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->dotProduct(Lcom/google/firebase/firestore/pipeline/Expression;[D)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final dotProduct(Ljava/lang/String;Lcom/google/firebase/firestore/VectorValue;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->dotProduct(Ljava/lang/String;Lcom/google/firebase/firestore/VectorValue;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final dotProduct(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->dotProduct(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final dotProduct(Ljava/lang/String;[D)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->dotProduct(Ljava/lang/String;[D)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final endsWith(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->endsWith(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final endsWith(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->endsWith(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final endsWith(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->endsWith(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final endsWith(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->endsWith(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final equal(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->equal(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final equal(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->equal(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final equal(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->equal(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final equal(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->equal(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final equalAny(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->equalAny(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final equalAny(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/util/List;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/pipeline/Expression;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/firebase/firestore/pipeline/BooleanExpression;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->equalAny(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/util/List;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final equalAny(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->equalAny(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final equalAny(Ljava/lang/String;Ljava/util/List;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/firebase/firestore/pipeline/BooleanExpression;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->equalAny(Ljava/lang/String;Ljava/util/List;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final error$com_google_firebase_firebase_firestore(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->error$com_google_firebase_firebase_firestore(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final euclideanDistance(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/VectorValue;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->euclideanDistance(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/VectorValue;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final euclideanDistance(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->euclideanDistance(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final euclideanDistance(Lcom/google/firebase/firestore/pipeline/Expression;[D)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->euclideanDistance(Lcom/google/firebase/firestore/pipeline/Expression;[D)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final euclideanDistance(Ljava/lang/String;Lcom/google/firebase/firestore/VectorValue;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->euclideanDistance(Ljava/lang/String;Lcom/google/firebase/firestore/VectorValue;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final euclideanDistance(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->euclideanDistance(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final euclideanDistance(Ljava/lang/String;[D)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->euclideanDistance(Ljava/lang/String;[D)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final exists(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->exists(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final exists(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->exists(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final exp(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->exp(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final exp(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->exp(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final field(Lcom/google/firebase/firestore/FieldPath;)Lcom/google/firebase/firestore/pipeline/Field;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->field(Lcom/google/firebase/firestore/FieldPath;)Lcom/google/firebase/firestore/pipeline/Field;

    move-result-object p0

    return-object p0
.end method

.method public static final field(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Field;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->field(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Field;

    move-result-object p0

    return-object p0
.end method

.method public static final floor(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->floor(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final floor(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->floor(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final geoDistance(Lcom/google/firebase/firestore/pipeline/Field;Lcom/google/firebase/firestore/GeoPoint;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->geoDistance(Lcom/google/firebase/firestore/pipeline/Field;Lcom/google/firebase/firestore/GeoPoint;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final geoDistance(Ljava/lang/String;Lcom/google/firebase/firestore/GeoPoint;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->geoDistance(Ljava/lang/String;Lcom/google/firebase/firestore/GeoPoint;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final getField(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->getField(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final getField(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->getField(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final getField(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->getField(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final getField(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->getField(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final greaterThan(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->greaterThan(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final greaterThan(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->greaterThan(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final greaterThan(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->greaterThan(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final greaterThan(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->greaterThan(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final greaterThanOrEqual(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->greaterThanOrEqual(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final greaterThanOrEqual(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->greaterThanOrEqual(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final greaterThanOrEqual(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->greaterThanOrEqual(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final greaterThanOrEqual(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->greaterThanOrEqual(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final ifAbsent(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->ifAbsent(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final ifAbsent(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->ifAbsent(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final ifAbsent(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->ifAbsent(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final ifAbsent(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->ifAbsent(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final ifError(Lcom/google/firebase/firestore/pipeline/BooleanExpression;Lcom/google/firebase/firestore/pipeline/BooleanExpression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->ifError(Lcom/google/firebase/firestore/pipeline/BooleanExpression;Lcom/google/firebase/firestore/pipeline/BooleanExpression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final ifError(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->ifError(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final ifError(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->ifError(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final ifNull(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->ifNull(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final ifNull(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->ifNull(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final ifNull(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->ifNull(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final ifNull(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->ifNull(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final isAbsent(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->isAbsent(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final isAbsent(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->isAbsent(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final isError(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->isError(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final isType(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->isType(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final isType(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->isType(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final join(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->join(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final join(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->join(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final join(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->join(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final join(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->join(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final length(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->length(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final length(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->length(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final lessThan(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->lessThan(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final lessThan(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->lessThan(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final lessThan(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->lessThan(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final lessThan(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->lessThan(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final lessThanOrEqual(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->lessThanOrEqual(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final lessThanOrEqual(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->lessThanOrEqual(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final lessThanOrEqual(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->lessThanOrEqual(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final lessThanOrEqual(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->lessThanOrEqual(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final like(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->like(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final like(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->like(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final like(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->like(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final like(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->like(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final ln(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->ln(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final ln(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->ln(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final log(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->log(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final log(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->log(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final log(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->log(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final log(Ljava/lang/String;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->log(Ljava/lang/String;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final log10(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->log10(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final log10(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->log10(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs logicalMaximum(Lcom/google/firebase/firestore/pipeline/Expression;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->logicalMaximum(Lcom/google/firebase/firestore/pipeline/Expression;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs logicalMaximum(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->logicalMaximum(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs logicalMinimum(Lcom/google/firebase/firestore/pipeline/Expression;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->logicalMinimum(Lcom/google/firebase/firestore/pipeline/Expression;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs logicalMinimum(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->logicalMinimum(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final ltrim(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->ltrim(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final ltrim(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->ltrim(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final ltrimValue(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->ltrimValue(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final ltrimValue(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->ltrimValue(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final ltrimValue(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->ltrimValue(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final ltrimValue(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->ltrimValue(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final map(Ljava/util/Map;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/firebase/firestore/pipeline/Expression;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->map(Ljava/util/Map;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final mapEntries(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->mapEntries(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final mapEntries(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->mapEntries(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final mapGet(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->mapGet(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final mapGet(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->mapGet(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final mapGet(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->mapGet(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final mapGet(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->mapGet(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final mapKeys(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->mapKeys(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final mapKeys(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->mapKeys(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs mapMerge(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;[Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->mapMerge(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;[Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs mapMerge(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;[Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->mapMerge(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;[Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final mapRemove(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->mapRemove(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final mapRemove(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->mapRemove(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final mapRemove(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->mapRemove(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final mapRemove(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->mapRemove(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs mapSet(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;[Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->mapSet(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;[Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs mapSet(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->mapSet(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs mapSet(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;[Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->mapSet(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;[Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs mapSet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->mapSet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final mapValues(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->mapValues(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final mapValues(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->mapValues(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final mod(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->mod(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final mod(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->mod(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final mod(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->mod(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final mod(Ljava/lang/String;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->mod(Ljava/lang/String;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final multiply(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->multiply(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final multiply(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->multiply(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final multiply(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->multiply(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final multiply(Ljava/lang/String;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->multiply(Ljava/lang/String;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs nor(Lcom/google/firebase/firestore/pipeline/BooleanExpression;[Lcom/google/firebase/firestore/pipeline/BooleanExpression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->nor(Lcom/google/firebase/firestore/pipeline/BooleanExpression;[Lcom/google/firebase/firestore/pipeline/BooleanExpression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final not(Lcom/google/firebase/firestore/pipeline/BooleanExpression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->not(Lcom/google/firebase/firestore/pipeline/BooleanExpression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final notEqual(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->notEqual(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final notEqual(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->notEqual(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final notEqual(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->notEqual(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final notEqual(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->notEqual(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final notEqualAny(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->notEqualAny(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final notEqualAny(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/util/List;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/pipeline/Expression;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/firebase/firestore/pipeline/BooleanExpression;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->notEqualAny(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/util/List;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final notEqualAny(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->notEqualAny(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final notEqualAny(Ljava/lang/String;Ljava/util/List;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/firebase/firestore/pipeline/BooleanExpression;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->notEqualAny(Ljava/lang/String;Ljava/util/List;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final nullValue()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->nullValue()Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs or(Lcom/google/firebase/firestore/pipeline/BooleanExpression;[Lcom/google/firebase/firestore/pipeline/BooleanExpression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->or(Lcom/google/firebase/firestore/pipeline/BooleanExpression;[Lcom/google/firebase/firestore/pipeline/BooleanExpression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final parent(Lcom/google/firebase/firestore/DocumentReference;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->parent(Lcom/google/firebase/firestore/DocumentReference;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final parent(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->parent(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final parent(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->parent(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final pow(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->pow(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final pow(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->pow(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final pow(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->pow(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final pow(Ljava/lang/String;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->pow(Ljava/lang/String;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final rand()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->rand()Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs rawFunction(Ljava/lang/String;[Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->rawFunction(Ljava/lang/String;[Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final regexContains(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->regexContains(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final regexContains(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->regexContains(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final regexContains(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->regexContains(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final regexContains(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->regexContains(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final regexFind(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->regexFind(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final regexFind(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->regexFind(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final regexFind(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->regexFind(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final regexFind(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->regexFind(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final regexFindAll(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->regexFindAll(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final regexFindAll(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->regexFindAll(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final regexFindAll(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->regexFindAll(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final regexFindAll(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->regexFindAll(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final regexMatch(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->regexMatch(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final regexMatch(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->regexMatch(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final regexMatch(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->regexMatch(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final regexMatch(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->regexMatch(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final reverse(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->reverse(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final reverse(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->reverse(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final round(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->round(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final round(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->round(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final roundToPrecision(Lcom/google/firebase/firestore/pipeline/Expression;I)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->roundToPrecision(Lcom/google/firebase/firestore/pipeline/Expression;I)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final roundToPrecision(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->roundToPrecision(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final roundToPrecision(Ljava/lang/String;I)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->roundToPrecision(Ljava/lang/String;I)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final roundToPrecision(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->roundToPrecision(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final rtrim(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->rtrim(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final rtrim(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->rtrim(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final rtrimValue(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->rtrimValue(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final rtrimValue(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->rtrimValue(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final rtrimValue(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->rtrimValue(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final rtrimValue(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->rtrimValue(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final score()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->score()Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public static final split(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/Blob;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->split(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/Blob;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final split(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->split(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final split(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->split(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final split(Ljava/lang/String;Lcom/google/firebase/firestore/Blob;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->split(Ljava/lang/String;Lcom/google/firebase/firestore/Blob;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final split(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->split(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final split(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->split(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final sqrt(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->sqrt(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final sqrt(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->sqrt(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final startsWith(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->startsWith(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final startsWith(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->startsWith(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final startsWith(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->startsWith(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final startsWith(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->startsWith(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs stringConcat(Lcom/google/firebase/firestore/pipeline/Expression;[Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->stringConcat(Lcom/google/firebase/firestore/pipeline/Expression;[Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs stringConcat(Lcom/google/firebase/firestore/pipeline/Expression;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->stringConcat(Lcom/google/firebase/firestore/pipeline/Expression;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs stringConcat(Ljava/lang/String;[Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->stringConcat(Ljava/lang/String;[Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs stringConcat(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->stringConcat(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final stringContains(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->stringContains(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final stringContains(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->stringContains(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final stringContains(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->stringContains(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final stringContains(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->stringContains(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method

.method public static final stringIndexOf(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->stringIndexOf(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final stringIndexOf(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->stringIndexOf(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final stringIndexOf(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->stringIndexOf(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final stringIndexOf(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->stringIndexOf(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final stringRepeat(Lcom/google/firebase/firestore/pipeline/Expression;I)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->stringRepeat(Lcom/google/firebase/firestore/pipeline/Expression;I)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final stringRepeat(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->stringRepeat(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final stringRepeat(Ljava/lang/String;I)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->stringRepeat(Ljava/lang/String;I)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final stringRepeat(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->stringRepeat(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final stringReplaceAll(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->stringReplaceAll(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final stringReplaceAll(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->stringReplaceAll(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final stringReplaceAll(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->stringReplaceAll(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final stringReplaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->stringReplaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final stringReplaceOne(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->stringReplaceOne(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final stringReplaceOne(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->stringReplaceOne(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final stringReplaceOne(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->stringReplaceOne(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final stringReplaceOne(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->stringReplaceOne(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final stringReverse(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->stringReverse(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final stringReverse(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->stringReverse(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final substring(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->substring(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final substring(Ljava/lang/String;II)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->substring(Ljava/lang/String;II)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final subtract(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->subtract(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final subtract(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->subtract(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final subtract(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->subtract(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final subtract(Ljava/lang/String;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->subtract(Ljava/lang/String;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs switchOn(Lcom/google/firebase/firestore/pipeline/BooleanExpression;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->switchOn(Lcom/google/firebase/firestore/pipeline/BooleanExpression;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final timestampAdd(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampAdd(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final timestampAdd(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;J)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampAdd(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;J)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final timestampAdd(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampAdd(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final timestampAdd(Ljava/lang/String;Ljava/lang/String;J)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampAdd(Ljava/lang/String;Ljava/lang/String;J)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final timestampDiff(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampDiff(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final timestampDiff(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampDiff(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final timestampDiff(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampDiff(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final timestampDiff(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampDiff(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final timestampDiff(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampDiff(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final timestampExtract(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampExtract(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final timestampExtract(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampExtract(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final timestampExtract(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampExtract(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final timestampExtract(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampExtract(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final timestampExtractWithTimezone(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampExtractWithTimezone(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final timestampExtractWithTimezone(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampExtractWithTimezone(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final timestampExtractWithTimezone(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampExtractWithTimezone(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final timestampExtractWithTimezone(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampExtractWithTimezone(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final timestampExtractWithTimezone(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampExtractWithTimezone(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final timestampExtractWithTimezone(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampExtractWithTimezone(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final timestampExtractWithTimezone(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampExtractWithTimezone(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final timestampExtractWithTimezone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampExtractWithTimezone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final timestampSubtract(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampSubtract(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final timestampSubtract(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;J)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampSubtract(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;J)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final timestampSubtract(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampSubtract(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final timestampSubtract(Ljava/lang/String;Ljava/lang/String;J)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampSubtract(Ljava/lang/String;Ljava/lang/String;J)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final timestampToUnixMicros(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampToUnixMicros(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final timestampToUnixMicros(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampToUnixMicros(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final timestampToUnixMillis(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampToUnixMillis(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final timestampToUnixMillis(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampToUnixMillis(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final timestampToUnixSeconds(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampToUnixSeconds(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final timestampToUnixSeconds(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampToUnixSeconds(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final timestampTruncate(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampTruncate(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final timestampTruncate(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampTruncate(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final timestampTruncate(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampTruncate(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final timestampTruncate(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampTruncate(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final timestampTruncateWithTimezone(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampTruncateWithTimezone(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final timestampTruncateWithTimezone(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampTruncateWithTimezone(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final timestampTruncateWithTimezone(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampTruncateWithTimezone(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final timestampTruncateWithTimezone(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampTruncateWithTimezone(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final timestampTruncateWithTimezone(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampTruncateWithTimezone(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final timestampTruncateWithTimezone(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampTruncateWithTimezone(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final timestampTruncateWithTimezone(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampTruncateWithTimezone(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final timestampTruncateWithTimezone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampTruncateWithTimezone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final toLower(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->toLower(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final toLower(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->toLower(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final toUpper(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->toUpper(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final toUpper(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->toUpper(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final trim(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->trim(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final trim(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->trim(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final trimValue(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->trimValue(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final trimValue(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->trimValue(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final trunc(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->trunc(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final trunc(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->trunc(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final truncToPrecision(Lcom/google/firebase/firestore/pipeline/Expression;I)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->truncToPrecision(Lcom/google/firebase/firestore/pipeline/Expression;I)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final truncToPrecision(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->truncToPrecision(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final truncToPrecision(Ljava/lang/String;I)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->truncToPrecision(Ljava/lang/String;I)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final truncToPrecision(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->truncToPrecision(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final type(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->type(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final type(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->type(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final unixMicrosToTimestamp(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->unixMicrosToTimestamp(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final unixMicrosToTimestamp(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->unixMicrosToTimestamp(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final unixMillisToTimestamp(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->unixMillisToTimestamp(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final unixMillisToTimestamp(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->unixMillisToTimestamp(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final unixSecondsToTimestamp(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->unixSecondsToTimestamp(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final unixSecondsToTimestamp(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->unixSecondsToTimestamp(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final variable(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->variable(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final vector(Lcom/google/firebase/firestore/VectorValue;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->vector(Lcom/google/firebase/firestore/VectorValue;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final vector([D)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->vector([D)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final vectorLength(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->vectorLength(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final vectorLength(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->vectorLength(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs xor(Lcom/google/firebase/firestore/pipeline/BooleanExpression;[Lcom/google/firebase/firestore/pipeline/BooleanExpression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->xor(Lcom/google/firebase/firestore/pipeline/BooleanExpression;[Lcom/google/firebase/firestore/pipeline/BooleanExpression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final abs()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 8265
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->abs(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final add(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "second"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8290
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->add(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final add(Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "second"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8303
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->add(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public alias(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/AliasedExpression;
    .locals 1

    const-string v0, "alias"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8216
    new-instance v0, Lcom/google/firebase/firestore/pipeline/AliasedExpression;

    invoke-direct {v0, p1, p0}, Lcom/google/firebase/firestore/pipeline/AliasedExpression;-><init>(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)V

    return-object v0
.end method

.method public final arrayAgg()Lcom/google/firebase/firestore/pipeline/AggregateFunction;
    .locals 1

    .line 10700
    sget-object v0, Lcom/google/firebase/firestore/pipeline/AggregateFunction;->Companion:Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;->arrayAgg(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/AggregateFunction;

    move-result-object v0

    return-object v0
.end method

.method public final arrayAggDistinct()Lcom/google/firebase/firestore/pipeline/AggregateFunction;
    .locals 1

    .line 10711
    sget-object v0, Lcom/google/firebase/firestore/pipeline/AggregateFunction;->Companion:Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;->arrayAggDistinct(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/AggregateFunction;

    move-result-object v0

    return-object v0
.end method

.method public final varargs arrayConcat(Lcom/google/firebase/firestore/pipeline/Expression;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 2

    const-string v0, "secondArray"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otherArrays"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10153
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayConcat(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final varargs arrayConcat(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 2

    const-string v0, "secondArray"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otherArrays"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10168
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayConcat(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final arrayContains(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1

    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10307
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayContains(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p1

    return-object p1
.end method

.method public final arrayContains(Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1

    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10320
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayContains(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p1

    return-object p1
.end method

.method public final arrayContainsAll(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1

    const-string v0, "arrayExpression"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10348
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayContainsAll(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p1

    return-object p1
.end method

.method public final arrayContainsAll(Ljava/util/List;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/firebase/firestore/pipeline/BooleanExpression;"
        }
    .end annotation

    const-string v0, "values"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10334
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayContainsAll(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/util/List;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p1

    return-object p1
.end method

.method public final arrayContainsAny(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1

    const-string v0, "arrayExpression"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10377
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayContainsAny(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p1

    return-object p1
.end method

.method public final arrayContainsAny(Ljava/util/List;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/firebase/firestore/pipeline/BooleanExpression;"
        }
    .end annotation

    const-string v0, "values"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10362
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayContainsAny(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/util/List;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p1

    return-object p1
.end method

.method public final arrayFilter(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/BooleanExpression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "alias"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10195
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayFilter(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/BooleanExpression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final arrayFirst()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 10401
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayFirst(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final arrayFirstN(I)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 10414
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayFirstN(Lcom/google/firebase/firestore/pipeline/Expression;I)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final arrayFirstN(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "n"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10427
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayFirstN(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final arrayGet(I)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 10625
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayGet(Lcom/google/firebase/firestore/pipeline/Expression;I)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final arrayGet(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "offset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10610
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayGet(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final arrayIndexOf(Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 10567
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayIndexOf(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final arrayIndexOfAll(Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 10595
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayIndexOfAll(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final arrayLast()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 10439
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayLast(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final arrayLastIndexOf(Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 10581
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayLastIndexOf(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final arrayLastN(I)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 10452
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayLastN(Lcom/google/firebase/firestore/pipeline/Expression;I)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final arrayLastN(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "n"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10465
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayLastN(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final arrayLength()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 10389
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayLength(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final arrayMaximum()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 10489
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayMaximum(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final arrayMaximumN(I)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 10537
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayMaximumN(Lcom/google/firebase/firestore/pipeline/Expression;I)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final arrayMaximumN(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "n"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10553
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayMaximumN(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final arrayMinimum()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 10477
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayMinimum(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final arrayMinimumN(I)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 10505
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayMinimumN(Lcom/google/firebase/firestore/pipeline/Expression;I)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final arrayMinimumN(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "n"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10521
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayMinimumN(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final arrayReverse()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 10180
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayReverse(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final arraySlice(II)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 10267
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arraySlice(Lcom/google/firebase/firestore/pipeline/Expression;II)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final arraySlice(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "offset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "length"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10282
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arraySlice(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final arraySliceToEnd(I)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 10240
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arraySliceToEnd(Lcom/google/firebase/firestore/pipeline/Expression;I)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final arraySliceToEnd(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "offset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10253
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arraySliceToEnd(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final arraySum()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 10294
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arraySum(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final arrayTransform(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "elementAlias"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transform"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10210
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayTransform(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final arrayTransformWithIndex(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "elementAlias"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "indexAlias"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transform"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10227
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->arrayTransformWithIndex(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final asBoolean()Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 2

    .line 11026
    instance-of v0, p0, Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    return-object v0

    .line 11027
    :cond_0
    instance-of v0, p0, Lcom/google/firebase/firestore/pipeline/Expression$Constant;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/firebase/firestore/pipeline/BooleanConstant;

    move-object v1, p0

    check-cast v1, Lcom/google/firebase/firestore/pipeline/Expression$Constant;

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/pipeline/BooleanConstant;-><init>(Lcom/google/firebase/firestore/pipeline/Expression$Constant;)V

    check-cast v0, Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    return-object v0

    .line 11028
    :cond_1
    instance-of v0, p0, Lcom/google/firebase/firestore/pipeline/Field;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/firebase/firestore/pipeline/BooleanField;

    move-object v1, p0

    check-cast v1, Lcom/google/firebase/firestore/pipeline/Field;

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/pipeline/BooleanField;-><init>(Lcom/google/firebase/firestore/pipeline/Field;)V

    check-cast v0, Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    return-object v0

    .line 11029
    :cond_2
    new-instance v0, Lcom/google/firebase/firestore/pipeline/BooleanFunctionExpression;

    const-string v1, "null cannot be cast to non-null type com.google.firebase.firestore.pipeline.FunctionExpression"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    check-cast v1, Lcom/google/firebase/firestore/pipeline/FunctionExpression;

    check-cast v1, Lcom/google/firebase/firestore/pipeline/Expression;

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/pipeline/BooleanFunctionExpression;-><init>(Lcom/google/firebase/firestore/pipeline/Expression;)V

    check-cast v0, Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    return-object v0
.end method

.method public final ascending()Lcom/google/firebase/firestore/pipeline/Ordering;
    .locals 1

    .line 10718
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Ordering;->Companion:Lcom/google/firebase/firestore/pipeline/Ordering$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Ordering$Companion;->ascending(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public final average()Lcom/google/firebase/firestore/pipeline/AggregateFunction;
    .locals 1

    .line 10657
    sget-object v0, Lcom/google/firebase/firestore/pipeline/AggregateFunction;->Companion:Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;->average(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/AggregateFunction;

    move-result-object v0

    return-object v0
.end method

.method public final bitAnd(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "bitsOther"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8075
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->bitAnd(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final bitAnd([B)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "bitsOther"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8088
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->bitAnd(Lcom/google/firebase/firestore/pipeline/Expression;[B)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final bitLeftShift(I)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 8178
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->bitLeftShift(Lcom/google/firebase/firestore/pipeline/Expression;I)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final bitLeftShift(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "numberExpr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8165
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->bitLeftShift(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final bitNot()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 8152
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->bitNot(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final bitOr(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "bitsOther"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8101
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->bitOr(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final bitOr([B)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "bitsOther"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8114
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->bitOr(Lcom/google/firebase/firestore/pipeline/Expression;[B)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final bitRightShift(I)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 8204
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->bitRightShift(Lcom/google/firebase/firestore/pipeline/Expression;I)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final bitRightShift(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "numberExpr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8191
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->bitRightShift(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final bitXor(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "bitsOther"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8127
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->bitXor(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final bitXor([B)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "bitsOther"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8140
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->bitXor(Lcom/google/firebase/firestore/pipeline/Expression;[B)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final byteLength()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 8704
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->byteLength(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public abstract canonicalId$com_google_firebase_firebase_firestore()Ljava/lang/String;
.end method

.method public final ceil()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 8514
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->ceil(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final charLength()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 8691
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->charLength(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final varargs coalesce(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 2

    const-string v0, "replacement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "others"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11005
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->coalesce(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final collectionId()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 8253
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->collectionId(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final varargs concat(Lcom/google/firebase/firestore/pipeline/Expression;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 2

    const-string v0, "second"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "others"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10123
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->concat(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final varargs concat(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 2

    const-string v0, "second"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "others"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10138
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->concat(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final cosineDistance(Lcom/google/firebase/firestore/VectorValue;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "vector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9592
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->cosineDistance(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/VectorValue;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final cosineDistance(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "vector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9566
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->cosineDistance(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final cosineDistance([D)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "vector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9579
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->cosineDistance(Lcom/google/firebase/firestore/pipeline/Expression;[D)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final count()Lcom/google/firebase/firestore/pipeline/AggregateFunction;
    .locals 1

    .line 10633
    sget-object v0, Lcom/google/firebase/firestore/pipeline/AggregateFunction;->Companion:Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;->count(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/AggregateFunction;

    move-result-object v0

    return-object v0
.end method

.method public final countDistinct()Lcom/google/firebase/firestore/pipeline/AggregateFunction;
    .locals 1

    .line 10641
    sget-object v0, Lcom/google/firebase/firestore/pipeline/AggregateFunction;->Companion:Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;->countDistinct(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/AggregateFunction;

    move-result-object v0

    return-object v0
.end method

.method public final descending()Lcom/google/firebase/firestore/pipeline/Ordering;
    .locals 1

    .line 10725
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Ordering;->Companion:Lcom/google/firebase/firestore/pipeline/Ordering$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Ordering$Companion;->descending(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public final divide(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "divisor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8368
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->divide(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final divide(Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "divisor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8381
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->divide(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final documentId()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 8228
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->documentId(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final dotProduct(Lcom/google/firebase/firestore/VectorValue;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "vector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9631
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->dotProduct(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/VectorValue;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final dotProduct(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "vector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9605
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->dotProduct(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final dotProduct([D)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "vector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9618
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->dotProduct(Lcom/google/firebase/firestore/pipeline/Expression;[D)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final endsWith(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1

    const-string v0, "suffix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9019
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->endsWith(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p1

    return-object p1
.end method

.method public final endsWith(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1

    const-string v0, "suffix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9032
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->endsWith(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p1

    return-object p1
.end method

.method public final equal(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10738
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->equal(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p1

    return-object p1
.end method

.method public final equal(Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10751
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->equal(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p1

    return-object p1
.end method

.method public final equalAny(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1

    const-string v0, "arrayExpression"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8623
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->equalAny(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p1

    return-object p1
.end method

.method public final equalAny(Ljava/util/List;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/firebase/firestore/pipeline/BooleanExpression;"
        }
    .end annotation

    const-string v0, "values"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8607
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->equalAny(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/util/List;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p1

    return-object p1
.end method

.method public final euclideanDistance(Lcom/google/firebase/firestore/VectorValue;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "vector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9670
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->euclideanDistance(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/VectorValue;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final euclideanDistance(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "vector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9644
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->euclideanDistance(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final euclideanDistance([D)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "vector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9657
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->euclideanDistance(Lcom/google/firebase/firestore/pipeline/Expression;[D)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public abstract evaluateFunction$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/evaluation/EvaluationContext;)Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluationContext;",
            ")",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;"
        }
    .end annotation
.end method

.method public final exists()Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1

    .line 10892
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->exists(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    return-object v0
.end method

.method public final exp()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 8277
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->exp(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final first()Lcom/google/firebase/firestore/pipeline/AggregateFunction;
    .locals 1

    .line 10681
    sget-object v0, Lcom/google/firebase/firestore/pipeline/AggregateFunction;->Companion:Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;->first(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/AggregateFunction;

    move-result-object v0

    return-object v0
.end method

.method public final floor()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 8527
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->floor(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final getField(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "keyExpression"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9445
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->getField(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final getField(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9437
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->getField(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final greaterThan(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10790
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->greaterThan(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p1

    return-object p1
.end method

.method public final greaterThan(Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10803
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->greaterThan(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p1

    return-object p1
.end method

.method public final greaterThanOrEqual(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10818
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->greaterThanOrEqual(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p1

    return-object p1
.end method

.method public final greaterThanOrEqual(Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10831
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->greaterThanOrEqual(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p1

    return-object p1
.end method

.method public final ifAbsent(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "elseExpr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10938
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->ifAbsent(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final ifAbsent(Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "elseValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10953
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->ifAbsent(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final ifError(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "catchExpr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10908
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->ifError(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final ifError(Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "catchValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10922
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->ifError(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final ifNull(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "elseExpression"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10971
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->ifNull(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final ifNull(Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "elseValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10988
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->ifNull(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final isAbsent()Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1

    .line 8666
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->isAbsent(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    return-object v0
.end method

.method public final isError()Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1

    .line 11017
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->isError(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v0

    return-object v0
.end method

.method public final isType(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8748
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->isType(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p1

    return-object p1
.end method

.method public final join(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "delimiterExpression"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8813
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->join(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final join(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "delimiter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8800
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->join(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final last()Lcom/google/firebase/firestore/pipeline/AggregateFunction;
    .locals 1

    .line 10689
    sget-object v0, Lcom/google/firebase/firestore/pipeline/AggregateFunction;->Companion:Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;->last(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/AggregateFunction;

    move-result-object v0

    return-object v0
.end method

.method public final length()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 8679
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->length(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final lessThan(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10844
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->lessThan(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p1

    return-object p1
.end method

.method public final lessThan(Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10857
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->lessThan(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p1

    return-object p1
.end method

.method public final lessThanOrEqual(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10871
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->lessThanOrEqual(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p1

    return-object p1
.end method

.method public final lessThanOrEqual(Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10884
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->lessThanOrEqual(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p1

    return-object p1
.end method

.method public final like(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1

    const-string v0, "pattern"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8717
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->like(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p1

    return-object p1
.end method

.method public final like(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1

    const-string v0, "pattern"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8826
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->like(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p1

    return-object p1
.end method

.method public final ln()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 8581
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->ln(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final log10()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 8593
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->log10(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final varargs logicalMaximum([Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 2

    const-string v0, "others"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8897
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->logicalMaximum(Lcom/google/firebase/firestore/pipeline/Expression;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final varargs logicalMaximum([Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 2

    const-string v0, "others"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8911
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->logicalMaximum(Lcom/google/firebase/firestore/pipeline/Expression;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final varargs logicalMinimum([Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 2

    const-string v0, "others"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8926
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->logicalMinimum(Lcom/google/firebase/firestore/pipeline/Expression;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final varargs logicalMinimum([Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 2

    const-string v0, "others"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8940
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->logicalMinimum(Lcom/google/firebase/firestore/pipeline/Expression;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final ltrim()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 9153
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->ltrim(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final ltrimValue(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "valuesToTrim"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9183
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->ltrimValue(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final ltrimValue(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "valuesToTrim"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9168
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->ltrimValue(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final mapEntries()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 9553
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->mapEntries(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final mapGet(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "keyExpression"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9392
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->mapGet(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final mapGet(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9405
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->mapGet(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final mapKeys()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 9522
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->mapKeys(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final varargs mapMerge(Lcom/google/firebase/firestore/pipeline/Expression;[Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 2

    const-string v0, "mapExpr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otherMaps"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9429
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/google/firebase/firestore/pipeline/Expression;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->mapMerge(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;[Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final mapRemove(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "keyExpression"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9458
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->mapRemove(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final mapRemove(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9471
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->mapRemove(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final varargs mapSet(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;[Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moreKeyValues"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9491
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    array-length v1, p3

    invoke-static {p3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lcom/google/firebase/firestore/pipeline/Expression;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->mapSet(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;[Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final varargs mapSet(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moreKeyValues"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9507
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    array-length v1, p3

    invoke-static {p3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->mapSet(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final mapValues()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 9537
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->mapValues(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final maximum()Lcom/google/firebase/firestore/pipeline/AggregateFunction;
    .locals 1

    .line 10673
    sget-object v0, Lcom/google/firebase/firestore/pipeline/AggregateFunction;->Companion:Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;->maximum(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/AggregateFunction;

    move-result-object v0

    return-object v0
.end method

.method public final minimum()Lcom/google/firebase/firestore/pipeline/AggregateFunction;
    .locals 1

    .line 10665
    sget-object v0, Lcom/google/firebase/firestore/pipeline/AggregateFunction;->Companion:Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;->minimum(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/AggregateFunction;

    move-result-object v0

    return-object v0
.end method

.method public final mod(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "divisor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8395
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->mod(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final mod(Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "divisor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8409
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->mod(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final multiply(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "second"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8342
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->multiply(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final multiply(Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "second"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8355
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->multiply(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final notEqual(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10764
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->notEqual(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p1

    return-object p1
.end method

.method public final notEqual(Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10777
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->notEqual(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p1

    return-object p1
.end method

.method public final notEqualAny(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1

    const-string v0, "arrayExpression"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8653
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->notEqualAny(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p1

    return-object p1
.end method

.method public final notEqualAny(Ljava/util/List;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/firebase/firestore/pipeline/BooleanExpression;"
        }
    .end annotation

    const-string v0, "values"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8637
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->notEqualAny(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/util/List;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p1

    return-object p1
.end method

.method public final parent()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 8241
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->parent(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final pow(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "exponent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8557
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->pow(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final pow(Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "exponent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8542
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->pow(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final regexContains(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1

    const-string v0, "pattern"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8840
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->regexContains(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p1

    return-object p1
.end method

.method public final regexContains(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1

    const-string v0, "pattern"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8854
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->regexContains(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p1

    return-object p1
.end method

.method public final regexMatch(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1

    const-string v0, "pattern"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8868
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->regexMatch(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p1

    return-object p1
.end method

.method public final regexMatch(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1

    const-string v0, "pattern"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8882
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->regexMatch(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p1

    return-object p1
.end method

.method public final reverse()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 8952
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->reverse(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final round()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 8423
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->round(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final roundToPrecision(I)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 8439
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->roundToPrecision(Lcom/google/firebase/firestore/pipeline/Expression;I)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final roundToPrecision(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "decimalPlace"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8456
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->roundToPrecision(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final rtrim()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 9195
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->rtrim(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final rtrimValue(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "valuesToTrim"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9225
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->rtrimValue(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final rtrimValue(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "valuesToTrim"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9210
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->rtrimValue(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final split(Lcom/google/firebase/firestore/Blob;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "delimiter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8787
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->split(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/Blob;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final split(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "delimiter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8761
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->split(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final split(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "delimiter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8774
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->split(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final sqrt()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 8569
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->sqrt(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final startsWith(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1

    const-string v0, "prefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8993
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->startsWith(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p1

    return-object p1
.end method

.method public final startsWith(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1

    const-string v0, "prefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9006
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->startsWith(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p1

    return-object p1
.end method

.method public final varargs stringConcat([Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 2

    const-string v0, "stringExpressions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9353
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/firebase/firestore/pipeline/Expression;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->stringConcat(Lcom/google/firebase/firestore/pipeline/Expression;[Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final varargs stringConcat([Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 2

    const-string v0, "strings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9379
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->stringConcat(Lcom/google/firebase/firestore/pipeline/Expression;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final varargs stringConcat([Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 2

    const-string v0, "strings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9366
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->stringConcat(Lcom/google/firebase/firestore/pipeline/Expression;[Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final stringContains(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1

    const-string v0, "substring"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8966
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->stringContains(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p1

    return-object p1
.end method

.method public final stringContains(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1

    const-string v0, "substring"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8980
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->stringContains(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object p1

    return-object p1
.end method

.method public final stringIndexOf(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "substring"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9339
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->stringIndexOf(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final stringIndexOf(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "substring"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9325
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->stringIndexOf(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final stringRepeat(I)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 9238
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->stringRepeat(Lcom/google/firebase/firestore/pipeline/Expression;I)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final stringRepeat(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "count"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9251
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->stringRepeat(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final stringReplaceAll(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "oldValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9281
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->stringReplaceAll(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final stringReplaceAll(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "oldValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9266
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->stringReplaceAll(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final stringReplaceOne(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "oldValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9311
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->stringReplaceOne(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final stringReplaceOne(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "oldValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9296
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->stringReplaceOne(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final stringReverse()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 9043
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->stringReverse(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final substring(II)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 9073
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->constant(Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {v0, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->constant(Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p2

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->substring(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final substring(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "start"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "length"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9058
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->substring(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final subtract(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "subtrahend"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8316
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->subtract(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final subtract(Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "subtrahend"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8329
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->subtract(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Number;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final sum()Lcom/google/firebase/firestore/pipeline/AggregateFunction;
    .locals 1

    .line 10649
    sget-object v0, Lcom/google/firebase/firestore/pipeline/AggregateFunction;->Companion:Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;->sum(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/AggregateFunction;

    move-result-object v0

    return-object v0
.end method

.method public final timestampAdd(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "unit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9776
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampAdd(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final timestampAdd(Ljava/lang/String;J)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "unit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9792
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampAdd(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;J)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final timestampDiff(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "start"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9926
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampDiff(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final timestampDiff(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "start"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9942
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampDiff(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final timestampDiff(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "startFieldName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9958
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampDiff(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final timestampExtract(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "part"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9974
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampExtract(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final timestampExtract(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "part"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9990
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampExtract(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final timestampExtractWithTimezone(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "part"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timezone"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10054
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampExtractWithTimezone(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final timestampExtractWithTimezone(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "part"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timezone"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10011
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampExtractWithTimezone(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final timestampExtractWithTimezone(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "part"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timezone"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10076
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampExtractWithTimezone(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final timestampExtractWithTimezone(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "part"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timezone"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10032
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampExtractWithTimezone(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final timestampSubtract(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "unit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10092
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampSubtract(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final timestampSubtract(Ljava/lang/String;J)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "unit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10108
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampSubtract(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;J)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final timestampToUnixMicros()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 9708
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampToUnixMicros(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final timestampToUnixMillis()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 9734
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampToUnixMillis(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final timestampToUnixSeconds()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 9760
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampToUnixSeconds(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final timestampTruncate(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "granularity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9826
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampTruncate(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final timestampTruncate(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "granularity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9809
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampTruncate(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final timestampTruncateWithTimezone(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "granularity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timezone"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9910
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampTruncateWithTimezone(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final timestampTruncateWithTimezone(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "granularity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timezone"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9868
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampTruncateWithTimezone(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final timestampTruncateWithTimezone(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "granularity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timezone"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9889
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampTruncateWithTimezone(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final timestampTruncateWithTimezone(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "granularity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timezone"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9847
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->timestampTruncateWithTimezone(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final toLower()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 9085
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->toLower(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public abstract toProto$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/UserDataReader;)Lcom/google/firestore/v1/Value;
.end method

.method public final toUpper()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 9097
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->toUpper(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final trim()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 9109
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->trim(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final trimValue(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "valueToTrim"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9141
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->trimValue(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final trimValue(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "valueToTrim"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9125
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->constant(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->trimValue(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final trunc()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 8468
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->trunc(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final truncToPrecision(I)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 8484
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->truncToPrecision(Lcom/google/firebase/firestore/pipeline/Expression;I)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final truncToPrecision(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    const-string v0, "decimalPlace"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8501
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->truncToPrecision(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final type()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 8730
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->type(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final unixMicrosToTimestamp()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 9695
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->unixMicrosToTimestamp(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final unixMillisToTimestamp()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 9721
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->unixMillisToTimestamp(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final unixSecondsToTimestamp()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 9747
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->unixSecondsToTimestamp(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final vectorLength()Lcom/google/firebase/firestore/pipeline/Expression;
    .locals 1

    .line 9682
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->vectorLength(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v0

    return-object v0
.end method
