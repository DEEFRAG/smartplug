.class public interface abstract Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;
.super Ljava/lang/Object;
.source "CompositeByteArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/util/byteaccess/CompositeByteArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CursorListener"
.end annotation


# virtual methods
.method public abstract enteredFirstComponent(ILorg/apache/mina/util/byteaccess/ByteArray;)V
.end method

.method public abstract enteredLastComponent(ILorg/apache/mina/util/byteaccess/ByteArray;)V
.end method

.method public abstract enteredNextComponent(ILorg/apache/mina/util/byteaccess/ByteArray;)V
.end method

.method public abstract enteredPreviousComponent(ILorg/apache/mina/util/byteaccess/ByteArray;)V
.end method
