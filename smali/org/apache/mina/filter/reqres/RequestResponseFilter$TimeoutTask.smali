.class Lorg/apache/mina/filter/reqres/RequestResponseFilter$TimeoutTask;
.super Ljava/lang/Object;
.source "RequestResponseFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/filter/reqres/RequestResponseFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeoutTask"
.end annotation


# instance fields
.field private final filter:Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

.field private final request:Lorg/apache/mina/filter/reqres/Request;

.field private final session:Lorg/apache/mina/core/session/IoSession;

.field final synthetic this$0:Lorg/apache/mina/filter/reqres/RequestResponseFilter;


# direct methods
.method private constructor <init>(Lorg/apache/mina/filter/reqres/RequestResponseFilter;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/filter/reqres/Request;Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .param p2, "filter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p3, "request"    # Lorg/apache/mina/filter/reqres/Request;
    .param p4, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 329
    iput-object p1, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter$TimeoutTask;->this$0:Lorg/apache/mina/filter/reqres/RequestResponseFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    iput-object p2, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter$TimeoutTask;->filter:Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    .line 331
    iput-object p3, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter$TimeoutTask;->request:Lorg/apache/mina/filter/reqres/Request;

    .line 332
    iput-object p4, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter$TimeoutTask;->session:Lorg/apache/mina/core/session/IoSession;

    .line 333
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/mina/filter/reqres/RequestResponseFilter;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/filter/reqres/Request;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/filter/reqres/RequestResponseFilter$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/mina/filter/reqres/RequestResponseFilter;
    .param p2, "x1"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p3, "x2"    # Lorg/apache/mina/filter/reqres/Request;
    .param p4, "x3"    # Lorg/apache/mina/core/session/IoSession;
    .param p5, "x4"    # Lorg/apache/mina/filter/reqres/RequestResponseFilter$1;

    .prologue
    .line 321
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/mina/filter/reqres/RequestResponseFilter$TimeoutTask;-><init>(Lorg/apache/mina/filter/reqres/RequestResponseFilter;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/filter/reqres/Request;Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 336
    iget-object v5, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter$TimeoutTask;->this$0:Lorg/apache/mina/filter/reqres/RequestResponseFilter;

    iget-object v6, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter$TimeoutTask;->session:Lorg/apache/mina/core/session/IoSession;

    # invokes: Lorg/apache/mina/filter/reqres/RequestResponseFilter;->getUnrespondedRequestStore(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Set;
    invoke-static {v5, v6}, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->access$100(Lorg/apache/mina/filter/reqres/RequestResponseFilter;Lorg/apache/mina/core/session/IoSession;)Ljava/util/Set;

    move-result-object v4

    .line 337
    .local v4, "unrespondedRequests":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/mina/filter/reqres/Request;>;"
    if-eqz v4, :cond_0

    .line 338
    monitor-enter v4

    .line 339
    :try_start_0
    iget-object v5, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter$TimeoutTask;->request:Lorg/apache/mina/filter/reqres/Request;

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 340
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    :cond_0
    iget-object v5, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter$TimeoutTask;->this$0:Lorg/apache/mina/filter/reqres/RequestResponseFilter;

    iget-object v6, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter$TimeoutTask;->session:Lorg/apache/mina/core/session/IoSession;

    # invokes: Lorg/apache/mina/filter/reqres/RequestResponseFilter;->getRequestStore(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Map;
    invoke-static {v5, v6}, Lorg/apache/mina/filter/reqres/RequestResponseFilter;->access$200(Lorg/apache/mina/filter/reqres/RequestResponseFilter;Lorg/apache/mina/core/session/IoSession;)Ljava/util/Map;

    move-result-object v2

    .line 344
    .local v2, "requestStore":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Lorg/apache/mina/filter/reqres/Request;>;"
    iget-object v5, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter$TimeoutTask;->request:Lorg/apache/mina/filter/reqres/Request;

    invoke-virtual {v5}, Lorg/apache/mina/filter/reqres/Request;->getId()Ljava/lang/Object;

    move-result-object v1

    .line 346
    .local v1, "requestId":Ljava/lang/Object;
    monitor-enter v2

    .line 347
    :try_start_1
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter$TimeoutTask;->request:Lorg/apache/mina/filter/reqres/Request;

    if-ne v5, v6, :cond_2

    .line 348
    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    const/4 v3, 0x1

    .line 353
    .local v3, "timedOut":Z
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 355
    if-eqz v3, :cond_1

    .line 357
    new-instance v0, Lorg/apache/mina/filter/reqres/RequestTimeoutException;

    iget-object v5, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter$TimeoutTask;->request:Lorg/apache/mina/filter/reqres/Request;

    invoke-direct {v0, v5}, Lorg/apache/mina/filter/reqres/RequestTimeoutException;-><init>(Lorg/apache/mina/filter/reqres/Request;)V

    .line 358
    .local v0, "e":Lorg/apache/mina/filter/reqres/RequestTimeoutException;
    iget-object v5, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter$TimeoutTask;->request:Lorg/apache/mina/filter/reqres/Request;

    invoke-virtual {v5, v0}, Lorg/apache/mina/filter/reqres/Request;->signal(Lorg/apache/mina/filter/reqres/RequestTimeoutException;)V

    .line 359
    iget-object v5, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter$TimeoutTask;->filter:Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    iget-object v6, p0, Lorg/apache/mina/filter/reqres/RequestResponseFilter$TimeoutTask;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v5, v6, v0}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->exceptionCaught(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V

    .line 361
    .end local v0    # "e":Lorg/apache/mina/filter/reqres/RequestTimeoutException;
    :cond_1
    return-void

    .line 340
    .end local v1    # "requestId":Ljava/lang/Object;
    .end local v2    # "requestStore":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Lorg/apache/mina/filter/reqres/Request;>;"
    .end local v3    # "timedOut":Z
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 351
    .restart local v1    # "requestId":Ljava/lang/Object;
    .restart local v2    # "requestStore":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Lorg/apache/mina/filter/reqres/Request;>;"
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "timedOut":Z
    goto :goto_0

    .line 353
    .end local v3    # "timedOut":Z
    :catchall_1
    move-exception v5

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5
.end method
