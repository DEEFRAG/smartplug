.class Lorg/apache/mina/core/session/AbstractIoSession$2;
.super Ljava/lang/Object;
.source "AbstractIoSession.java"

# interfaces
.implements Lorg/apache/mina/core/future/IoFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/mina/core/session/AbstractIoSession;->write(Ljava/lang/Object;Ljava/net/SocketAddress;)Lorg/apache/mina/core/future/WriteFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/mina/core/future/IoFutureListener",
        "<",
        "Lorg/apache/mina/core/future/WriteFuture;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/mina/core/session/AbstractIoSession;

.field final synthetic val$finalChannel:Ljava/nio/channels/FileChannel;


# direct methods
.method constructor <init>(Lorg/apache/mina/core/session/AbstractIoSession;Ljava/nio/channels/FileChannel;)V
    .locals 0

    .prologue
    .line 503
    iput-object p1, p0, Lorg/apache/mina/core/session/AbstractIoSession$2;->this$0:Lorg/apache/mina/core/session/AbstractIoSession;

    iput-object p2, p0, Lorg/apache/mina/core/session/AbstractIoSession$2;->val$finalChannel:Ljava/nio/channels/FileChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic operationComplete(Lorg/apache/mina/core/future/IoFuture;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/mina/core/future/IoFuture;

    .prologue
    .line 503
    check-cast p1, Lorg/apache/mina/core/future/WriteFuture;

    .end local p1    # "x0":Lorg/apache/mina/core/future/IoFuture;
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/session/AbstractIoSession$2;->operationComplete(Lorg/apache/mina/core/future/WriteFuture;)V

    return-void
.end method

.method public operationComplete(Lorg/apache/mina/core/future/WriteFuture;)V
    .locals 2
    .param p1, "future"    # Lorg/apache/mina/core/future/WriteFuture;

    .prologue
    .line 506
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/core/session/AbstractIoSession$2;->val$finalChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    :goto_0
    return-void

    .line 507
    :catch_0
    move-exception v0

    .line 508
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
