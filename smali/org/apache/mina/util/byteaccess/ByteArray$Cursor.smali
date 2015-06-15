.class public interface abstract Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;
.super Ljava/lang/Object;
.source "ByteArray.java"

# interfaces
.implements Lorg/apache/mina/util/byteaccess/IoRelativeReader;
.implements Lorg/apache/mina/util/byteaccess/IoRelativeWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/util/byteaccess/ByteArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Cursor"
.end annotation


# virtual methods
.method public abstract get()B
.end method

.method public abstract get(Lorg/apache/mina/core/buffer/IoBuffer;)V
.end method

.method public abstract getIndex()I
.end method

.method public abstract getInt()I
.end method

.method public abstract getRemaining()I
.end method

.method public abstract hasRemaining()Z
.end method

.method public abstract setIndex(I)V
.end method
