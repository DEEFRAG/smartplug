.class public interface abstract Lorg/apache/mina/util/byteaccess/ByteArray;
.super Ljava/lang/Object;
.source "ByteArray.java"

# interfaces
.implements Lorg/apache/mina/util/byteaccess/IoAbsoluteReader;
.implements Lorg/apache/mina/util/byteaccess/IoAbsoluteWriter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;
    }
.end annotation


# virtual methods
.method public abstract cursor()Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;
.end method

.method public abstract cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract first()I
.end method

.method public abstract free()V
.end method

.method public abstract get(I)B
.end method

.method public abstract get(ILorg/apache/mina/core/buffer/IoBuffer;)V
.end method

.method public abstract getInt(I)I
.end method

.method public abstract getIoBuffers()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/mina/core/buffer/IoBuffer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSingleIoBuffer()Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public abstract last()I
.end method

.method public abstract order()Ljava/nio/ByteOrder;
.end method

.method public abstract order(Ljava/nio/ByteOrder;)V
.end method
