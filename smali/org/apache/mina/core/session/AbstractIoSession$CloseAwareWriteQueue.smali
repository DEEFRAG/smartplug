.class Lorg/apache/mina/core/session/AbstractIoSession$CloseAwareWriteQueue;
.super Ljava/lang/Object;
.source "AbstractIoSession.java"

# interfaces
.implements Lorg/apache/mina/core/write/WriteRequestQueue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/core/session/AbstractIoSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloseAwareWriteQueue"
.end annotation


# instance fields
.field private final queue:Lorg/apache/mina/core/write/WriteRequestQueue;

.field final synthetic this$0:Lorg/apache/mina/core/session/AbstractIoSession;


# direct methods
.method public constructor <init>(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/write/WriteRequestQueue;)V
    .locals 0
    .param p2, "queue"    # Lorg/apache/mina/core/write/WriteRequestQueue;

    .prologue
    .line 1338
    iput-object p1, p0, Lorg/apache/mina/core/session/AbstractIoSession$CloseAwareWriteQueue;->this$0:Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1339
    iput-object p2, p0, Lorg/apache/mina/core/session/AbstractIoSession$CloseAwareWriteQueue;->queue:Lorg/apache/mina/core/write/WriteRequestQueue;

    .line 1340
    return-void
.end method


# virtual methods
.method public clear(Lorg/apache/mina/core/session/IoSession;)V
    .locals 1
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 1375
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession$CloseAwareWriteQueue;->queue:Lorg/apache/mina/core/write/WriteRequestQueue;

    invoke-interface {v0, p1}, Lorg/apache/mina/core/write/WriteRequestQueue;->clear(Lorg/apache/mina/core/session/IoSession;)V

    .line 1376
    return-void
.end method

.method public dispose(Lorg/apache/mina/core/session/IoSession;)V
    .locals 1
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 1382
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession$CloseAwareWriteQueue;->queue:Lorg/apache/mina/core/write/WriteRequestQueue;

    invoke-interface {v0, p1}, Lorg/apache/mina/core/write/WriteRequestQueue;->dispose(Lorg/apache/mina/core/session/IoSession;)V

    .line 1383
    return-void
.end method

.method public isEmpty(Lorg/apache/mina/core/session/IoSession;)Z
    .locals 1
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 1368
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession$CloseAwareWriteQueue;->queue:Lorg/apache/mina/core/write/WriteRequestQueue;

    invoke-interface {v0, p1}, Lorg/apache/mina/core/write/WriteRequestQueue;->isEmpty(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v0

    return v0
.end method

.method public offer(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 1
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "e"    # Lorg/apache/mina/core/write/WriteRequest;

    .prologue
    .line 1361
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession$CloseAwareWriteQueue;->queue:Lorg/apache/mina/core/write/WriteRequestQueue;

    invoke-interface {v0, p1, p2}, Lorg/apache/mina/core/write/WriteRequestQueue;->offer(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 1362
    return-void
.end method

.method public declared-synchronized poll(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/write/WriteRequest;
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 1346
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/core/session/AbstractIoSession$CloseAwareWriteQueue;->queue:Lorg/apache/mina/core/write/WriteRequestQueue;

    invoke-interface {v1, p1}, Lorg/apache/mina/core/write/WriteRequestQueue;->poll(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/write/WriteRequest;

    move-result-object v0

    .line 1348
    .local v0, "answer":Lorg/apache/mina/core/write/WriteRequest;
    # getter for: Lorg/apache/mina/core/session/AbstractIoSession;->CLOSE_REQUEST:Lorg/apache/mina/core/write/WriteRequest;
    invoke-static {}, Lorg/apache/mina/core/session/AbstractIoSession;->access$600()Lorg/apache/mina/core/write/WriteRequest;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1349
    iget-object v1, p0, Lorg/apache/mina/core/session/AbstractIoSession$CloseAwareWriteQueue;->this$0:Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-virtual {v1}, Lorg/apache/mina/core/session/AbstractIoSession;->close()Lorg/apache/mina/core/future/CloseFuture;

    .line 1350
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/session/AbstractIoSession$CloseAwareWriteQueue;->dispose(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1351
    const/4 v0, 0x0

    .line 1354
    :cond_0
    monitor-exit p0

    return-object v0

    .line 1346
    .end local v0    # "answer":Lorg/apache/mina/core/write/WriteRequest;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1389
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession$CloseAwareWriteQueue;->queue:Lorg/apache/mina/core/write/WriteRequestQueue;

    invoke-interface {v0}, Lorg/apache/mina/core/write/WriteRequestQueue;->size()I

    move-result v0

    return v0
.end method
