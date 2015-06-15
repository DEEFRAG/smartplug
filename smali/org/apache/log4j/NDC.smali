.class public Lorg/apache/log4j/NDC;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/log4j/NDC$DiagnosticContext;
    }
.end annotation


# static fields
.field static final REAP_THRESHOLD:I = 0x5

.field static ht:Ljava/util/Hashtable;

.field static pushCounter:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/apache/log4j/NDC;->ht:Ljava/util/Hashtable;

    const/4 v0, 0x0

    sput v0, Lorg/apache/log4j/NDC;->pushCounter:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .locals 2

    invoke-static {}, Lorg/apache/log4j/NDC;->getCurrentStack()Ljava/util/Stack;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    :cond_0
    return-void
.end method

.method public static cloneStack()Ljava/util/Stack;
    .locals 1

    invoke-static {}, Lorg/apache/log4j/NDC;->getCurrentStack()Ljava/util/Stack;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    goto :goto_0
.end method

.method public static get()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lorg/apache/log4j/NDC;->getCurrentStack()Ljava/util/Stack;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/NDC$DiagnosticContext;

    iget-object v0, v0, Lorg/apache/log4j/NDC$DiagnosticContext;->fullMessage:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getCurrentStack()Ljava/util/Stack;
    .locals 2

    sget-object v0, Lorg/apache/log4j/NDC;->ht:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/log4j/NDC;->ht:Ljava/util/Hashtable;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDepth()I
    .locals 1

    invoke-static {}, Lorg/apache/log4j/NDC;->getCurrentStack()Ljava/util/Stack;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0
.end method

.method public static inherit(Ljava/util/Stack;)V
    .locals 2

    if-eqz p0, :cond_0

    sget-object v0, Lorg/apache/log4j/NDC;->ht:Ljava/util/Hashtable;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static lazyRemove()V
    .locals 7

    const/4 v1, 0x0

    sget-object v0, Lorg/apache/log4j/NDC;->ht:Ljava/util/Hashtable;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v3, Lorg/apache/log4j/NDC;->ht:Ljava/util/Hashtable;

    monitor-enter v3

    :try_start_0
    sget v0, Lorg/apache/log4j/NDC;->pushCounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/apache/log4j/NDC;->pushCounter:I

    const/4 v2, 0x5

    if-gt v0, v2, :cond_2

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    const/4 v0, 0x0

    :try_start_1
    sput v0, Lorg/apache/log4j/NDC;->pushCounter:I

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    sget-object v0, Lorg/apache/log4j/NDC;->ht:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v5

    move v2, v1

    :goto_1
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    if-gt v2, v0, :cond_4

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_3

    add-int/lit8 v0, v2, 0x1

    :goto_2
    move v2, v0

    goto :goto_1

    :cond_3
    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v0, v1

    goto :goto_2

    :cond_4
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v2

    :goto_3
    if-ge v1, v2, :cond_0

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Lazy NDC removal for thread ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v5, "] ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget-object v5, Lorg/apache/log4j/NDC;->ht:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v5, ")."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    sget-object v3, Lorg/apache/log4j/NDC;->ht:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public static peek()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lorg/apache/log4j/NDC;->getCurrentStack()Ljava/util/Stack;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/NDC$DiagnosticContext;

    iget-object v0, v0, Lorg/apache/log4j/NDC$DiagnosticContext;->message:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static pop()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lorg/apache/log4j/NDC;->getCurrentStack()Ljava/util/Stack;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/NDC$DiagnosticContext;

    iget-object v0, v0, Lorg/apache/log4j/NDC$DiagnosticContext;->message:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static push(Ljava/lang/String;)V
    .locals 4

    const/4 v2, 0x0

    invoke-static {}, Lorg/apache/log4j/NDC;->getCurrentStack()Ljava/util/Stack;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Lorg/apache/log4j/NDC$DiagnosticContext;

    invoke-direct {v0, p0, v2}, Lorg/apache/log4j/NDC$DiagnosticContext;-><init>(Ljava/lang/String;Lorg/apache/log4j/NDC$DiagnosticContext;)V

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    sget-object v3, Lorg/apache/log4j/NDC;->ht:Ljava/util/Hashtable;

    invoke-virtual {v3, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/apache/log4j/NDC$DiagnosticContext;

    invoke-direct {v0, p0, v2}, Lorg/apache/log4j/NDC$DiagnosticContext;-><init>(Ljava/lang/String;Lorg/apache/log4j/NDC$DiagnosticContext;)V

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/NDC$DiagnosticContext;

    new-instance v2, Lorg/apache/log4j/NDC$DiagnosticContext;

    invoke-direct {v2, p0, v0}, Lorg/apache/log4j/NDC$DiagnosticContext;-><init>(Ljava/lang/String;Lorg/apache/log4j/NDC$DiagnosticContext;)V

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static remove()V
    .locals 2

    sget-object v0, Lorg/apache/log4j/NDC;->ht:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/log4j/NDC;->ht:Ljava/util/Hashtable;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lorg/apache/log4j/NDC;->lazyRemove()V

    :cond_0
    return-void
.end method

.method public static setMaxDepth(I)V
    .locals 2

    invoke-static {}, Lorg/apache/log4j/NDC;->getCurrentStack()Ljava/util/Stack;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/Vector;->setSize(I)V

    :cond_0
    return-void
.end method
