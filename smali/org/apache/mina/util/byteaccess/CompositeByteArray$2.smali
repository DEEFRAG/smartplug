.class Lorg/apache/mina/util/byteaccess/CompositeByteArray$2;
.super Lorg/apache/mina/util/byteaccess/BufferByteArray;
.source "CompositeByteArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/mina/util/byteaccess/CompositeByteArray;->removeTo(I)Lorg/apache/mina/util/byteaccess/ByteArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

.field final synthetic val$componentFinal:Lorg/apache/mina/util/byteaccess/ByteArray;


# direct methods
.method constructor <init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/util/byteaccess/ByteArray;)V
    .locals 0
    .param p2, "x0"    # Lorg/apache/mina/core/buffer/IoBuffer;

    .prologue
    .line 207
    iput-object p1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$2;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    iput-object p3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$2;->val$componentFinal:Lorg/apache/mina/util/byteaccess/ByteArray;

    invoke-direct {p0, p2}, Lorg/apache/mina/util/byteaccess/BufferByteArray;-><init>(Lorg/apache/mina/core/buffer/IoBuffer;)V

    return-void
.end method


# virtual methods
.method public free()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$2;->val$componentFinal:Lorg/apache/mina/util/byteaccess/ByteArray;

    invoke-interface {v0}, Lorg/apache/mina/util/byteaccess/ByteArray;->free()V

    .line 211
    return-void
.end method
