.class public Lorg/apache/mina/core/service/SimpleIoProcessorPool;
.super Ljava/lang/Object;
.source "SimpleIoProcessorPool.java"

# interfaces
.implements Lorg/apache/mina/core/service/IoProcessor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lorg/apache/mina/core/session/AbstractIoSession;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/mina/core/service/IoProcessor",
        "<TS;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_SIZE:I

.field private static final LOGGER:Lorg/slf4j/Logger;

.field private static final PROCESSOR:Lorg/apache/mina/core/session/AttributeKey;


# instance fields
.field private final createdExecutor:Z

.field private final disposalLock:Ljava/lang/Object;

.field private volatile disposed:Z

.field private volatile disposing:Z

.field private final executor:Ljava/util/concurrent/Executor;

.field private final pool:[Lorg/apache/mina/core/service/IoProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/apache/mina/core/service/IoProcessor",
            "<TS;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 80
    const-class v0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->LOGGER:Lorg/slf4j/Logger;

    .line 83
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->DEFAULT_SIZE:I

    .line 86
    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    const-class v1, Lorg/apache/mina/core/service/SimpleIoProcessorPool;

    const-string v2, "processor"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->PROCESSOR:Lorg/apache/mina/core/session/AttributeKey;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/mina/core/service/IoProcessor",
            "<TS;>;>;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "this":Lorg/apache/mina/core/service/SimpleIoProcessorPool;, "Lorg/apache/mina/core/service/SimpleIoProcessorPool<TS;>;"
    .local p1, "processorType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/core/service/IoProcessor<TS;>;>;"
    const/4 v0, 0x0

    sget v1, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->DEFAULT_SIZE:I

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/mina/core/service/SimpleIoProcessorPool;-><init>(Ljava/lang/Class;Ljava/util/concurrent/Executor;I)V

    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 1
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/mina/core/service/IoProcessor",
            "<TS;>;>;I)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "this":Lorg/apache/mina/core/service/SimpleIoProcessorPool;, "Lorg/apache/mina/core/service/SimpleIoProcessorPool<TS;>;"
    .local p1, "processorType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/core/service/IoProcessor<TS;>;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/mina/core/service/SimpleIoProcessorPool;-><init>(Ljava/lang/Class;Ljava/util/concurrent/Executor;I)V

    .line 125
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/mina/core/service/IoProcessor",
            "<TS;>;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 134
    .local p0, "this":Lorg/apache/mina/core/service/SimpleIoProcessorPool;, "Lorg/apache/mina/core/service/SimpleIoProcessorPool<TS;>;"
    .local p1, "processorType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/core/service/IoProcessor<TS;>;>;"
    sget v0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->DEFAULT_SIZE:I

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/mina/core/service/SimpleIoProcessorPool;-><init>(Ljava/lang/Class;Ljava/util/concurrent/Executor;I)V

    .line 135
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/util/concurrent/Executor;I)V
    .locals 15
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/mina/core/service/IoProcessor",
            "<TS;>;>;",
            "Ljava/util/concurrent/Executor;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "this":Lorg/apache/mina/core/service/SimpleIoProcessorPool;, "Lorg/apache/mina/core/service/SimpleIoProcessorPool<TS;>;"
    .local p1, "processorType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/core/service/IoProcessor<TS;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v10, Ljava/lang/Object;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    iput-object v10, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->disposalLock:Ljava/lang/Object;

    .line 147
    if-nez p1, :cond_0

    .line 148
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "processorType"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 151
    :cond_0
    if-gtz p3, :cond_1

    .line 152
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "size: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " (expected: positive integer)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 157
    :cond_1
    if-nez p2, :cond_3

    const/4 v10, 0x1

    :goto_0
    iput-boolean v10, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->createdExecutor:Z

    .line 159
    iget-boolean v10, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->createdExecutor:Z

    if-eqz v10, :cond_4

    .line 160
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v10

    iput-object v10, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->executor:Ljava/util/concurrent/Executor;

    .line 162
    iget-object v10, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->executor:Ljava/util/concurrent/Executor;

    check-cast v10, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v11, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;

    invoke-direct {v11}, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;-><init>()V

    invoke-virtual {v10, v11}, Ljava/util/concurrent/ThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 167
    :goto_1
    move/from16 v0, p3

    new-array v10, v0, [Lorg/apache/mina/core/service/IoProcessor;

    iput-object v10, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->pool:[Lorg/apache/mina/core/service/IoProcessor;

    .line 169
    const/4 v8, 0x0

    .line 170
    .local v8, "success":Z
    const/4 v6, 0x0

    .line 171
    .local v6, "processorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/apache/mina/core/service/IoProcessor<TS;>;>;"
    const/4 v9, 0x1

    .line 177
    .local v9, "usesExecutorArg":Z
    const/4 v10, 0x1

    :try_start_0
    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/util/concurrent/ExecutorService;

    aput-object v12, v10, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    .line 178
    iget-object v11, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->pool:[Lorg/apache/mina/core/service/IoProcessor;

    const/4 v12, 0x0

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->executor:Ljava/util/concurrent/Executor;

    aput-object v14, v10, v13

    invoke-virtual {v6, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/mina/core/service/IoProcessor;

    aput-object v10, v11, v12
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :goto_2
    if-nez v6, :cond_5

    .line 206
    :try_start_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " must have a public constructor with one "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-class v11, Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " parameter, a public constructor with one "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-class v11, Ljava/util/concurrent/Executor;

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " parameter or a public default constructor."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 212
    .local v5, "msg":Ljava/lang/String;
    sget-object v10, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v10, v5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 213
    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-direct {v10, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    .end local v5    # "msg":Ljava/lang/String;
    :catchall_0
    move-exception v10

    if-nez v8, :cond_2

    .line 232
    invoke-virtual {p0}, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->dispose()V

    :cond_2
    throw v10

    .line 157
    .end local v6    # "processorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/apache/mina/core/service/IoProcessor<TS;>;>;"
    .end local v8    # "success":Z
    .end local v9    # "usesExecutorArg":Z
    :cond_3
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 164
    :cond_4
    move-object/from16 v0, p2

    iput-object v0, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->executor:Ljava/util/concurrent/Executor;

    goto :goto_1

    .line 179
    .restart local v6    # "processorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/apache/mina/core/service/IoProcessor<TS;>;>;"
    .restart local v8    # "success":Z
    .restart local v9    # "usesExecutorArg":Z
    :catch_0
    move-exception v2

    .line 182
    .local v2, "e1":Ljava/lang/NoSuchMethodException;
    const/4 v10, 0x1

    :try_start_2
    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/util/concurrent/Executor;

    aput-object v12, v10, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    .line 183
    iget-object v11, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->pool:[Lorg/apache/mina/core/service/IoProcessor;

    const/4 v12, 0x0

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->executor:Ljava/util/concurrent/Executor;

    aput-object v14, v10, v13

    invoke-virtual {v6, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/mina/core/service/IoProcessor;

    aput-object v10, v11, v12
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 184
    :catch_1
    move-exception v3

    .line 187
    .local v3, "e2":Ljava/lang/NoSuchMethodException;
    const/4 v10, 0x0

    :try_start_3
    new-array v10, v10, [Ljava/lang/Class;

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    .line 188
    const/4 v9, 0x0

    .line 189
    iget-object v11, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->pool:[Lorg/apache/mina/core/service/IoProcessor;

    const/4 v12, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v6, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/mina/core/service/IoProcessor;

    aput-object v10, v11, v12
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 190
    :catch_2
    move-exception v10

    goto/16 :goto_2

    .line 195
    .end local v2    # "e1":Ljava/lang/NoSuchMethodException;
    .end local v3    # "e2":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v7

    .line 196
    .local v7, "re":Ljava/lang/RuntimeException;
    :try_start_4
    sget-object v10, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->LOGGER:Lorg/slf4j/Logger;

    const-string v11, "Cannot create an IoProcessor :{}"

    invoke-virtual {v7}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 197
    throw v7

    .line 198
    .end local v7    # "re":Ljava/lang/RuntimeException;
    :catch_4
    move-exception v1

    .line 199
    .local v1, "e":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to create a new instance of "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 200
    .restart local v5    # "msg":Ljava/lang/String;
    sget-object v10, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v10, v5, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 201
    new-instance v10, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v10, v5, v1}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 217
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "msg":Ljava/lang/String;
    :cond_5
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_3
    iget-object v10, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->pool:[Lorg/apache/mina/core/service/IoProcessor;

    array-length v10, v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ge v4, v10, :cond_7

    .line 219
    if-eqz v9, :cond_6

    .line 220
    :try_start_5
    iget-object v11, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->pool:[Lorg/apache/mina/core/service/IoProcessor;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->executor:Ljava/util/concurrent/Executor;

    aput-object v13, v10, v12

    invoke-virtual {v6, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/mina/core/service/IoProcessor;

    aput-object v10, v11, v4

    .line 217
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 222
    :cond_6
    iget-object v11, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->pool:[Lorg/apache/mina/core/service/IoProcessor;

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v6, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/mina/core/service/IoProcessor;

    aput-object v10, v11, v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 224
    :catch_5
    move-exception v10

    goto :goto_4

    .line 229
    :cond_7
    const/4 v8, 0x1

    .line 231
    if-nez v8, :cond_8

    .line 232
    invoke-virtual {p0}, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->dispose()V

    .line 235
    :cond_8
    return-void
.end method

.method private getProcessor(Lorg/apache/mina/core/session/AbstractIoSession;)Lorg/apache/mina/core/service/IoProcessor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Lorg/apache/mina/core/service/IoProcessor",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 324
    .local p0, "this":Lorg/apache/mina/core/service/SimpleIoProcessorPool;, "Lorg/apache/mina/core/service/SimpleIoProcessorPool<TS;>;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    sget-object v1, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->PROCESSOR:Lorg/apache/mina/core/session/AttributeKey;

    invoke-virtual {p1, v1}, Lorg/apache/mina/core/session/AbstractIoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/service/IoProcessor;

    .line 326
    .local v0, "processor":Lorg/apache/mina/core/service/IoProcessor;, "Lorg/apache/mina/core/service/IoProcessor<TS;>;"
    if-nez v0, :cond_3

    .line 327
    iget-boolean v1, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->disposed:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->disposing:Z

    if-eqz v1, :cond_1

    .line 328
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "A disposed processor cannot be accessed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 331
    :cond_1
    iget-object v1, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->pool:[Lorg/apache/mina/core/service/IoProcessor;

    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getId()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget-object v3, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->pool:[Lorg/apache/mina/core/service/IoProcessor;

    array-length v3, v3

    rem-int/2addr v2, v3

    aget-object v0, v1, v2

    .line 333
    if-nez v0, :cond_2

    .line 334
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "A disposed processor cannot be accessed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 337
    :cond_2
    sget-object v1, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->PROCESSOR:Lorg/apache/mina/core/session/AttributeKey;

    invoke-virtual {p1, v1, v0}, Lorg/apache/mina/core/session/AbstractIoSession;->setAttributeIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    :cond_3
    return-object v0
.end method


# virtual methods
.method public final add(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .prologue
    .line 241
    .local p0, "this":Lorg/apache/mina/core/service/SimpleIoProcessorPool;, "Lorg/apache/mina/core/service/SimpleIoProcessorPool<TS;>;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    invoke-direct {p0, p1}, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->getProcessor(Lorg/apache/mina/core/session/AbstractIoSession;)Lorg/apache/mina/core/service/IoProcessor;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/mina/core/service/IoProcessor;->add(Lorg/apache/mina/core/session/IoSession;)V

    .line 242
    return-void
.end method

.method public bridge synthetic add(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 78
    .local p0, "this":Lorg/apache/mina/core/service/SimpleIoProcessorPool;, "Lorg/apache/mina/core/service/SimpleIoProcessorPool<TS;>;"
    check-cast p1, Lorg/apache/mina/core/session/AbstractIoSession;

    .end local p1    # "x0":Lorg/apache/mina/core/session/IoSession;
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->add(Lorg/apache/mina/core/session/AbstractIoSession;)V

    return-void
.end method

.method public final dispose()V
    .locals 9

    .prologue
    .line 283
    .local p0, "this":Lorg/apache/mina/core/service/SimpleIoProcessorPool;, "Lorg/apache/mina/core/service/SimpleIoProcessorPool<TS;>;"
    iget-boolean v5, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->disposed:Z

    if-eqz v5, :cond_0

    .line 316
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-object v6, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->disposalLock:Ljava/lang/Object;

    monitor-enter v6

    .line 288
    :try_start_0
    iget-boolean v5, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->disposing:Z

    if-nez v5, :cond_4

    .line 289
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->disposing:Z

    .line 291
    iget-object v0, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->pool:[Lorg/apache/mina/core/service/IoProcessor;

    .local v0, "arr$":[Lorg/apache/mina/core/service/IoProcessor;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v3, v0, v2

    .line 292
    .local v3, "ioProcessor":Lorg/apache/mina/core/service/IoProcessor;, "Lorg/apache/mina/core/service/IoProcessor<TS;>;"
    if-nez v3, :cond_2

    .line 291
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 297
    :cond_2
    invoke-interface {v3}, Lorg/apache/mina/core/service/IoProcessor;->isDisposing()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_1

    .line 302
    :try_start_1
    invoke-interface {v3}, Lorg/apache/mina/core/service/IoProcessor;->dispose()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 303
    :catch_0
    move-exception v1

    .line 304
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v5, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->LOGGER:Lorg/slf4j/Logger;

    const-string v7, "Failed to dispose the {} IoProcessor."

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 315
    .end local v0    # "arr$":[Lorg/apache/mina/core/service/IoProcessor;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "i$":I
    .end local v3    # "ioProcessor":Lorg/apache/mina/core/service/IoProcessor;, "Lorg/apache/mina/core/service/IoProcessor<TS;>;"
    .end local v4    # "len$":I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 308
    .restart local v0    # "arr$":[Lorg/apache/mina/core/service/IoProcessor;
    .restart local v2    # "i$":I
    .restart local v4    # "len$":I
    :cond_3
    :try_start_3
    iget-boolean v5, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->createdExecutor:Z

    if-eqz v5, :cond_4

    .line 309
    iget-object v5, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->executor:Ljava/util/concurrent/Executor;

    check-cast v5, Ljava/util/concurrent/ExecutorService;

    invoke-interface {v5}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 313
    .end local v0    # "arr$":[Lorg/apache/mina/core/service/IoProcessor;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    :cond_4
    iget-object v5, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->pool:[Lorg/apache/mina/core/service/IoProcessor;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 314
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->disposed:Z

    .line 315
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public final flush(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .prologue
    .line 248
    .local p0, "this":Lorg/apache/mina/core/service/SimpleIoProcessorPool;, "Lorg/apache/mina/core/service/SimpleIoProcessorPool<TS;>;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    invoke-direct {p0, p1}, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->getProcessor(Lorg/apache/mina/core/session/AbstractIoSession;)Lorg/apache/mina/core/service/IoProcessor;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/mina/core/service/IoProcessor;->flush(Lorg/apache/mina/core/session/IoSession;)V

    .line 249
    return-void
.end method

.method public bridge synthetic flush(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 78
    .local p0, "this":Lorg/apache/mina/core/service/SimpleIoProcessorPool;, "Lorg/apache/mina/core/service/SimpleIoProcessorPool<TS;>;"
    check-cast p1, Lorg/apache/mina/core/session/AbstractIoSession;

    .end local p1    # "x0":Lorg/apache/mina/core/session/IoSession;
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->flush(Lorg/apache/mina/core/session/AbstractIoSession;)V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .prologue
    .line 269
    .local p0, "this":Lorg/apache/mina/core/service/SimpleIoProcessorPool;, "Lorg/apache/mina/core/service/SimpleIoProcessorPool<TS;>;"
    iget-boolean v0, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->disposed:Z

    return v0
.end method

.method public isDisposing()Z
    .locals 1

    .prologue
    .line 276
    .local p0, "this":Lorg/apache/mina/core/service/SimpleIoProcessorPool;, "Lorg/apache/mina/core/service/SimpleIoProcessorPool<TS;>;"
    iget-boolean v0, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->disposing:Z

    return v0
.end method

.method public final remove(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .prologue
    .line 255
    .local p0, "this":Lorg/apache/mina/core/service/SimpleIoProcessorPool;, "Lorg/apache/mina/core/service/SimpleIoProcessorPool<TS;>;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    invoke-direct {p0, p1}, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->getProcessor(Lorg/apache/mina/core/session/AbstractIoSession;)Lorg/apache/mina/core/service/IoProcessor;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/mina/core/service/IoProcessor;->remove(Lorg/apache/mina/core/session/IoSession;)V

    .line 256
    return-void
.end method

.method public bridge synthetic remove(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 78
    .local p0, "this":Lorg/apache/mina/core/service/SimpleIoProcessorPool;, "Lorg/apache/mina/core/service/SimpleIoProcessorPool<TS;>;"
    check-cast p1, Lorg/apache/mina/core/session/AbstractIoSession;

    .end local p1    # "x0":Lorg/apache/mina/core/session/IoSession;
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->remove(Lorg/apache/mina/core/session/AbstractIoSession;)V

    return-void
.end method

.method public final updateTrafficControl(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .prologue
    .line 262
    .local p0, "this":Lorg/apache/mina/core/service/SimpleIoProcessorPool;, "Lorg/apache/mina/core/service/SimpleIoProcessorPool<TS;>;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    invoke-direct {p0, p1}, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->getProcessor(Lorg/apache/mina/core/session/AbstractIoSession;)Lorg/apache/mina/core/service/IoProcessor;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/mina/core/service/IoProcessor;->updateTrafficControl(Lorg/apache/mina/core/session/IoSession;)V

    .line 263
    return-void
.end method

.method public bridge synthetic updateTrafficControl(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 78
    .local p0, "this":Lorg/apache/mina/core/service/SimpleIoProcessorPool;, "Lorg/apache/mina/core/service/SimpleIoProcessorPool<TS;>;"
    check-cast p1, Lorg/apache/mina/core/session/AbstractIoSession;

    .end local p1    # "x0":Lorg/apache/mina/core/session/IoSession;
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->updateTrafficControl(Lorg/apache/mina/core/session/AbstractIoSession;)V

    return-void
.end method
