.class Lorg/apache/log4j/chainsaw/MyTableModel;
.super Ljavax/swing/table/AbstractTableModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/log4j/chainsaw/MyTableModel$Processor;
    }
.end annotation


# static fields
.field private static final COL_NAMES:[Ljava/lang/String;

.field private static final DATE_FORMATTER:Ljava/text/DateFormat;

.field private static final EMPTY_LIST:[Lorg/apache/log4j/chainsaw/EventDetails;

.field private static final LOG:Lorg/apache/log4j/Logger;

.field private static final MY_COMP:Ljava/util/Comparator;

.field static class$java$lang$Boolean:Ljava/lang/Class;

.field static class$java$lang$Object:Ljava/lang/Class;

.field static class$org$apache$log4j$chainsaw$MyTableModel:Ljava/lang/Class;


# instance fields
.field private final mAllEvents:Ljava/util/SortedSet;

.field private mCategoryFilter:Ljava/lang/String;

.field private mFilteredEvents:[Lorg/apache/log4j/chainsaw/EventDetails;

.field private final mLock:Ljava/lang/Object;

.field private mMessageFilter:Ljava/lang/String;

.field private mNDCFilter:Ljava/lang/String;

.field private mPaused:Z

.field private final mPendingEvents:Ljava/util/List;

.field private mPriorityFilter:Lorg/apache/log4j/Priority;

.field private mThreadFilter:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    sget-object v0, Lorg/apache/log4j/chainsaw/MyTableModel;->class$org$apache$log4j$chainsaw$MyTableModel:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.log4j.chainsaw.MyTableModel"

    invoke-static {v0}, Lorg/apache/log4j/chainsaw/MyTableModel;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/chainsaw/MyTableModel;->class$org$apache$log4j$chainsaw$MyTableModel:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/chainsaw/MyTableModel;->LOG:Lorg/apache/log4j/Logger;

    new-instance v0, Lorg/apache/log4j/chainsaw/MyTableModel$1;

    invoke-direct {v0}, Lorg/apache/log4j/chainsaw/MyTableModel$1;-><init>()V

    sput-object v0, Lorg/apache/log4j/chainsaw/MyTableModel;->MY_COMP:Ljava/util/Comparator;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Time"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "Priority"

    aput-object v2, v0, v1

    const-string v1, "Trace"

    aput-object v1, v0, v4

    const-string v1, "Category"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "NDC"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Message"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/log4j/chainsaw/MyTableModel;->COL_NAMES:[Ljava/lang/String;

    new-array v0, v3, [Lorg/apache/log4j/chainsaw/EventDetails;

    sput-object v0, Lorg/apache/log4j/chainsaw/MyTableModel;->EMPTY_LIST:[Lorg/apache/log4j/chainsaw/EventDetails;

    invoke-static {v5, v4}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/chainsaw/MyTableModel;->DATE_FORMATTER:Ljava/text/DateFormat;

    return-void

    :cond_0
    sget-object v0, Lorg/apache/log4j/chainsaw/MyTableModel;->class$org$apache$log4j$chainsaw$MyTableModel:Ljava/lang/Class;

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljavax/swing/table/AbstractTableModel;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lorg/apache/log4j/chainsaw/MyTableModel;->MY_COMP:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mAllEvents:Ljava/util/SortedSet;

    sget-object v0, Lorg/apache/log4j/chainsaw/MyTableModel;->EMPTY_LIST:[Lorg/apache/log4j/chainsaw/EventDetails;

    iput-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mFilteredEvents:[Lorg/apache/log4j/chainsaw/EventDetails;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mPendingEvents:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mPaused:Z

    const-string v0, ""

    iput-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mThreadFilter:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mMessageFilter:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mNDCFilter:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mCategoryFilter:Ljava/lang/String;

    sget-object v0, Lorg/apache/log4j/Priority;->DEBUG:Lorg/apache/log4j/Priority;

    iput-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mPriorityFilter:Lorg/apache/log4j/Priority;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/apache/log4j/chainsaw/MyTableModel$Processor;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/log4j/chainsaw/MyTableModel$Processor;-><init>(Lorg/apache/log4j/chainsaw/MyTableModel;Lorg/apache/log4j/chainsaw/MyTableModel$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static access$000(Lorg/apache/log4j/chainsaw/MyTableModel;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static access$100(Lorg/apache/log4j/chainsaw/MyTableModel;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mPaused:Z

    return v0
.end method

.method static access$200(Lorg/apache/log4j/chainsaw/MyTableModel;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mPendingEvents:Ljava/util/List;

    return-object v0
.end method

.method static access$300(Lorg/apache/log4j/chainsaw/MyTableModel;)Ljava/util/SortedSet;
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mAllEvents:Ljava/util/SortedSet;

    return-object v0
.end method

.method static access$400(Lorg/apache/log4j/chainsaw/MyTableModel;Lorg/apache/log4j/chainsaw/EventDetails;)Z
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/log4j/chainsaw/MyTableModel;->matchFilter(Lorg/apache/log4j/chainsaw/EventDetails;)Z

    move-result v0

    return v0
.end method

.method static access$500(Lorg/apache/log4j/chainsaw/MyTableModel;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/log4j/chainsaw/MyTableModel;->updateFilteredEvents(Z)V

    return-void
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

.method private matchFilter(Lorg/apache/log4j/chainsaw/EventDetails;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/apache/log4j/chainsaw/EventDetails;->getPriority()Lorg/apache/log4j/Priority;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mPriorityFilter:Lorg/apache/log4j/Priority;

    invoke-virtual {v2, v3}, Lorg/apache/log4j/Priority;->isGreaterOrEqual(Lorg/apache/log4j/Priority;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lorg/apache/log4j/chainsaw/EventDetails;->getThreadName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mThreadFilter:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_4

    invoke-virtual {p1}, Lorg/apache/log4j/chainsaw/EventDetails;->getCategoryName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mCategoryFilter:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_4

    iget-object v2, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mNDCFilter:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lorg/apache/log4j/chainsaw/EventDetails;->getNDC()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lorg/apache/log4j/chainsaw/EventDetails;->getNDC()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mNDCFilter:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_4

    :cond_0
    invoke-virtual {p1}, Lorg/apache/log4j/chainsaw/EventDetails;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mMessageFilter:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mMessageFilter:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private updateFilteredEvents(Z)V
    .locals 8

    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mAllEvents:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v5

    iget-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mAllEvents:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/chainsaw/EventDetails;

    invoke-direct {p0, v0}, Lorg/apache/log4j/chainsaw/MyTableModel;->matchFilter(Lorg/apache/log4j/chainsaw/EventDetails;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mFilteredEvents:[Lorg/apache/log4j/chainsaw/EventDetails;

    array-length v0, v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    move-object v1, v0

    :goto_1
    sget-object v0, Lorg/apache/log4j/chainsaw/MyTableModel;->EMPTY_LIST:[Lorg/apache/log4j/chainsaw/EventDetails;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/log4j/chainsaw/EventDetails;

    check-cast v0, [Lorg/apache/log4j/chainsaw/EventDetails;

    iput-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mFilteredEvents:[Lorg/apache/log4j/chainsaw/EventDetails;

    if-eqz p1, :cond_4

    if-eqz v1, :cond_4

    invoke-interface {v4, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_3

    sget-object v0, Lorg/apache/log4j/chainsaw/MyTableModel;->LOG:Lorg/apache/log4j/Logger;

    const-string v1, "In strange state"

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Category;->warn(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljavax/swing/table/AbstractTableModel;->fireTableDataChanged()V

    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v4, Lorg/apache/log4j/chainsaw/MyTableModel;->LOG:Lorg/apache/log4j/Logger;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Total time [ms]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    sub-long/2addr v0, v2

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " in update, size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/apache/log4j/Category;->debug(Ljava/lang/Object;)V

    return-void

    :cond_2
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mFilteredEvents:[Lorg/apache/log4j/chainsaw/EventDetails;

    aget-object v0, v0, v7

    move-object v1, v0

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v7, v0}, Ljavax/swing/table/AbstractTableModel;->fireTableRowsInserted(II)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Ljavax/swing/table/AbstractTableModel;->fireTableDataChanged()V

    goto :goto_2
.end method


# virtual methods
.method public addEvent(Lorg/apache/log4j/chainsaw/EventDetails;)V
    .locals 2

    iget-object v1, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mPendingEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clear()V
    .locals 2

    iget-object v1, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mAllEvents:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/log4j/chainsaw/EventDetails;

    iput-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mFilteredEvents:[Lorg/apache/log4j/chainsaw/EventDetails;

    iget-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mPendingEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Ljavax/swing/table/AbstractTableModel;->fireTableDataChanged()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getColumnClass(I)Ljava/lang/Class;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    sget-object v0, Lorg/apache/log4j/chainsaw/MyTableModel;->class$java$lang$Boolean:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.lang.Boolean"

    invoke-static {v0}, Lorg/apache/log4j/chainsaw/MyTableModel;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/chainsaw/MyTableModel;->class$java$lang$Boolean:Ljava/lang/Class;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/apache/log4j/chainsaw/MyTableModel;->class$java$lang$Boolean:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/apache/log4j/chainsaw/MyTableModel;->class$java$lang$Object:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string v0, "java.lang.Object"

    invoke-static {v0}, Lorg/apache/log4j/chainsaw/MyTableModel;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/chainsaw/MyTableModel;->class$java$lang$Object:Ljava/lang/Class;

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/apache/log4j/chainsaw/MyTableModel;->class$java$lang$Object:Ljava/lang/Class;

    goto :goto_0
.end method

.method public getColumnCount()I
    .locals 1

    sget-object v0, Lorg/apache/log4j/chainsaw/MyTableModel;->COL_NAMES:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/log4j/chainsaw/MyTableModel;->COL_NAMES:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getEventDetails(I)Lorg/apache/log4j/chainsaw/EventDetails;
    .locals 2

    iget-object v1, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mFilteredEvents:[Lorg/apache/log4j/chainsaw/EventDetails;

    aget-object v0, v0, p1

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRowCount()I
    .locals 2

    iget-object v1, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mFilteredEvents:[Lorg/apache/log4j/chainsaw/EventDetails;

    array-length v0, v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getValueAt(II)Ljava/lang/Object;
    .locals 6

    iget-object v1, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mFilteredEvents:[Lorg/apache/log4j/chainsaw/EventDetails;

    aget-object v0, v0, p1

    if-nez p2, :cond_0

    sget-object v2, Lorg/apache/log4j/chainsaw/MyTableModel;->DATE_FORMATTER:Ljava/text/DateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-virtual {v0}, Lorg/apache/log4j/chainsaw/EventDetails;->getTimeStamp()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    invoke-virtual {v0}, Lorg/apache/log4j/chainsaw/EventDetails;->getPriority()Lorg/apache/log4j/Priority;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    const/4 v2, 0x2

    if-ne p2, v2, :cond_3

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/log4j/chainsaw/EventDetails;->getThrowableStrRep()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    monitor-exit v1

    goto :goto_0

    :cond_2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_3
    const/4 v2, 0x3

    if-ne p2, v2, :cond_4

    invoke-virtual {v0}, Lorg/apache/log4j/chainsaw/EventDetails;->getCategoryName()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :cond_4
    const/4 v2, 0x4

    if-ne p2, v2, :cond_5

    invoke-virtual {v0}, Lorg/apache/log4j/chainsaw/EventDetails;->getNDC()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Lorg/apache/log4j/chainsaw/EventDetails;->getMessage()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 2

    iget-object v1, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mPaused:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCategoryFilter(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mCategoryFilter:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/log4j/chainsaw/MyTableModel;->updateFilteredEvents(Z)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMessageFilter(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mMessageFilter:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/log4j/chainsaw/MyTableModel;->updateFilteredEvents(Z)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setNDCFilter(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mNDCFilter:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/log4j/chainsaw/MyTableModel;->updateFilteredEvents(Z)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPriorityFilter(Lorg/apache/log4j/Priority;)V
    .locals 2

    iget-object v1, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mPriorityFilter:Lorg/apache/log4j/Priority;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/log4j/chainsaw/MyTableModel;->updateFilteredEvents(Z)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setThreadFilter(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mThreadFilter:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/log4j/chainsaw/MyTableModel;->updateFilteredEvents(Z)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toggle()V
    .locals 2

    iget-object v1, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mPaused:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mPaused:Z

    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
