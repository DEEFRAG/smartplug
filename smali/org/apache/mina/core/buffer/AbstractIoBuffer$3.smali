.class Lorg/apache/mina/core/buffer/AbstractIoBuffer$3;
.super Ljava/io/ObjectInputStream;
.source "AbstractIoBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getObject(Ljava/lang/ClassLoader;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/mina/core/buffer/AbstractIoBuffer;

.field final synthetic val$classLoader:Ljava/lang/ClassLoader;


# direct methods
.method constructor <init>(Lorg/apache/mina/core/buffer/AbstractIoBuffer;Ljava/io/InputStream;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p2, "x0"    # Ljava/io/InputStream;

    .prologue
    .line 2184
    iput-object p1, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer$3;->this$0:Lorg/apache/mina/core/buffer/AbstractIoBuffer;

    iput-object p3, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer$3;->val$classLoader:Ljava/lang/ClassLoader;

    invoke-direct {p0, p2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method protected readClassDescriptor()Ljava/io/ObjectStreamClass;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 2188
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer$3;->read()I

    move-result v2

    .line 2189
    .local v2, "type":I
    if-gez v2, :cond_0

    .line 2190
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    .line 2192
    :cond_0
    packed-switch v2, :pswitch_data_0

    .line 2201
    new-instance v3, Ljava/io/StreamCorruptedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected class descriptor type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2194
    :pswitch_0
    invoke-super {p0}, Ljava/io/ObjectInputStream;->readClassDescriptor()Ljava/io/ObjectStreamClass;

    move-result-object v3

    .line 2199
    :goto_0
    return-object v3

    .line 2196
    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer$3;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 2197
    .local v0, "className":Ljava/lang/String;
    const/4 v3, 0x1

    iget-object v4, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer$3;->val$classLoader:Ljava/lang/ClassLoader;

    invoke-static {v0, v3, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 2199
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v1}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v3

    goto :goto_0

    .line 2192
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;
    .locals 4
    .param p1, "desc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectStreamClass;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 2209
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2211
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer$3;->val$classLoader:Ljava/lang/ClassLoader;

    invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2213
    :goto_0
    return-object v2

    .line 2212
    :catch_0
    move-exception v0

    .line 2213
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    invoke-super {p0, p1}, Ljava/io/ObjectInputStream;->resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;

    move-result-object v2

    goto :goto_0
.end method
