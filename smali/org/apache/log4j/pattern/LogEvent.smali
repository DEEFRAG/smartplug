.class public Lorg/apache/log4j/pattern/LogEvent;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final PARAM_ARRAY:[Ljava/lang/Integer;

.field static final TO_LEVEL:Ljava/lang/String; = "toLevel"

.field static final TO_LEVEL_PARAMS:[Ljava/lang/Class;

.field static class$org$apache$log4j$Level:Ljava/lang/Class; = null

.field static final methodCache:Ljava/util/Hashtable;

.field static final serialVersionUID:J = -0xc0d46dc8bf44ac1L

.field private static startTime:J


# instance fields
.field public final categoryName:Ljava/lang/String;

.field public final transient fqnOfCategoryClass:Ljava/lang/String;

.field public transient level:Lorg/apache/log4j/Priority;

.field private locationInfo:Lorg/apache/log4j/spi/LocationInfo;

.field private transient logger:Lorg/apache/log4j/Category;

.field private mdcCopy:Ljava/util/Hashtable;

.field private mdcCopyLookupRequired:Z

.field private transient message:Ljava/lang/Object;

.field private ndc:Ljava/lang/String;

.field private ndcLookupRequired:Z

.field private renderedMessage:Ljava/lang/String;

.field private threadName:Ljava/lang/String;

.field private throwableInfo:Lorg/apache/log4j/spi/ThrowableInformation;

.field public final timeStamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lorg/apache/log4j/pattern/LogEvent;->startTime:J

    new-array v0, v2, [Ljava/lang/Integer;

    sput-object v0, Lorg/apache/log4j/pattern/LogEvent;->PARAM_ARRAY:[Ljava/lang/Integer;

    new-array v0, v2, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/log4j/pattern/LogEvent;->TO_LEVEL_PARAMS:[Ljava/lang/Class;

    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v0, Lorg/apache/log4j/pattern/LogEvent;->methodCache:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/log4j/Category;JLorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lorg/apache/log4j/pattern/LogEvent;->ndcLookupRequired:Z

    iput-boolean v0, p0, Lorg/apache/log4j/pattern/LogEvent;->mdcCopyLookupRequired:Z

    iput-object p1, p0, Lorg/apache/log4j/pattern/LogEvent;->fqnOfCategoryClass:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/log4j/pattern/LogEvent;->logger:Lorg/apache/log4j/Category;

    invoke-virtual {p2}, Lorg/apache/log4j/Category;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->categoryName:Ljava/lang/String;

    iput-object p5, p0, Lorg/apache/log4j/pattern/LogEvent;->level:Lorg/apache/log4j/Priority;

    iput-object p6, p0, Lorg/apache/log4j/pattern/LogEvent;->message:Ljava/lang/Object;

    if-eqz p7, :cond_0

    new-instance v0, Lorg/apache/log4j/spi/ThrowableInformation;

    invoke-direct {v0, p7}, Lorg/apache/log4j/spi/ThrowableInformation;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->throwableInfo:Lorg/apache/log4j/spi/ThrowableInformation;

    :cond_0
    iput-wide p3, p0, Lorg/apache/log4j/pattern/LogEvent;->timeStamp:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/log4j/Category;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lorg/apache/log4j/pattern/LogEvent;->ndcLookupRequired:Z

    iput-boolean v0, p0, Lorg/apache/log4j/pattern/LogEvent;->mdcCopyLookupRequired:Z

    iput-object p1, p0, Lorg/apache/log4j/pattern/LogEvent;->fqnOfCategoryClass:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/log4j/pattern/LogEvent;->logger:Lorg/apache/log4j/Category;

    invoke-virtual {p2}, Lorg/apache/log4j/Category;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->categoryName:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/log4j/pattern/LogEvent;->level:Lorg/apache/log4j/Priority;

    iput-object p4, p0, Lorg/apache/log4j/pattern/LogEvent;->message:Ljava/lang/Object;

    if-eqz p5, :cond_0

    new-instance v0, Lorg/apache/log4j/spi/ThrowableInformation;

    invoke-direct {v0, p5}, Lorg/apache/log4j/spi/ThrowableInformation;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->throwableInfo:Lorg/apache/log4j/spi/ThrowableInformation;

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/log4j/pattern/LogEvent;->timeStamp:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/log4j/Logger;JLorg/apache/log4j/Level;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/log4j/spi/ThrowableInformation;Ljava/lang/String;Lorg/apache/log4j/spi/LocationInfo;Ljava/util/Map;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lorg/apache/log4j/pattern/LogEvent;->ndcLookupRequired:Z

    iput-boolean v0, p0, Lorg/apache/log4j/pattern/LogEvent;->mdcCopyLookupRequired:Z

    iput-object p1, p0, Lorg/apache/log4j/pattern/LogEvent;->fqnOfCategoryClass:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/log4j/pattern/LogEvent;->logger:Lorg/apache/log4j/Category;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lorg/apache/log4j/Category;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->categoryName:Ljava/lang/String;

    :goto_0
    iput-object p5, p0, Lorg/apache/log4j/pattern/LogEvent;->level:Lorg/apache/log4j/Priority;

    iput-object p6, p0, Lorg/apache/log4j/pattern/LogEvent;->message:Ljava/lang/Object;

    if-eqz p8, :cond_0

    iput-object p8, p0, Lorg/apache/log4j/pattern/LogEvent;->throwableInfo:Lorg/apache/log4j/spi/ThrowableInformation;

    :cond_0
    iput-wide p3, p0, Lorg/apache/log4j/pattern/LogEvent;->timeStamp:J

    iput-object p7, p0, Lorg/apache/log4j/pattern/LogEvent;->threadName:Ljava/lang/String;

    iput-boolean v1, p0, Lorg/apache/log4j/pattern/LogEvent;->ndcLookupRequired:Z

    iput-object p9, p0, Lorg/apache/log4j/pattern/LogEvent;->ndc:Ljava/lang/String;

    iput-object p10, p0, Lorg/apache/log4j/pattern/LogEvent;->locationInfo:Lorg/apache/log4j/spi/LocationInfo;

    iput-boolean v1, p0, Lorg/apache/log4j/pattern/LogEvent;->mdcCopyLookupRequired:Z

    if-eqz p11, :cond_1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, p11}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->mdcCopy:Ljava/util/Hashtable;

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->categoryName:Ljava/lang/String;

    goto :goto_0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getStartTime()J
    .locals 2

    sget-wide v0, Lorg/apache/log4j/pattern/LogEvent;->startTime:J

    return-wide v0
.end method

.method private readLevel(Ljava/io/ObjectInputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {v2}, Lorg/apache/log4j/Level;->toLevel(I)Lorg/apache/log4j/Level;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->level:Lorg/apache/log4j/Priority;

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lorg/apache/log4j/pattern/LogEvent;->methodCache:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    invoke-static {v0}, Lorg/apache/log4j/helpers/Loader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "toLevel"

    sget-object v4, Lorg/apache/log4j/pattern/LogEvent;->TO_LEVEL_PARAMS:[Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v3, Lorg/apache/log4j/pattern/LogEvent;->methodCache:Ljava/util/Hashtable;

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object v0, Lorg/apache/log4j/pattern/LogEvent;->PARAM_ARRAY:[Ljava/lang/Integer;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v0, v3

    const/4 v0, 0x0

    sget-object v3, Lorg/apache/log4j/pattern/LogEvent;->PARAM_ARRAY:[Ljava/lang/Integer;

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/Level;

    iput-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->level:Lorg/apache/log4j/Priority;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Level deserialization failed, reverting to default."

    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v2}, Lorg/apache/log4j/Level;->toLevel(I)Lorg/apache/log4j/Level;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->level:Lorg/apache/log4j/Priority;

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-direct {p0, p1}, Lorg/apache/log4j/pattern/LogEvent;->readLevel(Ljava/io/ObjectInputStream;)V

    iget-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->locationInfo:Lorg/apache/log4j/spi/LocationInfo;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/log4j/spi/LocationInfo;

    invoke-direct {v0, v1, v1}, Lorg/apache/log4j/spi/LocationInfo;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->locationInfo:Lorg/apache/log4j/spi/LocationInfo;

    :cond_0
    return-void
.end method

.method private writeLevel(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->level:Lorg/apache/log4j/Priority;

    invoke-virtual {v0}, Lorg/apache/log4j/Priority;->toInt()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->level:Lorg/apache/log4j/Priority;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v0, Lorg/apache/log4j/pattern/LogEvent;->class$org$apache$log4j$Level:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.log4j.Level"

    invoke-static {v0}, Lorg/apache/log4j/pattern/LogEvent;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/pattern/LogEvent;->class$org$apache$log4j$Level:Ljava/lang/Class;

    :goto_0
    if-ne v1, v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_0
    sget-object v0, Lorg/apache/log4j/pattern/LogEvent;->class$org$apache$log4j$Level:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/log4j/pattern/LogEvent;->getThreadName()Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/log4j/pattern/LogEvent;->getRenderedMessage()Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/log4j/pattern/LogEvent;->getNDC()Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/log4j/pattern/LogEvent;->getMDCCopy()V

    invoke-virtual {p0}, Lorg/apache/log4j/pattern/LogEvent;->getThrowableStrRep()[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-direct {p0, p1}, Lorg/apache/log4j/pattern/LogEvent;->writeLevel(Ljava/io/ObjectOutputStream;)V

    return-void
.end method


# virtual methods
.method public getFQNOfLoggerClass()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->fqnOfCategoryClass:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()Lorg/apache/log4j/Level;
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->level:Lorg/apache/log4j/Priority;

    check-cast v0, Lorg/apache/log4j/Level;

    return-object v0
.end method

.method public getLocationInformation()Lorg/apache/log4j/spi/LocationInfo;
    .locals 3

    iget-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->locationInfo:Lorg/apache/log4j/spi/LocationInfo;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/log4j/spi/LocationInfo;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    iget-object v2, p0, Lorg/apache/log4j/pattern/LogEvent;->fqnOfCategoryClass:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/log4j/spi/LocationInfo;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->locationInfo:Lorg/apache/log4j/spi/LocationInfo;

    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->locationInfo:Lorg/apache/log4j/spi/LocationInfo;

    return-object v0
.end method

.method public getLoggerName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->categoryName:Ljava/lang/String;

    return-object v0
.end method

.method public getMDC(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->mdcCopy:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->mdcCopy:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lorg/apache/log4j/MDC;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getMDCCopy()V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/log4j/pattern/LogEvent;->mdcCopyLookupRequired:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/pattern/LogEvent;->mdcCopyLookupRequired:Z

    invoke-static {}, Lorg/apache/log4j/MDC;->getContext()Ljava/util/Hashtable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    iput-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->mdcCopy:Ljava/util/Hashtable;

    :cond_0
    return-void
.end method

.method public getMessage()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->message:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->message:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/log4j/pattern/LogEvent;->getRenderedMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNDC()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lorg/apache/log4j/pattern/LogEvent;->ndcLookupRequired:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/pattern/LogEvent;->ndcLookupRequired:Z

    invoke-static {}, Lorg/apache/log4j/NDC;->get()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->ndc:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->ndc:Ljava/lang/String;

    return-object v0
.end method

.method public getProperties()Ljava/util/Map;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/log4j/pattern/LogEvent;->getMDCCopy()V

    iget-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->mdcCopy:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->mdcCopy:Ljava/util/Hashtable;

    goto :goto_0
.end method

.method public final getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/log4j/pattern/LogEvent;->getMDC(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPropertyKeySet()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/log4j/pattern/LogEvent;->getProperties()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getRenderedMessage()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->renderedMessage:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->message:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->message:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->message:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->renderedMessage:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->renderedMessage:Ljava/lang/String;

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->logger:Lorg/apache/log4j/Category;

    invoke-virtual {v0}, Lorg/apache/log4j/Category;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/log4j/spi/RendererSupport;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/apache/log4j/spi/RendererSupport;

    invoke-interface {v0}, Lorg/apache/log4j/spi/RendererSupport;->getRendererMap()Lorg/apache/log4j/or/RendererMap;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/log4j/pattern/LogEvent;->message:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/apache/log4j/or/RendererMap;->findAndRender(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->renderedMessage:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->message:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->renderedMessage:Ljava/lang/String;

    goto :goto_0
.end method

.method public getThreadName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->threadName:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->threadName:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->threadName:Ljava/lang/String;

    return-object v0
.end method

.method public getThrowableInformation()Lorg/apache/log4j/spi/ThrowableInformation;
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->throwableInfo:Lorg/apache/log4j/spi/ThrowableInformation;

    return-object v0
.end method

.method public getThrowableStrRep()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->throwableInfo:Lorg/apache/log4j/spi/ThrowableInformation;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->throwableInfo:Lorg/apache/log4j/spi/ThrowableInformation;

    invoke-virtual {v0}, Lorg/apache/log4j/spi/ThrowableInformation;->getThrowableStrRep()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/log4j/pattern/LogEvent;->timeStamp:J

    return-wide v0
.end method

.method public final locationInformationExists()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->locationInfo:Lorg/apache/log4j/spi/LocationInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->mdcCopy:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/log4j/pattern/LogEvent;->getMDCCopy()V

    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->mdcCopy:Ljava/util/Hashtable;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->mdcCopy:Ljava/util/Hashtable;

    :cond_1
    iget-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->mdcCopy:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
