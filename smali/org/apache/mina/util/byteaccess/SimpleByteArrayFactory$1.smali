.class Lorg/apache/mina/util/byteaccess/SimpleByteArrayFactory$1;
.super Lorg/apache/mina/util/byteaccess/BufferByteArray;
.source "SimpleByteArrayFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/mina/util/byteaccess/SimpleByteArrayFactory;->create(I)Lorg/apache/mina/util/byteaccess/ByteArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/mina/util/byteaccess/SimpleByteArrayFactory;


# direct methods
.method constructor <init>(Lorg/apache/mina/util/byteaccess/SimpleByteArrayFactory;Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 0
    .param p2, "x0"    # Lorg/apache/mina/core/buffer/IoBuffer;

    .prologue
    .line 57
    iput-object p1, p0, Lorg/apache/mina/util/byteaccess/SimpleByteArrayFactory$1;->this$0:Lorg/apache/mina/util/byteaccess/SimpleByteArrayFactory;

    invoke-direct {p0, p2}, Lorg/apache/mina/util/byteaccess/BufferByteArray;-><init>(Lorg/apache/mina/core/buffer/IoBuffer;)V

    return-void
.end method


# virtual methods
.method public free()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method
