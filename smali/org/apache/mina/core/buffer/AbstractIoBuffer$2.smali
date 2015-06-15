.class Lorg/apache/mina/core/buffer/AbstractIoBuffer$2;
.super Ljava/io/OutputStream;
.source "AbstractIoBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/mina/core/buffer/AbstractIoBuffer;->asOutputStream()Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/mina/core/buffer/AbstractIoBuffer;


# direct methods
.method constructor <init>(Lorg/apache/mina/core/buffer/AbstractIoBuffer;)V
    .locals 0

    .prologue
    .line 1553
    iput-object p1, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer$2;->this$0:Lorg/apache/mina/core/buffer/AbstractIoBuffer;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 2
    .param p1, "b"    # I

    .prologue
    .line 1561
    iget-object v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer$2;->this$0:Lorg/apache/mina/core/buffer/AbstractIoBuffer;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1562
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 1556
    iget-object v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer$2;->this$0:Lorg/apache/mina/core/buffer/AbstractIoBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put([BII)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1557
    return-void
.end method
