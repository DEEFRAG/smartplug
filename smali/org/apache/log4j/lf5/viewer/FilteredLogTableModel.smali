.class public Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;
.super Ljavax/swing/table/AbstractTableModel;


# instance fields
.field protected _allRecords:Ljava/util/List;

.field protected _colNames:[Ljava/lang/String;

.field protected _filter:Lorg/apache/log4j/lf5/LogRecordFilter;

.field protected _filteredRecords:Ljava/util/List;

.field protected _maxNumberOfLogRecords:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljavax/swing/table/AbstractTableModel;-><init>()V

    new-instance v0, Lorg/apache/log4j/lf5/PassingLogRecordFilter;

    invoke-direct {v0}, Lorg/apache/log4j/lf5/PassingLogRecordFilter;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_filter:Lorg/apache/log4j/lf5/LogRecordFilter;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_allRecords:Ljava/util/List;

    const/16 v0, 0x1388

    iput v0, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_maxNumberOfLogRecords:I

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Date"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Thread"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Message #"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Level"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "NDC"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Category"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Message"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Location"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Thrown"

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_colNames:[Ljava/lang/String;

    return-void
.end method

.method private numberOfRecordsToTrim()I
    .locals 2

    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_allRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_maxNumberOfLogRecords:I

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public declared-synchronized addLogRecord(Lorg/apache/log4j/lf5/LogRecord;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_allRecords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_filter:Lorg/apache/log4j/lf5/LogRecordFilter;

    invoke-interface {v0, p1}, Lorg/apache/log4j/lf5/LogRecordFilter;->passes(Lorg/apache/log4j/lf5/LogRecord;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->getFilteredRecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->getRowCount()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->getRowCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljavax/swing/table/AbstractTableModel;->fireTableRowsInserted(II)V

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->trimRecords()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_allRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_filteredRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Ljavax/swing/table/AbstractTableModel;->fireTableDataChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected createFilteredRecordsList()Ljava/util/List;
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_allRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/lf5/LogRecord;

    iget-object v3, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_filter:Lorg/apache/log4j/lf5/LogRecordFilter;

    invoke-interface {v3, v0}, Lorg/apache/log4j/lf5/LogRecordFilter;->passes(Lorg/apache/log4j/lf5/LogRecord;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public declared-synchronized fastRefresh()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_filteredRecords:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljavax/swing/table/AbstractTableModel;->fireTableRowsDeleted(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getColumn(ILorg/apache/log4j/lf5/LogRecord;)Ljava/lang/Object;
    .locals 3

    if-nez p2, :cond_0

    const-string v0, "NULL Column"

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p2}, Lorg/apache/log4j/lf5/LogRecord;->getMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "The column number "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "must be between 0 and 8"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/log4j/lf5/LogRecord;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p2}, Lorg/apache/log4j/lf5/LogRecord;->getThreadDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    new-instance v0, Ljava/lang/Long;

    invoke-virtual {p2}, Lorg/apache/log4j/lf5/LogRecord;->getSequenceNumber()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p2}, Lorg/apache/log4j/lf5/LogRecord;->getLevel()Lorg/apache/log4j/lf5/LogLevel;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-virtual {p2}, Lorg/apache/log4j/lf5/LogRecord;->getNDC()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    invoke-virtual {p2}, Lorg/apache/log4j/lf5/LogRecord;->getCategory()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    invoke-virtual {p2}, Lorg/apache/log4j/lf5/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    invoke-virtual {p2}, Lorg/apache/log4j/lf5/LogRecord;->getLocation()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    invoke-virtual {p2}, Lorg/apache/log4j/lf5/LogRecord;->getThrownStackTrace()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public getColumnCount()I
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_colNames:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_colNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected getFilteredRecord(I)Lorg/apache/log4j/lf5/LogRecord;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->getFilteredRecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/lf5/LogRecord;

    :goto_0
    return-object v0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/lf5/LogRecord;

    goto :goto_0
.end method

.method protected getFilteredRecords()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_filteredRecords:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->refresh()V

    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_filteredRecords:Ljava/util/List;

    return-object v0
.end method

.method public getLogRecordFilter()Lorg/apache/log4j/lf5/LogRecordFilter;
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_filter:Lorg/apache/log4j/lf5/LogRecordFilter;

    return-object v0
.end method

.method public getRowCount()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->getFilteredRecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTotalRowCount()I
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_allRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getValueAt(II)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->getFilteredRecord(I)Lorg/apache/log4j/lf5/LogRecord;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->getColumn(ILorg/apache/log4j/lf5/LogRecord;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected needsTrimming()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_allRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_maxNumberOfLogRecords:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized refresh()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->createFilteredRecordsList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_filteredRecords:Ljava/util/List;

    invoke-virtual {p0}, Ljavax/swing/table/AbstractTableModel;->fireTableDataChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLogRecordFilter(Lorg/apache/log4j/lf5/LogRecordFilter;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_filter:Lorg/apache/log4j/lf5/LogRecordFilter;

    return-void
.end method

.method public setMaxNumberOfLogRecords(I)V
    .locals 0

    if-lez p1, :cond_0

    iput p1, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_maxNumberOfLogRecords:I

    :cond_0
    return-void
.end method

.method protected trimOldestRecords()V
    .locals 4

    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_allRecords:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->numberOfRecordsToTrim()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_allRecords:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->refresh()V

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_allRecords:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->fastRefresh()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected trimRecords()V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->needsTrimming()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->trimOldestRecords()V

    :cond_0
    return-void
.end method
