.class Lorg/apache/log4j/chainsaw/MyTableModel$Processor;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/log4j/chainsaw/MyTableModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Processor"
.end annotation


# instance fields
.field private final this$0:Lorg/apache/log4j/chainsaw/MyTableModel;


# direct methods
.method private constructor <init>(Lorg/apache/log4j/chainsaw/MyTableModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/log4j/chainsaw/MyTableModel$Processor;->this$0:Lorg/apache/log4j/chainsaw/MyTableModel;

    return-void
.end method

.method constructor <init>(Lorg/apache/log4j/chainsaw/MyTableModel;Lorg/apache/log4j/chainsaw/MyTableModel$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/log4j/chainsaw/MyTableModel$Processor;-><init>(Lorg/apache/log4j/chainsaw/MyTableModel;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    :goto_0
    const-wide/16 v3, 0x3e8

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel$Processor;->this$0:Lorg/apache/log4j/chainsaw/MyTableModel;

    invoke-static {v0}, Lorg/apache/log4j/chainsaw/MyTableModel;->access$000(Lorg/apache/log4j/chainsaw/MyTableModel;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_1
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel$Processor;->this$0:Lorg/apache/log4j/chainsaw/MyTableModel;

    invoke-static {v0}, Lorg/apache/log4j/chainsaw/MyTableModel;->access$100(Lorg/apache/log4j/chainsaw/MyTableModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    :try_start_2
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel$Processor;->this$0:Lorg/apache/log4j/chainsaw/MyTableModel;

    invoke-static {v0}, Lorg/apache/log4j/chainsaw/MyTableModel;->access$200(Lorg/apache/log4j/chainsaw/MyTableModel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v4, v1

    move v3, v2

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/chainsaw/EventDetails;

    iget-object v7, p0, Lorg/apache/log4j/chainsaw/MyTableModel$Processor;->this$0:Lorg/apache/log4j/chainsaw/MyTableModel;

    invoke-static {v7}, Lorg/apache/log4j/chainsaw/MyTableModel;->access$300(Lorg/apache/log4j/chainsaw/MyTableModel;)Ljava/util/SortedSet;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/apache/log4j/chainsaw/MyTableModel$Processor;->this$0:Lorg/apache/log4j/chainsaw/MyTableModel;

    invoke-static {v3}, Lorg/apache/log4j/chainsaw/MyTableModel;->access$300(Lorg/apache/log4j/chainsaw/MyTableModel;)Ljava/util/SortedSet;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v3

    if-ne v0, v3, :cond_2

    move v3, v2

    :goto_3
    if-nez v4, :cond_1

    iget-object v4, p0, Lorg/apache/log4j/chainsaw/MyTableModel$Processor;->this$0:Lorg/apache/log4j/chainsaw/MyTableModel;

    invoke-static {v4, v0}, Lorg/apache/log4j/chainsaw/MyTableModel;->access$400(Lorg/apache/log4j/chainsaw/MyTableModel;Lorg/apache/log4j/chainsaw/EventDetails;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    move v0, v2

    :goto_4
    move v4, v0

    goto :goto_2

    :cond_2
    move v3, v1

    goto :goto_3

    :cond_3
    move v0, v1

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel$Processor;->this$0:Lorg/apache/log4j/chainsaw/MyTableModel;

    invoke-static {v0}, Lorg/apache/log4j/chainsaw/MyTableModel;->access$200(Lorg/apache/log4j/chainsaw/MyTableModel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz v4, :cond_5

    iget-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel$Processor;->this$0:Lorg/apache/log4j/chainsaw/MyTableModel;

    invoke-static {v0, v3}, Lorg/apache/log4j/chainsaw/MyTableModel;->access$500(Lorg/apache/log4j/chainsaw/MyTableModel;Z)V

    :cond_5
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
